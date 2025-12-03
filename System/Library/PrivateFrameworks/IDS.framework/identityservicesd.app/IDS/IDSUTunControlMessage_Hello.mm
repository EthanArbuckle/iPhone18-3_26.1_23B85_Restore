@interface IDSUTunControlMessage_Hello
- (BOOL)_isSupportIPsecLinkFlagSet;
- (BOOL)_isTinkerFlagSet;
- (IDSUTunControlMessage_Hello)init;
- (IDSUTunControlMessage_Hello)initWithBytes:(const void *)bytes length:(unint64_t)length loggingPrefixString:(id)string;
- (id)data;
- (id)description;
@end

@implementation IDSUTunControlMessage_Hello

- (id)description
{
  v3 = [NSString alloc];
  v12 = *&self->_productVersion;
  v13 = *&self->_controlChannelVersion;
  v11 = *&self->_model;
  v10 = *&self->_minCompatibilityVersion;
  instanceID = self->_instanceID;
  deviceUniqueID = self->_deviceUniqueID;
  v6 = [NSNumber numberWithBool:[(IDSUTunControlMessage_Hello *)self _isSupportIPsecLinkFlagSet]];
  v7 = [NSNumber numberWithBool:[(IDSUTunControlMessage_Hello *)self _isTinkerFlagSet]];
  v8 = [v3 initWithFormat:@"hello (controlChannelVersion: [%@], productName: [%@], productVersion: [%@], productBuildVersion: [%@], model: [%@], protocol: %@ minCompatibilityVersion: %@ maxCompatibilityVersion: %@ deviceUniqueID: %@ instanceID: %@, supportIPsecLink:%@, isTinker: %@)", v13, v12, v11, v10, deviceUniqueID, instanceID, v6, v7];

  return v8;
}

- (BOOL)_isSupportIPsecLinkFlagSet
{
  capabilityFlags = self->_capabilityFlags;
  if (capabilityFlags)
  {
    return ([(NSNumber *)capabilityFlags unsignedLongLongValue]>> 8) & 1;
  }

  return capabilityFlags;
}

- (BOOL)_isTinkerFlagSet
{
  capabilityFlags = self->_capabilityFlags;
  if (capabilityFlags)
  {
    return ([(NSNumber *)capabilityFlags unsignedLongLongValue]>> 10) & 1;
  }

  return capabilityFlags;
}

- (IDSUTunControlMessage_Hello)init
{
  v3.receiver = self;
  v3.super_class = IDSUTunControlMessage_Hello;
  return [(IDSUTunControlMessage_Hello *)&v3 init];
}

