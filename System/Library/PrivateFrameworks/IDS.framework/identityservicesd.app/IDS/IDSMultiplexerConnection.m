@interface IDSMultiplexerConnection
- (BOOL)tryConsumePacketBuffer:(id *)a3;
- (IDSMultiplexerConnection)init;
- (NSString)description;
- (void)_logIncomingPacket:(int64_t)a3;
- (void)_logOutgoingPacket:(int64_t)a3;
- (void)invalidate;
- (void)setPacketBufferReadHandler:(id)a3;
- (void)startReadOnTransportThread;
- (void)writePacketBuffer:(id *)a3;
@end

@implementation IDSMultiplexerConnection

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(IDSMultiplexerConnection *)self localPort];
  v4 = [(IDSMultiplexerConnection *)self remotePort];
  v5 = [(IDSMultiplexerConnection *)self localEndpoint];
  v6 = [(IDSMultiplexerConnection *)self remoteEndpoint];
  v7 = [NSString stringWithFormat:@"%p MUXConnection localID %u remoteID %u localEndpoint %@ remoteEndpoint %@", self, v3, v4, v5, v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (IDSMultiplexerConnection)init
{
  v3.receiver = self;
  v3.super_class = IDSMultiplexerConnection;
  result = [(IDSMultiplexerConnection *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated || (self->_invalidated = 1, !self->_osChannel))
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    fd = os_channel_get_fd();
    os_unfair_lock_unlock(&self->_lock);
    LODWORD(v11) = fd;
    IDSTransportThreadAddBlock();
    v4 = [[NSUUID alloc] initWithUUIDBytes:{self->_flowIDBytes, _NSConcreteStackBlock, 3221225472, sub_1006D3994, &unk_100BDFD70, self, v11}];
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      incomingPacketCount = self->_incomingPacketCount;
      incomingBytes = self->_incomingBytes;
      *buf = 138412802;
      v13 = v4;
      v14 = 2048;
      v15 = incomingPacketCount;
      v16 = 2048;
      v17 = incomingBytes;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[final] multiplexer incoming [%@] %llu packets, %llu bytes", buf, 0x20u);
    }

    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      outgoingPacketCount = self->_outgoingPacketCount;
      outgoingBytes = self->_outgoingBytes;
      *buf = 138412802;
      v13 = v4;
      v14 = 2048;
      v15 = outgoingPacketCount;
      v16 = 2048;
      v17 = outgoingBytes;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[final] multiplexer outgoing [%@] %llu packets, %llu bytes", buf, 0x20u);
    }
  }
}

- (void)writePacketBuffer:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      v6 = "writePacketBuffer called but invalidated - %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v11, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (!self->_osChannel)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = self;
      v6 = "writePacketBuffer called but os_channel is nil - %@";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  if ([(IDSMultiplexerConnection *)self isQUIC])
  {
    var2 = a3->var2;
    if (var2 <= 7)
    {
      os_unfair_lock_unlock(&self->_lock);
      v8 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a3->var2;
        v11 = 134217984;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection is udp but packet does not have enough bytes for header %ld", &v11, 0xCu);
      }

      return;
    }

    udp6checksum(0, 0, a3->var0, var2);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (sub_100510178(self->_osChannel, self->_txRing, a3, self->_flowIDBytes))
  {
    v10 = a3->var2;

    [(IDSMultiplexerConnection *)self _logIncomingPacket:v10];
  }
}

- (void)_logIncomingPacket:(int64_t)a3
{
  v4 = self->_incomingPacketCount + 1;
  self->_incomingPacketCount = v4;
  self->_incomingBytes += a3;
  if (self->_lastIncomingReportTime == 0.0)
  {
    if (v4 > 0xA)
    {
      ids_monotonic_time();
      self->_lastIncomingReportTime = v14;
      self->_incomingPacketCount = 1;
      self->_incomingBytes = a3;
    }

    else
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:self->_flowIDBytes];
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2048;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "multiplexer incoming [%@] packetLength %ld", &v15, 0x16u);
      }
    }
  }

  else
  {
    ids_monotonic_time();
    v9 = v8;
    if (v8 - self->_lastIncomingReportTime >= 5.0)
    {
      v10 = [[NSUUID alloc] initWithUUIDBytes:self->_flowIDBytes];
      v11 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        incomingPacketCount = self->_incomingPacketCount;
        incomingBytes = self->_incomingBytes;
        v15 = 138412802;
        v16 = v10;
        v17 = 2048;
        v18 = incomingPacketCount;
        v19 = 2048;
        v20 = incomingBytes;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "multiplexer incoming [%@] %llu packets, %llu bytes", &v15, 0x20u);
      }

      self->_lastIncomingReportTime = v9;
      self->_incomingPacketCount = 0;
      self->_incomingBytes = 0;
    }
  }
}

