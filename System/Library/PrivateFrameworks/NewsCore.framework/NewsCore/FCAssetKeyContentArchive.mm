@interface FCAssetKeyContentArchive
- (BOOL)isEqual:(id)equal;
- (FCAssetKeyContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCAssetKeyContentArchive

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(NSData *)self->_wrappingKeyID isEqual:v6[2]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"wrappingKeyID" object:self->_wrappingKeyID];
  [(FCDescription *)v3 addField:@"wrappingKey" object:self->_wrappingKey];
  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCAssetKeyContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FCAssetKeyContentArchive;
  v5 = [(FCAssetKeyContentArchive *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKeyID"];
    wrappingKeyID = v5->_wrappingKeyID;
    v5->_wrappingKeyID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  wrappingKey = self->_wrappingKey;
  coderCopy = coder;
  [coderCopy encodeObject:wrappingKey forKey:@"wrappingKey"];
  [coderCopy encodeObject:self->_wrappingKeyID forKey:@"wrappingKeyID"];
}

- (id)unarchiveIntoContentContext:(id)context
{
  internalContentContext = [context internalContentContext];
  assetKeyCache = [internalContentContext assetKeyCache];
  [assetKeyCache setWrappingKey:self->_wrappingKey forWrappingKeyID:self->_wrappingKeyID];

  v6 = [FCContentUnarchiveResult alloc];
  storageSize = [(FCAssetKeyContentArchive *)self storageSize];
  v8 = [(FCContentUnarchiveResult *)v6 initWithInterestToken:MEMORY[0x1E695E0F0] storageSize:storageSize];

  return v8;
}

- (id)manifest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  v8[0] = self->_wrappingKeyID;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [(FCContentManifest *)v3 initWithAssetWrappingKeyIDs:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end