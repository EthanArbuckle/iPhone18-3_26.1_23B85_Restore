@interface IDSClientChannel
- (BOOL)connectWithTransportThread;
- (BOOL)writeBuffer:(char *)a3 bufferSize:(unsigned int)a4 metaData:(const void *)a5 metadataSize:(unsigned int)a6 moreComing:(BOOL)a7;
- (BOOL)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 metaData:(const void *)a5 metadataSize:(unsigned int)a6;
- (BOOL)writePacketBuffer:(id *)a3 metaData:(const void *)a4 metadataSize:(unsigned int)a5 moreComing:(BOOL)a6;
- (IDSClientChannel)initWithDestination:(id)a3;
- (id)description;
- (void)connectWithProtocoHandler;
- (void)dealloc;
- (void)invalidate;
- (void)osChannelInfoLog;
- (void)setWriteHandler:(id)a3;
@end

@implementation IDSClientChannel

- (IDSClientChannel)initWithDestination:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSClientChannel;
  v5 = [(IDSClientChannel *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    destination = v5->_destination;
    v5->_destination = v6;
  }

  return v5;
}

- (id)description
{
  destination = self->_destination;
  uuid = self->_uuid;
  v5 = objc_retainBlock(self->_readHandler);
  v6 = objc_retainBlock(self->_packetBufferHandler);
  v7 = objc_retainBlock(self->_writeHandler);
  v8 = objc_retainBlock(self->_connectHandler);
  v9 = v8;
  if (self->_hasMetadata)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [NSString stringWithFormat:@"IDSClientChannel %p destination %@ uuid %@ readHandler %p packetBufferHandler %p writeHandler %p connectHandler %p hasMetadata %@", self, destination, uuid, v5, v6, v7, v8, v10];

  return v11;
}

- (void)dealloc
{
  if (self->_osChannelAttributes)
  {
    os_channel_attr_destroy();
    self->_osChannelAttributes = 0;
  }

  free(self->_clientProtocol);
  path = self->_path;
  self->_path = 0;

  v4.receiver = self;
  v4.super_class = IDSClientChannel;
  [(IDSClientChannel *)&v4 dealloc];
}

- (BOOL)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 metaData:(const void *)a5 metadataSize:(unsigned int)a6
{
  if (self->_clientReady)
  {
    if (!self->_nwChannel)
    {
      v11 = [IDSFoundationLog ClientChannel:a3];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v29 = a4;
        v30 = 2048;
        v31 = a6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "writeDatagram: attempt to send client data %lu metadata %lu but no channel", buf, 0x16u);
      }

      return 0;
    }

    if (self->_closed)
    {
      v9 = [IDSFoundationLog ClientChannel:a3];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "writeDatagram: channel closed";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    protocol_handler = nw_channel_get_protocol_handler();
    if (self->_verboseFunctionalLogging)
    {
      v15 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(protocol_handler + 56);
        *buf = 134218752;
        v29 = a4;
        v30 = 2048;
        v31 = a6;
        v32 = 2048;
        v33 = protocol_handler;
        v34 = 2048;
        v35 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "writeDatagram: have data %lu metadata %lu to send to client protocol %p context %p", buf, 0x2Au);
      }
    }

    v27[0] = 0xAAAAAAAAAAAAAAAALL;
    v27[1] = 0xAAAAAAAAAAAAAAAALL;
    if (!(*(*(protocol_handler + 24) + 88))(protocol_handler, self->_clientProtocol, 1, 0xFFFFFFFFLL, 1, v27))
    {
      return 0;
    }

    v17 = nw_frame_array_first();
    v18 = nw_frame_unclaimed_bytes();
    hasMetadata = self->_hasMetadata;
    v20 = a6 + 2;
    if (!self->_hasMetadata)
    {
      v20 = 0;
    }

    v21 = v20 + a4 == 0;
    if (v20 + a4)
    {
      v25 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v29 = a4;
        v30 = 2048;
        v31 = a6;
        v32 = 2048;
        v33 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "writeDatagram: have data %lu metadata %lu to send to client but not enough bytes (%lu) in frame", buf, 0x20u);
      }

      nw_frame_array_foreach();
      goto LABEL_36;
    }

    v22 = v18;
    if (hasMetadata)
    {
      *v18 = bswap32(a6) >> 16;
      if (a6)
      {
        memcpy(v18 + 1, a5, a6);
      }

      if (!a4)
      {
        goto LABEL_35;
      }

      v23 = a4;
      v18 = (v22 + a6 + 2);
    }

    else
    {
      if (!a4)
      {
LABEL_35:
        nw_frame_claim();
        nw_frame_collapse();
        nw_frame_unclaim();
        (*(*(protocol_handler + 24) + 96))(protocol_handler, v27);
LABEL_36:

        return v21;
      }

      v23 = a4;
    }

    memcpy(v18, a3, v23);
    goto LABEL_35;
  }

  v9 = [IDSFoundationLog ClientChannel:a3];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "writeDatagram: client not ready yet - return NO for caller to cache";
    goto LABEL_8;
  }

