@interface CHSystemConfiguration
- (BOOL)isCloudKitEnabled;
- (CHSystemConfiguration)init;
- (id)numberForKey:(id)key;
- (void)handleIDSServerBagFinishedLoadingNotification:(id)notification;
@end

@implementation CHSystemConfiguration

- (CHSystemConfiguration)init
{
  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v7.receiver = self;
  v7.super_class = CHSystemConfiguration;
  v4 = [(CHSystemConfiguration *)&v7 initWithDataSource:v3];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"handleIDSServerBagFinishedLoadingNotification:" name:IDSServerBagFinishedLoadingNotification object:v3];
  }

  return v4;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  dataSource = [(CHSystemConfiguration *)self dataSource];
  v6 = [dataSource objectForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCloudKitEnabled
{
  v2 = [(CHSystemConfiguration *)self numberForKey:@"callhistory-cloudkit-enabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)handleIDSServerBagFinishedLoadingNotification:(id)notification
{
  delegateController = [(CHSystemConfiguration *)self delegateController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000234C;
  v5[3] = &unk_100050EB8;
  v5[4] = self;
  [delegateController enumerateDelegatesUsingBlock:v5];
}

@end