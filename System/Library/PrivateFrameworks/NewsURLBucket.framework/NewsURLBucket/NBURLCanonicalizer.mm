@interface NBURLCanonicalizer
- (NBURLCanonicalizer)init;
- (id)canonicalizedURLForURL:(id)l;
@end

@implementation NBURLCanonicalizer

- (NBURLCanonicalizer)init
{
  v6.receiver = self;
  v6.super_class = NBURLCanonicalizer;
  v2 = [(NBURLCanonicalizer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NBObjCURLCanonicalizer);
    canonicalizer = v2->_canonicalizer;
    v2->_canonicalizer = v3;
  }

  return v2;
}

- (id)canonicalizedURLForURL:(id)l
{
  lCopy = l;
  canonicalizer = [(NBURLCanonicalizer *)self canonicalizer];
  v6 = [canonicalizer canonicalizedURLForURL:lCopy];

  return v6;
}

@end