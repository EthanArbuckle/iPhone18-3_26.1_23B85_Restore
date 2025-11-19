@interface MRNowPlayingAudioFormatApplication
- (BOOL)isEqual:(id)a3;
- (MRNowPlayingAudioFormatApplication)initWithBundleID:(id)a3 displayName:(id)a4;
@end

@implementation MRNowPlayingAudioFormatApplication

- (MRNowPlayingAudioFormatApplication)initWithBundleID:(id)a3 displayName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MRNowPlayingAudioFormatApplication;
  v9 = [(MRNowPlayingAudioFormatApplication *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleID, a3);
    objc_storeStrong(&v10->_displayName, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRNowPlayingAudioFormatApplication *)v5 bundleID];
      v7 = [v6 isEqualToString:self->_bundleID];

      v8 = [(MRNowPlayingAudioFormatApplication *)v5 displayName];

      v9 = v7 & [v8 isEqualToString:self->_displayName];
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

@end