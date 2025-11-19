@interface LNResponseContext
- (LNResponseContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNResponseContext

- (LNResponseContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [(LNResponseContext *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, v5);
    v8 = v7;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNResponseContext *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNResponseContext *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(LNResponseContext);
  v5 = [(LNResponseContext *)self identifier];
  [(LNResponseContext *)v4 setIdentifier:v5];

  return v4;
}

@end