- (void)_logOutgoingPacket:(int64_t)a3
{
  v4 = self->_outgoingPacketCount + 1;
  self->_outgoingPacketCount = v4;
  self->_outgoingBytes += a3;
  if (self->_lastOutgoingReportTime == 0.0)
  {
    if (v4 > 0xA)
    {
      ids_monotonic_time();
      self->_lastOutgoingReportTime = v14;
      self->_outgoingPacketCount = 1;
      self->_outgoingBytes = a3;
    }

    else
    {
      v6 = [[NSUUID alloc] initWithUUIDBytes:self->_flowIDBytes];
      v7 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2048;
        v18 = a3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "multiplexer outgoing [%@] packetLength %ld", &v15, 0x16u);
      }
    }
  }

  else
  {
    ids_monotonic_time();
    v9 = v8;
    if (v8 - self->_lastOutgoingReportTime >= 5.0)
    {
      v10 = [[NSUUID alloc] initWithUUIDBytes:self->_flowIDBytes];
      v11 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        outgoingPacketCount = self->_outgoingPacketCount;
        outgoingBytes = self->_outgoingBytes;
        v15 = 138412802;
        v16 = v10;
        v17 = 2048;
        v18 = outgoingPacketCount;
        v19 = 2048;
        v20 = outgoingBytes;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "multiplexer outgoing [%@] %llu packets, %llu bytes", &v15, 0x20u);
      }

      self->_lastOutgoingReportTime = v9;
      self->_outgoingPacketCount = 0;
      self->_outgoingBytes = 0;
    }
  }
}

- (void)setPacketBufferReadHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setPacketBufferReadHandler called but invalidated - %@", &v8, 0xCu);
    }
  }

  else
  {
    v6 = objc_retainBlock(v4);
    readHandler = self->_readHandler;
    self->_readHandler = v6;

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)startReadOnTransportThread
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      v4 = "startReadOnTransportThread called but invalidated - %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (!self->_osChannel)
  {
    os_unfair_lock_unlock(&self->_lock);
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = self;
      v4 = "startReadOnTransportThread called but os_channel is nil - %@";
      goto LABEL_12;
    }

LABEL_13:

    return;
  }

  os_channel_get_fd();
  os_channel_ring_id();
  os_channel_rx_ring();
  os_channel_ring_id();
  self->_txRing = os_channel_tx_ring();
  v5 = [(IDSMultiplexerConnection *)self clientUUID];
  [v5 getUUIDBytes:self->_flowIDBytes];

  v6 = [(IDSMultiplexerConnection *)self transport];
  LODWORD(v5) = [v6 packetizationHeadroom];

  if (!v5)
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100932F98(v7);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  IDSTransportThreadAddBlock();
}

- (BOOL)tryConsumePacketBuffer:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      *v18 = self;
      v6 = "writePacketBuffer called but invalidated - %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v17, 0xCu);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (!self->_osChannel)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      *v18 = self;
      v6 = "writePacketBuffer called but os_channel is nil - %@";
      goto LABEL_11;
    }

LABEL_12:

    return 0;
  }

  if (a3->var2 > 3)
  {
    v10 = __rev16(*a3->var0);
    v11 = __rev16(*(a3->var0 + 1));
    v12 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      localPort = self->_localPort;
      remotePort = self->_remotePort;
      var2 = a3->var2;
      v17 = 67110144;
      *v18 = localPort;
      *&v18[4] = 1024;
      *&v18[6] = remotePort;
      v19 = 1024;
      v20 = v11;
      v21 = 1024;
      v22 = v10;
      v23 = 2048;
      v24 = var2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "connection local:%u remote:%u tryConsume packet dst:%u src:%u packetBufferLength:%ld", &v17, 0x24u);
    }

    if (self->_localPort == v11)
    {
      v16 = self->_remotePort;
      os_unfair_lock_unlock(&self->_lock);
      if (!v16 || v16 == v10)
      {
        [(IDSMultiplexerConnection *)self writePacketBuffer:a3];
        return 1;
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a3->var2;
      v17 = 134217984;
      *v18 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot retrieve port signature, invalid packetBuffer size: %ld", &v17, 0xCu);
    }
  }

  return 0;
}

@end