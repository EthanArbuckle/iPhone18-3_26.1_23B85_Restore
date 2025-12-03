@interface ASKMobileGestalt
+ (BOOL)hasCapabilitiesIncludingCompatibilityCheck:(id)check isVisionOSCompatibleIOSApp:(BOOL)app;
+ (BOOL)isChinaSKUDevice;
+ (CGSize)mainScreenSize;
+ (NSString)activePairedSystemVersion;
+ (double)mainScreenScale;
@end

@implementation ASKMobileGestalt

+ (BOOL)isChinaSKUDevice
{
  v2 = MGGetStringAnswer();
  v3 = [v2 caseInsensitiveCompare:@"CH"] == 0;

  return v3;
}

+ (NSString)activePairedSystemVersion
{
  if (activePairedSystemVersion_onceToken != -1)
  {
    +[ASKMobileGestalt activePairedSystemVersion];
  }

  v3 = activePairedSystemVersion_systemVersion;

  return v3;
}

void __45__ASKMobileGestalt_activePairedSystemVersion__block_invoke()
{
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v0 getActivePairedDevice];

  v1 = [v4 objectForKeyedSubscript:*MEMORY[0x277D2BC20]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = activePairedSystemVersion_systemVersion;
  activePairedSystemVersion_systemVersion = v2;
}

+ (BOOL)hasCapabilitiesIncludingCompatibilityCheck:(id)check isVisionOSCompatibleIOSApp:(BOOL)app
{
  appCopy = app;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  checkCopy = check;
  v6 = [checkCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277CBED28];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(checkCopy);
        }

        if (([*(*(&v15 + 1) + 8 * i) isEqualToString:{&stru_28623EE30, v15}] & 1) == 0)
        {
          v11 = (appCopy ? _MGCopyAnswerWithMode() : MGCopyAnswer());
          v12 = v11;
          if (v11)
          {
            CFRelease(v11);
          }

          if (v12 != v9)
          {
            v13 = 0;
            goto LABEL_17;
          }
        }
      }

      v7 = [checkCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_17:

  return v13;
}

+ (CGSize)mainScreenSize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ASKMobileGestalt_mainScreenSize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mainScreenSize_once != -1)
  {
    dispatch_once(&mainScreenSize_once, block);
  }

  v2 = *&mainScreenSize_screenSize_0;
  v3 = *&mainScreenSize_screenSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

void __34__ASKMobileGestalt_mainScreenSize__block_invoke(uint64_t a1)
{
  v9 = MGCopyAnswer();
  v2 = v9;
  v3 = [v9 bytes];
  v4 = [v9 length];
  if (v4 >= 0x10)
  {
    v5 = v3 + (v4 & 0xFFFFFFFFFFFFFFF0);
    v6 = *(v5 - 16);
    v7 = *(v5 - 8);
    [*(a1 + 32) mainScreenScale];
    *&mainScreenSize_screenSize_0 = v6 / v8;
    *&mainScreenSize_screenSize_1 = v7 / v8;
  }
}

+ (double)mainScreenScale
{
  if (mainScreenScale_once != -1)
  {
    +[ASKMobileGestalt mainScreenScale];
  }

  return *&mainScreenScale_scale;
}

void __35__ASKMobileGestalt_mainScreenScale__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v2 = v0;
    [v0 floatValue];
    v0 = v2;
    *&mainScreenScale_scale = v1;
  }
}

@end