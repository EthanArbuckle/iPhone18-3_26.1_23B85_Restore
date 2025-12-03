@interface FCAVAssetKeyContentArchive
- (BOOL)isEqual:(id)equal;
- (FCAVAssetKeyContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)context;
- (int64_t)storageSize;
- (unint64_t)hash;
@end

@implementation FCAVAssetKeyContentArchive

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
    identifier = [(NTPBAVAssetKey *)self->_avAssetKey identifier];
    identifier2 = [v6[1] identifier];
    v9 = [identifier isEqual:identifier2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(NTPBAVAssetKey *)self->_avAssetKey identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"avAssetKey" object:self->_avAssetKey];
  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCAVAssetKeyContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCAVAssetKeyContentArchive;
  v5 = [(FCAVAssetKeyContentArchive *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avAssetKey"];
    avAssetKey = v5->_avAssetKey;
    v5->_avAssetKey = v6;
  }

  return v5;
}

- (id)unarchiveIntoContentContext:(id)context
{
  internalContentContext = [context internalContentContext];
  avAssetKeyCache = [internalContentContext avAssetKeyCache];
  [avAssetKeyCache importAVAssetKey:self->_avAssetKey];

  v6 = [FCContentUnarchiveResult alloc];
  storageSize = [(FCAVAssetKeyContentArchive *)self storageSize];
  v8 = [(FCContentUnarchiveResult *)v6 initWithInterestToken:MEMORY[0x1E695E0F0] storageSize:storageSize];

  return v8;
}

- (id)manifest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  identifier = [(NTPBAVAssetKey *)self->_avAssetKey identifier];
  v9[0] = identifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(FCContentManifest *)v3 initWithAVAssetKeyIDs:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)storageSize
{
  keyData = [(NTPBAVAssetKey *)self->_avAssetKey keyData];
  v3 = [keyData length];

  return v3;
}

@end