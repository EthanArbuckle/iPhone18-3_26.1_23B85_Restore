@interface MPCPlayerPath(NanoMediaRemote)
+ (id)nmr_pathWithNowPlayingURL:()NanoMediaRemote;
- (uint64_t)nmr_isSystemBooksPath;
- (uint64_t)nmr_isSystemMindfulnessPath;
- (uint64_t)nmr_isSystemPodcastsPath;
- (uint64_t)nmr_isSystemRemotePath;
- (uint64_t)nmr_isSystemVoiceMemosPath;
- (uint64_t)nmr_isSystemWorkoutGuidedWalkPath;
- (uint64_t)nmr_isSystemWorkoutPath;
@end

@implementation MPCPlayerPath(NanoMediaRemote)

- (uint64_t)nmr_isSystemPodcastsPath
{
  v1 = [a1 representedBundleID];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  return IsSystemPodcastApplication;
}

- (uint64_t)nmr_isSystemBooksPath
{
  v1 = [a1 representedBundleID];
  IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication();

  return IsSystemBooksApplication;
}

- (uint64_t)nmr_isSystemWorkoutPath
{
  v1 = [a1 representedBundleID];
  v2 = [v1 isEqualToString:@"com.apple.SessionTrackerApp"];

  return v2;
}

- (uint64_t)nmr_isSystemWorkoutGuidedWalkPath
{
  result = [a1 nmr_isSystemWorkoutPath];
  if (result)
  {
    v3 = [a1 playerID];
    v4 = [v3 isEqualToString:@"guidedWalk"];

    return v4;
  }

  return result;
}

- (uint64_t)nmr_isSystemVoiceMemosPath
{
  v1 = [a1 representedBundleID];
  v2 = [v1 isEqualToString:@"com.apple.VoiceMemos"];

  return v2;
}

- (uint64_t)nmr_isSystemRemotePath
{
  v1 = [a1 representedBundleID];
  v2 = [v1 isEqualToString:@"com.apple.NanoRemote"];

  return v2;
}

- (uint64_t)nmr_isSystemMindfulnessPath
{
  v1 = [a1 representedBundleID];
  v2 = [v1 isEqualToString:@"com.apple.Mind"];

  return v2;
}

+ (id)nmr_pathWithNowPlayingURL:()NanoMediaRemote
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  v5 = [v4 queryItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB38];
    v8 = [v4 queryItems];
    v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [v4 queryItems];
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 value];
          v17 = [v15 name];
          [v9 setObject:v16 forKeyedSubscript:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v18 = [v9 objectForKeyedSubscript:@"deviceUID"];
    v19 = v18;
    if (!v18)
    {
      v19 = [v9 objectForKeyedSubscript:@"routeUID"];
    }

    v20 = [v9 objectForKeyedSubscript:@"bundleID"];
    v21 = [v9 objectForKeyedSubscript:@"playerID"];
    v22 = [a1 pathWithDeviceUID:v19 bundleID:v20 pid:0 playerID:v21];

    if (!v18)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end