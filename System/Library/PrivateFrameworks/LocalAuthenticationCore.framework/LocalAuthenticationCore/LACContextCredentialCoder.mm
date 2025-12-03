@interface LACContextCredentialCoder
- (LACContextCredentialCoder)initWithExternalizedContextRef:(id)ref;
@end

@implementation LACContextCredentialCoder

- (LACContextCredentialCoder)initWithExternalizedContextRef:(id)ref
{
  refCopy = ref;
  v9.receiver = self;
  v9.super_class = LACContextCredentialCoder;
  v6 = [(LACContextCredentialCoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contextRef, ref);
  }

  return v7;
}

@end