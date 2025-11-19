@interface CDPCARecoveryKeyDeletionReporter
- (CDPCARecoveryKeyDeletionReporter)init;
@end

@implementation CDPCARecoveryKeyDeletionReporter

- (CDPCARecoveryKeyDeletionReporter)init
{
  v3.receiver = self;
  v3.super_class = CDPCARecoveryKeyDeletionReporter;
  return [(CDPCAReporter *)&v3 initWithEvent:@"com.apple.CoreCDP.recoveryKeyDeletion"];
}

@end