@interface MRDSettings
+ (MRDSettings)currentSettings;
- (BOOL)_BOOLValueForKey:(id)a3 usingDefaultValue:(BOOL)a4;
- (BOOL)verboseOutputContextManagerLogging;
- (MRDSettings)init;
- (NSArray)connectedClientAuditTokens;
- (NSArray)expectedClientAuditTokens;
- (NSString)recentGroupSessionParticipantsPepper;
- (double)_doubleValueForKey:(id)a3 usingDefaultValue:(double)a4;
- (double)nativeEndpointWaitInterval;
- (double)recentlyRebootedInterval;
- (id)defaultSupportedCommandsDataForClient:(id)a3;
- (int64_t)_integerValueForKey:(id)a3 usingDefaultValue:(int64_t)a4;
- (void)setConnectedClientAuditTokens:(id)a3;
- (void)setExpectedClientAuditTokens:(id)a3;
- (void)updateDefaultSupportedCommandsData:(id)a3 forClient:(id)a4;
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

- (void)setConnectedClientAuditTokens:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  [(NSUserDefaults *)userDefaults setObject:0 forKey:@"ConnectedClientPIDs"];
  [(NSUserDefaults *)self->_userDefaults setObject:v5 forKey:@"ConnectedClientAuditTokens"];
}

- (void)setExpectedClientAuditTokens:(id)a3
{
  userDefaults = self->_userDefaults;
  v5 = a3;
  [(NSUserDefaults *)userDefaults setObject:0 forKey:@"ExpectedClientPIDs"];
  [(NSUserDefaults *)self->_userDefaults setObject:v5 forKey:@"ExpectedClientAuditTokens"];
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

- (id)defaultSupportedCommandsDataForClient:(id)a3
{
  v4 = a3;
  v5 = [(MRDSettings *)self defaultSupportedCommandsData];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)updateDefaultSupportedCommandsData:(id)a3 forClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDSettings *)self defaultSupportedCommandsData];
  v11 = v8;
  if (v8)
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(NSMutableDictionary);
  }

  v10 = v9;
  [v9 setObject:v7 forKeyedSubscript:v6];

  [(NSUserDefaults *)self->_userDefaults setObject:v10 forKey:@"DefaultSupportedCommands"];
}

- (BOOL)_BOOLValueForKey:(id)a3 usingDefaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:v6];

  if (v7)
  {
    a4 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:v6];
  }

  return a4;
}

- (double)_doubleValueForKey:(id)a3 usingDefaultValue:(double)a4
{
  v6 = a3;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:v6];

  if (v7)
  {
    [(NSUserDefaults *)self->_userDefaults doubleForKey:v6];
    a4 = v8;
  }

  return a4;
}

- (int64_t)_integerValueForKey:(id)a3 usingDefaultValue:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:v6];

  if (v7)
  {
    a4 = [(NSUserDefaults *)self->_userDefaults integerForKey:v6];
  }

  return a4;
}

@end