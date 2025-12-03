@interface DESInternalDodMLTaskResult
- (DESInternalDodMLTaskResult)initWithJSONResult:(id)result binaryResult:(id)binaryResult deferred:(BOOL)deferred deferralURL:(id)l duration:(double)duration;
- (id)description;
@end

@implementation DESInternalDodMLTaskResult

- (DESInternalDodMLTaskResult)initWithJSONResult:(id)result binaryResult:(id)binaryResult deferred:(BOOL)deferred deferralURL:(id)l duration:(double)duration
{
  resultCopy = result;
  binaryResultCopy = binaryResult;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = DESInternalDodMLTaskResult;
  v16 = [(DESInternalDodMLTaskResult *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_JSONResult, result);
    objc_storeStrong(&v17->_binaryResult, binaryResult);
    v17->_deferred = deferred;
    objc_storeStrong(&v17->_deferralURL, l);
    v17->_duration = duration;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  binaryResult = [(DESInternalDodMLTaskResult *)self binaryResult];
  v7 = [binaryResult length];
  deferralURL = [(DESInternalDodMLTaskResult *)self deferralURL];
  jSONResult = [(DESInternalDodMLTaskResult *)self JSONResult];
  [(DESInternalDodMLTaskResult *)self duration];
  v11 = [v3 stringWithFormat:@"%@(binaryResult.length=%lu, deferralURL=%@, JSONResult=%@, duration=%.1f)", v5, v7, deferralURL, jSONResult, v10];

  return v11;
}

@end