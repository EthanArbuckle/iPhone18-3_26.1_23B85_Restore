@interface MRSystemMediaBundles
+ (BOOL)isBundleCurrentApplicationAirPlayReceiver;
+ (BOOL)isBundleID:(id)d systemMediaBundle:(unint64_t)bundle;
+ (BOOL)isProcessNameAirPlayReceiver:(id)receiver;
+ (BOOL)isSystemMediaBundle:(id)bundle;
+ (id)_allSystemMediaBundles;
+ (id)_playbackProcessBundleIDForBundle:(unint64_t)bundle;
+ (id)_uiApplicationBundleIDForBundle:(unint64_t)bundle;
+ (id)airPlayBundleID;
+ (id)systemMediaBundleIDForBundle:(unint64_t)bundle type:(unint64_t)type;
+ (id)systemMediaBundleIDForBundleID:(id)d type:(unint64_t)type;
@end

@implementation MRSystemMediaBundles

+ (BOOL)isSystemMediaBundle:(id)bundle
{
  bundleCopy = bundle;
  _allSystemMediaBundles = [self _allSystemMediaBundles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MRSystemMediaBundles_isSystemMediaBundle___block_invoke;
  v9[3] = &unk_1E769C9C0;
  v10 = bundleCopy;
  selfCopy = self;
  v6 = bundleCopy;
  v7 = [_allSystemMediaBundles msv_firstWhere:v9];
  LOBYTE(bundleCopy) = v7 != 0;

  return bundleCopy;
}

uint64_t __44__MRSystemMediaBundles_isSystemMediaBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 isBundleID:v5 systemMediaBundle:v3];
}

+ (BOOL)isBundleID:(id)d systemMediaBundle:(unint64_t)bundle
{
  dCopy = d;
  if (bundle <= 1)
  {
    if (!bundle)
    {
      if (isBundleID_systemMediaBundle____once != -1)
      {
        +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
      }

      v7 = &isBundleID_systemMediaBundle____allKnownSystemMediaBundleIDs;
      goto LABEL_22;
    }

    if (bundle == 1)
    {
      if (isBundleID_systemMediaBundle____once_15 != -1)
      {
        +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
      }

      v7 = &isBundleID_systemMediaBundle____allKnownSystemClassicalRoomBundleIDs;
      goto LABEL_22;
    }
  }

  else
  {
    switch(bundle)
    {
      case 2uLL:
        if (isBundleID_systemMediaBundle____once_21 != -1)
        {
          +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
        }

        v7 = &isBundleID_systemMediaBundle____allKnownSystemPodcastBundleIDs;
        goto LABEL_22;
      case 3uLL:
        if (isBundleID_systemMediaBundle____once_30 != -1)
        {
          +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
        }

        v7 = &isBundleID_systemMediaBundle____allKnownSystemAppleTVBundleIDs;
        goto LABEL_22;
      case 4uLL:
        if (isBundleID_systemMediaBundle____once_45 != -1)
        {
          +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
        }

        v7 = &isBundleID_systemMediaBundle____allKnownSystemBooksBundleIDs;
LABEL_22:
        v4 = [*v7 containsObject:dCopy];
        break;
    }
  }

  return v4 & 1;
}

void __53__MRSystemMediaBundles_isBundleID_systemMediaBundle___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.NanoMusic", @"com.apple.TVMusic", @"com.apple.Music", @"com.apple.iTunes", @"com.apple.sonic.music", 0}];
  v1 = isBundleID_systemMediaBundle____allKnownSystemMediaBundleIDs;
  isBundleID_systemMediaBundle____allKnownSystemMediaBundleIDs = v0;
}

void __53__MRSystemMediaBundles_isBundleID_systemMediaBundle___block_invoke_2()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.music.classical", 0}];
  v1 = isBundleID_systemMediaBundle____allKnownSystemClassicalRoomBundleIDs;
  isBundleID_systemMediaBundle____allKnownSystemClassicalRoomBundleIDs = v0;
}

void __53__MRSystemMediaBundles_isBundleID_systemMediaBundle___block_invoke_3()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.podcasts", @"com.apple.iTunes", @"com.apple.sonic.podcasts", 0}];
  v1 = isBundleID_systemMediaBundle____allKnownSystemPodcastBundleIDs;
  isBundleID_systemMediaBundle____allKnownSystemPodcastBundleIDs = v0;
}

void __53__MRSystemMediaBundles_isBundleID_systemMediaBundle___block_invoke_4()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.AppleTV", @"com.apple.TVWatchList", @"com.apple.TV", @"com.apple.tv", 0}];
  v1 = isBundleID_systemMediaBundle____allKnownSystemAppleTVBundleIDs;
  isBundleID_systemMediaBundle____allKnownSystemAppleTVBundleIDs = v0;
}

