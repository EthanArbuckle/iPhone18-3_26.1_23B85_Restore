@interface IDSPersistentMigratingPersister
- (BOOL)isAvailable;
- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)a3 destinationPersister:(id)a4;
- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)a3 destinationPersister:(id)a4 userDefaults:(id)a5;
- (NSString)description;
- (id)data;
- (void)purgeData;
- (void)saveData:(id)a3 allowBackup:(BOOL)a4;
@end

@implementation IDSPersistentMigratingPersister

- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)a3 destinationPersister:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IMUserDefaults sharedDefaults];
  v9 = [(IDSPersistentMigratingPersister *)self initWithOriginPersister:v7 destinationPersister:v6 userDefaults:v8];

  return v9;
}

- (IDSPersistentMigratingPersister)initWithOriginPersister:(id)a3 destinationPersister:(id)a4 userDefaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = IDSPersistentMigratingPersister;
  v11 = [(IDSPersistentMigratingPersister *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_userDefaults, a5);
    objc_storeStrong(&v12->_destinationPersister, a4);
    v13 = [v9 identifier];
    v14 = [NSString stringWithFormat:@"persister-migration-%@", v13];
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
      v18 = v8;
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

    v4 = [*(&self->super.isa + v3) data];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)saveData:(id)a3 allowBackup:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if ([(IDSPersistentMigratingPersister *)self isAvailable])
  {
    [(IDSPersistentMapPersister *)self->_destinationPersister saveData:v8 allowBackup:v4];
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
      v6 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tried to purge before available -- returning {self: %@}", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end