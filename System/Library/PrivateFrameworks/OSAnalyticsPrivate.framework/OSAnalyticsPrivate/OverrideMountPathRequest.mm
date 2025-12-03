@interface OverrideMountPathRequest
- (OverrideMountPathRequest)initWithCoder:(id)coder;
- (OverrideMountPathRequest)initWithSandboxExtensions:(id)extensions;
@end

@implementation OverrideMountPathRequest

- (OverrideMountPathRequest)initWithSandboxExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v9.receiver = self;
  v9.super_class = OverrideMountPathRequest;
  v5 = [(OverrideMountPathRequest *)&v9 init];
  if (v5)
  {
    v6 = [extensionsCopy copy];
    sandboxExtensions = v5->_sandboxExtensions;
    v5->_sandboxExtensions = v6;
  }

  return v5;
}

- (OverrideMountPathRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"extensions"];

  if (v5)
  {
    self = [(OverrideMountPathRequest *)self initWithSandboxExtensions:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end