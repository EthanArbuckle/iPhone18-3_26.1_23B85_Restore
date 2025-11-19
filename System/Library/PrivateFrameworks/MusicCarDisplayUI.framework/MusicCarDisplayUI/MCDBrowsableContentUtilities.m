@interface MCDBrowsableContentUtilities
+ (id)sharedInstance;
- (NSArray)firstPartyAppBundleIDs;
- (void)setNowPlayingIdentifiers:(id)a3;
@end

@implementation MCDBrowsableContentUtilities

+ (id)sharedInstance
{
  if (sharedInstance_isDispatched != -1)
  {
    +[MCDBrowsableContentUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __46__MCDBrowsableContentUtilities_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(MCDBrowsableContentUtilities);

  return MEMORY[0x2821F96F8]();
}

- (void)setNowPlayingIdentifiers:(id)a3
{
  v5 = a3;
  nowPlayingIdentifiers = self->_nowPlayingIdentifiers;
  p_nowPlayingIdentifiers = &self->_nowPlayingIdentifiers;
  if (![(NSArray *)nowPlayingIdentifiers isEqualToArray:v5])
  {
    objc_storeStrong(p_nowPlayingIdentifiers, a3);
    v8 = MCDGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25AD8E000, v8, OS_LOG_TYPE_DEFAULT, "Posting MCDBrowsableContentNowPlayingIdentifiersUpdatedNotification", v10, 2u);
    }

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 postNotificationName:@"MCDBrowsableContentNowPlayingIdentifiersUpdatedNotification" object:0];
  }
}

- (NSArray)firstPartyAppBundleIDs
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.podcasts";
  v5[1] = @"com.apple.iBooks";
  v5[2] = @"com.apple.Music";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end