@interface IDSBAASignerContext
- (IDSBAASignerContext)initWithCoder:(id)a3;
- (IDSBAASignerContext)initWithSigningDigest:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSBAASignerContext

- (IDSBAASignerContext)initWithSigningDigest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSBAASignerContext;
  v6 = [(IDSBAASignerContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signingDigest, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSBAASignerContext *)self signingDigest];
  [v4 encodeObject:v5 forKey:@"SigningDigest"];
}

- (IDSBAASignerContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SigningDigest"];

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