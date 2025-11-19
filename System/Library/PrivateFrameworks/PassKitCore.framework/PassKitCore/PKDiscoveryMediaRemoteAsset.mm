@interface PKDiscoveryMediaRemoteAsset
- (BOOL)isEqual:(id)a3;
- (PKDiscoveryMediaRemoteAsset)initWithCoder:(id)a3;
- (PKDiscoveryMediaRemoteAsset)initWithDictionary:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDiscoveryMediaRemoteAsset

- (PKDiscoveryMediaRemoteAsset)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryMediaRemoteAsset;
  v5 = [(PKDiscoveryMediaRemoteAsset *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKURLForKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 PKStringForKey:@"sha1"];
    sha1Hex = v5->_sha1Hex;
    v5->_sha1Hex = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  url = self->_url;
  v6 = v4[2];
  if (!url || !v6)
  {
    if (url == v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (([(NSURL *)url isEqual:?]& 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  sha1Hex = self->_sha1Hex;
  v8 = v4[1];
  if (sha1Hex && v8)
  {
    v9 = [(NSString *)sha1Hex isEqual:?];
  }

  else
  {
    v9 = sha1Hex == v8;
  }

LABEL_10:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_url];
  [v3 safelyAddObject:self->_sha1Hex];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  url = self->_url;
  v5 = a3;
  [v5 encodeObject:url forKey:@"url"];
  [v5 encodeObject:self->_sha1Hex forKey:@"sha1"];
}

- (PKDiscoveryMediaRemoteAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryMediaRemoteAsset;
  v5 = [(PKDiscoveryMediaRemoteAsset *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sha1"];
    sha1Hex = v5->_sha1Hex;
    v5->_sha1Hex = v8;
  }

  return v5;
}

@end