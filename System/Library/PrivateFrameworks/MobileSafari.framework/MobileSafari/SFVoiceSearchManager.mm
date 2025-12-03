@interface SFVoiceSearchManager
+ (SFVoiceSearchManager)sharedManager;
- (BOOL)liveCompletionList;
- (BOOL)presentDictationDiscoveryAlertIfNeeded;
- (NSArray)queryItems;
- (SFVoiceSearchManager)init;
- (id)_kfed;
- (int64_t)_voiceSearchAvailability;
- (void)_updateDictationAvailability;
@end

@implementation SFVoiceSearchManager

- (SFVoiceSearchManager)init
{
  v7.receiver = self;
  v7.super_class = SFVoiceSearchManager;
  v2 = [(SFVoiceSearchManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_availability = [(SFVoiceSearchManager *)v2 _voiceSearchAvailability];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__updateDictationAvailability name:*MEMORY[0x1E69DDF60] object:0];

    v5 = v3;
  }

  return v3;
}

+ (SFVoiceSearchManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SFVoiceSearchManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

void __37__SFVoiceSearchManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SFVoiceSearchManager);
  v1 = sharedManager_manager;
  sharedManager_manager = v0;
}

- (int64_t)_voiceSearchAvailability
{
  mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  if ([sharedPreferences dictationIsEnabled] & 1) == 0 && (objc_msgSend(sharedPreferences, "suppressDictationOptIn"))
  {
    goto LABEL_14;
  }

  enabledDictationLanguages = [mEMORY[0x1E69DCBF0] enabledDictationLanguages];
  if (![enabledDictationLanguages count])
  {

LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getAFDictationRestrictedSymbolLoc_ptr;
  v16 = getAFDictationRestrictedSymbolLoc_ptr;
  if (!getAFDictationRestrictedSymbolLoc_ptr)
  {
    v6 = AssistantServicesLibrary();
    v14[3] = dlsym(v6, "AFDictationRestricted");
    getAFDictationRestrictedSymbolLoc_ptr = v14[3];
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    v12 = __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v7 = v5();

  if (v7)
  {
    goto LABEL_14;
  }

  v8 = NSClassFromString(&cfstr_Uidictationcon.isa);
  if (v8)
  {
    sharedInstance = [(objc_class *)v8 sharedInstance];
    if ([sharedInstance dictationDisabledDueToTelephonyActivity])
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (BOOL)liveCompletionList
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults BOOLForKey:@"LiveCompletionList"];

  return v3;
}

- (void)_updateDictationAvailability
{
  _voiceSearchAvailability = [(SFVoiceSearchManager *)self _voiceSearchAvailability];
  if (self->_availability != _voiceSearchAvailability)
  {
    self->_availability = _voiceSearchAvailability;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SFVoiceSearchAvailabilityDidChangeNotification" object:self];
  }
}

- (id)_kfed
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults stringForKey:@"VoiceSearchKfed"];

  return v3;
}

- (NSArray)queryItems
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:@"qtype" value:@"voice_search"];
  [array addObject:v4];

  _kfed = [(SFVoiceSearchManager *)self _kfed];
  if ([_kfed length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"kfed-service" value:_kfed];
    [array addObject:v6];
  }

  return array;
}

- (BOOL)presentDictationDiscoveryAlertIfNeeded
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  if ([sharedPreferences dictationIsEnabled] & 1) != 0 || (objc_msgSend(sharedPreferences, "suppressDictationOptIn"))
  {
    v3 = 0;
  }

  else
  {
    if (dictationControllerClass_onceToken != -1)
    {
      [SFVoiceSearchManager presentDictationDiscoveryAlertIfNeeded];
    }

    sharedInstance = [dictationControllerClass_cachedClass sharedInstance];
    v3 = objc_opt_respondsToSelector();
    if (v3)
    {
      [sharedInstance presentAlertOfType:1 withCompletion:0];
    }
  }

  return v3 & 1;
}

@end