@interface MRNowPlayingAudioFormatApplication
- (BOOL)isEqual:(id)equal;
- (MRNowPlayingAudioFormatApplication)initWithBundleID:(id)d displayName:(id)name;
@end

@implementation MRNowPlayingAudioFormatApplication

- (MRNowPlayingAudioFormatApplication)initWithBundleID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MRNowPlayingAudioFormatApplication;
  v9 = [(MRNowPlayingAudioFormatApplication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, d);
    objc_storeStrong(&v10->_displayName, name);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleID = [(MRNowPlayingAudioFormatApplication *)v5 bundleID];
      v7 = [bundleID isEqualToString:self->_bundleID];

      displayName = [(MRNowPlayingAudioFormatApplication *)v5 displayName];

      v9 = v7 & [displayName isEqualToString:self->_displayName];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end