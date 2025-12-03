@interface MPRemoteCommandEvent(MPCAdditions)
- (id)mpc_clientPreferredLanguages;
- (id)nowPlayingContentItemID;
- (id)userIdentity;
@end

@implementation MPRemoteCommandEvent(MPCAdditions)

- (id)mpc_clientPreferredLanguages
{
  mediaPlaybackCoreBundle = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  mediaRemoteOptions = [self mediaRemoteOptions];
  v4 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B10A8]];

  v5 = [v4 componentsSeparatedByString:{@", "}];
  if (![v5 count])
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];

    v5 = preferredLanguages;
  }

  v7 = MEMORY[0x1E696AAE8];
  localizations = [mediaPlaybackCoreBundle localizations];
  v9 = [v7 preferredLocalizationsFromArray:localizations forPreferences:v5];

  return v9;
}

- (id)userIdentity
{
  mediaRemoteOptions = [self mediaRemoteOptions];
  v2 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B1278]];

  if (v2)
  {
    v10 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v10];
    v4 = v3;
    if (v10)
    {
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "❗️Cannot decode override user identity. Using defaultMediaIdentity.", v9, 2u);
      }

      defaultMediaIdentity = [MEMORY[0x1E69E4680] defaultMediaIdentity];
    }

    else
    {
      defaultMediaIdentity = v3;
    }

    defaultMediaIdentity2 = defaultMediaIdentity;
  }

  else
  {
    defaultMediaIdentity2 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  }

  return defaultMediaIdentity2;
}

- (id)nowPlayingContentItemID
{
  mediaRemoteOptions = [self mediaRemoteOptions];
  v2 = [mediaRemoteOptions objectForKeyedSubscript:*MEMORY[0x1E69B1150]];

  return v2;
}

@end