LABEL_9:

  return 0;
}

- (BOOL)writePacketBuffer:(id *)a3 metaData:(const void *)a4 metadataSize:(unsigned int)a5 moreComing:(BOOL)a6
{
  if (!self->_clientReady)
  {
    v13 = [IDSFoundationLog ClientChannel:a3];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "writePacketBuffer: client not ready yet - return NO for caller to cache";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_11:

    return 0;
  }

  if (a3)
  {
    var0 = a3->var0;
    var2 = a3->var2;
  }

  else
  {
    var2 = 0;
    var0 = 0;
  }

  if (self->_closed)
  {
    v13 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "writePacketBuffer: channel closed";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (var2 | a5)
  {
    if (os_channel_available_slot_count())
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v64 = v16;
      v65 = v16;
      *buf = v16;
      *&buf[16] = v16;
      os_channel_get_next_slot();
      if (self->_hasMetadata)
      {
        v17 = a5 + 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + var2;
      if (!(v17 + var2))
      {
        v27 = +[IDSFoundationLog ClientChannel];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          hasMetadata = self->_hasMetadata;
          *v50 = 138412802;
          if (hasMetadata)
          {
            v29 = @"YES";
          }

          else
          {
            v29 = @"NO";
          }

          v51 = v29;
          v52 = 1024;
          *v53 = a5;
          *&v53[4] = 1024;
          *&v53[6] = var2;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: Ignoring a zero-byte message. hasMetadata = %@, metadataSize = %u, datagramSize = %u", v50, 0x18u);
        }

        return 1;
      }

      if (v18 > *&buf[2])
      {
        v19 = +[IDSFoundationLog ClientChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *v50 = 134218496;
          v51 = var2;
          v52 = 2048;
          *v53 = a5;
          *&v53[8] = 2048;
          v54 = *&buf[2];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: have data %lu metadata %lu to send to client but not enough bytes %lu in slot", v50, 0x20u);
        }

        return 1;
      }

      if (!self->_verboseFunctionalLogging)
      {
LABEL_57:
        *buf = 0;
        *&buf[2] = v18;
        v40 = *&buf[16];
        if (self->_hasMetadata)
        {
          **&buf[16] = bswap32(a5) >> 16;
          if (a5)
          {
            memcpy((v40 + 2), a4, a5);
          }

          if (!var2)
          {
            goto LABEL_64;
          }

          v41 = var2;
          v42 = (v40 + a5 + 2);
        }

        else
        {
          v41 = var2;
          v42 = *&buf[16];
        }

        memcpy(v42, var0, v41);
LABEL_64:
        uuid_copy(*&buf[24], self->_flowID);
        os_channel_set_slot_properties();
        v43 = os_channel_advance_slot();
        if (v43)
        {
          v44 = v43;
          [(IDSClientChannel *)self osChannelInfoLog];
          v45 = +[IDSFoundationLog ClientChannel];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v50 = 67109120;
            LODWORD(v51) = v44;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: advance_slot failed for write %d", v50, 8u);
          }
        }

        if (a6)
        {
          self->_osChannelNeedSync = 1;
        }

        else
        {
          v46 = os_channel_sync();
          if (v46)
          {
            v47 = v46;
            [(IDSClientChannel *)self osChannelInfoLog];
            v48 = +[IDSFoundationLog ClientChannel];
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *v50 = 67109120;
              LODWORD(v51) = v47;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: os_channel_sync for TX failed %d", v50, 8u);
            }
          }

          self->_osChannelNeedSync = 0;
        }

        return 1;
      }

      log = +[IDSFoundationLog ClientChannel];
      v30 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (var2)
      {
        if (v30)
        {
          if (a3)
          {
            v31 = *a3->var0;
            v32 = *(a3->var0 + 1);
            v33 = *(a3->var0 + 2);
            v34 = *(a3->var0 + 3);
          }

          else
          {
            v33 = 0;
            v31 = 0;
            v32 = 0;
            v34 = 0;
          }

          *v50 = 134219520;
          v51 = var2;
          v52 = 2048;
          *v53 = a5;
          *&v53[8] = 2048;
          v54 = *&buf[2];
          v55 = 1024;
          v56 = v31;
          v57 = 1024;
          v58 = v32;
          v59 = 1024;
          v60 = v33;
          v61 = 1024;
          v62 = v34;
          v39 = "writePacketBuffer: have data %lu metadata %lu bytes %lu in slot, data [%02x%02x%02x%02x ...]";
          goto LABEL_55;
        }
      }

      else if (v30)
      {
        v35 = *a4;
        v36 = *(a4 + 1);
        v37 = *(a4 + 2);
        v38 = *(a4 + 3);
        *v50 = 134219520;
        v51 = 0;
        v52 = 2048;
        *v53 = a5;
        *&v53[8] = 2048;
        v54 = *&buf[2];
        v55 = 1024;
        v56 = v35;
        v57 = 1024;
        v58 = v36;
        v59 = 1024;
        v60 = v37;
        v61 = 1024;
        v62 = v38;
        v39 = "writePacketBuffer: have data %lu metadata %lu bytes %lu in slot, metadata [%02x%02x%02x%02x ...]";
LABEL_55:
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, v39, v50, 0x38u);
      }

      goto LABEL_57;
    }

    [(IDSClientChannel *)self osChannelInfoLog];
    v24 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = var2;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: have data %lu metadata %lu to send to client but no slots", buf, 0x16u);
    }

    if (!self->_osChannelNeedSync)
    {
      return 0;
    }

    v25 = os_channel_sync();
    if (v25)
    {
      v26 = v25;
      v23 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v26;
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v20 = +[IDSFoundationLog ClientChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: have no data to send to client", buf, 2u);
  }

  result = 0;
  if (self->_osChannelNeedSync && !a6)
  {
    v21 = os_channel_sync();
    if (v21)
    {
      v22 = v21;
      [(IDSClientChannel *)self osChannelInfoLog];
      v23 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v22;
LABEL_37:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "writePacketBuffer: os_channel_sync for TX failed %d", buf, 8u);
      }

LABEL_38:
    }

