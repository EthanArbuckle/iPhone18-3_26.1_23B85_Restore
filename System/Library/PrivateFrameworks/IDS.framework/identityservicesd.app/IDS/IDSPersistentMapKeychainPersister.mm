@interface IDSPersistentMapKeychainPersister
- (BOOL)isAvailable;
- (IDSPersistentMapKeychainPersister)initWithIdentifier:(id)identifier keychainWrapper:(id)wrapper systemMonitor:(id)monitor;
- (id)data;
- (void)purgeData;
- (void)saveData:(id)data allowBackup:(BOOL)backup;
@end

@implementation IDSPersistentMapKeychainPersister

- (IDSPersistentMapKeychainPersister)initWithIdentifier:(id)identifier keychainWrapper:(id)wrapper systemMonitor:(id)monitor
{
  identifierCopy = identifier;
  wrapperCopy = wrapper;
  monitorCopy = monitor;
  v15.receiver = self;
  v15.super_class = IDSPersistentMapKeychainPersister;
  v12 = [(IDSPersistentMapKeychainPersister *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_keychainWrapper, wrapper);
    objc_storeStrong(&v13->_systemMonitor, monitor);
  }

  return v13;
}

- (BOOL)isAvailable
{
  systemMonitor = [(IDSPersistentMapKeychainPersister *)self systemMonitor];
  isUnderFirstDataProtectionLock = [systemMonitor isUnderFirstDataProtectionLock];

  return isUnderFirstDataProtectionLock ^ 1;
}

- (id)data
{
  if ([(IDSPersistentMapKeychainPersister *)self isAvailable])
  {
    keychainWrapper = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
    identifier = self->_identifier;
    v12 = 0;
    v5 = [keychainWrapper dataForIdentifier:identifier error:&v12];
    v6 = v12;

    if (!v5)
    {
      v7 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_identifier;
        keychainWrapper2 = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
        *buf = 138543874;
        v14 = v6;
        v15 = 2114;
        v16 = v8;
        v17 = 2114;
        v18 = keychainWrapper2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to load persistent cache data from keychainWrapper {error: %{public}@, identifier: %{public}@, keychainWrapper: %{public}@}", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        keychainWrapper3 = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
        _IDSLogV();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)saveData:(id)data allowBackup:(BOOL)backup
{
  backupCopy = backup;
  dataCopy = data;
  if ([(IDSPersistentMapKeychainPersister *)self isAvailable])
  {
    keychainWrapper = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
    identifier = self->_identifier;
    v15 = 0;
    v9 = [keychainWrapper saveData:dataCopy forIdentifier:identifier allowSync:0 allowBackup:backupCopy dataProtectionClass:2 error:&v15];
    v10 = v15;

    if ((v9 & 1) == 0)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_identifier;
        keychainWrapper2 = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
        *buf = 138544131;
        v17 = v10;
        v18 = 2114;
        v19 = v12;
        v20 = 2113;
        v21 = dataCopy;
        v22 = 2114;
        v23 = keychainWrapper2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to save persistent cache data to keychainWrapper {error: %{public}@, identifier: %{public}@, data: %{private}@, keychainWrapper: %{public}@}", buf, 0x2Au);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        keychainWrapper3 = [(IDSPersistentMapKeychainPersister *)self keychainWrapper];
        _IDSLogV();
      }
    }
  }
}

- (void)purgeData
{
  if ([(IDSPersistentMapKeychainPersister *)self isAvailable])
  {

    [(IDSPersistentMapKeychainPersister *)self saveData:0 allowBackup:1];
  }

  else
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tried to purge before available -- returning {self: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end