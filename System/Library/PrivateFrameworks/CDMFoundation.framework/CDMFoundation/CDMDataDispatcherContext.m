@interface CDMDataDispatcherContext
- (BOOL)isSampledForEmission;
- (CDMDataDispatcherContext)initWithCallingBundleId:(id)a3;
@end

@implementation CDMDataDispatcherContext

- (BOOL)isSampledForEmission
{
  if (self->_cdmSELFLoggingPolicyType == 1)
  {
    return 1;
  }

  samplingDiceRoll = self->_samplingDiceRoll;
  return samplingDiceRoll < +[CDMUserDefaultsUtils readNonSiriSelfSampleRate];
}

- (CDMDataDispatcherContext)initWithCallingBundleId:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CDMDataDispatcherContext;
  v6 = [(CDMDataDispatcherContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callingBundleId, a3);
    v8 = [MEMORY[0x1E696AFB0] UUID];
    streamUUID = v7->_streamUUID;
    v7->_streamUUID = v8;

    v7->_cdmSELFLoggingPolicyType = [CDMSELFLoggingPolicy getSELFCDMLoggingPolicyType:v5];
    v7->_samplingDiceRoll = arc4random_uniform(0x64u);
  }

  return v7;
}

@end