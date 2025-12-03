@interface IDSDMessageStoreMigrator
+ (id)sharedInstance;
- (IDSDMessageStoreMigrator)init;
- (void)_checkAndUpdateDBIfRequiredForClass:(unsigned int)class;
@end

@implementation IDSDMessageStoreMigrator

+ (id)sharedInstance
{
  if (qword_100CBF0B8 != -1)
  {
    sub_100929CE4();
  }

  v3 = qword_100CBF0C0;

  return v3;
}

- (IDSDMessageStoreMigrator)init
{
  v5.receiver = self;
  v5.super_class = IDSDMessageStoreMigrator;
  v2 = [(IDSDMessageStoreMigrator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSDMessageStoreMigrator *)v2 _checkAndUpdateDBIfRequiredForClass:2];
    [(IDSDMessageStoreMigrator *)v3 _checkAndUpdateDBIfRequiredForClass:1];
    [(IDSDMessageStoreMigrator *)v3 _checkAndUpdateDBIfRequiredForClass:0];
  }

  return v3;
}

- (void)_checkAndUpdateDBIfRequiredForClass:(unsigned int)class
{
  v3 = [IDSDMessageStore sharedInstanceForDataProtectionClass:*&class];
  internalMigrationVersionOnDatabase = [v3 internalMigrationVersionOnDatabase];
  if (internalMigrationVersionOnDatabase == 100)
  {
    v5 = +[IMRGLog liveMigration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DB version up to date", buf, 2u);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (internalMigrationVersionOnDatabase <= 99)
  {
    v6 = +[IDSDAccountController sharedInstance];
    v5 = [v6 accountsOfAdHocType:2];

    v7 = +[IDSPairingManager sharedInstance];
    pairedDeviceUniqueID = [v7 pairedDeviceUniqueID];
    [v3 markLocalDestinationDeviceUUIDForAccounts:v5 deviceUUID:pairedDeviceUniqueID];

    [v3 updateInternalMigrationVersionOnDatabaseWithValue:100];
    v9 = +[IMRGLog liveMigration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updated DB to version 100", v10, 2u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

@end