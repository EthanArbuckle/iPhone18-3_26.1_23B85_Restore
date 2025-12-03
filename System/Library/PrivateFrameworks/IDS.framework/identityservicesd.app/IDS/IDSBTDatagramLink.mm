@interface IDSBTDatagramLink
- (IDSBTDatagramLink)initWithPipe:(id)pipe withDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (IDSLinkDelegate)alternateDelegate;
- (IDSLinkDelegate)delegate;
- (id)copyLinkStatsDict;
- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link;
- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid;
- (void)_processIncomingPacket;
- (void)dealloc;
- (void)invalidate;
- (void)start;
@end

@implementation IDSBTDatagramLink

- (IDSBTDatagramLink)initWithPipe:(id)pipe withDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  pipeCopy = pipe;
  dCopy = d;
  cbuuidCopy = cbuuid;
  v19.receiver = self;
  v19.super_class = IDSBTDatagramLink;
  v12 = [(IDSBTDatagramLink *)&v19 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v12->_pipe, pipe);
  channel = [pipeCopy channel];
  v13->_channel = channel;
  if (channel)
  {
    objc_storeStrong(&v13->_cbuuid, kIDSDefaultPairedDeviceID);
    objc_storeStrong(&v13->_deviceUniqueID, d);
LABEL_4:
    v15 = v13;
    goto LABEL_12;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18[0] = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "-init failed due to null channel", v18, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)dealloc
{
  [(IDSBTDatagramLink *)self invalidate];
  v3.receiver = self;
  v3.super_class = IDSBTDatagramLink;
  [(IDSBTDatagramLink *)&v3 dealloc];
}

- (void)invalidate
{
  p_channel = &self->_channel;
  if (self->_channel)
  {
    fd = os_channel_get_fd();
  }

  else
  {
    fd = -1;
  }

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    channel = self->_channel;
    rxRing = self->_rxRing;
    txRing = self->_txRing;
    *buf = 138413314;
    selfCopy = self;
    v12 = 2048;
    v13 = channel;
    v14 = 1024;
    v15 = fd;
    v16 = 2048;
    v17 = rxRing;
    v18 = 2048;
    v19 = txRing;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ -invalidate called. Channel %p fd %d rxRing %p txRing %p", buf, 0x30u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  self->_state = 5;
  if (fd != -1)
  {
    IDSTransportThreadRemoveSocket();
  }

  _IDSLinkPacketBufferRelease();
  *p_channel = 0u;
  *(p_channel + 1) = 0u;
  pipe = self->_pipe;
  self->_pipe = 0;
}

- (void)start
{
  fd = os_channel_get_fd();
  os_channel_ring_id();
  self->_rxRing = os_channel_rx_ring();
  os_channel_ring_id();
  self->_txRing = os_channel_tx_ring();
  v4 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    channel = self->_channel;
    rxRing = self->_rxRing;
    txRing = self->_txRing;
    *buf = 134218752;
    v9 = channel;
    v10 = 1024;
    v11 = fd;
    v12 = 2048;
    v13 = rxRing;
    v14 = 2048;
    v15 = txRing;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-start called. Channel %p fd %d rxRing %p txRing %p", buf, 0x26u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  IDSTransportThreadAddSocket();
  self->_state = 4;
}

- (unint64_t)sendPacketBuffer:(id *)buffer toDeviceUniqueID:(id)d cbuuid:(id)cbuuid
{
  dCopy = d;
  cbuuidCopy = cbuuid;
  if (self->_channel)
  {
    if (buffer->var2 >= 676)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var2 = buffer->var2;
        *buf = 67109120;
        *&buf[4] = var2;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DLW 0/%d (packet size too large for link)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      _IDSLinkPacketBufferRelease();
LABEL_21:
      v12 = 4;
      goto LABEL_43;
    }

    if (os_channel_available_slot_count() || (os_channel_sync(), os_channel_available_slot_count()))
    {
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31 = v13;
      v32 = v13;
      *buf = v13;
      *__dst = v13;
      os_channel_get_next_slot();
      v14 = buffer->var2;
      if (v14 > *&buf[2])
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = buffer->var2;
          *v25 = 67109376;
          v26 = v16;
          v27 = 1024;
          v28 = *&buf[2];
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "DLW 0/%d (slot %d too small)", v25, 0xEu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        _IDSLinkPacketBufferRelease();
        goto LABEL_21;
      }

      *buf = 0;
      *&buf[2] = v14;
      memcpy(__dst[0], buffer->var0, v14);
      os_channel_set_slot_properties();
      v17 = os_channel_advance_slot();
      if (v17)
      {
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 67109120;
          v26 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "advance_slot failed for write %d", v25, 8u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }
      }

      os_channel_sync();
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = buffer->var2;
        *v25 = 67109120;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "DLW %d", v25, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      v21 = vdupq_n_s64(1uLL);
      v21.i64[0] = buffer->var2;
      *&self->_totalBytesSent = vaddq_s64(*&self->_totalBytesSent, v21);
      _IDSLinkPacketBufferRelease();
      v12 = 0;
    }

    else
    {
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = buffer->var2;
        *buf = 67109120;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "DLW 0/%d (no space)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      _IDSLinkPacketBufferRelease();
      v12 = 14;
    }
  }

  else
  {
    _IDSLinkPacketBufferRelease();
    v12 = 6;
  }

