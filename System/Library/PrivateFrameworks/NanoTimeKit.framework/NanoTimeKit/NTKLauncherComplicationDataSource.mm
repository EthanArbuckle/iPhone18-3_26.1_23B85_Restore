@interface NTKLauncherComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device;
- (id)_appBackgroundColor;
- (id)_appTintColor;
- (id)_appTitle;
- (id)_circularTemplateMedium:(BOOL)medium;
- (id)_complicationApplicationIdentifier;
- (id)_complicationLaunchURL;
- (id)_currentTimelineEntry;
- (id)_extraLarge;
- (id)_fullColorImageProvider;
- (id)_graphicExtraLargeTemplate;
- (id)_modularLargeTemplate;
- (id)_modularSmallTemplate;
- (id)_signatureBezelTemplate;
- (id)_signatureCircularTemplate;
- (id)_signatureCornerTemplate;
- (id)_symbolAppFullColorImageProviderIfSupported;
- (id)_symbolAppImageProviderIfSupported;
- (id)_symbolName;
- (id)_symbolSize;
- (id)_symbolSizeforMailApp;
- (id)_symbolSizeforMapsApp;
- (id)_symbolSizeforTinCanApp;
- (id)_tinCanAppTintColor;
- (id)_tintableAppImageProvider;
- (id)_utilitarianLargeTemplate;
- (id)_utilitarianSmallTemplate;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation NTKLauncherComplicationDataSource

+ (BOOL)acceptsComplicationType:(unint64_t)type withFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if ([NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:type forDevice:deviceCopy])
  {
    goto LABEL_2;
  }

  if (type > 0x2E)
  {
    goto LABEL_12;
  }

  if (((1 << type) & 0x1B200000) != 0)
  {
    if ((family - 8) <= 2)
    {
      isEcgPhoneComplicationEnabled = [deviceCopy pdrDeviceVersion] > 0x50100;
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (type != 33)
  {
    if (type == 46)
    {
      if (family <= 0xA && ((1 << family) & 0x715) != 0 || (*MEMORY[0x277CBB668] != family ? (v14 = family == 12) : (v14 = 1), !v14 ? (v15 = family == 7) : (v15 = 1), v15))
      {
        isEcgPhoneComplicationEnabled = [deviceCopy isEcgPhoneComplicationEnabled];
        goto LABEL_27;
      }

      goto LABEL_2;
    }

LABEL_12:
    if (type != 20)
    {
LABEL_2:
      isEcgPhoneComplicationEnabled = 0;
      goto LABEL_27;
    }

LABEL_13:
    if (family > 4 || ((1 << family) & 0x15) == 0)
    {
      isEcgPhoneComplicationEnabled = family == 7 || *MEMORY[0x277CBB668] == family || family == 12;
      goto LABEL_27;
    }

LABEL_26:
    isEcgPhoneComplicationEnabled = 1;
    goto LABEL_27;
  }

  if (family <= 4 && ((1 << family) & 0x15) != 0)
  {
    goto LABEL_26;
  }

  isEcgPhoneComplicationEnabled = *MEMORY[0x277CBB668] == family || family == 12 || (family - 7) < 4;
LABEL_27:

  return isEcgPhoneComplicationEnabled;
}

- (id)currentSwitcherTemplate
{
  _currentTimelineEntry = [(NTKLauncherComplicationDataSource *)self _currentTimelineEntry];
  complicationTemplate = [_currentTimelineEntry complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  _currentTimelineEntry = [(NTKLauncherComplicationDataSource *)self _currentTimelineEntry];
  (*(handler + 2))(handlerCopy, _currentTimelineEntry);
}

- (id)_currentTimelineEntry
{
  v3 = objc_alloc_init(MEMORY[0x277CBBAC8]);
  family = [(CLKCComplicationDataSource *)self family];
  if (family == 104)
  {
    goto LABEL_2;
  }

  if (family == *MEMORY[0x277CBB668])
  {
    selfCopy2 = self;
    v7 = 1;
LABEL_5:
    _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)selfCopy2 _circularTemplateMedium:v7];
    goto LABEL_6;
  }

  v8 = 0;
  if (family <= 5)
  {
    if (family <= 1)
    {
      if (!family)
      {
        _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _modularSmallTemplate];
        goto LABEL_6;
      }

      if (family == 1)
      {
        _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _modularLargeTemplate];
        goto LABEL_6;
      }
    }

    else
    {
      switch(family)
      {
        case 2:
LABEL_30:
          _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _utilitarianSmallTemplate];
          goto LABEL_6;
        case 3:
LABEL_2:
          _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _utilitarianLargeTemplate];
