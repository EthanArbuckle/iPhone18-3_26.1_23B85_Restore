@interface ACCAccessoryAuthorizationStore
+ (BOOL)removeAccessory:(id)accessory;
+ (BOOL)storeAccessory:(id)accessory;
+ (id)authorizationEntryForCertSerial:(id)serial;
+ (id)authorizationEntryForCertSerial:(id)serial withAccessoryDict:(id)dict;
+ (id)sharedStore;
+ (id)storedAccessories;
+ (id)storedCertSerialStrings;
- (ACCAccessoryAuthorizationStore)init;
- (void)dealloc;
@end

@implementation ACCAccessoryAuthorizationStore

- (ACCAccessoryAuthorizationStore)init
{
  v5.receiver = self;
  v5.super_class = ACCAccessoryAuthorizationStore;
  v2 = [(ACCAccessoryAuthorizationStore *)&v5 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"knownAccessoriesDidChange:" name:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.CoreAccessories"];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACCAccessoryAuthorizationStore;
  [(ACCAccessoryAuthorizationStore *)&v4 dealloc];
}

+ (id)sharedStore
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__ACCAccessoryAuthorizationStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedStore_once != -1)
  {
    dispatch_once(&sharedStore_once, block);
  }

  v2 = sharedStore_sharedInstance;

  return v2;
}

uint64_t __45__ACCAccessoryAuthorizationStore_sharedStore__block_invoke(uint64_t a1)
{
  sharedStore_sharedInstance = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

+ (id)storedAccessories
{
  v17 = +[NSMutableSet set];
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:@"KnownAccessories"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v4 objectForKey:v11];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:v11 withAccessoryDict:v12];

            [v17 addObject:v13];
            v7 = v12;
            v8 = v13;
          }

          else
          {
            v7 = v12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if ([v17 count])
  {
    v14 = [NSSet setWithSet:v17];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

+ (id)storedCertSerialStrings
{
  v2 = +[NSMutableSet set];
  v3 = +[ACCUserDefaults sharedDefaults];
  v4 = [v3 dictionaryForKey:@"KnownAccessories"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v10, v13}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([v2 count])
  {
    v11 = [NSSet setWithSet:v2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)storeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([accessoryCopy certSerialString], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v20[0] = @"displayName";
    displayName = [accessoryCopy displayName];
    v21[0] = displayName;
    v20[1] = @"authorized";
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accessoryCopy authorized]);
    v21[1] = v7;
    v20[2] = @"modified";
    v8 = [NSNumber numberWithLongLong:systemInfo_getCurrentUnixTime()];
    v21[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

    v10 = [NSMutableDictionary alloc];
    v11 = +[ACCUserDefaults sharedDefaults];
    v12 = [v11 dictionaryForKey:@"KnownAccessories"];
    v13 = [v10 initWithDictionary:v12];

    certSerialString = [accessoryCopy certSerialString];
    [v13 setObject:v9 forKey:certSerialString];

    v15 = +[ACCUserDefaults sharedDefaults];
    [v15 setObject:v13 forKey:@"KnownAccessories"];

    v16 = +[NSDistributedNotificationCenter defaultCenter];
    [v16 postNotificationName:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.CoreAccessories"];

    v17 = +[ACCUserDefaults sharedDefaults];
    synchronize = [v17 synchronize];
  }

  else
  {
    synchronize = 0;
  }

  return synchronize;
}

+ (BOOL)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v4 = [NSMutableDictionary alloc];
  v5 = +[ACCUserDefaults sharedDefaults];
  v6 = [v5 objectForKey:@"KnownAccessories"];
  v7 = [v4 initWithDictionary:v6];

  certSerialString = [accessoryCopy certSerialString];

  [v7 removeObjectForKey:certSerialString];
  v9 = +[ACCUserDefaults sharedDefaults];
  [v9 setObject:v7 forKey:@"KnownAccessories"];

  v10 = +[NSDistributedNotificationCenter defaultCenter];
  [v10 postNotificationName:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.CoreAccessories"];

  v11 = +[ACCUserDefaults sharedDefaults];
  LOBYTE(certSerialString) = [v11 synchronize];

  return certSerialString;
}

+ (id)authorizationEntryForCertSerial:(id)serial
{
  serialCopy = serial;
  v4 = +[ACCUserDefaults sharedDefaults];
  v5 = [v4 dictionaryForKey:@"KnownAccessories"];

  v6 = [v5 objectForKey:serialCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:serialCopy withAccessoryDict:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)authorizationEntryForCertSerial:(id)serial withAccessoryDict:(id)dict
{
  dictCopy = dict;
  serialCopy = serial;
  v7 = objc_alloc_init(ACCAccessoryAuthorizationEntry);
  [(ACCAccessoryAuthorizationEntry *)v7 setCertSerialString:serialCopy];

  v8 = [dictCopy objectForKey:@"displayName"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ACCAccessoryAuthorizationEntry *)v7 setDisplayName:v8];
  }

  v9 = [dictCopy objectForKey:@"authorized"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[ACCAccessoryAuthorizationEntry setAuthorized:](v7, "setAuthorized:", [v9 BOOLValue]);
  }

  return v7;
}

@end