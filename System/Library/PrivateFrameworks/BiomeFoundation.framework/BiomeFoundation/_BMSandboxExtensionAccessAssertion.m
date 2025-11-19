@interface _BMSandboxExtensionAccessAssertion
- (BOOL)isEqual:(id)a3;
- (_BMSandboxExtensionAccessAssertion)initWithDescriptor:(id)a3 container:(id)a4;
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

- (_BMSandboxExtensionAccessAssertion)initWithDescriptor:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _BMSandboxExtensionAccessAssertion;
  v9 = [(_BMSandboxExtensionAccessAssertion *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    v11 = [v7 resource];
    v12 = [BMPaths pathForResource:v11 inContainer:v8];
    path = v10->_path;
    v10->_path = v12;

    objc_storeStrong(&v10->_container, a4);
  }

  return v10;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _BMSandboxExtensionAccessAssertion;
  return [(_BMSandboxExtensionAccessAssertion *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = _BMSandboxExtensionAccessAssertion;
  return [(_BMSandboxExtensionAccessAssertion *)&v4 isEqual:a3];
}

@end