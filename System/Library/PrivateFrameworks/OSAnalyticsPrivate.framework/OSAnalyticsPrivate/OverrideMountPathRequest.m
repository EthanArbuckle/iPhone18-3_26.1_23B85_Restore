@interface OverrideMountPathRequest
- (OverrideMountPathRequest)initWithCoder:(id)a3;
- (OverrideMountPathRequest)initWithSandboxExtensions:(id)a3;
@end

@implementation OverrideMountPathRequest

- (OverrideMountPathRequest)initWithSandboxExtensions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OverrideMountPathRequest;
  v5 = [(OverrideMountPathRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sandboxExtensions = v5->_sandboxExtensions;
    v5->_sandboxExtensions = v6;
  }

  return v5;
}

- (OverrideMountPathRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"extensions"];

  if (v5)
  {
    self = [(OverrideMountPathRequest *)self initWithSandboxExtensions:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end