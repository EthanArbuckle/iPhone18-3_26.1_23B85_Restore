@interface COMTErrorResult
- (COMTErrorResult)initWithCoder:(id)a3;
- (COMTErrorResult)initWithError:(id)a3 actionIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTErrorResult

- (COMTErrorResult)initWithError:(id)a3 actionIdentifier:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = COMTErrorResult;
  v8 = [(COMTResult *)&v11 initWithActionIdentifier:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, a3);
  }

  return v9;
}

- (COMTErrorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COMTErrorResult;
  v5 = [(COMTResult *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ER"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = COMTErrorResult;
  v4 = a3;
  [(COMTResult *)&v6 encodeWithCoder:v4];
  v5 = [(COMTErrorResult *)self error:v6.receiver];
  [v4 encodeObject:v5 forKey:@"ER"];
}

@end