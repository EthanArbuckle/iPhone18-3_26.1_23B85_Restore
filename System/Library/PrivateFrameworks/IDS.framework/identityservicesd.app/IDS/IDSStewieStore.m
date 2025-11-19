@interface IDSStewieStore
- (BOOL)isEmpty;
- (BOOL)persistedStewieEnabledFlag;
- (IDSStewieStore)init;
- (IDSStewieStore)initWithPersister:(id)a3;
- (id)persistedCompanionDeviceIDToUDID;
- (id)persistedCompanionPhoneNumbers;
- (id)persistedDeviceInfo;
- (id)persistedNextHeartbeat;
- (id)persistedNextRollKeys;
- (id)persistedNextRollSMSConfig;
- (id)persistedPhoneNumberInfos;
- (id)persistedSMSConfig;
- (id)persistedSPSEnvironment;
- (id)persistedStewieLoggingGUID;
- (void)clearPersistentMap;
- (void)persistCompanionDeviceIDToUDID:(id)a3;
- (void)persistCompanionPhoneNumbers:(id)a3;
- (void)persistDeviceInfo:(id)a3;
- (void)persistNextHeartbeat:(id)a3;
- (void)persistNextRollKeys:(id)a3;
- (void)persistNextRollSMSConfig:(id)a3;
- (void)persistPhoneNumberInfos:(id)a3;
- (void)persistSMSConfig:(id)a3;
- (void)persistSPSEnvironment:(id)a3;
- (void)persistStewieEnabled;
@end

@implementation IDSStewieStore

- (BOOL)persistedStewieEnabledFlag
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"StewieEnabled"];

  return v3 != 0;
}

- (IDSStewieStore)init
{
  v3 = [IDSPersistentMap defaultPersisterForIdentifier:@"com.apple.identityservicesd.stewie.store" dataProtectionClass:0];
  v4 = [IDSPersistentMapDiskPersister alloc];
  v5 = objc_alloc_init(IDSKeychainWrapper);
  v6 = +[IMSystemMonitor sharedInstance];
  v7 = [(IDSPersistentMapDiskPersister *)v4 initWithIdentifier:@"com.apple.identityservicesd.stewie.store.v2" dataProtectionClass:0 keychainWrapper:v5 systemMonitor:v6 fileDirectory:@"/Library/IdentityServices/Persistence/DoNotBackup/"];

  v8 = [[IDSPersistentMigratingPersister alloc] initWithOriginPersister:v3 destinationPersister:v7];
  v9 = [(IDSStewieStore *)self initWithPersister:v8];

  return v9;
}

- (IDSStewieStore)initWithPersister:(id)a3
{
  v4 = a3;
  v5 = [IDSPersistentMap alloc];
  v6 = sub_100698878();
  v7 = [(IDSPersistentMap *)v5 initWithIdentifier:@"com.apple.identityservicesd.stewie.store.v2" versionNumber:1 decodableClasses:v6 persister:v4 migrationBlock:0 allowBackup:0];

  v8 = sub_10092E1D0(&self->super.isa, v7);
  return v8;
}

- (BOOL)isEmpty
{
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = [v4 objectForKey:@"StewieEnabled"];

  v6 = [(IDSStewieStore *)self persistentMap];
  v7 = [v6 objectForKey:@"SPSEnvironment"];

  if (!CUTIsInternalInstall())
  {
    if (!v5 || (-[IDSStewieStore persistentMap](self, "persistentMap"), v6 = objc_claimAutoreleasedReturnValue(), [v6 allKeys], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "count") != 1))
    {
      v13 = [(IDSStewieStore *)self persistentMap];
      v14 = [v13 allKeys];
      v12 = [v14 count] == 0;

      if (!v5)
      {
        return v12;
      }

LABEL_14:

      return v12;
    }

LABEL_12:
    v12 = 1;
    goto LABEL_14;
  }

  v8 = (v5 | v7) == 0;
  if (!(v5 | v7))
  {
    v9 = 0;
    goto LABEL_4;
  }

  v6 = [(IDSStewieStore *)self persistentMap];
  v2 = [v6 allKeys];
  if ([v2 count] == 1)
  {
    goto LABEL_12;
  }

  v9 = 0;
  if (v5 && v7)
  {
    v5 = [(IDSStewieStore *)self persistentMap];
    v7 = [v5 allKeys];
    if ([v7 count] == 2)
    {

      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_4:
  v10 = [(IDSStewieStore *)self persistentMap];
  v11 = [v10 allKeys];
  v12 = [v11 count] == 0;

  if (v9)
  {
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  return v12;
}

- (id)persistedDeviceInfo
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"DeviceInfo"];

  return v3;
}

