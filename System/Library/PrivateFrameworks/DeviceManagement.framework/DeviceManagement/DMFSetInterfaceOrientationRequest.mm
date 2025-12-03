@interface DMFSetInterfaceOrientationRequest
- (DMFSetInterfaceOrientationRequest)init;
- (DMFSetInterfaceOrientationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFSetInterfaceOrientationRequest

- (DMFSetInterfaceOrientationRequest)init
{
  v3.receiver = self;
  v3.super_class = DMFSetInterfaceOrientationRequest;
  result = [(CATTaskRequest *)&v3 init];
  if (result)
  {
    result->_interfaceOrientation = 0;
  }

  return result;
}

- (DMFSetInterfaceOrientationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DMFSetInterfaceOrientationRequest;
  v5 = [(CATTaskRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockOrientation"];
    v5->_lockOrientation = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceOrientation"];
    v5->_interfaceOrientation = [v7 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DMFSetInterfaceOrientationRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFSetInterfaceOrientationRequest lockOrientation](self, "lockOrientation", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"lockOrientation"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFSetInterfaceOrientationRequest interfaceOrientation](self, "interfaceOrientation")}];
  [coderCopy encodeObject:v6 forKey:@"interfaceOrientation"];
}

@end