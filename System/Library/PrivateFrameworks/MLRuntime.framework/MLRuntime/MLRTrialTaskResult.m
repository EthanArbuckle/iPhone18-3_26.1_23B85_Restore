@interface MLRTrialTaskResult
- (MLRTrialTaskResult)initWithJSONResult:(id)a3;
- (id)description;
@end

@implementation MLRTrialTaskResult

- (MLRTrialTaskResult)initWithJSONResult:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MLRTrialTaskResult;
  v6 = [(MLRTrialTaskResult *)&v14 init];
  if (v6)
  {
    if (v5 && ([MEMORY[0x277CCAAA0] isValidJSONObject:v5] & 1) == 0)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"JSONResult must be valid JSON object, JSONResult=(%@)", v5];
      v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
      v13 = v12;

      objc_exception_throw(v12);
    }

    objc_storeStrong(&v6->_JSONResult, a3);
    v7 = v6;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@\nJSONResult:\n\t%@\n", v5, self->_JSONResult];

  return v6;
}

@end