LABEL_6:
          v8 = _modularSmallTemplate;
          break;
        case 4:
          selfCopy2 = self;
          v7 = 0;
          goto LABEL_5;
      }
    }
  }

  else
  {
    if (family <= 8)
    {
      if (family != 6)
      {
        if (family == 7)
        {
          [(NTKLauncherComplicationDataSource *)self _extraLarge];
        }

        else
        {
          [(NTKLauncherComplicationDataSource *)self _signatureCornerTemplate];
        }
        _modularSmallTemplate = ;
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    switch(family)
    {
      case 9:
        _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _signatureBezelTemplate];
        goto LABEL_6;
      case 10:
        _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _signatureCircularTemplate];
        goto LABEL_6;
      case 12:
        _modularSmallTemplate = [(NTKLauncherComplicationDataSource *)self _graphicExtraLargeTemplate];
        goto LABEL_6;
    }
  }

  _appTintColor = [(NTKLauncherComplicationDataSource *)self _appTintColor];
  [v8 setTintColor:_appTintColor];

  if (v8)
  {
    [v3 setComplicationTemplate:v8];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [v3 setDate:date];

  [v3 finalize];

  return v3;
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  _complicationLaunchURL = [(NTKLauncherComplicationDataSource *)self _complicationLaunchURL];
  (*(handler + 2))(handlerCopy, _complicationLaunchURL);
}

- (id)_modularSmallTemplate
{
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (_tintableAppImageProvider)
  {
    v4 = [MEMORY[0x277CBBA50] templateWithImageProvider:_tintableAppImageProvider];
  }

  else
  {
    v5 = MEMORY[0x277CBBA60];
    v6 = MEMORY[0x277CBBB88];
    _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v8 = [v6 textProviderWithText:_appTitle];
    v4 = [v5 templateWithTextProvider:v8];
  }

  return v4;
}

- (id)_modularLargeTemplate
{
  v3 = MEMORY[0x277CBBA08];
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  v5 = MEMORY[0x277CBBB88];
  _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
  v7 = [v5 textProviderWithText:_appTitle];
  v8 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
  v9 = [v3 templateWithHeaderImageProvider:_tintableAppImageProvider headerTextProvider:v7 body1TextProvider:v8];

  return v9;
}

- (id)_utilitarianSmallTemplate
{
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (_tintableAppImageProvider)
  {
    v4 = [MEMORY[0x277CBBAC0] templateWithImageProvider:_tintableAppImageProvider];
  }

  else
  {
    v5 = MEMORY[0x277CBBA90];
    v6 = MEMORY[0x277CBBB88];
    _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v8 = [v6 textProviderWithText:_appTitle];
    v4 = [v5 templateWithTextProvider:v8];
  }

  return v4;
}

- (id)_utilitarianLargeTemplate
{
  v3 = MEMORY[0x277CBBA80];
  v4 = MEMORY[0x277CBBB88];
  _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
  v6 = [v4 textProviderWithText:_appTitle];
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  v8 = [v3 templateWithTextProvider:v6 imageProvider:_tintableAppImageProvider];

  return v8;
}

