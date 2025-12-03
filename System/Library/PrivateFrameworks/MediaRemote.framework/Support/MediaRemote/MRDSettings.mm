@interface MRDSettings
+ (MRDSettings)currentSettings;
- (BOOL)_BOOLValueForKey:(id)key usingDefaultValue:(BOOL)value;
- (BOOL)verboseOutputContextManagerLogging;
- (MRDSettings)init;
- (NSArray)connectedClientAuditTokens;
- (NSArray)expectedClientAuditTokens;
- (NSString)recentGroupSessionParticipantsPepper;
- (double)_doubleValueForKey:(id)key usingDefaultValue:(double)value;
- (double)nativeEndpointWaitInterval;
- (double)recentlyRebootedInterval;
- (id)defaultSupportedCommandsDataForClient:(id)client;
- (int64_t)_integerValueForKey:(id)key usingDefaultValue:(int64_t)value;
- (void)setConnectedClientAuditTokens:(id)tokens;
- (void)setExpectedClientAuditTokens:(id)tokens;
- (void)updateDefaultSupportedCommandsData:(id)data forClient:(id)client;
@end

@implementation MRDSettings

+ (MRDSettings)currentSettings
{
  if (qword_100529608 != -1)
  {
    sub_1003AC584();
  }

  v3 = qword_100529610;

  return v3;
}

- (NSArray)expectedClientAuditTokens
{
  v2 = [(NSUserDefaults *)self->_userDefaults arrayForKey:@"ExpectedClientAuditTokens"];
  v3 = [v2 copy];

  return v3;
}

- (MRDSettings)init
{
  v6.receiver = self;
  v6.super_class = MRDSettings;
  v2 = [(MRDSettings *)&v6 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;
  }

  return v2;
}

- (NSArray)connectedClientAuditTokens
{
  v2 = [(NSUserDefaults *)self->_userDefaults arrayForKey:@"ConnectedClientAuditTokens"];
  v3 = [v2 copy];

  return v3;
}

- (void)setConnectedClientAuditTokens:(id)tokens
{
  userDefaults = self->_userDefaults;
  tokensCopy = tokens;
  [(NSUserDefaults *)userDefaults setObject:0 forKey:@"ConnectedClientPIDs"];
  [(NSUserDefaults *)self->_userDefaults setObject:tokensCopy forKey:@"ConnectedClientAuditTokens"];
}

- (void)setExpectedClientAuditTokens:(id)tokens
{
  userDefaults = self->_userDefaults;
  tokensCopy = tokens;
  [(NSUserDefaults *)userDefaults setObject:0 forKey:@"ExpectedClientPIDs"];
  [(NSUserDefaults *)self->_userDefaults setObject:tokensCopy forKey:@"ExpectedClientAuditTokens"];
}

- (double)recentlyRebootedInterval
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001832FC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_100529620 != -1)
  {
    dispatch_once(&qword_100529620, block);
  }

  return *&qword_100529618;
}

- (double)nativeEndpointWaitInterval
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001833C0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_100529630 != -1)
  {
    dispatch_once(&qword_100529630, block);
  }

  return *&qword_100529628;
}

- (BOOL)verboseOutputContextManagerLogging
{
  v3 = MSVDeviceOSIsInternalInstall();

  return [(MRDSettings *)self _BOOLValueForKey:@"verboseOutputContextManagerLogging" usingDefaultValue:v3];
}

- (NSString)recentGroupSessionParticipantsPepper
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001834F8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_100529638 != -1)
  {
    dispatch_once(&qword_100529638, block);
  }

  return qword_100529640;
}

- (id)defaultSupportedCommandsDataForClient:(id)client
{
  clientCopy = client;
  defaultSupportedCommandsData = [(MRDSettings *)self defaultSupportedCommandsData];
  v6 = [defaultSupportedCommandsData objectForKeyedSubscript:clientCopy];

  return v6;
}

- (void)updateDefaultSupportedCommandsData:(id)data forClient:(id)client
{
  clientCopy = client;
  dataCopy = data;
  defaultSupportedCommandsData = [(MRDSettings *)self defaultSupportedCommandsData];
  v11 = defaultSupportedCommandsData;
  if (defaultSupportedCommandsData)
  {
    v9 = [defaultSupportedCommandsData mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = v9;
  [v9 setObject:dataCopy forKeyedSubscript:clientCopy];

  [(NSUserDefaults *)self->_userDefaults setObject:v10 forKey:@"DefaultSupportedCommands"];
}

- (BOOL)_BOOLValueForKey:(id)key usingDefaultValue:(BOOL)value
{
  keyCopy = key;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v7)
  {
    value = [(NSUserDefaults *)self->_userDefaults BOOLForKey:keyCopy];
  }

  return value;
}

- (double)_doubleValueForKey:(id)key usingDefaultValue:(double)value
{
  keyCopy = key;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v7)
  {
    [(NSUserDefaults *)self->_userDefaults doubleForKey:keyCopy];
    value = v8;
  }

  return value;
}

- (int64_t)_integerValueForKey:(id)key usingDefaultValue:(int64_t)value
{
  keyCopy = key;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:keyCopy];

  if (v7)
  {
    value = [(NSUserDefaults *)self->_userDefaults integerForKey:keyCopy];
  }

  return value;
}

@end