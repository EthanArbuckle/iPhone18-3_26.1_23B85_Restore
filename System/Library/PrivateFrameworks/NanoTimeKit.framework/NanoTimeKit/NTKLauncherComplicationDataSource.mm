@interface NTKLauncherComplicationDataSource
+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5;
- (id)_appBackgroundColor;
- (id)_appTintColor;
- (id)_appTitle;
- (id)_circularTemplateMedium:(BOOL)a3;
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
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation NTKLauncherComplicationDataSource

+ (BOOL)acceptsComplicationType:(unint64_t)a3 withFamily:(int64_t)a4 forDevice:(id)a5
{
  v7 = a5;
  if ([NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:a3 forDevice:v7])
  {
    goto LABEL_2;
  }

  if (a3 > 0x2E)
  {
    goto LABEL_12;
  }

  if (((1 << a3) & 0x1B200000) != 0)
  {
    if ((a4 - 8) <= 2)
    {
      v8 = [v7 pdrDeviceVersion] > 0x50100;
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (a3 != 33)
  {
    if (a3 == 46)
    {
      if (a4 <= 0xA && ((1 << a4) & 0x715) != 0 || (*MEMORY[0x277CBB668] != a4 ? (v14 = a4 == 12) : (v14 = 1), !v14 ? (v15 = a4 == 7) : (v15 = 1), v15))
      {
        v8 = [v7 isEcgPhoneComplicationEnabled];
        goto LABEL_27;
      }

      goto LABEL_2;
    }

LABEL_12:
    if (a3 != 20)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_27;
    }

LABEL_13:
    if (a4 > 4 || ((1 << a4) & 0x15) == 0)
    {
      v8 = a4 == 7 || *MEMORY[0x277CBB668] == a4 || a4 == 12;
      goto LABEL_27;
    }

LABEL_26:
    v8 = 1;
    goto LABEL_27;
  }

  if (a4 <= 4 && ((1 << a4) & 0x15) != 0)
  {
    goto LABEL_26;
  }

  v8 = *MEMORY[0x277CBB668] == a4 || a4 == 12 || (a4 - 7) < 4;
LABEL_27:

  return v8;
}

- (id)currentSwitcherTemplate
{
  v2 = [(NTKLauncherComplicationDataSource *)self _currentTimelineEntry];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKLauncherComplicationDataSource *)self _currentTimelineEntry];
  (*(a3 + 2))(v5, v6);
}

- (id)_currentTimelineEntry
{
  v3 = objc_alloc_init(MEMORY[0x277CBBAC8]);
  v4 = [(CLKCComplicationDataSource *)self family];
  if (v4 == 104)
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277CBB668])
  {
    v6 = self;
    v7 = 1;
LABEL_5:
    v5 = [(NTKLauncherComplicationDataSource *)v6 _circularTemplateMedium:v7];
    goto LABEL_6;
  }

  v8 = 0;
  if (v4 <= 5)
  {
    if (v4 <= 1)
    {
      if (!v4)
      {
        v5 = [(NTKLauncherComplicationDataSource *)self _modularSmallTemplate];
        goto LABEL_6;
      }

      if (v4 == 1)
      {
        v5 = [(NTKLauncherComplicationDataSource *)self _modularLargeTemplate];
        goto LABEL_6;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
LABEL_30:
          v5 = [(NTKLauncherComplicationDataSource *)self _utilitarianSmallTemplate];
          goto LABEL_6;
        case 3:
LABEL_2:
          v5 = [(NTKLauncherComplicationDataSource *)self _utilitarianLargeTemplate];
LABEL_6:
          v8 = v5;
          break;
        case 4:
          v6 = self;
          v7 = 0;
          goto LABEL_5;
      }
    }
  }

  else
  {
    if (v4 <= 8)
    {
      if (v4 != 6)
      {
        if (v4 == 7)
        {
          [(NTKLauncherComplicationDataSource *)self _extraLarge];
        }

        else
        {
          [(NTKLauncherComplicationDataSource *)self _signatureCornerTemplate];
        }
        v5 = ;
        goto LABEL_6;
      }

      goto LABEL_30;
    }

    switch(v4)
    {
      case 9:
        v5 = [(NTKLauncherComplicationDataSource *)self _signatureBezelTemplate];
        goto LABEL_6;
      case 10:
        v5 = [(NTKLauncherComplicationDataSource *)self _signatureCircularTemplate];
        goto LABEL_6;
      case 12:
        v5 = [(NTKLauncherComplicationDataSource *)self _graphicExtraLargeTemplate];
        goto LABEL_6;
    }
  }

  v9 = [(NTKLauncherComplicationDataSource *)self _appTintColor];
  [v8 setTintColor:v9];

  if (v8)
  {
    [v3 setComplicationTemplate:v8];
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  [v3 setDate:v10];

  [v3 finalize];

  return v3;
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = [(NTKLauncherComplicationDataSource *)self _complicationLaunchURL];
  (*(a5 + 2))(v7, v8);
}

