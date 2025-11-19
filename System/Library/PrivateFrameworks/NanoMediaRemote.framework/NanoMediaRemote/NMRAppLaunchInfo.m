@interface NMRAppLaunchInfo
- (NMRAppLaunchInfo)initWithPlayerResponse:(id)a3;
- (id)_launchURLForScheme:(id)a3 requestedPlayerPath:(id)a4;
@end

@implementation NMRAppLaunchInfo

- (NMRAppLaunchInfo)initWithPlayerResponse:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = NMRAppLaunchInfo;
  v5 = [(NMRAppLaunchInfo *)&v37 init];
  if (v5)
  {
    v6 = [v4 playerPath];
    v7 = [v6 isNativeMusicPath];

    if (v7)
    {
      v8 = @"music";
      v9 = @"com.apple.NanoMusic";
      goto LABEL_20;
    }

    v10 = [v4 playerPath];
    v11 = [v10 isNativePodcastsPath];

    if (v11)
    {
      v8 = @"podcasts";
      v9 = @"com.apple.podcasts";
      goto LABEL_20;
    }

    v12 = [v4 playerPath];
    if ([v12 isNativeBooksPath])
    {
      v13 = [v4 playerPath];
      v14 = [v13 route];
      if ([v14 isDeviceRoute])
      {

LABEL_15:
        v8 = @"ibooks";
        v9 = @"com.apple.NanoBooks";
        goto LABEL_20;
      }

      v19 = [v4 playerPath];
      v20 = [v19 route];
      v21 = [v20 isPhoneRoute];

      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    v15 = [v4 playerPath];
    v16 = [v15 nmr_isSystemWorkoutPath];

    if (v16)
    {
      v8 = @"SessionTrackerApp";
      v9 = @"com.apple.SessionTrackerApp";
    }

    else
    {
      v17 = [v4 playerPath];
      v18 = [v17 nmr_isSystemMindfulnessPath];

      if (v18)
      {
        v8 = @"Mind";
        v9 = @"com.apple.Mind";
      }

      else
      {
        v22 = [v4 playerPath];
        v23 = [v22 route];
        v24 = [v23 isDeviceRoute];

        if (v24 && ([v4 playerPath], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "representedBundleID"), v9 = objc_claimAutoreleasedReturnValue(), v25, v9))
        {
          v8 = 0;
        }

        else
        {
          v8 = @"nowplaying";
          v9 = @"com.apple.NanoNowPlaying";
        }
      }
    }

LABEL_20:
    v26 = [v4 request];
    v27 = [v26 playerPath];

    v28 = [v4 playerPath];
    if ([v28 nmr_isSystemPodcastsPath])
    {
    }

    else
    {
      v29 = [v4 playerPath];
      v30 = [v29 nmr_isSystemBooksPath];

      if (!v30)
      {
LABEL_24:
        bundleID = v5->_bundleID;
        v5->_bundleID = &v9->isa;
        v33 = v9;

        v34 = [(NMRAppLaunchInfo *)v5 _launchURLForScheme:v8 requestedPlayerPath:v27];
        URL = v5->_URL;
        v5->_URL = v34;

        goto LABEL_25;
      }
    }

    v31 = [v4 playerPath];

    v27 = v31;
    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (id)_launchURLForScheme:(id)a3 requestedPlayerPath:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCACE0];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setScheme:v7];

  [v8 setHost:@"now-playing"];
  v9 = MEMORY[0x277CCAD18];
  v10 = [v5 route];
  v11 = [v10 designatedGroupLeaderRouteUID];
  v12 = v11;
  if (!v11)
  {
    v12 = [v5 deviceUID];
  }

  v13 = [v9 queryItemWithName:@"deviceUID" value:v12];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v8 setQueryItems:v14];

  if (!v11)
  {
  }

  v15 = [v8 URL];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end