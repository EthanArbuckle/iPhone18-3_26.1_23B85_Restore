@interface HDDaemon(HeartHealthDaemonPlugin)
- (id)heartDaemonExtension;
- (void)heartDaemonExtension;
@end

@implementation HDDaemon(HeartHealthDaemonPlugin)

- (id)heartDaemonExtension
{
  v4 = [a1 daemonExtensionWithIdentifier:*MEMORY[0x277D12F10]];
  if (!v4)
  {
    [(HDDaemon(HeartHealthDaemonPlugin) *)a2 heartDaemonExtension];
  }

  return v4;
}

- (void)heartDaemonExtension
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDHeartDaemonExtension.m" lineNumber:72 description:@"Health Heart Daemon Extension should not be nil"];
}

@end