- (id)_modularSmallTemplate
{
  v3 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBA50] templateWithImageProvider:v3];
  }

  else
  {
    v5 = MEMORY[0x277CBBA60];
    v6 = MEMORY[0x277CBBB88];
    v7 = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v8 = [v6 textProviderWithText:v7];
    v4 = [v5 templateWithTextProvider:v8];
  }

  return v4;
}

- (id)_modularLargeTemplate
{
  v3 = MEMORY[0x277CBBA08];
  v4 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  v5 = MEMORY[0x277CBBB88];
  v6 = [(NTKLauncherComplicationDataSource *)self _appTitle];
  v7 = [v5 textProviderWithText:v6];
  v8 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
  v9 = [v3 templateWithHeaderImageProvider:v4 headerTextProvider:v7 body1TextProvider:v8];

  return v9;
}

- (id)_utilitarianSmallTemplate
{
  v3 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBAC0] templateWithImageProvider:v3];
  }

  else
  {
    v5 = MEMORY[0x277CBBA90];
    v6 = MEMORY[0x277CBBB88];
    v7 = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v8 = [v6 textProviderWithText:v7];
    v4 = [v5 templateWithTextProvider:v8];
  }

  return v4;
}

- (id)_utilitarianLargeTemplate
{
  v3 = MEMORY[0x277CBBA80];
  v4 = MEMORY[0x277CBBB88];
  v5 = [(NTKLauncherComplicationDataSource *)self _appTitle];
  v6 = [v4 textProviderWithText:v5];
  v7 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  v8 = [v3 templateWithTextProvider:v6 imageProvider:v7];

  return v8;
}

- (id)_circularTemplateMedium:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (v5)
  {
    if (v3)
    {
      v6 = MEMORY[0x277CBB748];
    }

    else
    {
      v6 = MEMORY[0x277CBB790];
    }

    v11 = [v6 templateWithImageProvider:v5];
  }

  else
  {
    v7 = MEMORY[0x277CBBB88];
    v8 = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v9 = [v7 textProviderWithText:v8];

    v10 = 0x277CBB750;
    if (!v3)
    {
      v10 = 0x277CBB798;
    }

    v11 = [*v10 templateWithTextProvider:v9];
  }

  return v11;
}

- (id)_extraLarge
{
  v3 = [(NTKLauncherComplicationDataSource *)self _tintableAppImageProvider];
  if (v3)
  {
    v4 = [MEMORY[0x277CBB7F0] templateWithImageProvider:v3];
  }

  else
  {
    v5 = MEMORY[0x277CBBB88];
    v6 = [(NTKLauncherComplicationDataSource *)self _appTitle];
    v7 = [v5 textProviderWithText:v6];

    v4 = [MEMORY[0x277CBB7F8] templateWithTextProvider:v7];
  }

  return v4;
}

