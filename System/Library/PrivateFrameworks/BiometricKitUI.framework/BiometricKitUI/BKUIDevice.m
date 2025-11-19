@interface BKUIDevice
+ (BKUIDevice)sharedInstance;
- (BKUIDevice)init;
- (BOOL)isD32Sized;
- (BOOL)isD33;
- (BOOL)isJ7xx;
- (BOOL)isJ8xx;
- (BOOL)isRestrictedToLandscapeEnrollment;
- (BOOL)isZoomEnabled;
@end

@implementation BKUIDevice

- (BKUIDevice)init
{
  v5.receiver = self;
  v5.super_class = BKUIDevice;
  v2 = [(BKUIDevice *)&v5 init];
  if (v2)
  {
    v2->_mainScreenClass = MGGetSInt32Answer();
    v3 = [MEMORY[0x277D75418] currentDevice];
    v2->_isPad = [v3 userInterfaceIdiom] == 1;
  }

  return v2;
}

+ (BKUIDevice)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BKUIDevice sharedInstance];
  }

  v3 = sharedInstance_environment;

  return v3;
}

uint64_t __28__BKUIDevice_sharedInstance__block_invoke()
{
  sharedInstance_environment = objc_alloc_init(BKUIDevice);

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isD33
{
  if (self->_mainScreenClass != 18)
  {
    return 0;
  }

  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  if (v3 == 414.0)
  {
    v4 = [MEMORY[0x277D759A0] mainScreen];
    [v4 bounds];
    v6 = v5 == 896.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isD32Sized
{
  mainScreenClass = self->_mainScreenClass;
  if (mainScreenClass == 18 || mainScreenClass == 15)
  {
    return ![(BKUIDevice *)self isD33:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isZoomEnabled
{
  v7 = *MEMORY[0x277D85DE8];
  if (!DisplayAndBrightnessSettingsLibraryCore_frameworkLibrary)
  {
    DisplayAndBrightnessSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (DisplayAndBrightnessSettingsLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277D4D820] defaultController];
    v3 = [v2 currentDisplayZoomMode];
    v4 = [v3 displayZoomOption] == 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isJ7xx
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 2619317133)
  {
    if (v3 == 2619317134)
    {
      return v2;
    }

    v4 = 3241053352;
  }

  else
  {
    if (v3 == 555503454)
    {
      return v2;
    }

    v4 = 2487868872;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

- (BOOL)isJ8xx
{
  v2 = 1;
  v3 = MGGetProductType();
  if (v3 > 3667751752)
  {
    if (v3 == 3667751753)
    {
      return v2;
    }

    v4 = 4184216061;
  }

  else
  {
    if (v3 == 185765807)
    {
      return v2;
    }

    v4 = 369845484;
  }

  if (v3 != v4)
  {
    return 0;
  }

  return v2;
}

- (BOOL)isRestrictedToLandscapeEnrollment
{
  if ([(BKUIDevice *)self isJ7xx])
  {
    return 1;
  }

  return [(BKUIDevice *)self isJ8xx];
}

@end