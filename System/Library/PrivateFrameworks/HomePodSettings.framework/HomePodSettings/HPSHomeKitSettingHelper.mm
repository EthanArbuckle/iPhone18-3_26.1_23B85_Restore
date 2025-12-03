@interface HPSHomeKitSettingHelper
+ (id)compatibleReadResult:(id)result;
+ (id)compatibleReadResults:(id)results;
+ (id)compatibleReadSetting:(id)setting;
+ (id)compatibleWriteSetting:(id)setting;
+ (id)fixUpAutoAdjustSiriVolumeEnabled:(id)enabled;
+ (id)fixUpHoldDuration:(id)duration;
+ (id)fixUpIgnoreRepeat:(id)repeat;
+ (id)fixUpSpeakingRate:(id)rate;
+ (id)fixUpTapAssistanceSelection:(id)selection;
+ (id)fixUpTimeoutInterval:(id)interval;
+ (id)readSettingFixupMap;
+ (id)writeSettingFixupMap;
@end

@implementation HPSHomeKitSettingHelper

+ (id)compatibleReadSetting:(id)setting
{
  v21 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  location = settingCopy;
  v5 = +[HPSHomeKitSettingHelper readSettingFixupMap];
  keyPath = [settingCopy keyPath];
  v7 = [v5 objectForKey:keyPath];
  v8 = v7;
  if (v7 && (v9 = NSSelectorFromString(v7), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = _HPSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "+[HPSHomeKitSettingHelper compatibleReadSetting:]";
      v19 = 2112;
      v20 = keyPath;
      _os_log_impl(&dword_2542B7000, v10, OS_LOG_TYPE_INFO, "%s fixing up %@", buf, 0x16u);
    }

    v11 = MEMORY[0x277CBEAE8];
    v12 = [self methodSignatureForSelector:v9];
    v13 = [v11 invocationWithMethodSignature:v12];

    [v13 setTarget:self];
    [v13 setSelector:v9];
    [v13 setArgument:&location atIndex:2];
    [v13 invoke];
    *buf = 0;
    [v13 getReturnValue:buf];
    objc_storeStrong(&location, *buf);
    v14 = location;
  }

  else
  {
    v14 = settingCopy;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)compatibleWriteSetting:(id)setting
{
  v21 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  location = settingCopy;
  v5 = +[HPSHomeKitSettingHelper writeSettingFixupMap];
  keyPath = [settingCopy keyPath];
  v7 = [v5 objectForKey:keyPath];
  v8 = v7;
  if (v7 && (v9 = NSSelectorFromString(v7), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = _HPSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "+[HPSHomeKitSettingHelper compatibleWriteSetting:]";
      v19 = 2112;
      v20 = keyPath;
      _os_log_impl(&dword_2542B7000, v10, OS_LOG_TYPE_INFO, "%s fixing up %@", buf, 0x16u);
    }

    v11 = MEMORY[0x277CBEAE8];
    v12 = [self methodSignatureForSelector:v9];
    v13 = [v11 invocationWithMethodSignature:v12];

    [v13 setTarget:self];
    [v13 setSelector:v9];
    [v13 setArgument:&location atIndex:2];
    [v13 invoke];
    *buf = 0;
    [v13 getReturnValue:buf];
    objc_storeStrong(&location, *buf);
    v14 = location;
  }

  else
  {
    v14 = settingCopy;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)compatibleReadResult:(id)result
{
  resultCopy = result;
  setting = [resultCopy setting];
  if (setting)
  {
    v6 = [self compatibleReadSetting:setting];
    if (setting != v6)
    {
      v7 = [HPSResult alloc];
      accessoryIdentifier = [resultCopy accessoryIdentifier];
      error = [resultCopy error];
      v10 = -[HPSResult initWithSetting:accessoryIdentifier:error:result:](v7, "initWithSetting:accessoryIdentifier:error:result:", v6, accessoryIdentifier, error, [resultCopy isSuccess]);

      resultCopy = v10;
    }
  }

  return resultCopy;
}

+ (id)compatibleReadResults:(id)results
{
  resultsCopy = results;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HPSHomeKitSettingHelper_compatibleReadResults___block_invoke;
  v9[3] = &unk_279773FA0;
  v11 = &v13;
  selfCopy = self;
  v5 = resultsCopy;
  v10 = v5;
  [v5 enumerateObjectsUsingBlock:v9];
  v6 = v14[5];
  if (!v6)
  {
    v6 = v5;
  }

  v7 = v6;

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __49__HPSHomeKitSettingHelper_compatibleReadResults___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v14 = [v5 compatibleReadResult:v6];

  v8 = v14;
  if (v14 != v6)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (!v9)
    {
      v10 = [*(a1 + 32) mutableCopy];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

    v7 = [v9 replaceObjectAtIndex:a3 withObject:v14];
    v8 = v14;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

+ (id)readSettingFixupMap
{
  if (readSettingFixupMap_onceToken != -1)
  {
    +[HPSHomeKitSettingHelper readSettingFixupMap];
  }

  v3 = readSettingFixupMap_map;

  return v3;
}

void __46__HPSHomeKitSettingHelper_readSettingFixupMap__block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v3[0] = @"root.general.accessibility.interaction.touchAccommodations.tapAssistance.selection";
  v3[1] = @"root.general.accessibility.vision.voiceOver.speakingRateSection.speakingRate";
  v4[0] = @"fixUpTapAssistanceSelection:";
  v4[1] = @"fixUpSpeakingRate:";
  v3[2] = @"root.general.accessibility.vision.voiceOver.doubleTapSettings.timeoutSettings.timeoutInterval";
  v3[3] = @"root.general.accessibility.interaction.touchAccommodations.ignoreRepeat.seconds";
  v4[2] = @"fixUpTimeoutInterval:";
  v4[3] = @"fixUpIgnoreRepeat:";
  v3[4] = @"root.general.accessibility.interaction.touchAccommodations.holdDuration.seconds";
  v3[5] = @"root.general.accessibility.autoAdjustSiriVolumeEnabled";
  v4[4] = @"fixUpHoldDuration:";
  v4[5] = @"fixUpAutoAdjustSiriVolumeEnabled:";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:6];
  v1 = readSettingFixupMap_map;
  readSettingFixupMap_map = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)writeSettingFixupMap
{
  if (writeSettingFixupMap_onceToken[0] != -1)
  {
    +[HPSHomeKitSettingHelper writeSettingFixupMap];
  }

  v3 = writeSettingFixupMap_map;

  return v3;
}

void __47__HPSHomeKitSettingHelper_writeSettingFixupMap__block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"root.general.accessibility.autoAdjustSiriVolumeEnabled";
  v4[0] = @"fixUpAutoAdjustSiriVolumeEnabled:";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  v1 = writeSettingFixupMap_map;
  writeSettingFixupMap_map = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)fixUpTapAssistanceSelection:(id)selection
{
  selectionCopy = selection;
  keyPath = [selectionCopy keyPath];
  value = [selectionCopy value];

  v6 = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CE7E20] hps_tapActivationMethodFromString:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v9 = v6;
  }

  else
  {
    objc_opt_class();
    v8 = v6;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v10 = MEMORY[0x277CBEAD8];
    v11 = *MEMORY[0x277CBE658];
    v12 = objc_opt_class();
    v9 = NSStringFromClass(v12);
    [v10 raise:v11 format:{@"%@ value should not be a %@", keyPath, v9}];
    v8 = v6;
  }

