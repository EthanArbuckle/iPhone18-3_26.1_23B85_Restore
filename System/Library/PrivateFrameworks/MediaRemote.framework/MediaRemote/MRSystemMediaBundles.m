@interface MRSystemMediaBundles
+ (BOOL)isBundleCurrentApplicationAirPlayReceiver;
+ (BOOL)isBundleID:(id)a3 systemMediaBundle:(unint64_t)a4;
+ (BOOL)isProcessNameAirPlayReceiver:(id)a3;
+ (BOOL)isSystemMediaBundle:(id)a3;
+ (id)_allSystemMediaBundles;
+ (id)_playbackProcessBundleIDForBundle:(unint64_t)a3;
+ (id)_uiApplicationBundleIDForBundle:(unint64_t)a3;
+ (id)airPlayBundleID;
+ (id)systemMediaBundleIDForBundle:(unint64_t)a3 type:(unint64_t)a4;
+ (id)systemMediaBundleIDForBundleID:(id)a3 type:(unint64_t)a4;
@end

@implementation MRSystemMediaBundles

+ (BOOL)isSystemMediaBundle:(id)a3
{
  v4 = a3;
  v5 = [a1 _allSystemMediaBundles];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__MRSystemMediaBundles_isSystemMediaBundle___block_invoke;
  v9[3] = &unk_1E769C9C0;
  v10 = v4;
  v11 = a1;
  v6 = v4;
  v7 = [v5 msv_firstWhere:v9];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

uint64_t __44__MRSystemMediaBundles_isSystemMediaBundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v4 isBundleID:v5 systemMediaBundle:v3];
}

+ (BOOL)isBundleID:(id)a3 systemMediaBundle:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 1)
  {
    if (!a4)
    {
      if (isBundleID_systemMediaBundle____once != -1)
      {
        +[MRSystemMediaBundles isBundleID:systemMediaBundle:];
      }

      v7 = &isBundleID_systemMediaBundle____allKnownSystemMediaBundleIDs;
      goto LABEL_22;
    }

    if (a4 == 1)
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
    switch(a4)
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
        v4 = [*v7 containsObject:v6];
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

+ (id)systemMediaBundleIDForBundleID:(id)a3 type:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [a1 _allSystemMediaBundles];
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

        v12 = [*(*(&v16 + 1) + 8 * i) integerValue];
        if ([a1 isBundleID:v6 systemMediaBundle:v12])
        {
          v13 = [a1 systemMediaBundleIDForBundle:v12 type:a4];

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

  v13 = v6;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)systemMediaBundleIDForBundle:(unint64_t)a3 type:(unint64_t)a4
{
  if (a4 == 1)
  {
    v4 = [a1 _uiApplicationBundleIDForBundle:a3];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v4 = [a1 _playbackProcessBundleIDForBundle:a3];
  }

  a2 = v4;
LABEL_6:

  return a2;
}

+ (id)airPlayBundleID
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 airPlayProcessName];
  v4 = [v2 stringWithFormat:@"com.apple.%@", v3];

  return v4;
}

+ (BOOL)isProcessNameAirPlayReceiver:(id)a3
{
  v3 = isProcessNameAirPlayReceiver____once;
  v4 = a3;
  if (v3 != -1)
  {
    +[MRSystemMediaBundles isProcessNameAirPlayReceiver:];
  }

  v5 = [isProcessNameAirPlayReceiver____receivers containsObject:v4];

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
  block[4] = a1;
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

+ (id)_playbackProcessBundleIDForBundle:(unint64_t)a3
{
  if (a3 == 2)
  {
    v8 = +[MRUserSettings currentSettings];
    v9 = [v8 sonicPodcastsEnabled];

    if (v9)
    {
      v7 = @"com.apple.sonic.podcasts";
      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 sonicMusicEnabled];

    if (v6)
    {
      v7 = @"com.apple.sonic.music";
      goto LABEL_8;
    }
  }

  v7 = [a1 _uiApplicationBundleIDForBundle:a3];
LABEL_8:

  return v7;
}

+ (id)_uiApplicationBundleIDForBundle:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"com.apple.Music";
  }

  else
  {
    return off_1E769C9E0[a3 - 1];
  }
}

@end