- (id)_circularTemplateMedium:(BOOL)medium
{
  mediumCopy = medium;
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (_tintableAppImageProvider)
  {
    if (mediumCopy)
    {
      v6 = MEMORY[0x277CBB748];
    }

    else
    {
      v6 = MEMORY[0x277CBB790];
    }

    v11 = [v6 templateWithImageProvider:_tintableAppImageProvider];
  }

  else
  {
    v7 = MEMORY[0x277CBBB88];
    _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v9 = [v7 textProviderWithText:_appTitle];

    v10 = 0x277CBB750;
    if (!mediumCopy)
    {
      v10 = 0x277CBB798;
    }

    v11 = [*v10 templateWithTextProvider:v9];
  }

  return v11;
}

- (id)_extraLarge
{
  _tintableAppImageProvider = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (_tintableAppImageProvider)
  {
    v4 = [MEMORY[0x277CBB7F0] templateWithImageProvider:_tintableAppImageProvider];
  }

  else
  {
    v5 = MEMORY[0x277CBBB88];
    _appTitle = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v7 = [v5 textProviderWithText:_appTitle];

    v4 = [MEMORY[0x277CBB7F8] templateWithTextProvider:v7];
  }

  return v4;
}

- (id)_signatureCornerTemplate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBB8B8];
  _fullColorImageProvider = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:_fullColorImageProvider];

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setMetadata:v5];

  return v4;
}

- (id)_signatureBezelTemplate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBB810];
  _signatureCircularTemplate = [(NTKLauncherComplicationDataSource *)self _signatureCircularTemplate];
  v4 = [v2 templateWithCircularTemplate:_signatureCircularTemplate];

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setMetadata:v5];

  return v4;
}

- (id)_signatureCircularTemplate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBB850];
  _fullColorImageProvider = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:_fullColorImageProvider];

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setMetadata:v5];

  return v4;
}

- (id)_graphicExtraLargeTemplate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBB938];
  _fullColorImageProvider = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:_fullColorImageProvider];

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setMetadata:v5];

  return v4;
}

- (id)_appTitle
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  _complicationApplicationIdentifier = [(NTKLauncherComplicationDataSource *)self _complicationApplicationIdentifier];
  v5 = [v3 initWithBundleIdentifier:_complicationApplicationIdentifier allowPlaceholder:0 error:0];

  localizedName = [v5 localizedName];

  return localizedName;
}

- (id)_symbolSizeforMapsApp
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __58__NTKLauncherComplicationDataSource__symbolSizeforMapsApp__block_invoke(currentDevice, currentDevice);

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
  v6 = [v4 objectForKey:v5];

  return v6;
}

id __58__NTKLauncherComplicationDataSource__symbolSizeforMapsApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_66);
  if (_block_invoke___cachedDevice_66)
  {
    v3 = _block_invoke___cachedDevice_66 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_66))
  {
    _block_invoke___cachedDevice_66 = v2;
    _block_invoke___previousCLKDeviceVersion_66 = [v2 version];
    v5 = __58__NTKLauncherComplicationDataSource__symbolSizeforMapsApp__block_invoke_2();
    v6 = _block_invoke_value_49;
    _block_invoke_value_49 = v5;
  }

  v7 = _block_invoke_value_49;
  os_unfair_lock_unlock(&_block_invoke_lock_66);

  return v7;
}

id __58__NTKLauncherComplicationDataSource__symbolSizeforMapsApp__block_invoke_2()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = &unk_284185728;
  v3[0] = &unk_284189548;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

- (id)_symbolSizeforMailApp
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __58__NTKLauncherComplicationDataSource__symbolSizeforMailApp__block_invoke(currentDevice, currentDevice);

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
  v6 = [v4 objectForKey:v5];

  return v6;
}

