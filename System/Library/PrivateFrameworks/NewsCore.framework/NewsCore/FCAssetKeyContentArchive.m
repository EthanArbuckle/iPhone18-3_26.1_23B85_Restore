@interface FCAssetKeyContentArchive
- (BOOL)isEqual:(id)a3;
- (FCAssetKeyContentArchive)initWithCoder:(id)a3;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCAssetKeyContentArchive

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v4 = [(FCDescription *)v3 descriptionString];

  return v4;
}

- (FCAssetKeyContentArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCAssetKeyContentArchive;
  v5 = [(FCAssetKeyContentArchive *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKey"];
    wrappingKey = v5->_wrappingKey;
    v5->_wrappingKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappingKeyID"];
    wrappingKeyID = v5->_wrappingKeyID;
    v5->_wrappingKeyID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  wrappingKey = self->_wrappingKey;
  v5 = a3;
  [v5 encodeObject:wrappingKey forKey:@"wrappingKey"];
  [v5 encodeObject:self->_wrappingKeyID forKey:@"wrappingKeyID"];
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v4 = [a3 internalContentContext];
  v5 = [v4 assetKeyCache];
  [v5 setWrappingKey:self->_wrappingKey forWrappingKeyID:self->_wrappingKeyID];

  v6 = [FCContentUnarchiveResult alloc];
  v7 = [(FCAssetKeyContentArchive *)self storageSize];
  v8 = [(FCContentUnarchiveResult *)v6 initWithInterestToken:MEMORY[0x1E695E0F0] storageSize:v7];

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