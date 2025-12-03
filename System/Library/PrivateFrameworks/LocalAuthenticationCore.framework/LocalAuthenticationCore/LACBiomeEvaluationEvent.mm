@interface LACBiomeEvaluationEvent
- (LACBiomeEvaluationEvent)initWithPolicy:(int64_t)policy errorCode:(int64_t)code biometry:(id)biometry passcode:(id)passcode dtoState:(int64_t)state ratchetState:(int64_t)ratchetState callerBundleID:(id)d;
- (id)description;
@end

@implementation LACBiomeEvaluationEvent

- (LACBiomeEvaluationEvent)initWithPolicy:(int64_t)policy errorCode:(int64_t)code biometry:(id)biometry passcode:(id)passcode dtoState:(int64_t)state ratchetState:(int64_t)ratchetState callerBundleID:(id)d
{
  biometryCopy = biometry;
  passcodeCopy = passcode;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = LACBiomeEvaluationEvent;
  v18 = [(LACBiomeEvaluationEvent *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_policy = policy;
    v18->_errorCode = code;
    objc_storeStrong(&v18->_biometry, biometry);
    objc_storeStrong(&v19->_passcode, passcode);
    v19->_dtoState = state;
    v19->_ratchetState = ratchetState;
    objc_storeStrong(&v19->_callerBundleId, d);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  callerBundleId = [(LACBiomeEvaluationEvent *)self callerBundleId];
  policy = [(LACBiomeEvaluationEvent *)self policy];
  errorCode = [(LACBiomeEvaluationEvent *)self errorCode];
  dtoState = [(LACBiomeEvaluationEvent *)self dtoState];
  ratchetState = [(LACBiomeEvaluationEvent *)self ratchetState];
  biometry = [(LACBiomeEvaluationEvent *)self biometry];
  passcode = [(LACBiomeEvaluationEvent *)self passcode];
  v11 = [v3 stringWithFormat:@"<LACBiomeEvaluationEvent caller: %@, policy: %d, errorCode: %d, dtoState: %d, ratchetState: %d, biometry: %@, passcode: %@>", callerBundleId, policy, errorCode, dtoState, ratchetState, biometry, passcode];

  return v11;
}

@end