LABEL_39:
    result = 0;
    self->_osChannelNeedSync = 0;
  }

  return result;
}

- (BOOL)writeBuffer:(char *)a3 bufferSize:(unsigned int)a4 metaData:(const void *)a5 metadataSize:(unsigned int)a6 moreComing:(BOOL)a7
{
  if (!self->_clientReady)
  {
    v10 = [IDSFoundationLog ClientChannel:a3];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "writeBuffer: client not ready yet - return NO for caller to cache";
      goto LABEL_10;
    }

LABEL_11:

    return 0;
  }

  if (a3)
  {
    v9 = a4;
  }

  else
  {
    v9 = 0;
  }

  if (self->_closed)
  {
    v10 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "writeBuffer: channel closed";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v9 | a6)
  {
    if (os_channel_available_slot_count())
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = v16;
      v62 = v16;
      *buf = v16;
      *&buf[16] = v16;
      os_channel_get_next_slot();
      if (self->_hasMetadata)
      {
        v17 = a6 + 2;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17 + v9;
      if (v17 + v9 > *&buf[2])
      {
        v19 = +[IDSFoundationLog ClientChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 134218496;
          v47 = v9;
          v48 = 2048;
          v49 = a6;
          v50 = 2048;
          v51 = *&buf[2];
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "writeBuffer: have data %lu metadata %lu to send to client but not enough bytes %lu in slot", &v46, 0x20u);
        }

        return 1;
      }

      if (!self->_verboseFunctionalLogging)
      {
LABEL_50:
        *buf = 0;
        *&buf[2] = v18;
        v38 = *&buf[16];
        if (self->_hasMetadata)
        {
          **&buf[16] = bswap32(a6) >> 16;
          if (a6)
          {
            memcpy((v38 + 2), a5, a6);
          }

          if (!v9)
          {
            goto LABEL_57;
          }

          v39 = (v38 + a6 + 2);
        }

        else
        {
          v39 = *&buf[16];
        }

        memcpy(v39, a3, v9);
LABEL_57:
        uuid_copy(*&buf[24], self->_flowID);
        os_channel_set_slot_properties();
        v40 = os_channel_advance_slot();
        if (v40)
        {
          v41 = v40;
          [(IDSClientChannel *)self osChannelInfoLog];
          v42 = +[IDSFoundationLog ClientChannel];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v46 = 67109120;
            LODWORD(v47) = v41;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "writeBuffer: advance_slot failed for write %d", &v46, 8u);
          }
        }

        if (a7)
        {
          self->_osChannelNeedSync = 1;
        }

        else
        {
          v43 = os_channel_sync();
          if (v43)
          {
            v44 = v43;
            [(IDSClientChannel *)self osChannelInfoLog];
            v45 = +[IDSFoundationLog ClientChannel];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = 67109120;
              LODWORD(v47) = v44;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "writeBuffer: os_channel_sync for TX failed %d", &v46, 8u);
            }
          }

          self->_osChannelNeedSync = 0;
        }

        return 1;
      }

      v27 = +[IDSFoundationLog ClientChannel];
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v28)
        {
          if (a3)
          {
            v29 = *a3;
            v30 = a3[1];
            v31 = a3[2];
            v32 = a3[3];
          }

          else
          {
            v31 = 0;
            v29 = 0;
            v30 = 0;
            v32 = 0;
          }

          v46 = 134219520;
          v47 = v9;
          v48 = 2048;
          v49 = a6;
          v50 = 2048;
          v51 = *&buf[2];
          v52 = 1024;
          v53 = v29;
          v54 = 1024;
          v55 = v30;
          v56 = 1024;
          v57 = v31;
          v58 = 1024;
          v59 = v32;
          v37 = "writeBuffer: have data %lu metadata %lu bytes %lu in slot, data [%02x%02x%02x%02x ...]";
          goto LABEL_48;
        }
      }

      else if (v28)
      {
        v33 = *a5;
        v34 = *(a5 + 1);
        v35 = *(a5 + 2);
        v36 = *(a5 + 3);
        v46 = 134219520;
        v47 = 0;
        v48 = 2048;
        v49 = a6;
        v50 = 2048;
        v51 = *&buf[2];
        v52 = 1024;
        v53 = v33;
        v54 = 1024;
        v55 = v34;
        v56 = 1024;
        v57 = v35;
        v58 = 1024;
        v59 = v36;
        v37 = "writeBuffer: have data %lu metadata %lu bytes %lu in slot, metadata [%02x%02x%02x%02x ...]";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v37, &v46, 0x38u);
      }

      goto LABEL_50;
    }

    [(IDSClientChannel *)self osChannelInfoLog];
    v24 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = a6;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "writeBuffer: have data %lu metadata %lu to send to client but no slots", buf, 0x16u);
    }

    if (!self->_osChannelNeedSync)
    {
      return 0;
    }

    v25 = os_channel_sync();
    if (v25)
    {
      v26 = v25;
      v23 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v26;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v20 = +[IDSFoundationLog ClientChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "writeBuffer: have no data to send to client", buf, 2u);
  }

  result = 0;
  if (self->_osChannelNeedSync && !a7)
  {
    v21 = os_channel_sync();
    if (v21)
    {
      v22 = v21;
      [(IDSClientChannel *)self osChannelInfoLog];
      v23 = +[IDSFoundationLog ClientChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v22;
LABEL_36:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "writeBuffer: os_channel_sync for TX failed %d", buf, 8u);
      }

LABEL_37:
    }

