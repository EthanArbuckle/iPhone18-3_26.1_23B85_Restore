@interface DMMigrationPluginWrapperWatchdog
+ (id)_messageStringWithPluginBundleIdentifier:(id)a3 durationDescription:(id)a4 backupDeviceUUID:(id)a5;
- (DMMigrationPluginWrapperWatchdog)initWithPluginBundleIdentifier:(id)a3 backupDeviceUUID:(id)a4;
- (void)_migrationPluginDuration10Minutes;
- (void)_migrationPluginDuration20Minutes;
- (void)_migrationPluginDuration40Minutes;
- (void)_migrationPluginDuration5Minutes;
- (void)cancel;
- (void)resume;
@end

@implementation DMMigrationPluginWrapperWatchdog

- (DMMigrationPluginWrapperWatchdog)initWithPluginBundleIdentifier:(id)a3 backupDeviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = DMMigrationPluginWrapperWatchdog;
  v8 = [(DMMigrationPluginWrapperWatchdog *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(DMMigrationPluginWrapperWatchdog *)v8 setPluginBundleIdentifier:v6];
    [(DMMigrationPluginWrapperWatchdog *)v9 setBackupDeviceUUID:v7];
    v10 = objc_alloc_init(DMPluginFaulter);
    [(DMMigrationPluginWrapperWatchdog *)v9 setFaulter:v10];

    [(DMMigrationPluginWrapperWatchdog *)v9 setSecondsBeforeNextFault:300];
    [(DMMigrationPluginWrapperWatchdog *)v9 setSecondsOfLeeway:10];
    [(DMMigrationPluginWrapperWatchdog *)v9 setFireCount:0];
    v11 = [DMTimer alloc];
    v12 = [(DMMigrationPluginWrapperWatchdog *)v9 secondsBeforeNextFault];
    v13 = [(DMMigrationPluginWrapperWatchdog *)v9 secondsOfLeeway];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003EE8;
    v17[3] = &unk_10000C3B0;
    v14 = v9;
    v18 = v14;
    v15 = [v11 initWithSecondsBeforeFirstFire:v12 secondsOfLeeway:v13 fireBlock:v17];
    [(DMMigrationPluginWrapperWatchdog *)v14 setTimer:v15];
  }

  return v9;
}

- (void)resume
{
  v2 = [(DMMigrationPluginWrapperWatchdog *)self timer];
  [v2 resume];
}

- (void)cancel
{
  v2 = [(DMMigrationPluginWrapperWatchdog *)self timer];
  [v2 cancelSynchronously];
}

- (void)_migrationPluginDuration5Minutes
{
  v3 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  v4 = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:v3 durationDescription:@"5 minutes" backupDeviceUUID:v4];

  v5 = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  v6 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [v5 faultWithPluginIdentifier:v6 message:v7];
}

- (void)_migrationPluginDuration10Minutes
{
  v3 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  v4 = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:v3 durationDescription:@"10 minutes" backupDeviceUUID:v4];

  v5 = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  v6 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [v5 faultWithPluginIdentifier:v6 message:v7];
}

- (void)_migrationPluginDuration20Minutes
{
  v3 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  v4 = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:v3 durationDescription:@"20 minutes" backupDeviceUUID:v4];

  v5 = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  v6 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [v5 faultWithPluginIdentifier:v6 message:v7];
}

- (void)_migrationPluginDuration40Minutes
{
  v3 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  v4 = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:v3 durationDescription:@"40 minutes" backupDeviceUUID:v4];

  v5 = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  v6 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [v5 faultWithPluginIdentifier:v6 message:v7];
}

+ (id)_messageStringWithPluginBundleIdentifier:(id)a3 durationDescription:(id)a4 backupDeviceUUID:(id)a5
{
  v7 = a5;
  v8 = [NSString stringWithFormat:@"Migration plugin %@ still running after %@", a3, a4];
  if (v7)
  {
    v9 = [NSString stringWithFormat:@"%@ - backup device UUID %@", v8, v7];

    v8 = v9;
  }

  return v8;
}

@end