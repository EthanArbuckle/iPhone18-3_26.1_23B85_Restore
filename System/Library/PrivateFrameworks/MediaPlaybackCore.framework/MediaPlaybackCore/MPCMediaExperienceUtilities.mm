@interface MPCMediaExperienceUtilities
+ (BOOL)requestBackgroundPlaybackInitiation;
@end

@implementation MPCMediaExperienceUtilities

+ (BOOL)requestBackgroundPlaybackInitiation
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MPUIApplication();
  v3 = [v2 applicationState];

  if (v3 == 2)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v6 = [MEMORY[0x1E69AED10] sharedAVSystemController];
    v7 = *MEMORY[0x1E69AE9E0];
    v13 = 0;
    v8 = [v6 setAttribute:v5 forKey:v7 error:&v13];
    v9 = v13;

    if (v8)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "Error temporarily blessing %@ for playback initialization. %@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

@end