@interface IDSHCInfo
- (void)invalidate;
- (void)setLocalContext:(void *)context;
- (void)setRemoteContext:(void *)context;
@end

@implementation IDSHCInfo

- (void)invalidate
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    localCID = self->_localCID;
    remoteCID = self->_remoteCID;
    localContext = self->_localContext;
    remoteContext = self->_remoteContext;
    *buf = 67109888;
    v9 = localCID;
    v10 = 2048;
    v11 = localContext;
    v12 = 1024;
    v13 = remoteCID;
    v14 = 2048;
    v15 = remoteContext;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidate HCInfo - local(%d,%p->NULL) remote(%d,%p->NULL)", buf, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  IDSHC_RemoveContext();
  self->_localContext = 0;
  IDSHC_RemoveContext();
  self->_remoteContext = 0;
}

- (void)setLocalContext:(void *)context
{
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    localContext = self->_localContext;
    *buf = 134218240;
    v9 = localContext;
    v10 = 2048;
    contextCopy = context;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setLocalContext - %p->%p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v7 = self->_localContext;
  if (v7)
  {
    free(v7);
  }

  self->_localContext = context;
}

- (void)setRemoteContext:(void *)context
{
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteContext = self->_remoteContext;
    *buf = 134218240;
    v9 = remoteContext;
    v10 = 2048;
    contextCopy = context;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setRemoteContext - %p->%p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v7 = self->_remoteContext;
  if (v7)
  {
    free(v7);
  }

  self->_remoteContext = context;
}

@end