- (id)_signatureCornerTemplate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBB8B8];
  v3 = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

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
  v3 = [(NTKLauncherComplicationDataSource *)self _signatureCircularTemplate];
  v4 = [v2 templateWithCircularTemplate:v3];

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
  v3 = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

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
  v3 = [(NTKLauncherComplicationDataSource *)self _fullColorImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

  v7 = *MEMORY[0x277CBB6E8];
  v8[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 setMetadata:v5];

  return v4;
}

- (id)_appTitle
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  v4 = [(NTKLauncherComplicationDataSource *)self _complicationApplicationIdentifier];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

  v6 = [v5 localizedName];

  return v6;
}

- (id)_symbolSizeforMapsApp
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __58__NTKLauncherComplicationDataSource__symbolSizeforMapsApp__block_invoke(v3, v3);

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
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __58__NTKLauncherComplicationDataSource__symbolSizeforMailApp__block_invoke(v3, v3);

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
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = __60__NTKLauncherComplicationDataSource__symbolSizeforTinCanApp__block_invoke(v3, v3);

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
  v3 = [(CLKCComplicationDataSource *)self complication];
  v4 = [v3 complicationType];

  switch(v4)
  {
    case 33:
      v5 = [(NTKLauncherComplicationDataSource *)self _symbolSizeforTinCanApp];
      break;
    case 27:
      v5 = [(NTKLauncherComplicationDataSource *)self _symbolSizeforMailApp];
      break;
    case 25:
      v5 = [(NTKLauncherComplicationDataSource *)self _symbolSizeforMapsApp];
      break;
    default:
      v5 = 0;
      break;
  }

  return v5;
}

