@interface NTKWorldClockTimelineEntryModel
+ (id)_analogImageProvider;
+ (id)_fullColorGlobeImageProviderWithTintColor:(id)a3;
+ (id)_genericPrivacyRedactionTextProvider;
+ (id)_globeImageProvider;
+ (id)_uppercaseAppNameTextProvider;
- (double)_timeZoneOffset;
- (id)_abbreviationTextProvider;
- (id)_circularMediumTemplate;
- (id)_circularSmallTemplate;
- (id)_cityNameTextProvider;
- (id)_dayOffsetTextProvider;
- (id)_differenceTextProviderWithSize:(int64_t)a3 andCaps:(BOOL)a4;
- (id)_extraLargeTemplate;
- (id)_getSolarColorsForLocation:(id)a3 atDate:(id)a4;
- (id)_graphicBezelTemplate;
- (id)_graphicCircularMetadata;
- (id)_graphicCircularTemplate;
- (id)_graphicCornerTemplate;
- (id)_graphicExtraLargeCircularTemplate;
- (id)_graphicRectangularTemplate;
- (id)_largeInlineTemplate;
- (id)_largeModularTemplate;
- (id)_smallInlineTemplate;
- (id)_smallModularTemplate;
- (id)_solarGradientColors;
- (id)_timeAndAbbreviationTextProvider;
- (id)_timeAndCityNameOffsetTextProvider;
- (id)_timeAndDayOffsetTextProvider;
- (id)_timeAndDifferenceOffsetTextProvider;
- (id)_timeCityNameTimeZoneOffsetTextProvider;
- (id)_timeTextProvider;
- (id)_timeZone;
- (id)templateForComplicationFamily:(int64_t)a3;
- (void)_graphicRectangularTemplate;
@end

@implementation NTKWorldClockTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  v5 = 0;
  v6 = 1;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v7 = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularTemplate];
          break;
        case 11:
          v5 = [(NTKWorldClockTimelineEntryModel *)self _graphicRectangularTemplate];
          v6 = 0;
          goto LABEL_28;
        case 12:
          v7 = [(NTKWorldClockTimelineEntryModel *)self _graphicExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (a3 == 7)
    {
      v7 = [(NTKWorldClockTimelineEntryModel *)self _extraLargeTemplate];
    }

    else
    {
      if (a3 == 8)
      {
        [(NTKWorldClockTimelineEntryModel *)self _graphicCornerTemplate];
      }

      else
      {
        [(NTKWorldClockTimelineEntryModel *)self _graphicBezelTemplate];
      }
      v7 = ;
    }

LABEL_27:
    v5 = v7;
    goto LABEL_28;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v7 = [(NTKWorldClockTimelineEntryModel *)self _largeInlineTemplate];
      goto LABEL_27;
    }

    if (a3 == 4)
    {
      v7 = [(NTKWorldClockTimelineEntryModel *)self _circularSmallTemplate];
      goto LABEL_27;
    }

    if (a3 != 6)
    {
      goto LABEL_28;
    }

LABEL_15:
    v7 = [(NTKWorldClockTimelineEntryModel *)self _smallInlineTemplate];
    goto LABEL_27;
  }

  switch(a3)
  {
    case 0:
      v7 = [(NTKWorldClockTimelineEntryModel *)self _smallModularTemplate];
      goto LABEL_27;
    case 1:
      v7 = [(NTKWorldClockTimelineEntryModel *)self _largeModularTemplate];
      goto LABEL_27;
    case 2:
      goto LABEL_15;
  }

LABEL_28:
  if (*MEMORY[0x277CBB668] == a3)
  {
    v8 = [(NTKWorldClockTimelineEntryModel *)self _circularMediumTemplate];

    v5 = v8;
  }

  if (v6)
  {
    v9 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [v5 setTintColor:v9];
  }

  return v5;
}