void __53__MRSystemMediaBundles_isBundleID_systemMediaBundle___block_invoke_5()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.NanoBooks", @"com.apple.TVBooks", @"com.apple.iBooksX", @"com.apple.iBooks", 0}];
  v1 = isBundleID_systemMediaBundle____allKnownSystemBooksBundleIDs;
  isBundleID_systemMediaBundle____allKnownSystemBooksBundleIDs = v0;
}

+ (id)systemMediaBundleIDForBundleID:(id)d type:(unint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [self _allSystemMediaBundles];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v19 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        integerValue = [*(*(&v16 + 1) + 8 * i) integerValue];
        if ([self isBundleID:dCopy systemMediaBundle:integerValue])
        {
          v13 = [self systemMediaBundleIDForBundle:integerValue type:type];

          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = dCopy;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)systemMediaBundleIDForBundle:(unint64_t)bundle type:(unint64_t)type
{
  if (type == 1)
  {
    v4 = [self _uiApplicationBundleIDForBundle:bundle];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v4 = [self _playbackProcessBundleIDForBundle:bundle];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

+ (id)airPlayBundleID
{
  v2 = MEMORY[0x1E696AEC0];
  airPlayProcessName = [self airPlayProcessName];
  v4 = [v2 stringWithFormat:@"com.apple.%@", airPlayProcessName];

  return v4;
}

+ (BOOL)isProcessNameAirPlayReceiver:(id)receiver
{
  v3 = isProcessNameAirPlayReceiver____once;
  receiverCopy = receiver;
  if (v3 != -1)
  {
    +[MRSystemMediaBundles isProcessNameAirPlayReceiver:];
  }

  v5 = [isProcessNameAirPlayReceiver____receivers containsObject:receiverCopy];

  return v5;
}

void __53__MRSystemMediaBundles_isProcessNameAirPlayReceiver___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"TVAirPlay", @"airtunesd", @"tvairplayd", 0}];
  v1 = isProcessNameAirPlayReceiver____receivers;
  isProcessNameAirPlayReceiver____receivers = v0;
}

+ (BOOL)isBundleCurrentApplicationAirPlayReceiver
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRSystemMediaBundles_isBundleCurrentApplicationAirPlayReceiver__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isBundleCurrentApplicationAirPlayReceiver___once != -1)
  {
    dispatch_once(&isBundleCurrentApplicationAirPlayReceiver___once, block);
  }

  return isBundleCurrentApplicationAirPlayReceiver_isAirPlayReceiver;
}

void __65__MRSystemMediaBundles_isBundleCurrentApplicationAirPlayReceiver__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 lastPathComponent];

  isBundleCurrentApplicationAirPlayReceiver_isAirPlayReceiver = [*(a1 + 32) isProcessNameAirPlayReceiver:v4];
}

+ (id)_allSystemMediaBundles
{
  if (_allSystemMediaBundles___once != -1)
  {
    +[MRSystemMediaBundles _allSystemMediaBundles];
  }

  v3 = _allSystemMediaBundles___allSystemMediaBundles;

  return v3;
}

void __46__MRSystemMediaBundles__allSystemMediaBundles__block_invoke()
{
  v0 = _allSystemMediaBundles___allSystemMediaBundles;
  _allSystemMediaBundles___allSystemMediaBundles = &unk_1F15774E8;
}

+ (id)_playbackProcessBundleIDForBundle:(unint64_t)bundle
{
  if (bundle == 2)
  {
    v8 = +[MRUserSettings currentSettings];
    sonicPodcastsEnabled = [v8 sonicPodcastsEnabled];

    if (sonicPodcastsEnabled)
    {
      v7 = @"com.apple.sonic.podcasts";
      goto LABEL_8;
    }
  }

  else if (!bundle)
  {
    v5 = +[MRUserSettings currentSettings];
    sonicMusicEnabled = [v5 sonicMusicEnabled];

    if (sonicMusicEnabled)
    {
      v7 = @"com.apple.sonic.music";
      goto LABEL_8;
    }
  }

  v7 = [self _uiApplicationBundleIDForBundle:bundle];
LABEL_8:

  return v7;
}

+ (id)_uiApplicationBundleIDForBundle:(unint64_t)bundle
{
  if (bundle - 1 > 3)
  {
    return @"com.apple.Music";
  }

  else
  {
    return off_1E769C9E0[bundle - 1];
  }
}

@end