@interface COMTErrorResult
- (COMTErrorResult)initWithCoder:(id)coder;
- (COMTErrorResult)initWithError:(id)error actionIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTErrorResult

- (COMTErrorResult)initWithError:(id)error actionIdentifier:(id)identifier
{
  errorCopy = error;
  v11.receiver = self;
  v11.super_class = COMTErrorResult;
  v8 = [(COMTResult *)&v11 initWithActionIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
  }

  return v9;
}

- (COMTErrorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = COMTErrorResult;
  v5 = [(COMTResult *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ER"];
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTErrorResult;
  coderCopy = coder;
  [(COMTResult *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTErrorResult *)self error:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ER"];
}

@end