- (id)persistedPhoneNumberInfos
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"PhoneNumbers"];

  return v3;
}

- (id)persistedNextHeartbeat
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"NextHeartbeat"];

  if (v3)
  {
    [v3 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)persistedNextRollKeys
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"NextRollKeys"];

  if (v3)
  {
    [v3 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)persistedNextRollSMSConfig
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"NextRollSMSConfig"];

  if (v3)
  {
    [v3 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)persistedSPSEnvironment
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"SPSEnvironment"];

  return v3;
}

- (void)persistDeviceInfo:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"DeviceInfo"];
  }

  else
  {
    [v4 removeObjectForKey:@"DeviceInfo"];
  }
}

- (void)persistPhoneNumberInfos:(id)a3
{
  v7 = a3;
  v4 = [v7 count];
  v5 = [(IDSStewieStore *)self persistentMap];
  v6 = v5;
  if (v4)
  {
    [v5 setObject:v7 forKey:@"PhoneNumbers"];
  }

  else
  {
    [v5 removeObjectForKey:@"PhoneNumbers"];
  }
}

- (void)persistNextHeartbeat:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [v4 setObject:v5 forKey:@"NextHeartbeat"];
  }

  else
  {
    [v4 removeObjectForKey:@"NextHeartbeat"];
  }
}

- (void)persistNextRollKeys:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [v4 setObject:v5 forKey:@"NextRollKeys"];
  }

  else
  {
    [v4 removeObjectForKey:@"NextRollKeys"];
  }
}

- (void)persistNextRollSMSConfig:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  if (v6)
  {
    [v6 timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [v4 setObject:v5 forKey:@"NextRollSMSConfig"];
  }

  else
  {
    [v4 removeObjectForKey:@"NextRollSMSConfig"];
  }
}

- (id)persistedSMSConfig
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"SMSConfig"];

  return v3;
}

- (void)persistSMSConfig:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"SMSConfig"];
  }

  else
  {
    [v4 removeObjectForKey:@"SMSConfig"];
  }
}

- (void)persistCompanionPhoneNumbers:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"CompanionPhoneNumbers"];
  }

  else
  {
    [v4 removeObjectForKey:@"CompanionPhoneNumbers"];
  }
}

- (id)persistedCompanionPhoneNumbers
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"CompanionPhoneNumbers"];

  return v3;
}

- (void)persistCompanionDeviceIDToUDID:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"CompanionDeviceIDToUDID"];
  }

  else
  {
    [v4 removeObjectForKey:@"CompanionDeviceIDToUDID"];
  }
}

- (id)persistedCompanionDeviceIDToUDID
{
  v2 = [(IDSStewieStore *)self persistentMap];
  v3 = [v2 objectForKey:@"CompanionDeviceIDToUDID"];

  return v3;
}

- (void)persistStewieEnabled
{
  v2 = [(IDSStewieStore *)self persistentMap];
  [v2 setObject:&__kCFBooleanTrue forKey:@"StewieEnabled"];
}

- (void)persistSPSEnvironment:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieStore *)self persistentMap];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"SPSEnvironment"];
  }

  else
  {
    [v4 removeObjectForKey:@"SPSEnvironment"];
  }
}

- (id)persistedStewieLoggingGUID
{
  v3 = [(IDSStewieStore *)self persistentMap];
  v4 = [v3 objectForKey:@"LoggingGUIDExpiry"];

  v5 = [(IDSStewieStore *)self persistentMap];
  v6 = [v5 objectForKey:@"LoggingGUID"];

  if (v4 && (+[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v4 unsignedLongLongValue]), v7 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "compare:", v7), v8, v7, v6) && v9 != 1)
  {
    v10 = v6;
  }

  else
  {
    v11 = +[NSDate date];
    v12 = [v11 dateByAddingTimeInterval:2419200.0];
    [v12 timeIntervalSince1970];
    v14 = v13;

    v10 = +[NSString stringGUID];
    v15 = [(IDSStewieStore *)self persistentMap];
    [v15 setObject:v10 forKey:@"LoggingGUID"];

    v16 = [(IDSStewieStore *)self persistentMap];
    v17 = [NSNumber numberWithUnsignedLongLong:v14];
    [v16 setObject:v17 forKey:@"LoggingGUIDExpiry"];
  }

  return v10;
}

- (void)clearPersistentMap
{
  if (![(IDSStewieStore *)self isEmpty])
  {
    v3 = [(IDSStewieStore *)self persistentMap];
    [v3 removeAllObjects];

    v4 = [(IDSStewieStore *)self persistentMap];
    [v4 persistImmediately];
  }
}

@end