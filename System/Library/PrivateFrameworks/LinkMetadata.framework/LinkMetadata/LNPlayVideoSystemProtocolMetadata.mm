@interface LNPlayVideoSystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNPlayVideoSystemProtocolMetadata)initWithCoder:(id)coder;
- (LNPlayVideoSystemProtocolMetadata)initWithSupportedCategories:(id)categories;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPlayVideoSystemProtocolMetadata

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
      supportedCategories = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
      supportedCategories2 = [(LNPlayVideoSystemProtocolMetadata *)v6 supportedCategories];
      v9 = [supportedCategories isEqualToArray:supportedCategories2];
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
  supportedCategories = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  v3 = [supportedCategories hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  supportedCategories = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  v7 = [v3 stringWithFormat:@"<%@: %p, supportedCategories: %@>", v5, self, supportedCategories];

  return v7;
}

- (LNPlayVideoSystemProtocolMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"supportedCategories"];

  v9 = [(LNPlayVideoSystemProtocolMetadata *)self initWithSupportedCategories:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedCategories = [(LNPlayVideoSystemProtocolMetadata *)self supportedCategories];
  [coderCopy encodeObject:supportedCategories forKey:@"supportedCategories"];
}

- (LNPlayVideoSystemProtocolMetadata)initWithSupportedCategories:(id)categories
{
  categoriesCopy = categories;
  v10.receiver = self;
  v10.super_class = LNPlayVideoSystemProtocolMetadata;
  v6 = [(LNPlayVideoSystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_supportedCategories, categories);
    v8 = v7;
  }

  return v7;
}

@end