id __58__NTKLauncherComplicationDataSource__symbolSizeforMailApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_12);
  if (_block_invoke_2___cachedDevice_12)
  {
    v3 = _block_invoke_2___cachedDevice_12 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_2___previousCLKDeviceVersion_12))
  {
    _block_invoke_2___cachedDevice_12 = v2;
    _block_invoke_2___previousCLKDeviceVersion_12 = [v2 version];
    v5 = __58__NTKLauncherComplicationDataSource__symbolSizeforMailApp__block_invoke_2();
    v6 = _block_invoke_2_value_10;
    _block_invoke_2_value_10 = v5;
  }

  v7 = _block_invoke_2_value_10;
  os_unfair_lock_unlock(&_block_invoke_2_lock_12);

  return v7;
}

id __58__NTKLauncherComplicationDataSource__symbolSizeforMailApp__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284185740;
  v5[1] = &unk_284185758;
  v6[0] = &unk_284189558;
  v6[1] = &unk_284189558;
  v6[2] = &unk_284189568;
  v5[2] = &unk_284185728;
  v5[3] = &unk_284185770;
  v0 = MEMORY[0x277CCABB0];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v2 = [v0 numberWithDouble:v1 * 22.0];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];

  return v3;
}

- (id)_symbolSizeforTinCanApp
{
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __60__NTKLauncherComplicationDataSource__symbolSizeforTinCanApp__block_invoke(currentDevice, currentDevice);

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
  v6 = [v4 objectForKey:v5];

  return v6;
}

id __60__NTKLauncherComplicationDataSource__symbolSizeforTinCanApp__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock_4);
  if (_block_invoke_3___cachedDevice_4)
  {
    v3 = _block_invoke_3___cachedDevice_4 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke_3___previousCLKDeviceVersion_4))
  {
    _block_invoke_3___cachedDevice_4 = v2;
    _block_invoke_3___previousCLKDeviceVersion_4 = [v2 version];
    v5 = __60__NTKLauncherComplicationDataSource__symbolSizeforTinCanApp__block_invoke_2();
    v6 = _block_invoke_3_value_4;
    _block_invoke_3_value_4 = v5;
  }

  v7 = _block_invoke_3_value_4;
  os_unfair_lock_unlock(&_block_invoke_3_lock_4);

  return v7;
}

id __60__NTKLauncherComplicationDataSource__symbolSizeforTinCanApp__block_invoke_2()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_284185740;
  v5[1] = &unk_284185758;
  v6[0] = &unk_284189578;
  v6[1] = &unk_284189578;
  v6[2] = &unk_284189588;
  v5[2] = &unk_284185728;
  v5[3] = &unk_284185770;
  v0 = MEMORY[0x277CCABB0];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v2 = [v0 numberWithDouble:v1 * 26.5];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];

  return v3;
}

- (id)_symbolSize
{
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  switch(complicationType)
  {
    case 33:
      _symbolSizeforTinCanApp = [(NTKLauncherComplicationDataSource *)self _symbolSizeforTinCanApp];
      break;
    case 27:
      _symbolSizeforTinCanApp = [(NTKLauncherComplicationDataSource *)self _symbolSizeforMailApp];
      break;
    case 25:
      _symbolSizeforTinCanApp = [(NTKLauncherComplicationDataSource *)self _symbolSizeforMapsApp];
      break;
    default:
      _symbolSizeforTinCanApp = 0;
      break;
  }

  return _symbolSizeforTinCanApp;
}

- (id)_symbolName
{
  if (_symbolName_onceToken != -1)
  {
    [NTKLauncherComplicationDataSource _symbolName];
  }

  v3 = _symbolName_typeToSymbolNameComponentMapping;
  v4 = MEMORY[0x277CCABB0];
  complication = [(CLKCComplicationDataSource *)self complication];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(complication, "complicationType")}];
  v7 = [v3 objectForKeyedSubscript:v6];

  return v7;
}

