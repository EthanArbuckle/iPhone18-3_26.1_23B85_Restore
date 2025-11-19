@interface CDPCARecoveryKeyVerificationReporter
- (CDPCARecoveryKeyVerificationReporter)init;
@end

@implementation CDPCARecoveryKeyVerificationReporter

- (CDPCARecoveryKeyVerificationReporter)init
{
  v3.receiver = self;
  v3.super_class = CDPCARecoveryKeyVerificationReporter;
  return [(CDPCAReporter *)&v3 initWithEvent:@"com.apple.CoreCDP.recoveryKeyVerification"];
}

@end