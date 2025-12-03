@interface HDDaemon(HeartHealthDaemonPlugin)
- (id)heartDaemonExtension;
- (void)heartDaemonExtension;
@end

@implementation HDDaemon(HeartHealthDaemonPlugin)

- (id)heartDaemonExtension
{
  v4 = [self daemonExtensionWithIdentifier:*MEMORY[0x277D12F10]];
  if (!v4)
  {
    [(HDDaemon(HeartHealthDaemonPlugin) *)a2 heartDaemonExtension];
  }

  return v4;
}

- (void)heartDaemonExtension
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"HDHeartDaemonExtension.m" lineNumber:72 description:@"Health Heart Daemon Extension should not be nil"];
}

@end