void __48__NTKLauncherComplicationDataSource__symbolName__block_invoke()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_284185788;
  v2[1] = &unk_2841857A0;
  v3[0] = @"envelope.fill";
  v3[1] = @"walkietalkie.applewatch.case.fill";
  v2[2] = &unk_2841857B8;
  v2[3] = &unk_2841857D0;
  v3[2] = @"play.circle";
  v3[3] = @"phone.fill";
  v2[4] = &unk_2841857E8;
  v3[4] = @"location.fill";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _symbolName_typeToSymbolNameComponentMapping;
  _symbolName_typeToSymbolNameComponentMapping = v0;
}

- (id)_symbolAppImageProviderIfSupported
{
  _symbolName = [(NTKLauncherComplicationDataSource *)self _symbolName];
  if (_symbolName)
  {
    v4 = [MEMORY[0x277CBBB98] _symbolImageProviderWithSystemName:_symbolName];
    _symbolSize = [(NTKLauncherComplicationDataSource *)self _symbolSize];
    if (_symbolSize)
    {
      [v4 setOverridePointSize:_symbolSize];
    }

    [v4 setIgnoreHierarchicalLayers:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_symbolAppFullColorImageProviderIfSupported
{
  _symbolName = [(NTKLauncherComplicationDataSource *)self _symbolName];
  if (_symbolName)
  {
    v4 = [MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:_symbolName];
    _symbolSize = [(NTKLauncherComplicationDataSource *)self _symbolSize];
    if (_symbolSize)
    {
      [v4 setOverridePointSize:_symbolSize];
    }

    [v4 setIgnoreHierarchicalLayers:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_tintableAppImageProvider
{
  if (_tintableAppImageProvider_onceToken != -1)
  {
    [NTKLauncherComplicationDataSource _tintableAppImageProvider];
  }

  _symbolAppImageProviderIfSupported = [(NTKLauncherComplicationDataSource *)self _symbolAppImageProviderIfSupported];
  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  [currentDevice pdrDeviceVersion];
  IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();

  if (_symbolAppImageProviderIfSupported && (IsGreaterThanOrEqual & 1) != 0)
  {
    _symbolAppImageProviderIfSupported = _symbolAppImageProviderIfSupported;
    v15 = _symbolAppImageProviderIfSupported;
  }

  else
  {
    complication = [(CLKCComplicationDataSource *)self complication];
    complicationType = [complication complicationType];

    v8 = _tintableAppImageProvider_familyToImageNameComponentMapping;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = _tintableAppImageProvider_typeToImageNameComponentMapping;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complicationType];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v10 && v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, v13];
      NTKImageNamed(v14);
    }

    v15 = 0;
  }

  return v15;
}

void __62__NTKLauncherComplicationDataSource__tintableAppImageProvider__block_invoke()
{
  v12[7] = *MEMORY[0x277D85DE8];
  v11[0] = &unk_284185800;
  v11[1] = &unk_284185818;
  v12[0] = @"Color";
  v12[1] = @"ModularSmall";
  v11[2] = &unk_284185830;
  v11[3] = &unk_284185848;
  v12[2] = @"Utility";
  v12[3] = @"Utility";
  v11[4] = &unk_284185860;
  v11[5] = &unk_284185878;
  v12[4] = @"Utility";
  v12[5] = @"ExtraLarge";
  v0 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CBB668]];
  v11[6] = v0;
  v12[6] = @"VictoryNTK";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:7];
  v2 = _tintableAppImageProvider_familyToImageNameComponentMapping;
  _tintableAppImageProvider_familyToImageNameComponentMapping = v1;

  v9[0] = &unk_2841857B8;
  v9[1] = &unk_2841857D0;
  v10[0] = @"Remote";
  v10[1] = @"Phone";
  v9[2] = &unk_2841857E8;
  v9[3] = &unk_284185788;
  v10[2] = @"Maps";
  v10[3] = @"Mail";
  v9[4] = &unk_284185890;
  v9[5] = &unk_2841858A8;
  v10[4] = @"Home";
  v10[5] = @"Reminders";
  v9[6] = &unk_2841857A0;
  v9[7] = &unk_2841858C0;
  v10[6] = @"TinCan";
  v10[7] = @"ECG";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:8];
  v4 = _tintableAppImageProvider_typeToImageNameComponentMapping;
  _tintableAppImageProvider_typeToImageNameComponentMapping = v3;

  v7 = &unk_2841858A8;
  v8 = @"Color";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = _tintableAppImageProvider_typeToAccentSuffixNameComponentMapping;
  _tintableAppImageProvider_typeToAccentSuffixNameComponentMapping = v5;
}

