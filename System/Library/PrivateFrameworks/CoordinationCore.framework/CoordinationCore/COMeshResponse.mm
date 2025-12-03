@interface COMeshResponse
- (COMeshResponse)initWithCoder:(id)coder;
- (COMeshResponse)initWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMeshResponse

- (COMeshResponse)initWithError:(id)error
{
  errorCopy = error;
  v6 = [(COMeshCommand *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (COMeshResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
  if ((objc_opt_isKindOfClass() & 1) != 0 || ([coderCopy containsValueForKey:@"error"] & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = COMeshResponse;
    v7 = [(COMeshCommand *)&v9 initWithCoder:coderCopy];
    v6 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_error, v5);
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = COMeshResponse;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  error = [(COMeshResponse *)self error];
  if (error)
  {
    [coderCopy encodeObject:error forKey:@"error"];
  }
}

@end