@interface IDSPublicKeyStorageCache
- (id)cachedIdentityForDeviceID:(id)a3;
- (void)cacheIdentity:(id)a3 forDeviceID:(id)a4 andPushToken:(id)a5;
- (void)clearCache;
- (void)logState;
- (void)removeCachedIdentityForPushToken:(id)a3;
@end

@implementation IDSPublicKeyStorageCache

- (id)cachedIdentityForDeviceID:(id)a3
{
  if ([a3 isEqualToString:self->_deviceID])
  {
    v4 = self->_identity;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)cacheIdentity:(id)a3 forDeviceID:(id)a4 andPushToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  deviceID = self->_deviceID;
  self->_deviceID = v9;
  v15 = v9;

  identity = self->_identity;
  self->_identity = v8;
  v13 = v8;

  pushToken = self->_pushToken;
  self->_pushToken = v10;
}

- (void)removeCachedIdentityForPushToken:(id)a3
{
  if ([a3 isEqualToData:self->_pushToken])
  {
    deviceID = self->_deviceID;
    self->_deviceID = 0;

    identity = self->_identity;
    self->_identity = 0;

    pushToken = self->_pushToken;
    self->_pushToken = 0;
  }
}

- (void)clearCache
{
  deviceID = self->_deviceID;
  self->_deviceID = 0;

  identity = self->_identity;
  self->_identity = 0;

  pushToken = self->_pushToken;
  self->_pushToken = 0;
}

- (void)logState
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "====== Personal Key Cache:", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    _IDSWarnV();
    _IDSLogV();
    _IDSLogTransport();
  }

  if (self->_deviceID)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      deviceID = self->_deviceID;
      identity = self->_identity;
      pushToken = self->_pushToken;
      *buf = 138412802;
      v9 = deviceID;
      v10 = 2112;
      v11 = identity;
      v12 = 2112;
      v13 = pushToken;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "   Device ID: %@    Identity: %@   PushToken: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

@end