- (id)_fullColorImageProvider
{
  if (_fullColorImageProvider_onceToken != -1)
  {
    [NTKLauncherComplicationDataSource _fullColorImageProvider];
  }

  _symbolAppFullColorImageProviderIfSupported = [(NTKLauncherComplicationDataSource *)self _symbolAppFullColorImageProviderIfSupported];
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  [currentDevice pdrDeviceVersion];
  IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();

  if (_symbolAppFullColorImageProviderIfSupported && (IsGreaterThanOrEqual & 1) != 0)
  {
    v16 = _fullColorImageProvider_useAppTintColorList;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complicationType];
    LODWORD(v16) = [v16 containsObject:v17];

    if (v16)
    {
      _appTintColor = [(NTKLauncherComplicationDataSource *)self _appTintColor];
      [_symbolAppFullColorImageProviderIfSupported setTintColor:_appTintColor];
    }

    _symbolAppFullColorImageProviderIfSupported = _symbolAppFullColorImageProviderIfSupported;
    v15 = _symbolAppFullColorImageProviderIfSupported;
  }

  else
  {
    v8 = _fullColorImageProvider_familyToImageNameComponentMapping;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = _fullColorImageProvider_typeToImageNameComponentMapping;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complicationType];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v10 && v13)
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v10, v13];
      NTKImageNamed(v14);
    }

    v15 = 0;
  }

  return v15;
}

void __60__NTKLauncherComplicationDataSource__fullColorImageProvider__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_284185758;
  v7[1] = &unk_284185740;
  v8[0] = @"SignatureCircular";
  v8[1] = @"SignatureCircular";
  v7[2] = &unk_284185728;
  v7[3] = &unk_284185770;
  v8[2] = @"SignatureCorner";
  v8[3] = @"SignatureXL";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v1 = _fullColorImageProvider_familyToImageNameComponentMapping;
  _fullColorImageProvider_familyToImageNameComponentMapping = v0;

  v5[0] = &unk_2841857B8;
  v5[1] = &unk_2841857D0;
  v6[0] = @"Remote";
  v6[1] = @"Phone";
  v5[2] = &unk_2841857E8;
  v5[3] = &unk_284185788;
  v6[2] = @"Maps";
  v6[3] = @"Mail";
  v5[4] = &unk_284185890;
  v5[5] = &unk_2841857A0;
  v6[4] = @"Home";
  v6[5] = @"TinCan";
  v5[6] = &unk_2841858C0;
  v6[6] = @"ECG";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v3 = _fullColorImageProvider_typeToImageNameComponentMapping;
  _fullColorImageProvider_typeToImageNameComponentMapping = v2;

  v4 = _fullColorImageProvider_useAppTintColorList;
  _fullColorImageProvider_useAppTintColorList = &unk_28418B770;
}

