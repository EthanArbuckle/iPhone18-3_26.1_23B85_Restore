@interface _BMSandboxExtensionAccessAssertion
- (BOOL)isEqual:(id)equal;
- (_BMSandboxExtensionAccessAssertion)initWithDescriptor:(id)descriptor container:(id)container;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _BMSandboxExtensionAccessAssertion

- (void)dealloc
{
  v3 = +[BMAccessAssertionCache sharedCache];
  [v3 releaseAssertion:self];

  v4.receiver = self;
  v4.super_class = _BMSandboxExtensionAccessAssertion;
  [(_BMSandboxExtensionAccessAssertion *)&v4 dealloc];
}

- (_BMSandboxExtensionAccessAssertion)initWithDescriptor:(id)descriptor container:(id)container
{
  descriptorCopy = descriptor;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = _BMSandboxExtensionAccessAssertion;
  v9 = [(_BMSandboxExtensionAccessAssertion *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    resource = [descriptorCopy resource];
    v12 = [BMPaths pathForResource:resource inContainer:containerCopy];
    path = v10->_path;
    v10->_path = v12;

    objc_storeStrong(&v10->_container, container);
  }

  return v10;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _BMSandboxExtensionAccessAssertion;
  return [(_BMSandboxExtensionAccessAssertion *)&v3 hash];
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = _BMSandboxExtensionAccessAssertion;
  return [(_BMSandboxExtensionAccessAssertion *)&v4 isEqual:equal];
}

@end