- (id)_graphicRectangularTemplate
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(NTKWorldClockTimelineEntryModel *)self _graphicRectangularTemplate];
  }

  if (self->_isPrivacy)
  {
    v4 = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v5 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [v4 setTintColor:v5];
  }

  else
  {
    v5 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    v6 = [MEMORY[0x277D75348] ntk_wc_sunYellowColor];
    [v5 setTintColor:v6];

    v7 = [(NTKWorldClockTimelineEntryModel *)self _timeAndDifferenceOffsetTextProvider];
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v7 setTintColor:v8];

    v9 = MEMORY[0x277CBBBA0];
    v10 = NTKClockFaceLocalizedString(@"WORLD_CLOCK_ABBREVIATION_TIME_OFFSET_FORMAT", @"%1$@ %2$@");
    v4 = [v9 textProviderWithFormat:v10, v5, v7];
  }

  v11 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
  if (self->_isPrivacy)
  {
    v31 = @"IsPrivacy";
    v32[0] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v11 setMetadata:v12];
  }

  else
  {
    v29[0] = @"Latitude";
    v13 = MEMORY[0x277CCABB0];
    v12 = [(NTKWorldClockTimelineEntryModel *)self city];
    v26 = [v12 alCity];
    [v26 latitude];
    v14 = [v13 numberWithFloat:?];
    v30[0] = v14;
    v29[1] = @"Longitude";
    v15 = MEMORY[0x277CCABB0];
    v16 = [(NTKWorldClockTimelineEntryModel *)self city];
    v17 = [v16 alCity];
    [v17 longitude];
    v18 = [v15 numberWithFloat:?];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v11 setMetadata:v19];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v20 = [MEMORY[0x277D75348] ntk_wc_defaultSolarGradientColors];
    v21 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(NTKWorldClockTimelineEntryModel *)v21 _graphicRectangularTemplate];
    }
  }

  else
  {
    v20 = [(NTKWorldClockTimelineEntryModel *)self _solarGradientColors];
  }

  v22 = [objc_alloc(MEMORY[0x277CBB710]) initWithGradientBackgroundColors:v20];
  v23 = [MEMORY[0x277CBB9B0] templateWithTextProvider:v4 imageProvider:v11];
  v27 = *MEMORY[0x277CBB6D8];
  v28 = &unk_2841855D8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [v23 setMetadata:v24];

  [v23 setUISensitivity:0];
  [v23 setBackgroundDescriptor:v22];

  return v23;
}

- (id)_smallInlineTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _globeImageProvider];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (self->_showIdealizedTime)
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _analogImageProvider];
    goto LABEL_5;
  }

  v2 = [(NTKWorldClockTimelineEntryModel *)self _timeAndAbbreviationTextProvider];
  v4 = 0;
LABEL_7:
  v5 = [MEMORY[0x277CBBA90] templateWithTextProvider:v2 imageProvider:v4];

  return v5;
}

- (id)_smallModularTemplate
{
  v3 = MEMORY[0x277CBBA70];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
  v5 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  v6 = [v3 templateWithLine1TextProvider:v4 line2TextProvider:v5];

  return v6;
}

- (id)_largeModularTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _cityNameTextProvider];
    v3 = [(NTKWorldClockTimelineEntryModel *)self _timeAndDayOffsetTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _differenceTextProvider];
  }
  v5 = ;
  v6 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v2 body1TextProvider:v3 body2TextProvider:v5];

  return v6;
}

- (id)_circularSmallTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB7A8] templateWithLine1TextProvider:v2 line2TextProvider:v4];

  return v5;
}

- (id)_circularMediumTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB760] templateWithLine1TextProvider:v2 line2TextProvider:v4];

  return v5;
}

- (id)_extraLargeTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB808] templateWithLine1TextProvider:v2 line2TextProvider:v4];

  return v5;
}

- (id)_largeInlineTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _globeImageProvider];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _timeAndCityNameOffsetTextProvider];
    v3 = 0;
  }

  v4 = [MEMORY[0x277CBBA80] templateWithTextProvider:v2 imageProvider:v3];

  return v4;
}

- (id)_graphicCornerTemplate
{
  if (self->_isPrivacy)
  {
    v2 = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [v2 setTintColor:v3];

    v4 = [MEMORY[0x277D75348] whiteColor];
    v5 = [NTKWorldClockTimelineEntryModel _fullColorGlobeImageProviderWithTintColor:v4];

    [MEMORY[0x277CBB908] templateWithTextProvider:v2 imageProvider:v5];
  }

  else
  {
    v2 = [(NTKWorldClockTimelineEntryModel *)self _timeAndDifferenceOffsetTextProvider];
    v7 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [v2 setTintColor:v7];

    v5 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [MEMORY[0x277CBB900] templateWithInnerTextProvider:v2 outerTextProvider:v5];
  }
  v8 = ;

  return v8;
}

- (id)_graphicCircularMetadata
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_city forKeyedSubscript:@"NTKWorldClockComplicationCityKey"];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  [v3 setObject:v4 forKeyedSubscript:@"NTKWorldClockComplicationTimeZoneKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKWorldClockTimelineEntryModel showIdealizedTime](self, "showIdealizedTime")}];
  [v3 setObject:v5 forKeyedSubscript:@"NTKWorldClockComplicationShowIdealizedTimeKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKWorldClockTimelineEntryModel isPrivacy](self, "isPrivacy")}];
  [v3 setObject:v6 forKeyedSubscript:@"NTKWorldClockComplicationIsPrivacyKey"];

  return v3;
}

- (id)_graphicCircularTemplate
{
  v2 = MEMORY[0x277CBB858];
  v3 = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularMetadata];
  v4 = [v2 templateWithMetadata:v3];

  return v4;
}

