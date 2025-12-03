@interface CHUISPreferences
+ (CHUISPreferences)sharedInstance;
- (CHUISPreferences)init;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation CHUISPreferences

+ (CHUISPreferences)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[CHUISPreferences sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __34__CHUISPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CHUISPreferences);
  v1 = sharedInstance___instance;
  sharedInstance___instance = v0;
}

- (CHUISPreferences)init
{
  v6.receiver = self;
  v6.super_class = CHUISPreferences;
  v2 = [(CHUISPreferences *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.chronod"];
    defaults = v2->_defaults;
    v2->_defaults = v3;

    v2->_enableMemoryStressTestingWithGaspar = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"EnableMemoryStressTestingWithGaspar"];
    v2->_debugViewLabels = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"EnableDebugLabels"];
    v2->_debugSnapshotViewColoring = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"debugSnapshotViewClient"];
    v2->_debugPrefersStaticSnapshots = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"debugPreferStaticClientSnapshots"];
    v2->_widgetRenderer = [(NSUserDefaults *)v2->_defaults stringForKey:@"widgetRenderer"];
    v2->_emulateFallbackTreatment = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"EmulateFallbackTreatment"];
    v2->_debugRenderBoxSurfaces = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"DebugRenderBoxSurfaces"];
    [(NSUserDefaults *)v2->_defaults registerDefaults:&unk_1F54CD490];
    v2->_userWantsWidgetDataWhenPasscodeLocked = [(NSUserDefaults *)v2->_defaults BOOLForKey:@"showComplicationDataWhenPasscodeLocked"];
    [(NSUserDefaults *)v2->_defaults addObserver:v2 forKeyPath:@"showComplicationDataWhenPasscodeLocked" options:1 context:@"_userWantsWidgetDataWhenPasscodeLocked"];
  }

  return v2;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (context == @"_userWantsWidgetDataWhenPasscodeLocked" && ([changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4E8]], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "intValue"), v14, v15 == 1))
  {
    v16 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    self->_userWantsWidgetDataWhenPasscodeLocked = [v16 BOOLValue];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CHUISPreferences;
    [(CHUISPreferences *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:v13 context:context];
  }
}

@end