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
  v10.receiver = self;
  v10.super_class = ACCAccessoryAuthorizationStore;
  v2 = [(ACCAccessoryAuthorizationStore *)&v10 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    bundleIdentifier = [v3 bundleIdentifier];
    v5 = [@"com.apple.iapd" isEqualToString:bundleIdentifier];

    if (v5)
    {
      v6 = +[NSUserDefaults standardUserDefaults];
    }

    else
    {
      v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.iapd"];
    }

    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v6;

    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"knownAccessoriesDidChange:" name:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.iapd"];
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
  block[2] = sub_1000DCB5C;
  block[3] = &unk_100111CF8;
  block[4] = self;
  if (qword_10012C590 != -1)
  {
    dispatch_once(&qword_10012C590, block);
  }

  v2 = qword_10012C588;

  return v2;
}

+ (id)storedAccessories
{
  v18 = +[NSMutableSet set];
  v2 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults = [v2 userDefaults];
  v4 = [userDefaults dictionaryForKey:@"KnownAccessories"];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v5 objectForKey:v12];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:v12 withAccessoryDict:v13];

            [v18 addObject:v14];
            v8 = v13;
            v9 = v14;
          }

          else
          {
            v8 = v13;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ([v18 count])
  {
    v15 = [NSSet setWithSet:v18];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

+ (id)storedCertSerialStrings
{
  v2 = +[NSMutableSet set];
  v3 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults = [v3 userDefaults];
  v5 = [userDefaults dictionaryForKey:@"KnownAccessories"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v11, v14}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v2 count])
  {
    v12 = [NSSet setWithSet:v2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)storeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([accessoryCopy certSerialString], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v22[0] = @"displayName";
    displayName = [accessoryCopy displayName];
    v22[1] = @"authorized";
    v23[0] = displayName;
    v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [accessoryCopy authorized]);
    v23[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

    v9 = [NSMutableDictionary alloc];
    v10 = +[ACCAccessoryAuthorizationStore sharedStore];
    userDefaults = [v10 userDefaults];
    v12 = [userDefaults dictionaryForKey:@"KnownAccessories"];
    v13 = [v9 initWithDictionary:v12];

    certSerialString = [accessoryCopy certSerialString];
    [v13 setObject:v8 forKey:certSerialString];

    v15 = +[ACCAccessoryAuthorizationStore sharedStore];
    userDefaults2 = [v15 userDefaults];
    [userDefaults2 setObject:v13 forKey:@"KnownAccessories"];

    v17 = +[NSDistributedNotificationCenter defaultCenter];
    [v17 postNotificationName:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.iapd"];

    v18 = +[ACCAccessoryAuthorizationStore sharedStore];
    userDefaults3 = [v18 userDefaults];
    synchronize = [userDefaults3 synchronize];
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
  v5 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults = [v5 userDefaults];
  v7 = [userDefaults objectForKey:@"KnownAccessories"];
  v8 = [v4 initWithDictionary:v7];

  certSerialString = [accessoryCopy certSerialString];

  [v8 removeObjectForKey:certSerialString];
  v10 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults2 = [v10 userDefaults];
  [userDefaults2 setObject:v8 forKey:@"KnownAccessories"];

  v12 = +[NSDistributedNotificationCenter defaultCenter];
  [v12 postNotificationName:@"ACCKnownAccessoriesDidChangeNotification" object:@"com.apple.iapd"];

  v13 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults3 = [v13 userDefaults];
  LOBYTE(userDefaults) = [userDefaults3 synchronize];

  return userDefaults;
}

+ (id)authorizationEntryForCertSerial:(id)serial
{
  serialCopy = serial;
  v4 = +[ACCAccessoryAuthorizationStore sharedStore];
  userDefaults = [v4 userDefaults];
  v6 = [userDefaults dictionaryForKey:@"KnownAccessories"];

  v7 = [v6 objectForKey:serialCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [ACCAccessoryAuthorizationStore authorizationEntryForCertSerial:serialCopy withAccessoryDict:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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