- (id)_graphicExtraLargeCircularTemplate
{
  v2 = MEMORY[0x277CBB940];
  v3 = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularMetadata];
  v4 = [v2 templateWithMetadata:v3];

  return v4;
}

- (id)_graphicBezelTemplate
{
  if (self->_isPrivacy)
  {
    +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
  }

  else
  {
    [(NTKWorldClockTimelineEntryModel *)self _timeCityNameTimeZoneOffsetTextProvider];
  }
  v3 = ;
  v4 = MEMORY[0x277CBB810];
  v5 = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularTemplate];
  v6 = [v4 templateWithCircularTemplate:v5 textProvider:v3];

  return v6;
}

+ (id)_genericPrivacyRedactionTextProvider
{
  v2 = NTKClockFaceLocalizedString(@"WORLDCLOCK_PRIVACY_REDACTION_TEXT", @"--");
  v3 = [MEMORY[0x277CBBB88] textProviderWithText:v2];

  return v3;
}

+ (id)_uppercaseAppNameTextProvider
{
  v2 = NTKClockFaceLocalizedString(@"WORLDCLOCK_TITLE", @"World Clock");
  v3 = [v2 localizedUppercaseString];

  v4 = [MEMORY[0x277CBBB88] textProviderWithText:v3];

  return v4;
}

- (id)_timeTextProvider
{
  v3 = MEMORY[0x277CBBAD0];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  v5 = [v3 textProviderWithTimeZone:v4];

  [v5 setDisallowBothMinutesAndDesignator:1];
  if (self->_showIdealizedTime)
  {
    v6 = NTKIdealizedDate();
    [v5 setOverrideDate:v6];
  }

  else
  {
    [v5 setOverrideDate:0];
  }

  return v5;
}

- (id)_dayOffsetTextProvider
{
  v2 = MEMORY[0x277CBBBD8];
  [(NTKWorldClockTimelineEntryModel *)self _timeZoneOffset];
  v3 = [v2 dayForOffset:?];
  v4 = [MEMORY[0x277CBBB88] textProviderWithText:v3];

  return v4;
}

- (id)_differenceTextProviderWithSize:(int64_t)a3 andCaps:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277CBBBD8];
  [(NTKWorldClockTimelineEntryModel *)self _timeZoneOffset];
  v7 = [v6 differenceForOffset:v4 caps:0 suppressZero:a3 size:?];
  v8 = [v7 string];

  v9 = [MEMORY[0x277CBBB88] textProviderWithText:v8];

  return v9;
}

- (id)_abbreviationTextProvider
{
  v2 = MEMORY[0x277CBBB88];
  v3 = NTKWorldClockCityAbbreviation(self->_city);
  v4 = [v2 textProviderWithText:v3];

  return v4;
}

- (id)_cityNameTextProvider
{
  v2 = MEMORY[0x277CBBB88];
  v3 = [(WorldClockCity *)self->_city name];
  v4 = [v2 textProviderWithText:v3];

  return v4;
}

- (id)_timeAndDayOffsetTextProvider
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [v3 setDisallowBothMinutesAndDesignator:0];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _dayOffsetTextProvider];
  v5 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)_timeAndAbbreviationTextProvider
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  v5 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)_timeAndCityNameOffsetTextProvider
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [v3 setDisallowBothMinutesAndDesignator:0];
  v4 = MEMORY[0x277CBBB88];
  v5 = [(WorldClockCity *)self->_city name];
  v6 = [v4 textProviderWithText:v5];

  v7 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v3, v6];

  return v7;
}

- (id)_timeCityNameTimeZoneOffsetTextProvider
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [v3 setDisallowBothMinutesAndDesignator:0];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _dayOffsetTextProvider];
  v5 = [(NTKWorldClockTimelineEntryModel *)self _differenceTextProvider];
  v6 = NTKClockFaceLocalizedString(@"WORLD_CLOCK_BEZEL_TEXT_FORMAT", @"%1$@ %2$@ • %3$@");
  v7 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v6, v3, v4, v5];

  return v7;
}

- (id)_timeAndDifferenceOffsetTextProvider
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [v3 setDisallowBothMinutesAndDesignator:0];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _differenceTextProviderWithSize:0 andCaps:1];
  v5 = [v4 text];
  v6 = [v5 lowercaseString];

  v7 = [MEMORY[0x277CBBB88] textProviderWithText:v6];
  [v7 setUseLowercaseSmallCaps:1];

  v8 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@, %@", v3, v7];

  return v8;
}

- (id)_timeZone
{
  v2 = MEMORY[0x277CBEBB0];
  v3 = [(WorldClockCity *)self->_city timeZone];
  v4 = [v2 timeZoneWithName:v3];

  return v4;
}

