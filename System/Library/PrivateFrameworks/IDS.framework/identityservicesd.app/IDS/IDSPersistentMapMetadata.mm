@interface IDSPersistentMapMetadata
- (BOOL)isEqual:(id)equal;
- (IDSPersistentMapMetadata)initWithCoder:(id)coder;
- (IDSPersistentMapMetadata)initWithVersionNumber:(int64_t)number;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPersistentMapMetadata

- (IDSPersistentMapMetadata)initWithVersionNumber:(int64_t)number
{
  v5.receiver = self;
  v5.super_class = IDSPersistentMapMetadata;
  result = [(IDSPersistentMapMetadata *)&v5 init];
  if (result)
  {
    result->_versionNumber = number;
  }

  return result;
}

- (IDSPersistentMapMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = IDSPersistentMapMetadata;
  v5 = [(IDSPersistentMapMetadata *)&v7 init];
  if (v5)
  {
    v5->_versionNumber = [coderCopy decodeIntegerForKey:@"versionNumber"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[IDSPersistentMapMetadata versionNumber](self forKey:{"versionNumber"), @"versionNumber"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    versionNumber = [(IDSPersistentMapMetadata *)self versionNumber];
    versionNumber2 = [v5 versionNumber];

    v8 = versionNumber == versionNumber2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end