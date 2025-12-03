@interface GKViceroyNATConfiguration
+ (void)applySettings:(id)settings;
@end

@implementation GKViceroyNATConfiguration

+ (void)applySettings:(id)settings
{
  settingsCopy = settings;
  v3 = MEMORY[0x277CBEAC0];
  v4 = [settingsCopy objectForKey:@"gk-commnat-main0"];
  v5 = *MEMORY[0x277CE5620];
  v6 = [settingsCopy objectForKey:@"gk-commnat-main1"];
  v7 = *MEMORY[0x277CE5628];
  v8 = [settingsCopy objectForKey:@"gk-commnat-cohort"];
  v9 = *MEMORY[0x277CE5618];
  v10 = [settingsCopy objectForKey:@"gk-cdx"];
  v11 = [v3 dictionaryWithObjectsAndKeys:{v4, v5, v6, v7, v8, v9, v10, *MEMORY[0x277CE5610], 0}];

  [MEMORY[0x277CE5778] setServerAddresses:v11];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = [settingsCopy objectForKey:@"gk-p2p-ice-timeout"];
  if (v13)
  {
    [dictionary setObject:v13 forKey:*MEMORY[0x277CE5638]];
  }

  v14 = [settingsCopy objectForKey:@"gk-p2p-nat-type-timeout"];

  if (v14)
  {
    [dictionary setObject:v14 forKey:*MEMORY[0x277CE5640]];
  }

  v15 = [settingsCopy objectForKey:@"gk-p2p-blob-size-max"];

  if (v15)
  {
    [dictionary setObject:v15 forKey:*MEMORY[0x277CE5630]];
  }

  [MEMORY[0x277CE5778] setClientOptions:dictionary];
}

@end