@interface IDSMultiplexerGroupConnection
- (BOOL)tryConsumePacketBuffer:(id *)buffer;
- (OS_nw_framer)framer;
- (id)getProtocolDefinition;
- (void)callPacketBufferReadHandler:(id *)handler;
- (void)invalidate;
- (void)writePacketBuffer:(id *)buffer;
@end

@implementation IDSMultiplexerGroupConnection

- (void)invalidate
{
  os_unfair_lock_lock(&self->super._lock);
  self->super._invalidated = 1;
  objc_storeWeak(&self->_framer, 0);
  protocol = self->_protocol;
  self->_protocol = 0;

  readHandler = self->super._readHandler;
  self->super._readHandler = 0;

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)getProtocolDefinition
{
  os_unfair_lock_lock(&self->super._lock);
  protocol = self->_protocol;
  if (!protocol)
  {
    self->_verboseFunctionalLogging = IMGetCachedDomainBoolForKeyWithDefaultValue();
    v4 = sub_1006D4A44(self);
    v5 = self->_protocol;
    self->_protocol = v4;

    protocol = self->_protocol;
  }

  v6 = protocol;
  os_unfair_lock_unlock(&self->super._lock);

  return v6;
}

- (void)callPacketBufferReadHandler:(id *)handler
{
  os_unfair_lock_lock(&self->super._lock);
  if (self->super._invalidated)
  {
    os_unfair_lock_unlock(&self->super._lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v6 = "readPacketBuffer called but invalidated - %@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained(&self->_framer);

  if (!WeakRetained)
  {
    os_unfair_lock_unlock(&self->super._lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v6 = "readPacketBuffer called but framer is nil - %@";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  readHandler = self->super._readHandler;
  if (!readHandler)
  {
    os_unfair_lock_unlock(&self->super._lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy3 = self;
      v6 = "readPacketBuffer called but readHandler is nil - %@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v9 = objc_retainBlock(readHandler);
  os_unfair_lock_unlock(&self->super._lock);
  v9[2](v9, handler);
}

- (void)writePacketBuffer:(id *)buffer
{
  os_unfair_lock_lock(&self->super._lock);
  if (!self->super._invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_framer);
    if (WeakRetained)
    {
      if (buffer->var2 > 7)
      {
        var0 = buffer->var0;
        *var0 = __rev16([(IDSMultiplexerConnection *)self remotePort]);
        *(var0 + 1) = __rev16([(IDSMultiplexerConnection *)self localPort]);
        localEndpoint = [(IDSMultiplexerConnection *)self localEndpoint];
        address = nw_endpoint_get_address(localEndpoint);

        remoteEndpoint = [(IDSMultiplexerConnection *)self remoteEndpoint];
        v13 = nw_endpoint_get_address(remoteEndpoint);

        if (address->sa_family != 30)
        {
          sub_100932FDC();
        }

        if (v13->sa_family != 30)
        {
          sub_100933008();
        }

        udp6checksum(&address->sa_data[6], &v13->sa_data[6], buffer->var0, buffer->var2);
        if (self->_verboseFunctionalLogging)
        {
          v14 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = sub_10050F958(buffer->var0, buffer->var2);
            *buf = 136315138;
            selfCopy2 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "writePacketBuffer whole packet:\n%s", buf, 0xCu);
          }
        }

        os_unfair_lock_unlock(&self->super._lock);
        v16 = dispatch_data_create(buffer->var0, buffer->var2, 0, 0);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1006D5534;
        v17[3] = &unk_100BD6E40;
        v18 = WeakRetained;
        v19 = v16;
        v6 = v16;
        nw_framer_async(v18, v17);

        goto LABEL_18;
      }

      os_unfair_lock_unlock(&self->super._lock);
      v6 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        var2 = buffer->var2;
        *buf = 134217984;
        selfCopy2 = var2;
        v8 = "packet doest not have enough bytes for header %ld";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->super._lock);
      v6 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        v8 = "writePacketBuffer called but framer is nil - %@";
        goto LABEL_10;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  os_unfair_lock_unlock(&self->super._lock);
  WeakRetained = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "writePacketBuffer called but invalidated - %@", buf, 0xCu);
  }

LABEL_19:
}

- (BOOL)tryConsumePacketBuffer:(id *)buffer
{
  os_unfair_lock_lock(&self->super._lock);
  if (self->super._invalidated)
  {
    os_unfair_lock_unlock(&self->super._lock);
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

  WeakRetained = objc_loadWeakRetained(&self->_framer);

  if (!WeakRetained)
  {
    os_unfair_lock_unlock(&self->super._lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      *v18 = self;
      v6 = "writePacketBuffer called but framer is nil - %@";
      goto LABEL_11;
    }

LABEL_12:

    return 0;
  }

  if (buffer->var2 > 3)
  {
    v11 = __rev16(*buffer->var0);
    v12 = __rev16(*(buffer->var0 + 1));
    v13 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      localPort = [(IDSMultiplexerConnection *)self localPort];
      remotePort = [(IDSMultiplexerConnection *)self remotePort];
      var2 = buffer->var2;
      v17 = 67110144;
      *v18 = localPort;
      *&v18[4] = 1024;
      *&v18[6] = remotePort;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v11;
      v23 = 2048;
      v24 = var2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "connection local:%u remote:%u tryConsume packet dst:%u src:%u packetBufferLength:%ld", &v17, 0x24u);
    }

    if ([(IDSMultiplexerConnection *)self localPort]== v12 && (![(IDSMultiplexerConnection *)self remotePort]|| [(IDSMultiplexerConnection *)self remotePort]== v11))
    {
      os_unfair_lock_unlock(&self->super._lock);
      [(IDSMultiplexerGroupConnection *)self writePacketBuffer:buffer];
      return 1;
    }

    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->super._lock);
    v8 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = buffer->var2;
      v17 = 134217984;
      *v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connection cannot retrieve port signature, invalid packetBuffer size: %ld", &v17, 0xCu);
    }
  }

  return 0;
}

- (OS_nw_framer)framer
{
  WeakRetained = objc_loadWeakRetained(&self->_framer);

  return WeakRetained;
}

@end