- (double)_timeZoneOffset
{
  v2 = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  v3 = [v2 secondsFromGMT];
  v4 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v5 = (v3 - [v4 secondsFromGMT]);

  return v5;
}

+ (id)_analogImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __55__NTKWorldClockTimelineEntryModel__analogImageProvider__block_invoke(v3, v3);

  v4 = _analogImageProvider_imageProvider;

  return v4;
}

uint64_t __55__NTKWorldClockTimelineEntryModel__analogImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_61);
  if (_block_invoke___cachedDevice_61)
  {
    v3 = _block_invoke___cachedDevice_61 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_61))
  {
    v5 = _block_invoke_value_44;
  }

  else
  {
    _block_invoke___cachedDevice_61 = v2;
    _block_invoke___previousCLKDeviceVersion_61 = [v2 version];
    __55__NTKWorldClockTimelineEntryModel__analogImageProvider__block_invoke_3();
    v5 = 1;
    _block_invoke_value_44 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_61);

  return v5;
}

void __55__NTKWorldClockTimelineEntryModel__analogImageProvider__block_invoke_3()
{
  v0 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"globe"];
  v1 = _analogImageProvider_imageProvider;
  _analogImageProvider_imageProvider = v0;

  v2 = _analogImageProvider_imageProvider;
  v3 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
  [v2 setTintColor:v3];
}

+ (id)_globeImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __54__NTKWorldClockTimelineEntryModel__globeImageProvider__block_invoke(v3, v3);

  v4 = _globeImageProvider_imageProvider;

  return v4;
}

uint64_t __54__NTKWorldClockTimelineEntryModel__globeImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_9);
  if (_block_invoke_2___cachedDevice_9)
  {
    v3 = _block_invoke_2___cachedDevice_9 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion_9))
  {
    v5 = _block_invoke_2_value_7;
  }

  else
  {
    _block_invoke_2___cachedDevice_9 = v2;
    _block_invoke_2___previousCLKDeviceVersion_9 = [v2 version];
    __54__NTKWorldClockTimelineEntryModel__globeImageProvider__block_invoke_3();
    v5 = 1;
    _block_invoke_2_value_7 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock_9);

  return v5;
}

void __54__NTKWorldClockTimelineEntryModel__globeImageProvider__block_invoke_3()
{
  v0 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"globe"];
  v1 = _globeImageProvider_imageProvider;
  _globeImageProvider_imageProvider = v0;

  v2 = _globeImageProvider_imageProvider;
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  [v2 setTintColor:v3];
}

+ (id)_fullColorGlobeImageProviderWithTintColor:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = a3;
  v5 = [v3 systemImageNamed:@"globe"];
  v6 = [v5 imageWithRenderingMode:2];

  v7 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v6 monochromeFilterType:1 applyScalingAndCircularMasking:0];
  [v7 setTintColor:v4];

  return v7;
}

- (id)_solarGradientColors
{
  v3 = [(NTKWorldClockTimelineEntryModel *)self city];
  v4 = [v3 alCity];
  if (v4)
  {
    v5 = v4;
    v6 = [(NTKTimelineEntryModel *)self entryDate];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277CE41F8]);
      v8 = [(NTKWorldClockTimelineEntryModel *)self city];
      v9 = [v8 alCity];
      [v9 latitude];
      v11 = v10;
      v12 = [(NTKWorldClockTimelineEntryModel *)self city];
      v13 = [v12 alCity];
      [v13 longitude];
      v15 = [v7 initWithLatitude:v11 longitude:v14];

      v16 = [(NTKTimelineEntryModel *)self entryDate];
      v17 = [(NTKWorldClockTimelineEntryModel *)self _getSolarColorsForLocation:v15 atDate:v16];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = [MEMORY[0x277D75348] ntk_wc_defaultSolarGradientColors];
LABEL_6:

  return v17;
}

- (id)_getSolarColorsForLocation:(id)a3 atDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:v5];
  v8 = v7;
  v9 = [NTKSiderealDataSource siderealDataForLocation:v6 atDate:v5 useXR:1];

  *&v10 = v8;
  v11 = [v9 gradientWithSunsetFilterForDayProgress:v10];

  return v11;
}

- (void)_graphicRectangularTemplate
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = NTKWorldClockCityAbbreviation(*(a1 + 24));
  v5 = [*(a1 + 24) unlocalizedCityName];
  v6 = [*(a1 + 24) alCity];
  [v6 latitude];
  v8 = v7;
  v9 = [*(a1 + 24) alCity];
  [v9 longitude];
  v11 = 138544130;
  v12 = v4;
  v13 = 2114;
  v14 = v5;
  v15 = 2048;
  v16 = v8;
  v17 = 2048;
  v18 = v10;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "[World Clock] Building graphic rectangular template for %{public}@: %{public}@ <%f, %f>.", &v11, 0x2Au);
}

@end