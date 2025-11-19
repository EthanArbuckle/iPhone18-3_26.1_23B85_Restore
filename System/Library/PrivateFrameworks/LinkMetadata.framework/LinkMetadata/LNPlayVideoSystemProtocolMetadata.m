@interface LNPlayVideoSystemProtocolMetadata
- (BOOL)isEqual:(id)a3;
- (LNPlayVideoSystemProtocolMetadata)initWithCoder:(id)a3;
- (LNPlayVideoSystemProtocolMetadata)initWithSupportedCategories:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNPlayVideoSystemProtocolMetadata

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
      v7 = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
      v8 = [(LNPlayVideoSystemProtocolMetadata *)v6 supportedCategories];
      v9 = [v7 isEqualToArray:v8];
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
  v2 = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  v7 = [v3 stringWithFormat:@"<%@: %p, supportedCategories: %@>", v5, self, v6];

  return v7;
}

- (LNPlayVideoSystemProtocolMetadata)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"supportedCategories"];

  v9 = [(LNPlayVideoSystemProtocolMetadata *)self initWithSupportedCategories:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  [v4 encodeObject:v5 forKey:@"supportedCategories"];
}

- (LNPlayVideoSystemProtocolMetadata)initWithSupportedCategories:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = LNPlayVideoSystemProtocolMetadata;
  v6 = [(LNPlayVideoSystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_supportedCategories, a3);
    v8 = v7;
  }

  return v7;
}

@end