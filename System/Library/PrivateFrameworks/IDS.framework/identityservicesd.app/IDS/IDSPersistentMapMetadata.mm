@interface IDSPersistentMapMetadata
- (BOOL)isEqual:(id)a3;
- (IDSPersistentMapMetadata)initWithCoder:(id)a3;
- (IDSPersistentMapMetadata)initWithVersionNumber:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPersistentMapMetadata

- (IDSPersistentMapMetadata)initWithVersionNumber:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = IDSPersistentMapMetadata;
  result = [(IDSPersistentMapMetadata *)&v5 init];
  if (result)
  {
    result->_versionNumber = a3;
  }

  return result;
}

- (IDSPersistentMapMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = IDSPersistentMapMetadata;
  v5 = [(IDSPersistentMapMetadata *)&v7 init];
  if (v5)
  {
    v5->_versionNumber = [v4 decodeIntegerForKey:@"versionNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IDSPersistentMapMetadata versionNumber](self forKey:{"versionNumber"), @"versionNumber"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSPersistentMapMetadata *)self versionNumber];
    v7 = [v5 versionNumber];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end