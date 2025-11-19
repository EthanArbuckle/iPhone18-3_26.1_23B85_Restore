@interface IDSUTunPeerServiceMap
- (BOOL)associateServiceName:(id)a3 withStreamID:(unsigned __int16)a4 remoteInstanceID:(unsigned __int8 *)(a5 remoteInstanceIDChanged:;
- (BOOL)setRemoteInstanceID:(unsigned __int8 *)(a3;
- (BOOL)translateServiceName:(id)a3 toStreamID:(unsigned __int16 *)a4 createIfNotFound:(BOOL)a5 mappingCreated:(BOOL *)a6 remoteInstanceID:(unsigned __int8 *)(a7 remoteInstanceIDChanged:;
- (BOOL)translateStreamID:(unsigned __int16)a3 toServiceName:(id *)a4 remoteInstanceID:(unsigned __int8 *)(a5 remoteInstanceIDChanged:;
- (IDSUTunPeerServiceMap)initWithName:(id)a3;
- (id)description;
- (unint64_t)count;
- (void)_dumpServiceMap;
- (void)_simulateCrashWithErrorString:(id)a3;
- (void)dumpServiceMap;
@end

@implementation IDSUTunPeerServiceMap

- (IDSUTunPeerServiceMap)initWithName:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IDSUTunPeerServiceMap;
  v5 = [(IDSUTunPeerServiceMap *)&v13 init];
  if (v5)
  {
    v6 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:1282 capacity:20];
    serviceNameToStreamIDMap = v5->_serviceNameToStreamIDMap;
    v5->_serviceNameToStreamIDMap = v6;

    v8 = [[NSMapTable alloc] initWithKeyOptions:1282 valueOptions:0 capacity:20];
    streamIDToServiceNameMap = v5->_streamIDToServiceNameMap;
    v5->_streamIDToServiceNameMap = v8;

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_nextStreamID = 1;
    v10 = [v4 copy];
    name = v5->_name;
    v5->_name = v10;
  }

  return v5;
}

- (id)description
{
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v3;
  *&out[16] = v3;
  uuid_unparse_upper(self->_remoteInstanceID, out);
  v4 = [NSString stringWithFormat:@"<%p> name %@ instanceID [%s] nextStreamID %u\n_serviceNameToStreamIDMap %@\n_streamIDToServiceNameMap %@\n", self, self->_name, out, self->_nextStreamID, self->_serviceNameToStreamIDMap, self->_streamIDToServiceNameMap];

  return v4;
}

- (BOOL)setRemoteInstanceID:(unsigned __int8 *)(a3
{
  os_unfair_lock_lock(&self->_lock);
  v6 = uuid_compare(a3, self->_remoteInstanceID);
  if (v6)
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v7;
    *&out[16] = v7;
    *&v22[29] = 0xAAAAAAAAAAAAAAAALL;
    *v22 = v7;
    *&v22[16] = v7;
    uuid_unparse_upper(self->_remoteInstanceID, out);
    uuid_unparse_upper(a3, v22);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = out;
      *&buf[12] = 2080;
      *&buf[14] = v22;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote instance ID reset: old [%s] new [%s]", buf, 0x16u);
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

    v9 = 8;
    previousRemoteInstanceIDs = self->_previousRemoteInstanceIDs;
    while (1)
    {
      v11 = uuid_compare(a3, previousRemoteInstanceIDs);
      v3 = v11 != 0;
      if (!v11)
      {
        break;
      }

      ++previousRemoteInstanceIDs;
      if (!--v9)
      {
        uuid_copy(self->_remoteInstanceID, a3);
        [(NSMapTable *)self->_serviceNameToStreamIDMap removeAllObjects];
        [(NSMapTable *)self->_streamIDToServiceNameMap removeAllObjects];
        self->_nextStreamID = 1;
        uuid_copy(self->_previousRemoteInstanceIDs[self->_nextRemoteInstanceIDIndex], a3);
        v12 = self->_nextRemoteInstanceIDIndex + 1;
        v13 = -v12 < 0;
        v14 = -v12 & 7;
        v15 = v12 & 7;
        if (!v13)
        {
          v15 = -v14;
        }

        self->_nextRemoteInstanceIDIndex = v15;
        goto LABEL_21;
      }
    }

    *&buf[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v16;
    *&buf[16] = v16;
    uuid_unparse_upper(a3, buf);
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315138;
      v20 = buf;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asked to set remote instanceID for previous ID [%s]", v19, 0xCu);
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

LABEL_21:
  os_unfair_lock_unlock(&self->_lock);
  return v6 == 0 || v3;
}

- (BOOL)associateServiceName:(id)a3 withStreamID:(unsigned __int16)a4 remoteInstanceID:(unsigned __int8 *)(a5 remoteInstanceIDChanged:
{
  v8 = a4;
  v10 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (uuid_compare(a5, self->_remoteInstanceID))
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v11;
    *&out[16] = v11;
    *(&value[1] + 13) = 0xAAAAAAAAAAAAAAAALL;
    value[0] = v11;
    value[1] = v11;
    uuid_unparse_upper(self->_remoteInstanceID, out);
    uuid_unparse_upper(a5, value);
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = out;
      v33 = 2080;
      v34 = value;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Remote instance ID do not match: old [%s] new [%s]", buf, 0x16u);
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

    v13 = 0;
    *a6 = 1;
    goto LABEL_45;
  }

  if (v8)
  {
    *&value[0] = 0xAAAAAAAAAAAAAAAALL;
    v14 = NSMapMember(self->_streamIDToServiceNameMap, v8, 0, value);
    v15 = v14;
    v16 = *&value[0];
    if (v14)
    {
      v17 = *&value[0];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = NSMapMember(self->_serviceNameToStreamIDMap, v10, 0, value);
    v20 = v19;
    if (v19)
    {
      v21 = value[0];
    }

    else
    {
      v21 = 0;
    }

    if (v15)
    {
      v22 = [v10 isEqualToString:v16];
      if (v20 && v21 != v8 || (v22 & 1) == 0)
      {
        v23 = @"YES";
        v24 = @"NO";
        if (v22)
        {
          v23 = @"NO";
        }

        if (!v20 || v21 == v8)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if (v21 != v8 && v19)
    {
      v23 = @"NO";
LABEL_35:
      v24 = @"YES";
LABEL_36:
      v27 = [NSString stringWithFormat:@"serviceMap[%@ <=> %lu] serviceNameMismatch %@ streamIDMismatch %@ [%@ <=> %lu]", v10, v8, v23, v24, v18, v21];
      v28 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *out = 138412290;
        *&out[4] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%@", out, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v30 = v27;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v30 = v27;
            _IDSLogV();
          }
        }
      }

      [(IDSUTunPeerServiceMap *)self _simulateCrashWithErrorString:v27, v30];

      v13 = 0;
      goto LABEL_44;
    }

    [(NSMapTable *)self->_serviceNameToStreamIDMap setObject:v8 forKey:v10];
    [(NSMapTable *)self->_streamIDToServiceNameMap setObject:v10 forKey:v8];
    v13 = 1;
LABEL_44:

    goto LABEL_45;
  }

  v25 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *out = 138412290;
    *&out[4] = v10;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "cannot associate %@ with streamID 0", out, 0xCu);
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

  v13 = 0;
LABEL_45:
  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (BOOL)translateStreamID:(unsigned __int16)a3 toServiceName:(id *)a4 remoteInstanceID:(unsigned __int8 *)(a5 remoteInstanceIDChanged:
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (uuid_compare(a5, self->_remoteInstanceID))
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v11;
    *&out[16] = v11;
    *&v19[29] = 0xAAAAAAAAAAAAAAAALL;
    *v19 = v11;
    *&v19[16] = v11;
    uuid_unparse_upper(self->_remoteInstanceID, out);
    uuid_unparse_upper(a5, v19);
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = out;
      v17 = 2080;
      v18 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Remote instance ID do not match: old [%s] new [%s]", buf, 0x16u);
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

    v13 = 0;
    *a6 = 1;
  }

  else
  {
    *out = 0xAAAAAAAAAAAAAAAALL;
    v13 = NSMapMember(self->_streamIDToServiceNameMap, v9, 0, out);
    if (v13)
    {
      *a4 = *out;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (BOOL)translateServiceName:(id)a3 toStreamID:(unsigned __int16 *)a4 createIfNotFound:(BOOL)a5 mappingCreated:(BOOL *)a6 remoteInstanceID:(unsigned __int8 *)(a7 remoteInstanceIDChanged:
{
  v11 = a5;
  v14 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!uuid_compare(a7, self->_remoteInstanceID))
  {
    *&value[0] = 0xAAAAAAAAAAAAAAAALL;
    if (NSMapMember(self->_serviceNameToStreamIDMap, v14, 0, value))
    {
      if (*&value[0] >= 0x10000uLL)
      {
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *out = 134218242;
          *&out[4] = *&value[0];
          *&out[12] = 2112;
          *&out[14] = v14;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unexpected streamID %lu found when asked to translate %@", out, 0x16u);
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

        goto LABEL_20;
      }

      *a4 = value[0];
    }

    else
    {
      if (!v11)
      {
LABEL_20:
        v17 = 0;
        goto LABEL_28;
      }

      if ([(NSMapTable *)self->_serviceNameToStreamIDMap count]> 0xFFFE)
      {
        v17 = 0;
        *a6 = 0;
        goto LABEL_28;
      }

      do
      {
        nextStreamID = self->_nextStreamID;
        if (((nextStreamID + 1) & 0x10000) != 0)
        {
          v20 = 1;
        }

        else
        {
          v20 = nextStreamID + 1;
        }

        self->_nextStreamID = v20;
      }

      while (NSMapMember(self->_streamIDToServiceNameMap, nextStreamID, 0, value));
      *a4 = nextStreamID;
      *a6 = 1;
      [(NSMapTable *)self->_serviceNameToStreamIDMap setObject:nextStreamID forKey:v14];
      [(NSMapTable *)self->_streamIDToServiceNameMap setObject:v14 forKey:nextStreamID];
    }

    v17 = 1;
    goto LABEL_28;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v15;
  *&out[16] = v15;
  *(&value[1] + 13) = 0xAAAAAAAAAAAAAAAALL;
  value[0] = v15;
  value[1] = v15;
  uuid_unparse_upper(self->_remoteInstanceID, out);
  uuid_unparse_upper(a7, value);
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = out;
    v24 = 2080;
    v25 = value;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Remote instance ID do not match: old [%s] new [%s]", buf, 0x16u);
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

  v17 = 0;
  *a8 = 1;
LABEL_28:
  os_unfair_lock_unlock(&self->_lock);

  return v17;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMapTable *)self->_serviceNameToStreamIDMap count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_dumpServiceMap
{
  v3 = +[NSMutableString string];
  for (i = 58; i != 186; i += 16)
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v5;
    *&out[16] = v5;
    uuid_unparse_upper(self + i, out);
    [v3 appendFormat:@"%s\n", out];
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    nextRemoteInstanceIDIndex = self->_nextRemoteInstanceIDIndex;
    *out = 138412802;
    *&out[4] = self;
    *&out[12] = 1024;
    *&out[14] = nextRemoteInstanceIDIndex;
    *&out[18] = 2112;
    *&out[20] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@\nPrevious Remote Instance IDs (next:%d) {%@}", out, 0x1Cu);
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

- (void)dumpServiceMap
{
  os_unfair_lock_lock(&self->_lock);
  [(IDSUTunPeerServiceMap *)self _dumpServiceMap];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_simulateCrashWithErrorString:(id)a3
{
  v5 = a3;
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 processName];
  IMLogSimulateCrashForProcess();
}

@end