LABEL_6:
  v13 = [[HPSConstrainedNumberSetting alloc] initWithKeyPath:keyPath numberValue:v8 minimumValue:&unk_286656138 maximumValue:&unk_286656150 stepValue:&unk_286656168];

  return v13;
}

+ (id)fixUpSpeakingRate:(id)rate
{
  rateCopy = rate;
  keyPath = [rateCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ should not be a %@", keyPath, v8}];
  }

  v9 = [HPSConstrainedNumberSetting alloc];
  numberValue = [rateCopy numberValue];
  v11 = [(HPSConstrainedNumberSetting *)v9 initWithKeyPath:keyPath numberValue:numberValue minimumValue:&unk_286656180 maximumValue:&unk_286656168 stepValue:&unk_2866561C8];

  return v11;
}

+ (id)fixUpTimeoutInterval:(id)interval
{
  intervalCopy = interval;
  keyPath = [intervalCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ should not be a %@", keyPath, v8}];
  }

  v9 = [HPSConstrainedNumberSetting alloc];
  numberValue = [intervalCopy numberValue];
  v11 = [(HPSConstrainedNumberSetting *)v9 initWithKeyPath:keyPath numberValue:numberValue minimumValue:&unk_2866561D8 maximumValue:&unk_2866561E8 stepValue:&unk_2866561F8];

  return v11;
}

+ (id)fixUpIgnoreRepeat:(id)repeat
{
  repeatCopy = repeat;
  keyPath = [repeatCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ should not be a %@", keyPath, v8}];
  }

  v9 = [HPSConstrainedNumberSetting alloc];
  numberValue = [repeatCopy numberValue];
  v11 = [(HPSConstrainedNumberSetting *)v9 initWithKeyPath:keyPath numberValue:numberValue minimumValue:&unk_286656208 maximumValue:&unk_286656198 stepValue:&unk_286656208];

  return v11;
}

+ (id)fixUpHoldDuration:(id)duration
{
  durationCopy = duration;
  keyPath = [durationCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ should not be a %@", keyPath, v8}];
  }

  v9 = [HPSConstrainedNumberSetting alloc];
  numberValue = [durationCopy numberValue];
  v11 = [(HPSConstrainedNumberSetting *)v9 initWithKeyPath:keyPath numberValue:numberValue minimumValue:&unk_286656208 maximumValue:&unk_286656198 stepValue:&unk_286656208];

  return v11;
}

+ (id)fixUpAutoAdjustSiriVolumeEnabled:(id)enabled
{
  enabledCopy = enabled;
  keyPath = [enabledCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE658];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@ should not be a %@", keyPath, v8}];
  }

  v9 = +[HPSBooleanSetting settingWithKeyPath:BOOLeanValue:](HPSBooleanSetting, "settingWithKeyPath:BOOLeanValue:", keyPath, [enabledCopy BOOLeanValue] ^ 1);

  return v9;
}

@end