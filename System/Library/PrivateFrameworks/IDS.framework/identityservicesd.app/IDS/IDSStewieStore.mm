@interface IDSStewieStore
- (BOOL)isEmpty;
- (BOOL)persistedStewieEnabledFlag;
- (IDSStewieStore)init;
- (IDSStewieStore)initWithPersister:(id)persister;
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
- (void)persistCompanionDeviceIDToUDID:(id)d;
- (void)persistCompanionPhoneNumbers:(id)numbers;
- (void)persistDeviceInfo:(id)info;
- (void)persistNextHeartbeat:(id)heartbeat;
- (void)persistNextRollKeys:(id)keys;
- (void)persistNextRollSMSConfig:(id)config;
- (void)persistPhoneNumberInfos:(id)infos;
- (void)persistSMSConfig:(id)config;
- (void)persistSPSEnvironment:(id)environment;
- (void)persistStewieEnabled;
@end

@implementation IDSStewieStore

- (BOOL)persistedStewieEnabledFlag
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"StewieEnabled"];

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

- (IDSStewieStore)initWithPersister:(id)persister
{
  persisterCopy = persister;
  v5 = [IDSPersistentMap alloc];
  v6 = sub_100698878();
  v7 = [(IDSPersistentMap *)v5 initWithIdentifier:@"com.apple.identityservicesd.stewie.store.v2" versionNumber:1 decodableClasses:v6 persister:persisterCopy migrationBlock:0 allowBackup:0];

  v8 = sub_10092E1D0(&self->super.isa, v7);
  return v8;
}

- (BOOL)isEmpty
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  persistentMap4 = [persistentMap objectForKey:@"StewieEnabled"];

  persistentMap2 = [(IDSStewieStore *)self persistentMap];
  allKeys3 = [persistentMap2 objectForKey:@"SPSEnvironment"];

  if (!CUTIsInternalInstall())
  {
    if (!persistentMap4 || (-[IDSStewieStore persistentMap](self, "persistentMap"), persistentMap2 = objc_claimAutoreleasedReturnValue(), [persistentMap2 allKeys], allKeys2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(allKeys2, "count") != 1))
    {
      persistentMap3 = [(IDSStewieStore *)self persistentMap];
      allKeys = [persistentMap3 allKeys];
      v12 = [allKeys count] == 0;

      if (!persistentMap4)
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

  v8 = (persistentMap4 | allKeys3) == 0;
  if (!(persistentMap4 | allKeys3))
  {
    v9 = 0;
    goto LABEL_4;
  }

  persistentMap2 = [(IDSStewieStore *)self persistentMap];
  allKeys2 = [persistentMap2 allKeys];
  if ([allKeys2 count] == 1)
  {
    goto LABEL_12;
  }

  v9 = 0;
  if (persistentMap4 && allKeys3)
  {
    persistentMap4 = [(IDSStewieStore *)self persistentMap];
    allKeys3 = [persistentMap4 allKeys];
    if ([allKeys3 count] == 2)
    {

      goto LABEL_12;
    }

    v9 = 1;
  }

LABEL_4:
  persistentMap5 = [(IDSStewieStore *)self persistentMap];
  allKeys4 = [persistentMap5 allKeys];
  v12 = [allKeys4 count] == 0;

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
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"DeviceInfo"];

  return v3;
}

- (id)persistedPhoneNumberInfos
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"PhoneNumbers"];

  return v3;
}

- (id)persistedNextHeartbeat
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"NextHeartbeat"];

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
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"NextRollKeys"];

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
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"NextRollSMSConfig"];

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
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"SPSEnvironment"];

  return v3;
}

- (void)persistDeviceInfo:(id)info
{
  infoCopy = info;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v5 = persistentMap;
  if (infoCopy)
  {
    [persistentMap setObject:infoCopy forKey:@"DeviceInfo"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"DeviceInfo"];
  }
}

