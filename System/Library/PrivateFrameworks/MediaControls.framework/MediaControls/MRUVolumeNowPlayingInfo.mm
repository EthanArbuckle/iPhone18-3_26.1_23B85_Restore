@interface MRUVolumeNowPlayingInfo
- (BOOL)isEqual:(id)equal;
- (MRUVolumeNowPlayingInfo)initWithBundleID:(id)d name:(id)name formatDescription:(id)description;
@end

@implementation MRUVolumeNowPlayingInfo

- (MRUVolumeNowPlayingInfo)initWithBundleID:(id)d name:(id)name formatDescription:(id)description
{
  dCopy = d;
  nameCopy = name;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = MRUVolumeNowPlayingInfo;
  v12 = [(MRUVolumeNowPlayingInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_formatDescription, description);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleID = [(MRUVolumeNowPlayingInfo *)v5 bundleID];
      v7 = [bundleID isEqualToString:self->_bundleID];

      name = [(MRUVolumeNowPlayingInfo *)v5 name];
      v9 = v7 & [name isEqual:self->_name];

      formatDescription = [(MRUVolumeNowPlayingInfo *)v5 formatDescription];

      v11 = v9 & [formatDescription isEqualToString:self->_formatDescription];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

@end