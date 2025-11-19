@interface DSSourceDescriptor(DigitalSeparationUI)
- (id)iconForDetail;
- (id)iconForTable;
@end

@implementation DSSourceDescriptor(DigitalSeparationUI)

- (id)iconForDetail
{
  v2 = [a1 correspondingApplicationIdentifier];
  if (v2 && (v3 = v2, [a1 correspondingApplicationIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[DSUIUtilities isPlaceholderForApp:](DSUIUtilities, "isPlaceholderForApp:", v4), v4, v3, !v5))
  {
    v10 = MEMORY[0x277D755B8];
    v6 = [a1 correspondingApplicationIdentifier];
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 scale];
    v9 = [v10 _applicationIconImageForBundleIdentifier:v6 format:2 scale:?];
  }

  else
  {
    v6 = [a1 objectForKeyedSubscript:*MEMORY[0x277D05428]];
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:v6 inBundle:v8];
  }

  v11 = v9;

  return v11;
}

- (id)iconForTable
{
  v2 = [a1 correspondingApplicationIdentifier];
  if (v2 && (v3 = v2, [a1 correspondingApplicationIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[DSUIUtilities isPlaceholderForApp:](DSUIUtilities, "isPlaceholderForApp:", v4), v4, v3, !v5))
  {
    v14 = MEMORY[0x277D755B8];
    v6 = [a1 correspondingApplicationIdentifier];
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    v13 = [v14 _applicationIconImageForBundleIdentifier:v6 format:0 scale:?];
  }

  else
  {
    v6 = [a1 objectForKeyedSubscript:*MEMORY[0x277D05428]];
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:v6 inBundle:v8];

    v10 = [DSUIUtilities appIconForAppID:&stru_285BA4988 format:0];
    [v10 size];
    v12 = v11;
    [v10 size];
    v13 = [v9 imageByPreparingThumbnailOfSize:v12];
  }

  return v13;
}

@end