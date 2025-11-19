@interface LACBiomeEvaluationEvent
- (LACBiomeEvaluationEvent)initWithPolicy:(int64_t)a3 errorCode:(int64_t)a4 biometry:(id)a5 passcode:(id)a6 dtoState:(int64_t)a7 ratchetState:(int64_t)a8 callerBundleID:(id)a9;
- (id)description;
@end

@implementation LACBiomeEvaluationEvent

- (LACBiomeEvaluationEvent)initWithPolicy:(int64_t)a3 errorCode:(int64_t)a4 biometry:(id)a5 passcode:(id)a6 dtoState:(int64_t)a7 ratchetState:(int64_t)a8 callerBundleID:(id)a9
{
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = LACBiomeEvaluationEvent;
  v18 = [(LACBiomeEvaluationEvent *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_policy = a3;
    v18->_errorCode = a4;
    objc_storeStrong(&v18->_biometry, a5);
    objc_storeStrong(&v19->_passcode, a6);
    v19->_dtoState = a7;
    v19->_ratchetState = a8;
    objc_storeStrong(&v19->_callerBundleId, a9);
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LACBiomeEvaluationEvent *)self callerBundleId];
  v5 = [(LACBiomeEvaluationEvent *)self policy];
  v6 = [(LACBiomeEvaluationEvent *)self errorCode];
  v7 = [(LACBiomeEvaluationEvent *)self dtoState];
  v8 = [(LACBiomeEvaluationEvent *)self ratchetState];
  v9 = [(LACBiomeEvaluationEvent *)self biometry];
  v10 = [(LACBiomeEvaluationEvent *)self passcode];
  v11 = [v3 stringWithFormat:@"<LACBiomeEvaluationEvent caller: %@, policy: %d, errorCode: %d, dtoState: %d, ratchetState: %d, biometry: %@, passcode: %@>", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

@end