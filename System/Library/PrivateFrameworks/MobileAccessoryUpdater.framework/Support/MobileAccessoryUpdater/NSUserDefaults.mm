@interface NSUserDefaults
+ (id)AUDeveloperSettingsObjectWithKey:(id)key;
+ (void)AUDeveloperSettingsSetObject:(id)object withKey:(id)key;
+ (void)AUDeveloperSettingsUpdateAccessory:(id)accessory withKey:(id)key;
@end

@implementation NSUserDefaults

+ (void)AUDeveloperSettingsSetObject:(id)object withKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  if (getuid() == 278)
  {
    v7 = [NSUserDefaults alloc];
    v8 = sub_100006788(1);
    remoteObject = [v7 initWithSuiteName:v8];

    [remoteObject setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    v9 = +[AUHelperInstance sharedInstance];
    remoteObject = [v9 remoteObject];

    [remoteObject userPreferenceSetObject:objectCopy forSuite:1 withKey:keyCopy];
  }
}

+ (void)AUDeveloperSettingsUpdateAccessory:(id)accessory withKey:(id)key
{
  keyCopy = key;
  accessoryCopy = accessory;
  v7 = +[AUHelperInstance sharedInstance];
  remoteObject = [v7 remoteObject];

  [remoteObject userPreferenceUpdateAccessorySettings:accessoryCopy withKey:keyCopy];
}

+ (id)AUDeveloperSettingsObjectWithKey:(id)key
{
  keyCopy = key;
  if (getuid() == 278)
  {
    v4 = [NSUserDefaults alloc];
    v5 = sub_100006788(1);
    remoteObject = [v4 initWithSuiteName:v5];

    v7 = [remoteObject objectForKey:keyCopy];
  }

  else
  {
    v8 = +[AUHelperInstance sharedInstance];
    remoteObject = [v8 remoteObject];

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100004174;
    v15 = sub_100004184;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000418C;
    v10[3] = &unk_100081010;
    v10[4] = &v11;
    [remoteObject userPreferenceObjectForSuite:1 withKey:keyCopy withReply:v10];
    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v7;
}

@end