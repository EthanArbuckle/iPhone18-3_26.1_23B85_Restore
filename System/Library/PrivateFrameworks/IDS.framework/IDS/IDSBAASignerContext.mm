@interface IDSBAASignerContext
- (IDSBAASignerContext)initWithCoder:(id)coder;
- (IDSBAASignerContext)initWithSigningDigest:(id)digest;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSBAASignerContext

- (IDSBAASignerContext)initWithSigningDigest:(id)digest
{
  digestCopy = digest;
  v9.receiver = self;
  v9.super_class = IDSBAASignerContext;
  v6 = [(IDSBAASignerContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingDigest, digest);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signingDigest = [(IDSBAASignerContext *)self signingDigest];
  [coderCopy encodeObject:signingDigest forKey:@"SigningDigest"];
}

- (IDSBAASignerContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SigningDigest"];

  v9.receiver = self;
  v9.super_class = IDSBAASignerContext;
  v6 = [(IDSBAASignerContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingDigest, v5);
  }

  return v7;
}

@end