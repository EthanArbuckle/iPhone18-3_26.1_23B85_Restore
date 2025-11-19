@interface NSUserDefaults
+ (id)AUDeveloperSettingsObjectWithKey:(id)a3;
+ (void)AUDeveloperSettingsSetObject:(id)a3 withKey:(id)a4;
+ (void)AUDeveloperSettingsUpdateAccessory:(id)a3 withKey:(id)a4;
@end

@implementation NSUserDefaults

+ (void)AUDeveloperSettingsSetObject:(id)a3 withKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (getuid() == 278)
  {
    v7 = [NSUserDefaults alloc];
    v8 = sub_100006788(1);
    v10 = [v7 initWithSuiteName:v8];

    [v10 setObject:v6 forKey:v5];
  }

  else
  {
    v9 = +[AUHelperInstance sharedInstance];
    v10 = [v9 remoteObject];

    [v10 userPreferenceSetObject:v6 forSuite:1 withKey:v5];
  }
}

+ (void)AUDeveloperSettingsUpdateAccessory:(id)a3 withKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AUHelperInstance sharedInstance];
  v8 = [v7 remoteObject];

  [v8 userPreferenceUpdateAccessorySettings:v6 withKey:v5];
}

+ (id)AUDeveloperSettingsObjectWithKey:(id)a3
{
  v3 = a3;
  if (getuid() == 278)
  {
    v4 = [NSUserDefaults alloc];
    v5 = sub_100006788(1);
    v6 = [v4 initWithSuiteName:v5];

    v7 = [v6 objectForKey:v3];
  }

  else
  {
    v8 = +[AUHelperInstance sharedInstance];
    v6 = [v8 remoteObject];

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
    [v6 userPreferenceObjectForSuite:1 withKey:v3 withReply:v10];
    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  return v7;
}

@end