- (id)_symbolName
{
  if (_symbolName_onceToken != -1)
  {
    [NTKLauncherComplicationDataSource _symbolName];
  }

  v3 = _symbolName_typeToSymbolNameComponentMapping;
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CLKCComplicationDataSource *)self complication];
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(v5, "complicationType")}];
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
  v3 = [(NTKLauncherComplicationDataSource *)self _symbolName];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB98] _symbolImageProviderWithSystemName:v3];
    v5 = [(NTKLauncherComplicationDataSource *)self _symbolSize];
    if (v5)
    {
      [v4 setOverridePointSize:v5];
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
  v3 = [(NTKLauncherComplicationDataSource *)self _symbolName];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:v3];
    v5 = [(NTKLauncherComplicationDataSource *)self _symbolSize];
    if (v5)
    {
      [v4 setOverridePointSize:v5];
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

  v3 = [(NTKLauncherComplicationDataSource *)self _symbolAppImageProviderIfSupported];
  v4 = [MEMORY[0x277CBBAE8] currentDevice];
  [v4 pdrDeviceVersion];
  IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();

  if (v3 && (IsGreaterThanOrEqual & 1) != 0)
  {
    v3 = v3;
    v15 = v3;
  }

  else
  {
    v6 = [(CLKCComplicationDataSource *)self complication];
    v7 = [v6 complicationType];

    v8 = _tintableAppImageProvider_familyToImageNameComponentMapping;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = _tintableAppImageProvider_typeToImageNameComponentMapping;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
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

  v3 = [(NTKLauncherComplicationDataSource *)self _symbolAppFullColorImageProviderIfSupported];
  v4 = [(CLKCComplicationDataSource *)self complication];
  v5 = [v4 complicationType];

  v6 = [MEMORY[0x277CBBAE8] currentDevice];
  [v6 pdrDeviceVersion];
  IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();

  if (v3 && (IsGreaterThanOrEqual & 1) != 0)
  {
    v16 = _fullColorImageProvider_useAppTintColorList;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    LODWORD(v16) = [v16 containsObject:v17];

    if (v16)
    {
      v18 = [(NTKLauncherComplicationDataSource *)self _appTintColor];
      [v3 setTintColor:v18];
    }

    v3 = v3;
    v15 = v3;
  }

  else
  {
    v8 = _fullColorImageProvider_familyToImageNameComponentMapping;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CLKCComplicationDataSource family](self, "family")}];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = _fullColorImageProvider_typeToImageNameComponentMapping;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
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
  v3 = [(CLKCComplicationDataSource *)self complication];
  v4 = [v3 complicationType];

  v5 = 0;
  if (v4 <= 26)
  {
    if (v4 != 21)
    {
      if (v4 == 24)
      {
        v5 = [MEMORY[0x277D75348] systemGreenColor];
        goto LABEL_15;
      }

      if (v4 != 25)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

  if (v4 <= 32)
  {
    if (v4 != 27)
    {
      if (v4 == 28)
      {
        v5 = [MEMORY[0x277D75348] systemOrangeColor];
      }

      goto LABEL_15;
    }

LABEL_9:
    v5 = [MEMORY[0x277D75348] systemBlueColor];
    goto LABEL_15;
  }

  if (v4 == 33)
  {
    v5 = [(NTKLauncherComplicationDataSource *)self _tinCanAppTintColor];
  }

  else if (v4 == 46)
  {
    v5 = [MEMORY[0x277D75348] systemPinkColor];
  }

LABEL_15:

  return v5;
}

- (id)_appBackgroundColor
{
  v3 = [(CLKCComplicationDataSource *)self complication];
  v4 = [v3 complicationType];

  if (v4 > 26)
  {
    if (v4 > 32)
    {
      if (v4 == 33)
      {
        v5 = [(NTKLauncherComplicationDataSource *)self _appTintColor];
        v6 = v5;
        v7 = 0.14;
        goto LABEL_13;
      }

      if (v4 != 46)
      {
        goto LABEL_9;
      }
    }

    else if (v4 != 27)
    {
      if (v4 == 28)
      {
        v5 = [(NTKLauncherComplicationDataSource *)self _appTintColor];
        v6 = v5;
        v7 = 0.18;
LABEL_13:
        v8 = [v5 colorWithAlphaComponent:v7];

        goto LABEL_16;
      }

LABEL_9:
      CLKUIDefaultComplicationBackgroundColor();
    }

LABEL_12:
    v5 = [(NTKLauncherComplicationDataSource *)self _appTintColor];
    v6 = v5;
    v7 = 0.2;
    goto LABEL_13;
  }

  if (v4 == 21)
  {
    goto LABEL_12;
  }

  if (v4 != 24)
  {
    if (v4 != 25)
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
  v2 = [(CLKCComplicationDataSource *)self complication];
  v3 = [v2 complicationType];

  v4 = @"com.apple.tincan";
  v5 = @"com.apple.NanoHeartRhythm";
  if (v3 != 46)
  {
    v5 = 0;
  }

  if (v3 != 33)
  {
    v4 = v5;
  }

  v6 = @"com.apple.NanoHome";
  if (v3 != 28)
  {
    v6 = 0;
  }

  if (v3 == 27)
  {
    v6 = @"com.apple.NanoMail";
  }

  if (v3 <= 32)
  {
    v4 = v6;
  }

  v7 = @"com.apple.NanoPhone";
  v8 = @"com.apple.NanoMaps";
  if (v3 != 25)
  {
    v8 = 0;
  }

  if (v3 != 24)
  {
    v7 = v8;
  }

  v9 = @"com.apple.NanoRemote";
  if (v3 != 21)
  {
    v9 = 0;
  }

  if (v3 == 20)
  {
    v9 = @"com.apple.NanoReminders";
  }

  if (v3 <= 23)
  {
    v7 = v9;
  }

  if (v3 <= 26)
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
  v3 = [(CLKCComplicationDataSource *)self complication];
  v4 = [v3 complicationType];

  if (v4 == 46)
  {
    v5 = @"NanoHeartRhythm://start?source=complication";
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(NTKLauncherComplicationDataSource *)self complicationApplicationIdentifier];
    v5 = [v6 stringWithFormat:@"%@://", v7];
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