- (id)_appTintColor
{
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  systemGreenColor = 0;
  if (complicationType <= 26)
  {
    if (complicationType != 21)
    {
      if (complicationType == 24)
      {
        systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
        goto LABEL_15;
      }

      if (complicationType != 25)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

  if (complicationType <= 32)
  {
    if (complicationType != 27)
    {
      if (complicationType == 28)
      {
        systemGreenColor = [MEMORY[0x277D75348] systemOrangeColor];
      }

      goto LABEL_15;
    }

LABEL_9:
    systemGreenColor = [MEMORY[0x277D75348] systemBlueColor];
    goto LABEL_15;
  }

  if (complicationType == 33)
  {
    systemGreenColor = [(NTKLauncherComplicationDataSource *)self _tinCanAppTintColor];
  }

  else if (complicationType == 46)
  {
    systemGreenColor = [MEMORY[0x277D75348] systemPinkColor];
  }

LABEL_15:

  return systemGreenColor;
}

- (id)_appBackgroundColor
{
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  if (complicationType > 26)
  {
    if (complicationType > 32)
    {
      if (complicationType == 33)
      {
        _appTintColor = [(NTKLauncherComplicationDataSource *)self _appTintColor];
        v6 = _appTintColor;
        v7 = 0.14;
        goto LABEL_13;
      }

      if (complicationType != 46)
      {
        goto LABEL_9;
      }
    }

    else if (complicationType != 27)
    {
      if (complicationType == 28)
      {
        _appTintColor = [(NTKLauncherComplicationDataSource *)self _appTintColor];
        v6 = _appTintColor;
        v7 = 0.18;
LABEL_13:
        v8 = [_appTintColor colorWithAlphaComponent:v7];

        goto LABEL_16;
      }

LABEL_9:
      CLKUIDefaultComplicationBackgroundColor();
    }

LABEL_12:
    _appTintColor = [(NTKLauncherComplicationDataSource *)self _appTintColor];
    v6 = _appTintColor;
    v7 = 0.2;
    goto LABEL_13;
  }

  if (complicationType == 21)
  {
    goto LABEL_12;
  }

  if (complicationType != 24)
  {
    if (complicationType != 25)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v8 = [MEMORY[0x277D75348] colorWithRed:0.025 green:0.65 blue:0.35 alpha:0.2];
LABEL_16:

  return v8;
}

- (id)_complicationApplicationIdentifier
{
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  v4 = @"com.apple.tincan";
  v5 = @"com.apple.NanoHeartRhythm";
  if (complicationType != 46)
  {
    v5 = 0;
  }

  if (complicationType != 33)
  {
    v4 = v5;
  }

  v6 = @"com.apple.NanoHome";
  if (complicationType != 28)
  {
    v6 = 0;
  }

  if (complicationType == 27)
  {
    v6 = @"com.apple.NanoMail";
  }

  if (complicationType <= 32)
  {
    v4 = v6;
  }

  v7 = @"com.apple.NanoPhone";
  v8 = @"com.apple.NanoMaps";
  if (complicationType != 25)
  {
    v8 = 0;
  }

  if (complicationType != 24)
  {
    v7 = v8;
  }

  v9 = @"com.apple.NanoRemote";
  if (complicationType != 21)
  {
    v9 = 0;
  }

  if (complicationType == 20)
  {
    v9 = @"com.apple.NanoReminders";
  }

  if (complicationType <= 23)
  {
    v7 = v9;
  }

  if (complicationType <= 26)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

- (id)_complicationLaunchURL
{
  complication = [(CLKCComplicationDataSource *)self complication];
  complicationType = [complication complicationType];

  if (complicationType == 46)
  {
    v5 = @"NanoHeartRhythm://start?source=complication";
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    complicationApplicationIdentifier = [(NTKLauncherComplicationDataSource *)self complicationApplicationIdentifier];
    v5 = [v6 stringWithFormat:@"%@://", complicationApplicationIdentifier];
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v5];

  return v8;
}

- (id)_tinCanAppTintColor
{
  if (_tinCanAppTintColor_onceToken != -1)
  {
    [NTKLauncherComplicationDataSource _tinCanAppTintColor];
  }

  v3 = _tinCanAppTintColor_tinCanAppTintColor;

  return v3;
}

void __56__NTKLauncherComplicationDataSource__tinCanAppTintColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.968627451 green:0.988235294 blue:0.368627451 alpha:1.0];
  v1 = _tinCanAppTintColor_tinCanAppTintColor;
  _tinCanAppTintColor_tinCanAppTintColor = v0;
}

@end