@interface CCUISensorEntityIconCache
+ (CGSize)iconSize;
+ (id)sharedInstance;
- (id)_imageInBundle:(id)bundle named:(id)named needsTreatment:(BOOL)treatment;
- (id)_init;
- (id)_keyboardSettingsIcon;
- (id)continuityCaptureIconForExtensionIdentifier:(id)identifier;
- (id)imageForEntity:(id)entity;
- (void)preheatImageForSensorEntity:(id)entity;
@end

@implementation CCUISensorEntityIconCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CCUISensorEntityIconCache sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

+ (CGSize)iconSize
{
  v2 = 20.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

void __43__CCUISensorEntityIconCache_sharedInstance__block_invoke()
{
  v0 = [[CCUISensorEntityIconCache alloc] _init];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = CCUISensorEntityIconCache;
  v2 = [(CCUISensorEntityIconCache *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ControlCenter.sensorEntityIconCache", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)preheatImageForSensorEntity:(id)entity
{
  entityCopy = entity;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__CCUISensorEntityIconCache_preheatImageForSensorEntity___block_invoke;
  v7[3] = &unk_278381DC8;
  v7[4] = self;
  v8 = entityCopy;
  v6 = entityCopy;
  dispatch_async(queue, v7);
}

- (id)imageForEntity:(id)entity
{
  entityCopy = entity;
  [objc_opt_class() iconSize];
  v6 = v5;
  v8 = v7;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v6 scale:{v8, v11}];
  if (([entityCopy isGenericLocationSystemServiceEntity] & 1) != 0 || objc_msgSend(entityCopy, "isSetupApp"))
  {
    v13 = objc_alloc(MEMORY[0x277D1B1A8]);
    v14 = @"com.apple.graphic-icon.gear";
LABEL_4:
    v15 = [v13 initWithType:v14];
LABEL_5:
    v16 = v15;
    v17 = objc_alloc(MEMORY[0x277D755B8]);
    v18 = [v16 prepareImageForDescriptor:v12];
    cGImage = [v18 CGImage];
    [v12 scale];
    v20 = [v17 initWithCGImage:cGImage scale:0 orientation:?];

LABEL_6:
    goto LABEL_7;
  }

  if ([entityCopy isScreenRecording])
  {
    v13 = objc_alloc(MEMORY[0x277D1B1A8]);
    v14 = @"com.apple.graphic-icon.screen-recording";
    goto LABEL_4;
  }

  if ([entityCopy isSiriAndDictationEntity])
  {
    v15 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithBundleIdentifier:@"com.apple.siri"];
    goto LABEL_5;
  }

  if ([entityCopy isVoiceControlEntity])
  {
    v13 = objc_alloc(MEMORY[0x277D1B1A8]);
    v14 = @"com.apple.accessibilityuiserver.voice.control";
    goto LABEL_4;
  }

  if ([entityCopy isEmergencySOSEntity])
  {
    v13 = objc_alloc(MEMORY[0x277D1B1A8]);
    v14 = @"com.apple.graphic-icon.emergency-sos";
    goto LABEL_4;
  }

  if ([entityCopy isWalletSpecialEntity])
  {
    _keyboardSettingsIcon = CCUIIconImageForApplicationIdentifier(*MEMORY[0x277CFC928], v6, v8);
  }

  else
  {
    if (![entityCopy isKeyboardCameraEntity])
    {
      isContinuityCaptureExtension = [entityCopy isContinuityCaptureExtension];
      bundleIdentifier = [entityCopy bundleIdentifier];
      v16 = bundleIdentifier;
      if (isContinuityCaptureExtension)
      {
        [(CCUISensorEntityIconCache *)self continuityCaptureIconForExtensionIdentifier:bundleIdentifier];
      }

      else
      {
        CCUIIconImageForApplicationIdentifier(bundleIdentifier, v6, v8);
      }
      v20 = ;
      goto LABEL_6;
    }

    _keyboardSettingsIcon = [(CCUISensorEntityIconCache *)self _keyboardSettingsIcon];
  }

  v20 = _keyboardSettingsIcon;
LABEL_7:

  return v20;
}

- (id)_imageInBundle:(id)bundle named:(id)named needsTreatment:(BOOL)treatment
{
  treatmentCopy = treatment;
  bundleCopy = bundle;
  namedCopy = named;
  v9 = [MEMORY[0x277CCA8D8] bundleWithURL:bundleCopy];
  v10 = [MEMORY[0x277D755B8] imageNamed:namedCopy inBundle:v9];
  if (v10)
  {
    v11 = v10;
    if (treatmentCopy)
    {
      cGImage = [v10 CGImage];
      [objc_opt_class() iconSize];
      v15 = CCUIIconImageForUntreatedImage(cGImage, v13, v14);

      v11 = v15;
    }
  }

  else
  {
    v16 = *MEMORY[0x277CFC8E8];
    if (os_log_type_enabled(*MEMORY[0x277CFC8E8], OS_LOG_TYPE_FAULT))
    {
      [CCUISensorEntityIconCache _imageInBundle:namedCopy named:bundleCopy needsTreatment:v16];
    }

    v11 = 0;
  }

  return v11;
}

- (id)continuityCaptureIconForExtensionIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CC1E50];
  identifierCopy = identifier;
  v10 = 0;
  v6 = [[v4 alloc] initWithBundleIdentifier:identifierCopy error:&v10];

  v7 = [v6 URL];
  v8 = [(CCUISensorEntityIconCache *)self _imageInBundle:v7 named:@"AppIcon" needsTreatment:1];

  return v8;
}

- (id)_keyboardSettingsIcon
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
  v4 = [(CCUISensorEntityIconCache *)self _imageInBundle:v3 named:@"Keyboards" needsTreatment:1];

  return v4;
}

- (void)_imageInBundle:(uint64_t)a1 named:(uint64_t)a2 needsTreatment:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_21E9F5000, log, OS_LOG_TYPE_FAULT, "could not lookup image %@ in bundle %@", &v3, 0x16u);
}

@end