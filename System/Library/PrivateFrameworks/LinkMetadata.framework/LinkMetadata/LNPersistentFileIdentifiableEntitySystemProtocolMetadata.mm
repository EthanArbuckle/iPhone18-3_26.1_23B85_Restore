@interface LNPersistentFileIdentifiableEntitySystemProtocolMetadata
- (BOOL)isEqual:(id)equal;
- (LNPersistentFileIdentifiableEntitySystemProtocolMetadata)initWithCoder:(id)coder;
- (LNPersistentFileIdentifiableEntitySystemProtocolMetadata)initWithSupportedContentTypes:(id)types;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNPersistentFileIdentifiableEntitySystemProtocolMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        supportedContentTypes = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
        supportedContentTypes2 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)v6 supportedContentTypes];

        if (supportedContentTypes == supportedContentTypes2)
        {
          v18 = 1;
          goto LABEL_12;
        }

        supportedContentTypes3 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
        if (!supportedContentTypes3 || (v10 = supportedContentTypes3, [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)v6 supportedContentTypes], v11 = objc_claimAutoreleasedReturnValue(), v11, v10, !v11))
        {
          v18 = 0;
          goto LABEL_12;
        }

        v12 = MEMORY[0x1E695DFD8];
        supportedContentTypes4 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
        v14 = [v12 setWithArray:supportedContentTypes4];
        v15 = MEMORY[0x1E695DFD8];
        supportedContentTypes5 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)v6 supportedContentTypes];
        v17 = [v15 setWithArray:supportedContentTypes5];
        v18 = [v14 isEqualToSet:v17];
      }

      else
      {
        v18 = 0;
        supportedContentTypes4 = v6;
        v6 = 0;
      }
    }

    else
    {
      supportedContentTypes4 = 0;
      v18 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v18 = 1;
LABEL_13:

  return v18;
}

- (unint64_t)hash
{
  supportedContentTypes = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
  v3 = [supportedContentTypes hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  supportedContentTypes = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
  v7 = [v3 stringWithFormat:@"<%@: %p, supportedContentTypes: %@>", v5, self, supportedContentTypes];

  return v7;
}

- (LNPersistentFileIdentifiableEntitySystemProtocolMetadata)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"supportedContentTypes"];

  v9 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self initWithSupportedContentTypes:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedContentTypes = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)self supportedContentTypes];
  [coderCopy encodeObject:supportedContentTypes forKey:@"supportedContentTypes"];
}

- (LNPersistentFileIdentifiableEntitySystemProtocolMetadata)initWithSupportedContentTypes:(id)types
{
  typesCopy = types;
  v10.receiver = self;
  v10.super_class = LNPersistentFileIdentifiableEntitySystemProtocolMetadata;
  v6 = [(LNPersistentFileIdentifiableEntitySystemProtocolMetadata *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_supportedContentTypes, types);
    v8 = v7;
  }

  return v7;
}

@end