LABEL_38:
    result = 0;
    self->_osChannelNeedSync = 0;
  }

  return result;
}

- (void)setWriteHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_clientReady)
  {
    v6 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "setWriteHandler: client not ready yet - will not set writeHandler";
      v8 = buf;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (self->_closed)
  {
    v6 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "setWriteHandler: channel closed";
      v8 = &v12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (self->_osChannel)
  {
    if (v4)
    {
      v9 = [v4 copy];
      writeHandler = self->_writeHandler;
      self->_writeHandler = v9;

      os_channel_get_fd();
      IDSTransportThreadResumeSocket();
    }

    else
    {
      v11 = self->_writeHandler;
      self->_writeHandler = 0;

      os_channel_get_fd();
      IDSTransportThreadSuspendSocket();
    }
  }

LABEL_9:
}

- (BOOL)connectWithTransportThread
{
  if (self->_closed)
  {
    v2 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connectWithTransportThread: channel closed", v6, 2u);
    }

    return 0;
  }

  else
  {
    v4 = self;
    v5 = +[IDSClientChannelManager sharedInstance];
    LOBYTE(v4) = [v5 connectTransportThreadForClient:v4];

    return v4;
  }
}

- (void)connectWithProtocoHandler
{
  if (self->_closed)
  {
    v2 = +[IDSFoundationLog ClientChannel];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "connectWithProtocoHandler: channel closed", buf, 2u);
    }
  }

  else
  {
    v4 = +[IDSClientChannelManager sharedInstance];
    [v4 connectProtocolHandlerForClient:self];
  }
}

