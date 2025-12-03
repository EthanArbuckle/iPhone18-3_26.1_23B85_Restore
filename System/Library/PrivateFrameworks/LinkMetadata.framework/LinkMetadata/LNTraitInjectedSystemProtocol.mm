@interface LNTraitInjectedSystemProtocol
- (BOOL)isEqual:(id)equal;
- (LNTraitInjectedSystemProtocol)initWithCoder:(id)coder;
- (LNTraitInjectedSystemProtocol)initWithProtocol:(id)protocol;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNTraitInjectedSystemProtocol

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      protocol = [(LNTraitInjectedSystemProtocol *)self protocol];
      protocol2 = [(LNTraitInjectedSystemProtocol *)v6 protocol];
      v9 = [protocol isEqual:protocol2];
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
  protocol = [(LNTraitInjectedSystemProtocol *)self protocol];
  v3 = [protocol hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  protocol = [(LNTraitInjectedSystemProtocol *)self protocol];
  v7 = [v3 stringWithFormat:@"<%@: %p, protocol: %@>", v5, self, protocol];

  return v7;
}

- (LNTraitInjectedSystemProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protocol"];

  v6 = [(LNTraitInjectedSystemProtocol *)self initWithProtocol:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  protocol = [(LNTraitInjectedSystemProtocol *)self protocol];
  [coderCopy encodeObject:protocol forKey:@"protocol"];
}

- (LNTraitInjectedSystemProtocol)initWithProtocol:(id)protocol
{
  protocolCopy = protocol;
  v10.receiver = self;
  v10.super_class = LNTraitInjectedSystemProtocol;
  v6 = [(LNTraitInjectedSystemProtocol *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, protocol);
    v8 = v7;
  }

  return v7;
}

@end