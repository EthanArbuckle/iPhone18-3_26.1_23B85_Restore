@interface MPRemoteCommandEvent(MPCAdditions)
- (id)mpc_clientPreferredLanguages;
- (id)nowPlayingContentItemID;
- (id)userIdentity;
@end

@implementation MPRemoteCommandEvent(MPCAdditions)

- (id)mpc_clientPreferredLanguages
{
  v2 = [MEMORY[0x1E696AAE8] mediaPlaybackCoreBundle];
  v3 = [a1 mediaRemoteOptions];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B10A8]];

  v5 = [v4 componentsSeparatedByString:{@", "}];
  if (![v5 count])
  {
    v6 = [MEMORY[0x1E695DF58] preferredLanguages];

    v5 = v6;
  }

  v7 = MEMORY[0x1E696AAE8];
  v8 = [v2 localizations];
  v9 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v5];

  return v9;
}

- (id)userIdentity
{
  v1 = [a1 mediaRemoteOptions];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69B1278]];

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

      v6 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E69E4680] defaultMediaIdentity];
  }

  return v7;
}

- (id)nowPlayingContentItemID
{
  v1 = [a1 mediaRemoteOptions];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E69B1150]];

  return v2;
}

@end