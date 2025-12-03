@interface IDSPersistentMigratingPersister
- (BOOL)isAvailable;
- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)persister destinationPersister:(id)destinationPersister;
- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)persister destinationPersister:(id)destinationPersister userDefaults:(id)defaults;
- (NSString)description;
- (id)data;
- (void)purgeData;
- (void)saveData:(id)data allowBackup:(BOOL)backup;
@end

@implementation IDSPersistentMigratingPersister

- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)persister destinationPersister:(id)destinationPersister
{
  destinationPersisterCopy = destinationPersister;
  persisterCopy = persister;
  v8 = +[IMUserDefaults sharedDefaults];
  v9 = [(IDSPersistentMigratingPersister *)self initWithOriginPersister:persisterCopy destinationPersister:destinationPersisterCopy userDefaults:v8];

  return v9;
}

- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)persister destinationPersister:(id)destinationPersister userDefaults:(id)defaults
{
  persisterCopy = persister;
  destinationPersisterCopy = destinationPersister;
  defaultsCopy = defaults;
  v20.receiver = self;
  v20.super_class = IDSPersistentMigratingPersister;
  v11 = [(IDSPersistentMigratingPersister *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userDefaults, defaults);
    objc_storeStrong(&v12->_destinationPersister, destinationPersister);
    identifier = [destinationPersisterCopy identifier];
    v14 = [NSString stringWithFormat:@"persister-migration-%@", identifier];
    migrationDefaultKey = v12->_migrationDefaultKey;
    v12->_migrationDefaultKey = v14;

    v16 = [(IMUserDefaults *)v12->_userDefaults appBoolForKey:v12->_migrationDefaultKey];
    v12->_migrated = v16;
    if (v16)
    {
      originPersister = v12->_migrationDefaultKey;
      v12->_migrationDefaultKey = 0;
    }

    else
    {
      v18 = persisterCopy;
      originPersister = v12->_originPersister;
      v12->_originPersister = v18;
    }
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p origin = %@; destination = %@>", v4, self, self->_originPersister, self->_destinationPersister];;

  return v5;
}

- (BOOL)isAvailable
{
  if (self->_migrated || (v3 = [(IDSPersistentMapPersister *)self->_originPersister isAvailable]) != 0)
  {
    destinationPersister = self->_destinationPersister;

    LOBYTE(v3) = [(IDSPersistentMapPersister *)destinationPersister isAvailable];
  }

  return v3;
}

- (id)data
{
  if ([(IDSPersistentMigratingPersister *)self isAvailable])
  {
    v3 = 16;
    if (self->_migrated)
    {
      v3 = 24;
    }

    data = [*(&self->super.isa + v3) data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (void)saveData:(id)data allowBackup:(BOOL)backup
{
  backupCopy = backup;
  dataCopy = data;
  if ([(IDSPersistentMigratingPersister *)self isAvailable])
  {
    [(IDSPersistentMapPersister *)self->_destinationPersister saveData:dataCopy allowBackup:backupCopy];
    if (!self->_migrated)
    {
      [(IDSPersistentMapPersister *)self->_originPersister purgeData];
      [(IMUserDefaults *)self->_userDefaults setAppBool:1 forKey:self->_migrationDefaultKey];
      migrationDefaultKey = self->_migrationDefaultKey;
      self->_migrationDefaultKey = 0;

      originPersister = self->_originPersister;
      self->_originPersister = 0;

      self->_migrated = 1;
    }
  }
}

- (void)purgeData
{
  if ([(IDSPersistentMigratingPersister *)self isAvailable])
  {
    [(IDSPersistentMapPersister *)self->_originPersister purgeData];
    destinationPersister = self->_destinationPersister;

    [(IDSPersistentMapPersister *)destinationPersister purgeData];
  }

  else
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to purge before available -- returning {self: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end