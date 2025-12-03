@interface DMMigrationPluginWrapperWatchdog
+ (id)_messageStringWithPluginBundleIdentifier:(id)identifier durationDescription:(id)description backupDeviceUUID:(id)d;
- (DMMigrationPluginWrapperWatchdog)initWithPluginBundleIdentifier:(id)identifier backupDeviceUUID:(id)d;
- (void)_migrationPluginDuration10Minutes;
- (void)_migrationPluginDuration20Minutes;
- (void)_migrationPluginDuration40Minutes;
- (void)_migrationPluginDuration5Minutes;
- (void)cancel;
- (void)resume;
@end

@implementation DMMigrationPluginWrapperWatchdog

- (DMMigrationPluginWrapperWatchdog)initWithPluginBundleIdentifier:(id)identifier backupDeviceUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v19.receiver = self;
  v19.super_class = DMMigrationPluginWrapperWatchdog;
  v8 = [(DMMigrationPluginWrapperWatchdog *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(DMMigrationPluginWrapperWatchdog *)v8 setPluginBundleIdentifier:identifierCopy];
    [(DMMigrationPluginWrapperWatchdog *)v9 setBackupDeviceUUID:dCopy];
    v10 = objc_alloc_init(DMPluginFaulter);
    [(DMMigrationPluginWrapperWatchdog *)v9 setFaulter:v10];

    [(DMMigrationPluginWrapperWatchdog *)v9 setSecondsBeforeNextFault:300];
    [(DMMigrationPluginWrapperWatchdog *)v9 setSecondsOfLeeway:10];
    [(DMMigrationPluginWrapperWatchdog *)v9 setFireCount:0];
    v11 = [DMTimer alloc];
    secondsBeforeNextFault = [(DMMigrationPluginWrapperWatchdog *)v9 secondsBeforeNextFault];
    secondsOfLeeway = [(DMMigrationPluginWrapperWatchdog *)v9 secondsOfLeeway];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100003EE8;
    v17[3] = &unk_10000C3B0;
    v14 = v9;
    v18 = v14;
    v15 = [v11 initWithSecondsBeforeFirstFire:secondsBeforeNextFault secondsOfLeeway:secondsOfLeeway fireBlock:v17];
    [(DMMigrationPluginWrapperWatchdog *)v14 setTimer:v15];
  }

  return v9;
}

- (void)resume
{
  timer = [(DMMigrationPluginWrapperWatchdog *)self timer];
  [timer resume];
}

- (void)cancel
{
  timer = [(DMMigrationPluginWrapperWatchdog *)self timer];
  [timer cancelSynchronously];
}

- (void)_migrationPluginDuration5Minutes
{
  pluginBundleIdentifier = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  backupDeviceUUID = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:pluginBundleIdentifier durationDescription:@"5 minutes" backupDeviceUUID:backupDeviceUUID];

  faulter = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  pluginBundleIdentifier2 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [faulter faultWithPluginIdentifier:pluginBundleIdentifier2 message:v7];
}

- (void)_migrationPluginDuration10Minutes
{
  pluginBundleIdentifier = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  backupDeviceUUID = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:pluginBundleIdentifier durationDescription:@"10 minutes" backupDeviceUUID:backupDeviceUUID];

  faulter = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  pluginBundleIdentifier2 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [faulter faultWithPluginIdentifier:pluginBundleIdentifier2 message:v7];
}

- (void)_migrationPluginDuration20Minutes
{
  pluginBundleIdentifier = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  backupDeviceUUID = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:pluginBundleIdentifier durationDescription:@"20 minutes" backupDeviceUUID:backupDeviceUUID];

  faulter = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  pluginBundleIdentifier2 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [faulter faultWithPluginIdentifier:pluginBundleIdentifier2 message:v7];
}

- (void)_migrationPluginDuration40Minutes
{
  pluginBundleIdentifier = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  backupDeviceUUID = [(DMMigrationPluginWrapperWatchdog *)self backupDeviceUUID];
  v7 = [DMMigrationPluginWrapperWatchdog _messageStringWithPluginBundleIdentifier:pluginBundleIdentifier durationDescription:@"40 minutes" backupDeviceUUID:backupDeviceUUID];

  faulter = [(DMMigrationPluginWrapperWatchdog *)self faulter];
  pluginBundleIdentifier2 = [(DMMigrationPluginWrapperWatchdog *)self pluginBundleIdentifier];
  [faulter faultWithPluginIdentifier:pluginBundleIdentifier2 message:v7];
}

+ (id)_messageStringWithPluginBundleIdentifier:(id)identifier durationDescription:(id)description backupDeviceUUID:(id)d
{
  dCopy = d;
  v8 = [NSString stringWithFormat:@"Migration plugin %@ still running after %@", identifier, description];
  if (dCopy)
  {
    dCopy = [NSString stringWithFormat:@"%@ - backup device UUID %@", v8, dCopy];

    v8 = dCopy;
  }

  return v8;
}

@end