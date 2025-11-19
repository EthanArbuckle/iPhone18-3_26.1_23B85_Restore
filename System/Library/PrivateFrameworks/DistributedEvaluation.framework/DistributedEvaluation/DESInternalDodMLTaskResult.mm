@interface DESInternalDodMLTaskResult
- (DESInternalDodMLTaskResult)initWithJSONResult:(id)a3 binaryResult:(id)a4 deferred:(BOOL)a5 deferralURL:(id)a6 duration:(double)a7;
- (id)description;
@end

@implementation DESInternalDodMLTaskResult

- (DESInternalDodMLTaskResult)initWithJSONResult:(id)a3 binaryResult:(id)a4 deferred:(BOOL)a5 deferralURL:(id)a6 duration:(double)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = DESInternalDodMLTaskResult;
  v16 = [(DESInternalDodMLTaskResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_JSONResult, a3);
    objc_storeStrong(&v17->_binaryResult, a4);
    v17->_deferred = a5;
    objc_storeStrong(&v17->_deferralURL, a6);
    v17->_duration = a7;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DESInternalDodMLTaskResult *)self binaryResult];
  v7 = [v6 length];
  v8 = [(DESInternalDodMLTaskResult *)self deferralURL];
  v9 = [(DESInternalDodMLTaskResult *)self JSONResult];
  [(DESInternalDodMLTaskResult *)self duration];
  v11 = [v3 stringWithFormat:@"%@(binaryResult.length=%lu, deferralURL=%@, JSONResult=%@, duration=%.1f)", v5, v7, v8, v9, v10];

  return v11;
}

@end