- (void)invalidate
{
  writeHandler = self->_writeHandler;
  self->_writeHandler = 0;

  readHandler = self->_readHandler;
  self->_readHandler = 0;

  self->_closed = 1;
}

- (void)osChannelInfoLog
{
  if (!self->_osChannel)
  {
    v11 = +[IDSFoundationLog ClientChannel];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v13) = 0;
    v6 = "osChannelInfoLog: _osChannel is NULL.";
    v7 = v11;
    v8 = 2;
    goto LABEL_13;
  }

  os_channel_ring_id();
  v2 = os_channel_rx_ring();
  os_channel_ring_id();
  v3 = os_channel_tx_ring();
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v11 = +[IDSFoundationLog ClientChannel];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v13 = 134218240;
    *v14 = v2;
    *&v14[8] = 2048;
    v15 = v4;
    v6 = "osChannelInfoLog: os_channel ring is NULL (_osChannelRXRing %p, _osChannelTXRing %p)";
    v7 = v11;
    v8 = 22;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
    goto LABEL_14;
  }

  v9 = os_channel_available_slot_count();
  v10 = os_channel_available_slot_count();
  v11 = +[IDSFoundationLog ClientChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109376;
    *v14 = v9;
    *&v14[4] = 1024;
    *&v14[6] = v10;
    v6 = "osChannelInfoLog: os_channel rx slot count %u tx slot count %u";
    v7 = v11;
    v8 = 14;
    goto LABEL_13;
  }

LABEL_14:
}

@end