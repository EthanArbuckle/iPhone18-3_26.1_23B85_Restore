@interface LNTraitInjectedSystemProtocol
- (BOOL)isEqual:(id)a3;
- (LNTraitInjectedSystemProtocol)initWithCoder:(id)a3;
- (LNTraitInjectedSystemProtocol)initWithProtocol:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTraitInjectedSystemProtocol

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNTraitInjectedSystemProtocol *)self protocol];
      v8 = [(LNTraitInjectedSystemProtocol *)v6 protocol];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(LNTraitInjectedSystemProtocol *)self protocol];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNTraitInjectedSystemProtocol *)self protocol];
  v7 = [v3 stringWithFormat:@"<%@: %p, protocol: %@>", v5, self, v6];

  return v7;
}

- (LNTraitInjectedSystemProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protocol"];

  v6 = [(LNTraitInjectedSystemProtocol *)self initWithProtocol:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNTraitInjectedSystemProtocol *)self protocol];
  [v4 encodeObject:v5 forKey:@"protocol"];
}

- (LNTraitInjectedSystemProtocol)initWithProtocol:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNTraitInjectedSystemProtocol;
  v6 = [(LNTraitInjectedSystemProtocol *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, a3);
    v8 = v7;
  }

  return v7;
}

@end