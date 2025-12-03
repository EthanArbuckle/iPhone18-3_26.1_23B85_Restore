@interface LNResponseContext
- (LNResponseContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNResponseContext

- (LNResponseContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(LNResponseContext *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, v5);
    v8 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNResponseContext *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(LNResponseContext *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, identifier];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(LNResponseContext);
  identifier = [(LNResponseContext *)self identifier];
  [(LNResponseContext *)v4 setIdentifier:identifier];

  return v4;
}

@end