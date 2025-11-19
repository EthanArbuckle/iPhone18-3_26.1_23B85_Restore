@interface MRUVolumeNowPlayingInfo
- (BOOL)isEqual:(id)a3;
- (MRUVolumeNowPlayingInfo)initWithBundleID:(id)a3 name:(id)a4 formatDescription:(id)a5;
@end

@implementation MRUVolumeNowPlayingInfo

- (MRUVolumeNowPlayingInfo)initWithBundleID:(id)a3 name:(id)a4 formatDescription:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MRUVolumeNowPlayingInfo;
  v12 = [(MRUVolumeNowPlayingInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, a3);
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v13->_formatDescription, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRUVolumeNowPlayingInfo *)v5 bundleID];
      v7 = [v6 isEqualToString:self->_bundleID];

      v8 = [(MRUVolumeNowPlayingInfo *)v5 name];
      v9 = v7 & [v8 isEqual:self->_name];

      v10 = [(MRUVolumeNowPlayingInfo *)v5 formatDescription];

      v11 = v9 & [v10 isEqualToString:self->_formatDescription];
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

@end