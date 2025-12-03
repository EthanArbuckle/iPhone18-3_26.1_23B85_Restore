@interface FCAVAssetContentArchive
- (BOOL)isEqual:(id)equal;
- (FCAVAssetContentArchive)initWithCoder:(id)coder;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)context;
- (unint64_t)hash;
@end

@implementation FCAVAssetContentArchive

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
    identifier = [(NTPBAVAsset *)self->_avAsset identifier];
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
  identifier = [(NTPBAVAsset *)self->_avAsset identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"avAsset" object:self->_avAsset];
  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

- (FCAVAssetContentArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FCAVAssetContentArchive;
  v5 = [(FCAVAssetContentArchive *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avAsset"];
    avAsset = v5->_avAsset;
    v5->_avAsset = v6;
  }

  return v5;
}

- (id)unarchiveIntoContentContext:(id)context
{
  internalContentContext = [context internalContentContext];
  avAssetCache = [internalContentContext avAssetCache];
  v6 = [avAssetCache importAVAsset:self->_avAsset];

  v7 = [[FCContentUnarchiveResult alloc] initWithInterestToken:v6 storageSize:[(FCAVAssetContentArchive *)self storageSize]];

  return v7;
}

- (id)manifest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  identifier = [(NTPBAVAsset *)self->_avAsset identifier];
  v9[0] = identifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(FCContentManifest *)v3 initWithAVAssetIDs:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end