- (void)persistPhoneNumberInfos:(id)infos
{
  infosCopy = infos;
  v4 = [infosCopy count];
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v6 = persistentMap;
  if (v4)
  {
    [persistentMap setObject:infosCopy forKey:@"PhoneNumbers"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"PhoneNumbers"];
  }
}

- (void)persistNextHeartbeat:(id)heartbeat
{
  heartbeatCopy = heartbeat;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  if (heartbeatCopy)
  {
    [heartbeatCopy timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [persistentMap setObject:v5 forKey:@"NextHeartbeat"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"NextHeartbeat"];
  }
}

- (void)persistNextRollKeys:(id)keys
{
  keysCopy = keys;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  if (keysCopy)
  {
    [keysCopy timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [persistentMap setObject:v5 forKey:@"NextRollKeys"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"NextRollKeys"];
  }
}

- (void)persistNextRollSMSConfig:(id)config
{
  configCopy = config;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  if (configCopy)
  {
    [configCopy timeIntervalSinceReferenceDate];
    v5 = [NSNumber numberWithDouble:?];
    [persistentMap setObject:v5 forKey:@"NextRollSMSConfig"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"NextRollSMSConfig"];
  }
}

- (id)persistedSMSConfig
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"SMSConfig"];

  return v3;
}

- (void)persistSMSConfig:(id)config
{
  configCopy = config;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v5 = persistentMap;
  if (configCopy)
  {
    [persistentMap setObject:configCopy forKey:@"SMSConfig"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"SMSConfig"];
  }
}

- (void)persistCompanionPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v5 = persistentMap;
  if (numbersCopy)
  {
    [persistentMap setObject:numbersCopy forKey:@"CompanionPhoneNumbers"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"CompanionPhoneNumbers"];
  }
}

- (id)persistedCompanionPhoneNumbers
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"CompanionPhoneNumbers"];

  return v3;
}

- (void)persistCompanionDeviceIDToUDID:(id)d
{
  dCopy = d;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v5 = persistentMap;
  if (dCopy)
  {
    [persistentMap setObject:dCopy forKey:@"CompanionDeviceIDToUDID"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"CompanionDeviceIDToUDID"];
  }
}

- (id)persistedCompanionDeviceIDToUDID
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v3 = [persistentMap objectForKey:@"CompanionDeviceIDToUDID"];

  return v3;
}

- (void)persistStewieEnabled
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  [persistentMap setObject:&__kCFBooleanTrue forKey:@"StewieEnabled"];
}

- (void)persistSPSEnvironment:(id)environment
{
  environmentCopy = environment;
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v5 = persistentMap;
  if (environmentCopy)
  {
    [persistentMap setObject:environmentCopy forKey:@"SPSEnvironment"];
  }

  else
  {
    [persistentMap removeObjectForKey:@"SPSEnvironment"];
  }
}

- (id)persistedStewieLoggingGUID
{
  persistentMap = [(IDSStewieStore *)self persistentMap];
  v4 = [persistentMap objectForKey:@"LoggingGUIDExpiry"];

  persistentMap2 = [(IDSStewieStore *)self persistentMap];
  v6 = [persistentMap2 objectForKey:@"LoggingGUID"];

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
    persistentMap3 = [(IDSStewieStore *)self persistentMap];
    [persistentMap3 setObject:v10 forKey:@"LoggingGUID"];

    persistentMap4 = [(IDSStewieStore *)self persistentMap];
    v17 = [NSNumber numberWithUnsignedLongLong:v14];
    [persistentMap4 setObject:v17 forKey:@"LoggingGUIDExpiry"];
  }

  return v10;
}

- (void)clearPersistentMap
{
  if (![(IDSStewieStore *)self isEmpty])
  {
    persistentMap = [(IDSStewieStore *)self persistentMap];
    [persistentMap removeAllObjects];

    persistentMap2 = [(IDSStewieStore *)self persistentMap];
    [persistentMap2 persistImmediately];
  }
}

@end