LABEL_43:

  return v12;
}

- (void)_processIncomingPacket
{
  currentIncomingPacket = self->_currentIncomingPacket;
  if (!currentIncomingPacket)
  {
    currentIncomingPacket = _IDSLinkPacketBufferCreate();
    self->_currentIncomingPacket = currentIncomingPacket;
  }

  v4 = os_channel_available_slot_count();
  if (v4)
  {
    v5 = v4;
    v20 = vdupq_n_s64(1uLL).i64[1];
    while (1)
    {
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v6;
      v28 = v6;
      *__n = v6;
      *__src = v6;
      os_channel_get_next_slot();
      if (currentIncomingPacket->var1 < WORD1(__n[0]))
      {
        break;
      }

      memcpy(currentIncomingPacket->var0, __src[0], WORD1(__n[0]));
      currentIncomingPacket->var2 = WORD1(__n[0]);
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        var2 = currentIncomingPacket->var2;
        *buf = 67109120;
        v22 = var2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DLR %d", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            _IDSLogV();
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v10 = [WeakRetained link:self didReceivePacket:currentIncomingPacket fromDeviceUniqueID:self->_deviceUniqueID cbuuid:self->_cbuuid];

      if ((v10 & 1) == 0)
      {
        v11 = [NSData dataWithBytesNoCopy:currentIncomingPacket->var0 length:currentIncomingPacket->var2 freeWhenDone:0];
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = currentIncomingPacket->var2;
          *buf = 67109378;
          v22 = v13;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Magnet corruption? This packet(%dB) did not decode! data %@", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }
      }

      v14.i64[1] = v20;
      v14.i64[0] = SLODWORD(currentIncomingPacket->var2);
      *&self->_totalBytesReceived = vaddq_s64(v14, *&self->_totalBytesReceived);
      IDSLinkPacketBufferResetBufferStart();
      if (!--v5)
      {
        goto LABEL_34;
      }
    }

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var1 = currentIncomingPacket->var1;
      *buf = 67109376;
      v22 = WORD1(__n[0]);
      v23 = 1024;
      LODWORD(v24) = var1;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DLR 0/%d (packetBuffer %d too small)", buf, 0xEu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

LABEL_34:
    v18 = os_channel_advance_slot();
    if (v18)
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__n[0]) = 67109120;
        HIDWORD(__n[0]) = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "os_channel_advance_slot failed for read %d", __n, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    os_channel_sync();
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__n[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "os_channel_available_slot_count gave no slots to read", __n, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }
}

- (id)generateLinkReport:(double)report isCurrentLink:(BOOL)link
{
  if (self->_previousReportTime == 0.0)
  {
    v9 = 0;
  }

  else
  {
    state = self->_state;
    if (link)
    {
      v7 = 42;
    }

    else
    {
      v7 = 32;
    }

    v23 = v7;
    if (state > 6)
    {
      v8 = "UnexpectedState";
    }

    else
    {
      v8 = _IDSLinkStateStrings[state];
    }

    v22 = v8;
    v21 = self->_totalPacketsSent - self->_previousPacketsSent;
    v10 = formattedBytes();
    v11 = formattedSpeed();
    totalPacketsSent = self->_totalPacketsSent;
    v13 = formattedBytes();
    v14 = self->_totalPacketsReceived - self->_previousPacketsReceived;
    v15 = formattedBytes();
    v16 = formattedSpeed();
    totalPacketsReceived = self->_totalPacketsReceived;
    v18 = formattedBytes();
    v9 = [NSString stringWithFormat:@"%c MagnetIso(%s)  Tx %6llu pkts %@B %@bps     %6llu pkts %@B\n                        Rx %6llu pkts %@B %@bps     %6llu pkts %@B\n", v23, v22, v21, v10, v11, totalPacketsSent, v13, v14, v15, v16, totalPacketsReceived, v18];
  }

  self->_previousReportTime = report;
  v19 = *&self->_totalBytesReceived;
  *&self->_previousBytesSent = *&self->_totalBytesSent;
  *&self->_previousBytesReceived = v19;

  return v9;
}

- (id)copyLinkStatsDict
{
  v3 = [NSDictionary alloc];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesReceived];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_totalBytesSent];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsReceived];
  v7 = [NSNumber numberWithUnsignedLongLong:self->_totalPacketsSent];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"bytesReceived", v5, @"bytesSent", v6, @"packetsReceived", v7, @"packetsSent", 0}];

  return v8;
}

- (IDSLinkDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (IDSLinkDelegate)alternateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateDelegate);

  return WeakRetained;
}

@end