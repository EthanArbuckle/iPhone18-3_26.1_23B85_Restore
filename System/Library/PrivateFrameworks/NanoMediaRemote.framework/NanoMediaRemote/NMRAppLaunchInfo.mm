@interface NMRAppLaunchInfo
- (NMRAppLaunchInfo)initWithPlayerResponse:(id)response;
- (id)_launchURLForScheme:(id)scheme requestedPlayerPath:(id)path;
@end

@implementation NMRAppLaunchInfo

- (NMRAppLaunchInfo)initWithPlayerResponse:(id)response
{
  responseCopy = response;
  v37.receiver = self;
  v37.super_class = NMRAppLaunchInfo;
  v5 = [(NMRAppLaunchInfo *)&v37 init];
  if (v5)
  {
    playerPath = [responseCopy playerPath];
    isNativeMusicPath = [playerPath isNativeMusicPath];

    if (isNativeMusicPath)
    {
      v8 = @"music";
      v9 = @"com.apple.NanoMusic";
      goto LABEL_20;
    }

    playerPath2 = [responseCopy playerPath];
    isNativePodcastsPath = [playerPath2 isNativePodcastsPath];

    if (isNativePodcastsPath)
    {
      v8 = @"podcasts";
      v9 = @"com.apple.podcasts";
      goto LABEL_20;
    }

    playerPath3 = [responseCopy playerPath];
    if ([playerPath3 isNativeBooksPath])
    {
      playerPath4 = [responseCopy playerPath];
      route = [playerPath4 route];
      if ([route isDeviceRoute])
      {

LABEL_15:
        v8 = @"ibooks";
        v9 = @"com.apple.NanoBooks";
        goto LABEL_20;
      }

      playerPath5 = [responseCopy playerPath];
      route2 = [playerPath5 route];
      isPhoneRoute = [route2 isPhoneRoute];

      if (isPhoneRoute)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    playerPath6 = [responseCopy playerPath];
    nmr_isSystemWorkoutPath = [playerPath6 nmr_isSystemWorkoutPath];

    if (nmr_isSystemWorkoutPath)
    {
      v8 = @"SessionTrackerApp";
      v9 = @"com.apple.SessionTrackerApp";
    }

    else
    {
      playerPath7 = [responseCopy playerPath];
      nmr_isSystemMindfulnessPath = [playerPath7 nmr_isSystemMindfulnessPath];

      if (nmr_isSystemMindfulnessPath)
      {
        v8 = @"Mind";
        v9 = @"com.apple.Mind";
      }

      else
      {
        playerPath8 = [responseCopy playerPath];
        route3 = [playerPath8 route];
        isDeviceRoute = [route3 isDeviceRoute];

        if (isDeviceRoute && ([responseCopy playerPath], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "representedBundleID"), v9 = objc_claimAutoreleasedReturnValue(), v25, v9))
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
    request = [responseCopy request];
    playerPath9 = [request playerPath];

    playerPath10 = [responseCopy playerPath];
    if ([playerPath10 nmr_isSystemPodcastsPath])
    {
    }

    else
    {
      playerPath11 = [responseCopy playerPath];
      nmr_isSystemBooksPath = [playerPath11 nmr_isSystemBooksPath];

      if (!nmr_isSystemBooksPath)
      {
LABEL_24:
        bundleID = v5->_bundleID;
        v5->_bundleID = &v9->isa;
        v33 = v9;

        v34 = [(NMRAppLaunchInfo *)v5 _launchURLForScheme:v8 requestedPlayerPath:playerPath9];
        URL = v5->_URL;
        v5->_URL = v34;

        goto LABEL_25;
      }
    }

    playerPath12 = [responseCopy playerPath];

    playerPath9 = playerPath12;
    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (id)_launchURLForScheme:(id)scheme requestedPlayerPath:(id)path
{
  v18[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = MEMORY[0x277CCACE0];
  schemeCopy = scheme;
  v8 = objc_alloc_init(v6);
  [v8 setScheme:schemeCopy];

  [v8 setHost:@"now-playing"];
  v9 = MEMORY[0x277CCAD18];
  route = [pathCopy route];
  designatedGroupLeaderRouteUID = [route designatedGroupLeaderRouteUID];
  deviceUID = designatedGroupLeaderRouteUID;
  if (!designatedGroupLeaderRouteUID)
  {
    deviceUID = [pathCopy deviceUID];
  }

  v13 = [v9 queryItemWithName:@"deviceUID" value:deviceUID];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  [v8 setQueryItems:v14];

  if (!designatedGroupLeaderRouteUID)
  {
  }

  v15 = [v8 URL];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end