- (id)data
{
  if (self->_controlChannelVersion && self->_productName && self->_productVersion && self->_productBuildVersion && self->_model && self->_capabilityFlags && (instanceID = self->_instanceID) != 0 && self->_deviceUniqueID)
  {
    v43[0] = 0xAAAAAAAAAAAAAAAALL;
    v43[1] = 0xAAAAAAAAAAAAAAAALL;
    [(NSUUID *)instanceID getUUIDBytes:v43];
    v42[0] = 0xAAAAAAAAAAAAAAAALL;
    v42[1] = 0xAAAAAAAAAAAAAAAALL;
    [(NSUUID *)self->_deviceUniqueID getUUIDBytes:v42];
    controlChannelVersion = self->_controlChannelVersion;
    productName = self->_productName;
    productVersion = self->_productVersion;
    productBuildVersion = self->_productBuildVersion;
    model = self->_model;
    unsignedIntValue = [(NSNumber *)self->_pairingProtocolVersion unsignedIntValue];
    [(NSNumber *)self->_minCompatibilityVersion unsignedIntValue];
    [(NSNumber *)self->_maxCompatibilityVersion unsignedIntValue];
    [(NSNumber *)self->_capabilityFlags unsignedLongLongValue];
    [(NSNumber *)self->_serviceMinCompatibilityVersion unsignedShortValue];
    v9 = controlChannelVersion;
    v10 = productName;
    v11 = productVersion;
    v12 = productBuildVersion;
    v13 = model;
    v14 = _IDSLinkPacketBufferCreate();
    *(v14 + 1310) = 1;
    if (v9 && (v15 = [(NSString *)v9 UTF8String]) != 0)
    {
      v16 = v15;
      v17 = strlen(v15);
      *(v14 + 1311) = bswap32(v17) >> 16;
      v18 = v17;
      if (v17)
      {
        memcpy((v14 + 1313), v16, v17);
      }
    }

    else
    {
      v18 = 0;
      *(v14 + 1311) = 0;
    }

    v21 = (v14 + v18 + 1313);
    if (v10 && (v22 = [(NSString *)v10 UTF8String]) != 0)
    {
      v23 = v22;
      v24 = strlen(v22);
      *v21 = bswap32(v24) >> 16;
      v25 = v24;
      if (v24)
      {
        memcpy(v21 + 1, v23, v24);
      }
    }

    else
    {
      v25 = 0;
      *v21 = 0;
    }

    v26 = (v21 + v25 + 2);
    if (v11 && (v27 = [(NSString *)v11 UTF8String]) != 0)
    {
      v28 = v27;
      v29 = strlen(v27);
      *v26 = bswap32(v29) >> 16;
      v30 = v29;
      if (v29)
      {
        memcpy(v26 + 1, v28, v29);
      }
    }

    else
    {
      v30 = 0;
      *v26 = 0;
    }

    v31 = (v26 + v30 + 2);
    if (v12 && (v32 = [(NSString *)v12 UTF8String]) != 0)
    {
      v33 = v32;
      v34 = strlen(v32);
      *v31 = bswap32(v34) >> 16;
      v35 = v34;
      if (v34)
      {
        memcpy(v31 + 1, v33, v34);
      }
    }

    else
    {
      v35 = 0;
      *v31 = 0;
    }

    v36 = (v31 + v35 + 2);
    if (v13 && (v37 = [(NSString *)v13 UTF8String]) != 0)
    {
      v38 = v37;
      v39 = strlen(v37);
      *v36 = bswap32(v39) >> 16;
      v40 = v39;
      if (v39)
      {
        memcpy(v36 + 1, v38, v39);
      }
    }

    else
    {
      v40 = 0;
      *v36 = 0;
    }

    *(v36 + v40 + 2) = bswap32(unsignedIntValue);
    IDSByteBufferInitForWriteWithAllocatedSpace();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferWriteField();
    IDSByteBufferRelease();
    v19 = [NSData dataWithBytes:v14 + 1310 length:0xAAAAAAAAAAAAA58CLL - v14];
    _IDSLinkPacketBufferRelease();
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (IDSUTunControlMessage_Hello)initWithBytes:(const void *)bytes length:(unint64_t)length loggingPrefixString:(id)string
{
  stringCopy = string;
  v50.receiver = self;
  v50.super_class = IDSUTunControlMessage_Hello;
  v9 = [(IDSUTunControlMessage_Hello *)&v50 init];
  if (v9)
  {
    if (!length)
    {
      goto LABEL_94;
    }

    v10 = (bytes + 1);
    v11 = length - 1;
    if (length - 1 < 2)
    {
      v22 = 0;
      v46 = 0;
      v47 = 0;
      v27 = 0;
      v45 = 0;
      v26 = 0;
      v25 = 0;
LABEL_58:
      obja = v27;
      objc_storeStrong(&v9->_controlChannelVersion, v27);
      objc_storeStrong(&v9->_productName, v47);
      objc_storeStrong(&v9->_productVersion, v46);
      objc_storeStrong(&v9->_productBuildVersion, v45);
      objc_storeStrong(&v9->_model, v22);
      v31 = [NSNumber numberWithUnsignedInt:v26];
      pairingProtocolVersion = v9->_pairingProtocolVersion;
      v9->_pairingProtocolVersion = v31;

      v33 = v9->_pairingProtocolVersion;
      objc_storeStrong(&v9->_maxCompatibilityVersion, v33);
      objc_storeStrong(&v9->_minCompatibilityVersion, v33);
      v59 = 0xAAAAAAAAAAAAAAAALL;
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v34;
      v58 = v34;
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = 134217984;
        v52 = v25;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Optional field data byte size: %lu", v51, 0xCu);
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

      IDSByteBufferInitForRead();
      if (IDSByteBufferReadField())
      {
        do
        {
          v36 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *v51 = 67109120;
            LODWORD(v52) = 170;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Unknown field type: %u", v51, 8u);
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

        while ((IDSByteBufferReadField() & 1) != 0);
      }

      IDSByteBufferRelease();
      v37 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v9->_pairingProtocolVersion;
        minCompatibilityVersion = v9->_minCompatibilityVersion;
        maxCompatibilityVersion = v9->_maxCompatibilityVersion;
        *v51 = 138412802;
        v52 = v38;
        v53 = 2112;
        v54 = minCompatibilityVersion;
        v55 = 2112;
        v56 = maxCompatibilityVersion;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "ProtocolVersion: %@, min/max: %@ %@", v51, 0x20u);
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

      goto LABEL_79;
    }

    obj = 0;
    v12 = __rev16(*(bytes + 1));
    if (v12)
    {
      v13 = length - 3 - v12;
      if (length - 3 >= v12)
      {
        v14 = bytes + 3;
        obj = [[NSString alloc] initWithBytes:v14 length:v12 encoding:4];
        if (!obj)
        {
          v28 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = stringCopy;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@: control message: hello cannot decode controlChannelVersion", buf, 0xCu);
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

          goto LABEL_94;
        }

        v10 = &v14[v12];
        if (v13 < 2)
        {
          v22 = 0;
          v46 = 0;
          v47 = 0;
          goto LABEL_55;
        }

        v11 = v13;
      }
    }

    v47 = 0;
    v15 = __rev16(*v10);
    if (v15)
    {
      v16 = v11 - 2 - v15;
      if (v11 - 2 >= v15)
      {
        v47 = [[NSString alloc] initWithBytes:v10 + 2 length:v15 encoding:4];
        if (!v47)
        {
          v29 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = stringCopy;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: control message: hello cannot decode productName", buf, 0xCu);
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

          goto LABEL_94;
        }

        v10 = (v10 + v15 + 2);
        v11 = v16;
      }
    }

    if (v11 < 2)
    {
      v22 = 0;
      v46 = 0;
    }

    else
    {
      v46 = 0;
      v17 = __rev16(*v10);
      v18 = v11 - 2;
      if (!v17)
      {
        goto LABEL_19;
      }

      v19 = v18 - v17;
      if (v18 < v17)
      {
        goto LABEL_19;
      }

      v46 = [[NSString alloc] initWithBytes:v10 + 2 length:v17 encoding:4];
      if (!v46)
      {
        v30 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = stringCopy;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: control message: hello cannot decode productVersion", buf, 0xCu);
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

        goto LABEL_94;
      }

      v10 = (v10 + v17 + 2);
      v18 = v19 - 2;
      if (v19 >= 2)
      {
        v11 = v19;
LABEL_19:
        v45 = 0;
        v20 = __rev16(*v10);
        if (v20)
        {
          v21 = v18 - v20;
          if (v18 >= v20)
          {
            v45 = [[NSString alloc] initWithBytes:v10 + 2 length:v20 encoding:4];
            if (!v45)
            {
              v42 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = stringCopy;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%@: control message: hello cannot decode productBuildVersion", buf, 0xCu);
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

              goto LABEL_94;
            }

            v10 = (v10 + v20 + 2);
            v11 = v21;
          }
        }

        if (v11 < 2)
        {
          v22 = 0;
          goto LABEL_56;
        }

        v22 = 0;
        v23 = __rev16(*v10);
        if (!v23 || (v24 = v11 - 2 - v23, v11 - 2 < v23))
        {
LABEL_28:
          v25 = v11 - 4;
          if (v11 >= 4)
          {
            v26 = bswap32(*v10);
LABEL_57:
            v27 = obj;
            goto LABEL_58;
          }

LABEL_56:
          v26 = 0;
          v25 = 0;
          goto LABEL_57;
        }

        v22 = [[NSString alloc] initWithBytes:v10 + 2 length:v23 encoding:4];
        if (v22)
        {
          v10 = (v10 + v23 + 2);
          v11 = v24;
          goto LABEL_28;
        }

        v43 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = stringCopy;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@: control message: hello cannot decode model", buf, 0xCu);
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

LABEL_94:
        v41 = 0;
        goto LABEL_95;
      }

      v22 = 0;
    }

LABEL_55:
    v45 = 0;
    goto LABEL_56;
  }

LABEL_79:
  v41 = v9;
LABEL_95:

  return v41;
}

@end