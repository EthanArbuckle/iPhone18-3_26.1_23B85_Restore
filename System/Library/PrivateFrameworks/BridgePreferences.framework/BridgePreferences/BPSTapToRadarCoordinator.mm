@interface BPSTapToRadarCoordinator
+ (BOOL)openTapToRadarWithInitialMetadata:(id)metadata;
+ (id)tapToRadarLaunchURLWithInitialMetadata:(id)metadata;
+ (id)tapToRadarUserActivityWithInitialMetadata:(id)metadata;
@end

@implementation BPSTapToRadarCoordinator

+ (BOOL)openTapToRadarWithInitialMetadata:(id)metadata
{
  v3 = [self tapToRadarLaunchURLWithInitialMetadata:metadata];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace openURL:v3 configuration:0 completionHandler:&__block_literal_global_5];

  return 1;
}

void __62__BPSTapToRadarCoordinator_openTapToRadarWithInitialMetadata___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = bps_setup_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 localizedDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_241E74000, v4, OS_LOG_TYPE_DEFAULT, "Error opening tap-to-radar: %@", &v6, 0xCu);
    }
  }
}

+ (id)tapToRadarLaunchURLWithInitialMetadata:(id)metadata
{
  v3 = MEMORY[0x277CCACE0];
  metadataCopy = metadata;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:@"tap-to-radar"];
  [v5 setHost:@"new"];
  queryItems = [metadataCopy queryItems];

  [v5 setQueryItems:queryItems];
  v7 = [v5 URL];

  return v7;
}

+ (id)tapToRadarUserActivityWithInitialMetadata:(id)metadata
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [self tapToRadarLaunchURLWithInitialMetadata:metadata];
  absoluteString = [v3 absoluteString];
  if (absoluteString)
  {
    v5 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.Bridge.ttr"];
    [v5 setEligibleForSearch:0];
    [v5 setEligibleForHandoff:0];
    [v5 setEligibleForPrediction:0];
    [v5 setEligibleForPublicIndexing:0];
    v9 = @"tap-to-radar";
    v10[0] = absoluteString;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v5 setUserInfo:v6];
  }

  else
  {
    v6 = bps_setup_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241E74000, v6, OS_LOG_TYPE_DEFAULT, "Error: Tried to generate tap-to-radar NSUserActivity but URL string was malformed", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

@end