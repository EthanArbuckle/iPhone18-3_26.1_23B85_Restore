@interface MBManagerPlugin
- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error;
- (id)preparingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBManagerPlugin

- (id)preparingRestoreWithPolicy:(id)policy engine:(id)engine
{
  engine = [MBPersona personalPersonaWithError:0, engine];
  [engine setPreferencesValue:&__kCFBooleanTrue forKey:@"DriveRestoreInProgress"];
  v5 = +[MBNotificationCenter sharedNotificationCenter];
  [v5 postNotification:@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreStarted"];

  return 0;
}

- (id)endedRestoreWithPolicy:(id)policy engine:(id)engine error:(id)error
{
  error = [MBPersona personalPersonaWithError:0, engine, error];
  [error setPreferencesValue:0 forKey:@"DriveRestoreInProgress"];
  v6 = +[MBNotificationCenter sharedNotificationCenter];
  [v6 postNotification:@"com.apple.private.restrict-post.MobileBackup.Drive.RestoreEnded"];

  return 0;
}

@end