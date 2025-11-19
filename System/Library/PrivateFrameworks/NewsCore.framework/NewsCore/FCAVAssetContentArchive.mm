@interface FCAVAssetContentArchive
- (BOOL)isEqual:(id)a3;
- (FCAVAssetContentArchive)initWithCoder:(id)a3;
- (id)description;
- (id)manifest;
- (id)unarchiveIntoContentContext:(id)a3;
- (unint64_t)hash;
@end

@implementation FCAVAssetContentArchive

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
    v7 = [(NTPBAVAsset *)self->_avAsset identifier];
    v8 = [v6[1] identifier];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(NTPBAVAsset *)self->_avAsset identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  [(FCDescription *)v3 addField:@"avAsset" object:self->_avAsset];
  v4 = [(FCDescription *)v3 descriptionString];

  return v4;
}

- (FCAVAssetContentArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCAVAssetContentArchive;
  v5 = [(FCAVAssetContentArchive *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"avAsset"];
    avAsset = v5->_avAsset;
    v5->_avAsset = v6;
  }

  return v5;
}

- (id)unarchiveIntoContentContext:(id)a3
{
  v4 = [a3 internalContentContext];
  v5 = [v4 avAssetCache];
  v6 = [v5 importAVAsset:self->_avAsset];

  v7 = [[FCContentUnarchiveResult alloc] initWithInterestToken:v6 storageSize:[(FCAVAssetContentArchive *)self storageSize]];

  return v7;
}

- (id)manifest
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [FCContentManifest alloc];
  v4 = [(NTPBAVAsset *)self->_avAsset identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(FCContentManifest *)v3 initWithAVAssetIDs:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end