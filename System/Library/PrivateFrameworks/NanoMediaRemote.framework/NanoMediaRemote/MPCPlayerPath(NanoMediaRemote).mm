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
  representedBundleID = [self representedBundleID];
  IsSystemPodcastApplication = MRMediaRemoteApplicationIsSystemPodcastApplication();

  return IsSystemPodcastApplication;
}

- (uint64_t)nmr_isSystemBooksPath
{
  representedBundleID = [self representedBundleID];
  IsSystemBooksApplication = MRMediaRemoteApplicationIsSystemBooksApplication();

  return IsSystemBooksApplication;
}

- (uint64_t)nmr_isSystemWorkoutPath
{
  representedBundleID = [self representedBundleID];
  v2 = [representedBundleID isEqualToString:@"com.apple.SessionTrackerApp"];

  return v2;
}

- (uint64_t)nmr_isSystemWorkoutGuidedWalkPath
{
  result = [self nmr_isSystemWorkoutPath];
  if (result)
  {
    playerID = [self playerID];
    v4 = [playerID isEqualToString:@"guidedWalk"];

    return v4;
  }

  return result;
}

- (uint64_t)nmr_isSystemVoiceMemosPath
{
  representedBundleID = [self representedBundleID];
  v2 = [representedBundleID isEqualToString:@"com.apple.VoiceMemos"];

  return v2;
}

- (uint64_t)nmr_isSystemRemotePath
{
  representedBundleID = [self representedBundleID];
  v2 = [representedBundleID isEqualToString:@"com.apple.NanoRemote"];

  return v2;
}

- (uint64_t)nmr_isSystemMindfulnessPath
{
  representedBundleID = [self representedBundleID];
  v2 = [representedBundleID isEqualToString:@"com.apple.Mind"];

  return v2;
}

+ (id)nmr_pathWithNowPlayingURL:()NanoMediaRemote
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
  queryItems = [v4 queryItems];
  v6 = [queryItems count];

  if (v6)
  {
    v7 = MEMORY[0x277CBEB38];
    queryItems2 = [v4 queryItems];
    v9 = [v7 dictionaryWithCapacity:{objc_msgSend(queryItems2, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    queryItems3 = [v4 queryItems];
    v11 = [queryItems3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(queryItems3);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          value = [v15 value];
          name = [v15 name];
          [v9 setObject:value forKeyedSubscript:name];
        }

        v12 = [queryItems3 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
    v22 = [self pathWithDeviceUID:v19 bundleID:v20 pid:0 playerID:v21];

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