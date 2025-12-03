@interface NACVolumeController
+ (id)demoVolumeControllerWithAudioCategory:(id)category;
+ (id)localVolumeControllerWithAudioCategory:(id)category;
+ (id)localVolumeControllerWithRoute:(id)route;
+ (id)proxyVolumeControllerWithAudioCategory:(id)category;
+ (id)proxyVolumeControllerWithTarget:(id)target;
@end

@implementation NACVolumeController

+ (id)localVolumeControllerWithAudioCategory:(id)category
{
  categoryCopy = category;
  v4 = [[NACVolumeControllerLocal alloc] initWithAudioCategory:categoryCopy];

  return v4;
}

+ (id)localVolumeControllerWithRoute:(id)route
{
  routeCopy = route;
  v4 = [[NACVolumeControllerLocal alloc] initWithRoute:routeCopy];

  return v4;
}

+ (id)proxyVolumeControllerWithAudioCategory:(id)category
{
  categoryCopy = category;
  v4 = NACCategoryStringWithRouteCategory(categoryCopy);
  v5 = [categoryCopy isEqualToString:@"Ringtone"];

  if (v5)
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"F917CEA4-4001-46AF-8291-CA74CF9178BE"];
    v9 = [getActivePairedDevice supportsCapability:v8];

    if ((v9 & 1) == 0)
    {

      v4 = @"RingtonePreview";
    }
  }

  v10 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:v4];
  v11 = [[NACVolumeControllerProxy alloc] initWithVolumeControlTarget:v10];

  return v11;
}

+ (id)proxyVolumeControllerWithTarget:(id)target
{
  targetCopy = target;
  if ([targetCopy isPairedDevice])
  {
    category = [targetCopy category];
    if ([category isEqual:@"Ringtone"])
    {

LABEL_5:
      v7 = [[NACVolumeControllerProxy alloc] initWithVolumeControlTarget:targetCopy];
      goto LABEL_9;
    }

    category2 = [targetCopy category];
    v6 = [category2 isEqual:@"RingtonePreview"];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  v8 = NMLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(NACVolumeController *)targetCopy proxyVolumeControllerWithTarget:v8];
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (id)demoVolumeControllerWithAudioCategory:(id)category
{
  categoryCopy = category;
  v4 = [[NACVolumeControllerDemo alloc] initWithAudioCategory:categoryCopy];

  return v4;
}

+ (void)proxyVolumeControllerWithTarget:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "Failed to create proxy NACVolumeController with invalid target: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end