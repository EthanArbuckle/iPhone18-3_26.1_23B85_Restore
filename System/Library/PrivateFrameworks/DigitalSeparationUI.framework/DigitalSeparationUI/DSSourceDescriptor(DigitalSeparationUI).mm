@interface DSSourceDescriptor(DigitalSeparationUI)
- (id)iconForDetail;
- (id)iconForTable;
@end

@implementation DSSourceDescriptor(DigitalSeparationUI)

- (id)iconForDetail
{
  correspondingApplicationIdentifier = [self correspondingApplicationIdentifier];
  if (correspondingApplicationIdentifier && (v3 = correspondingApplicationIdentifier, [self correspondingApplicationIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[DSUIUtilities isPlaceholderForApp:](DSUIUtilities, "isPlaceholderForApp:", v4), v4, v3, !v5))
  {
    v10 = MEMORY[0x277D755B8];
    correspondingApplicationIdentifier2 = [self correspondingApplicationIdentifier];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = [v10 _applicationIconImageForBundleIdentifier:correspondingApplicationIdentifier2 format:2 scale:?];
  }

  else
  {
    correspondingApplicationIdentifier2 = [self objectForKeyedSubscript:*MEMORY[0x277D05428]];
    v7 = MEMORY[0x277D755B8];
    mainScreen = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v7 imageNamed:correspondingApplicationIdentifier2 inBundle:mainScreen];
  }

  v11 = v9;

  return v11;
}

- (id)iconForTable
{
  correspondingApplicationIdentifier = [self correspondingApplicationIdentifier];
  if (correspondingApplicationIdentifier && (v3 = correspondingApplicationIdentifier, [self correspondingApplicationIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = +[DSUIUtilities isPlaceholderForApp:](DSUIUtilities, "isPlaceholderForApp:", v4), v4, v3, !v5))
  {
    v14 = MEMORY[0x277D755B8];
    correspondingApplicationIdentifier2 = [self correspondingApplicationIdentifier];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v13 = [v14 _applicationIconImageForBundleIdentifier:correspondingApplicationIdentifier2 format:0 scale:?];
  }

  else
  {
    correspondingApplicationIdentifier2 = [self objectForKeyedSubscript:*MEMORY[0x277D05428]];
    v7 = MEMORY[0x277D755B8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    mainScreen = [v7 imageNamed:correspondingApplicationIdentifier2 inBundle:v8];

    v10 = [DSUIUtilities appIconForAppID:&stru_285BA4988 format:0];
    [v10 size];
    v12 = v11;
    [v10 size];
    v13 = [mainScreen imageByPreparingThumbnailOfSize:v12];
  }

  return v13;
}

@end