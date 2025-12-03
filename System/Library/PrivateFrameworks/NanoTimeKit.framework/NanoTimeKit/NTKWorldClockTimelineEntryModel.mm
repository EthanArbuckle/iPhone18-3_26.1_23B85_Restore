@interface NTKWorldClockTimelineEntryModel
+ (id)_analogImageProvider;
+ (id)_fullColorGlobeImageProviderWithTintColor:(id)color;
+ (id)_genericPrivacyRedactionTextProvider;
+ (id)_globeImageProvider;
+ (id)_uppercaseAppNameTextProvider;
- (double)_timeZoneOffset;
- (id)_abbreviationTextProvider;
- (id)_circularMediumTemplate;
- (id)_circularSmallTemplate;
- (id)_cityNameTextProvider;
- (id)_dayOffsetTextProvider;
- (id)_differenceTextProviderWithSize:(int64_t)size andCaps:(BOOL)caps;
- (id)_extraLargeTemplate;
- (id)_getSolarColorsForLocation:(id)location atDate:(id)date;
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
- (id)templateForComplicationFamily:(int64_t)family;
- (void)_graphicRectangularTemplate;
@end

@implementation NTKWorldClockTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)family
{
  _graphicRectangularTemplate = 0;
  v6 = 1;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularTemplate];
          break;
        case 11:
          _graphicRectangularTemplate = [(NTKWorldClockTimelineEntryModel *)self _graphicRectangularTemplate];
          v6 = 0;
          goto LABEL_28;
        case 12:
          _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _graphicExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (family == 7)
    {
      _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _extraLargeTemplate];
    }

    else
    {
      if (family == 8)
      {
        [(NTKWorldClockTimelineEntryModel *)self _graphicCornerTemplate];
      }

      else
      {
        [(NTKWorldClockTimelineEntryModel *)self _graphicBezelTemplate];
      }
      _graphicCircularTemplate = ;
    }

LABEL_27:
    _graphicRectangularTemplate = _graphicCircularTemplate;
    goto LABEL_28;
  }

  if (family > 2)
  {
    if (family == 3)
    {
      _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _largeInlineTemplate];
      goto LABEL_27;
    }

    if (family == 4)
    {
      _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _circularSmallTemplate];
      goto LABEL_27;
    }

    if (family != 6)
    {
      goto LABEL_28;
    }

LABEL_15:
    _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _smallInlineTemplate];
    goto LABEL_27;
  }

  switch(family)
  {
    case 0:
      _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _smallModularTemplate];
      goto LABEL_27;
    case 1:
      _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _largeModularTemplate];
      goto LABEL_27;
    case 2:
      goto LABEL_15;
  }

LABEL_28:
  if (*MEMORY[0x277CBB668] == family)
  {
    _circularMediumTemplate = [(NTKWorldClockTimelineEntryModel *)self _circularMediumTemplate];

    _graphicRectangularTemplate = _circularMediumTemplate;
  }

  if (v6)
  {
    v9 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [_graphicRectangularTemplate setTintColor:v9];
  }

  return _graphicRectangularTemplate;
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
    _abbreviationTextProvider = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [v4 setTintColor:_abbreviationTextProvider];
  }

  else
  {
    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    ntk_wc_sunYellowColor = [MEMORY[0x277D75348] ntk_wc_sunYellowColor];
    [_abbreviationTextProvider setTintColor:ntk_wc_sunYellowColor];

    _timeAndDifferenceOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeAndDifferenceOffsetTextProvider];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [_timeAndDifferenceOffsetTextProvider setTintColor:whiteColor];

    v9 = MEMORY[0x277CBBBA0];
    v10 = NTKClockFaceLocalizedString(@"WORLD_CLOCK_ABBREVIATION_TIME_OFFSET_FORMAT", @"%1$@ %2$@");
    v4 = [v9 textProviderWithFormat:v10, _abbreviationTextProvider, _timeAndDifferenceOffsetTextProvider];
  }

  v11 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
  if (self->_isPrivacy)
  {
    v31 = @"IsPrivacy";
    v32[0] = MEMORY[0x277CBEC38];
    city = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    [v11 setMetadata:city];
  }

  else
  {
    v29[0] = @"Latitude";
    v13 = MEMORY[0x277CCABB0];
    city = [(NTKWorldClockTimelineEntryModel *)self city];
    alCity = [city alCity];
    [alCity latitude];
    v14 = [v13 numberWithFloat:?];
    v30[0] = v14;
    v29[1] = @"Longitude";
    v15 = MEMORY[0x277CCABB0];
    city2 = [(NTKWorldClockTimelineEntryModel *)self city];
    alCity2 = [city2 alCity];
    [alCity2 longitude];
    v18 = [v15 numberWithFloat:?];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v11 setMetadata:v19];
  }

  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    ntk_wc_defaultSolarGradientColors = [MEMORY[0x277D75348] ntk_wc_defaultSolarGradientColors];
    v21 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [(NTKWorldClockTimelineEntryModel *)v21 _graphicRectangularTemplate];
    }
  }

  else
  {
    ntk_wc_defaultSolarGradientColors = [(NTKWorldClockTimelineEntryModel *)self _solarGradientColors];
  }

  v22 = [objc_alloc(MEMORY[0x277CBB710]) initWithGradientBackgroundColors:ntk_wc_defaultSolarGradientColors];
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
    _abbreviationTextProvider = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _globeImageProvider];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (self->_showIdealizedTime)
  {
    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _analogImageProvider];
    goto LABEL_5;
  }

  _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeAndAbbreviationTextProvider];
  v4 = 0;
LABEL_7:
  v5 = [MEMORY[0x277CBBA90] templateWithTextProvider:_abbreviationTextProvider imageProvider:v4];

  return v5;
}

- (id)_smallModularTemplate
{
  v3 = MEMORY[0x277CBBA70];
  _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  v6 = [v3 templateWithLine1TextProvider:_abbreviationTextProvider line2TextProvider:_timeTextProvider];

  return v6;
}

- (id)_largeModularTemplate
{
  if (self->_isPrivacy)
  {
    _cityNameTextProvider = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    _timeAndDayOffsetTextProvider = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    _cityNameTextProvider = [(NTKWorldClockTimelineEntryModel *)self _cityNameTextProvider];
    _timeAndDayOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeAndDayOffsetTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _differenceTextProvider];
  }
  v5 = ;
  v6 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:_cityNameTextProvider body1TextProvider:_timeAndDayOffsetTextProvider body2TextProvider:v5];

  return v6;
}

- (id)_circularSmallTemplate
{
  if (self->_isPrivacy)
  {
    _abbreviationTextProvider = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB7A8] templateWithLine1TextProvider:_abbreviationTextProvider line2TextProvider:v4];

  return v5;
}

- (id)_circularMediumTemplate
{
  if (self->_isPrivacy)
  {
    _abbreviationTextProvider = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB760] templateWithLine1TextProvider:_abbreviationTextProvider line2TextProvider:v4];

  return v5;
}

- (id)_extraLargeTemplate
{
  if (self->_isPrivacy)
  {
    _abbreviationTextProvider = +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
    +[NTKWorldClockTimelineEntryModel _genericPrivacyRedactionTextProvider];
  }

  else
  {
    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  }
  v4 = ;
  v5 = [MEMORY[0x277CBB808] templateWithLine1TextProvider:_abbreviationTextProvider line2TextProvider:v4];

  return v5;
}

- (id)_largeInlineTemplate
{
  if (self->_isPrivacy)
  {
    _timeAndCityNameOffsetTextProvider = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _globeImageProvider];
  }

  else
  {
    _timeAndCityNameOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeAndCityNameOffsetTextProvider];
    v3 = 0;
  }

  v4 = [MEMORY[0x277CBBA80] templateWithTextProvider:_timeAndCityNameOffsetTextProvider imageProvider:v3];

  return v4;
}

- (id)_graphicCornerTemplate
{
  if (self->_isPrivacy)
  {
    _timeAndDifferenceOffsetTextProvider = +[NTKWorldClockTimelineEntryModel _uppercaseAppNameTextProvider];
    v3 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [_timeAndDifferenceOffsetTextProvider setTintColor:v3];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    _abbreviationTextProvider = [NTKWorldClockTimelineEntryModel _fullColorGlobeImageProviderWithTintColor:whiteColor];

    [MEMORY[0x277CBB908] templateWithTextProvider:_timeAndDifferenceOffsetTextProvider imageProvider:_abbreviationTextProvider];
  }

  else
  {
    _timeAndDifferenceOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeAndDifferenceOffsetTextProvider];
    v7 = +[NTKWorldClockTimelineEntryModel _appPrimaryColor];
    [_timeAndDifferenceOffsetTextProvider setTintColor:v7];

    _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
    [MEMORY[0x277CBB900] templateWithInnerTextProvider:_timeAndDifferenceOffsetTextProvider outerTextProvider:_abbreviationTextProvider];
  }
  v8 = ;

  return v8;
}

- (id)_graphicCircularMetadata
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_city forKeyedSubscript:@"NTKWorldClockComplicationCityKey"];
  _timeZone = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  [dictionary setObject:_timeZone forKeyedSubscript:@"NTKWorldClockComplicationTimeZoneKey"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKWorldClockTimelineEntryModel showIdealizedTime](self, "showIdealizedTime")}];
  [dictionary setObject:v5 forKeyedSubscript:@"NTKWorldClockComplicationShowIdealizedTimeKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKWorldClockTimelineEntryModel isPrivacy](self, "isPrivacy")}];
  [dictionary setObject:v6 forKeyedSubscript:@"NTKWorldClockComplicationIsPrivacyKey"];

  return dictionary;
}

- (id)_graphicCircularTemplate
{
  v2 = MEMORY[0x277CBB858];
  _graphicCircularMetadata = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularMetadata];
  v4 = [v2 templateWithMetadata:_graphicCircularMetadata];

  return v4;
}

- (id)_graphicExtraLargeCircularTemplate
{
  v2 = MEMORY[0x277CBB940];
  _graphicCircularMetadata = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularMetadata];
  v4 = [v2 templateWithMetadata:_graphicCircularMetadata];

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
  _graphicCircularTemplate = [(NTKWorldClockTimelineEntryModel *)self _graphicCircularTemplate];
  v6 = [v4 templateWithCircularTemplate:_graphicCircularTemplate textProvider:v3];

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
  localizedUppercaseString = [v2 localizedUppercaseString];

  v4 = [MEMORY[0x277CBBB88] textProviderWithText:localizedUppercaseString];

  return v4;
}

- (id)_timeTextProvider
{
  v3 = MEMORY[0x277CBBAD0];
  _timeZone = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  v5 = [v3 textProviderWithTimeZone:_timeZone];

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

- (id)_differenceTextProviderWithSize:(int64_t)size andCaps:(BOOL)caps
{
  capsCopy = caps;
  v6 = MEMORY[0x277CBBBD8];
  [(NTKWorldClockTimelineEntryModel *)self _timeZoneOffset];
  v7 = [v6 differenceForOffset:capsCopy caps:0 suppressZero:size size:?];
  string = [v7 string];

  v9 = [MEMORY[0x277CBBB88] textProviderWithText:string];

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
  name = [(WorldClockCity *)self->_city name];
  v4 = [v2 textProviderWithText:name];

  return v4;
}

- (id)_timeAndDayOffsetTextProvider
{
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [_timeTextProvider setDisallowBothMinutesAndDesignator:0];
  _dayOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _dayOffsetTextProvider];
  v5 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", _timeTextProvider, _dayOffsetTextProvider];

  return v5;
}

- (id)_timeAndAbbreviationTextProvider
{
  _abbreviationTextProvider = [(NTKWorldClockTimelineEntryModel *)self _abbreviationTextProvider];
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  v5 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", _abbreviationTextProvider, _timeTextProvider];

  return v5;
}

- (id)_timeAndCityNameOffsetTextProvider
{
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [_timeTextProvider setDisallowBothMinutesAndDesignator:0];
  v4 = MEMORY[0x277CBBB88];
  name = [(WorldClockCity *)self->_city name];
  v6 = [v4 textProviderWithText:name];

  v7 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", _timeTextProvider, v6];

  return v7;
}

- (id)_timeCityNameTimeZoneOffsetTextProvider
{
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [_timeTextProvider setDisallowBothMinutesAndDesignator:0];
  _dayOffsetTextProvider = [(NTKWorldClockTimelineEntryModel *)self _dayOffsetTextProvider];
  _differenceTextProvider = [(NTKWorldClockTimelineEntryModel *)self _differenceTextProvider];
  v6 = NTKClockFaceLocalizedString(@"WORLD_CLOCK_BEZEL_TEXT_FORMAT", @"%1$@ %2$@ • %3$@");
  v7 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v6, _timeTextProvider, _dayOffsetTextProvider, _differenceTextProvider];

  return v7;
}

- (id)_timeAndDifferenceOffsetTextProvider
{
  _timeTextProvider = [(NTKWorldClockTimelineEntryModel *)self _timeTextProvider];
  [_timeTextProvider setDisallowBothMinutesAndDesignator:0];
  v4 = [(NTKWorldClockTimelineEntryModel *)self _differenceTextProviderWithSize:0 andCaps:1];
  text = [v4 text];
  lowercaseString = [text lowercaseString];

  v7 = [MEMORY[0x277CBBB88] textProviderWithText:lowercaseString];
  [v7 setUseLowercaseSmallCaps:1];

  v8 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@, %@", _timeTextProvider, v7];

  return v8;
}

- (id)_timeZone
{
  v2 = MEMORY[0x277CBEBB0];
  timeZone = [(WorldClockCity *)self->_city timeZone];
  v4 = [v2 timeZoneWithName:timeZone];

  return v4;
}

- (double)_timeZoneOffset
{
  _timeZone = [(NTKWorldClockTimelineEntryModel *)self _timeZone];
  secondsFromGMT = [_timeZone secondsFromGMT];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v5 = (secondsFromGMT - [systemTimeZone secondsFromGMT]);

  return v5;
}

+ (id)_analogImageProvider
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];
  __55__NTKWorldClockTimelineEntryModel__analogImageProvider__block_invoke(device, device);

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
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];
  __54__NTKWorldClockTimelineEntryModel__globeImageProvider__block_invoke(device, device);

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

+ (id)_fullColorGlobeImageProviderWithTintColor:(id)color
{
  v3 = MEMORY[0x277D755B8];
  colorCopy = color;
  v5 = [v3 systemImageNamed:@"globe"];
  v6 = [v5 imageWithRenderingMode:2];

  v7 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v6 monochromeFilterType:1 applyScalingAndCircularMasking:0];
  [v7 setTintColor:colorCopy];

  return v7;
}

- (id)_solarGradientColors
{
  city = [(NTKWorldClockTimelineEntryModel *)self city];
  alCity = [city alCity];
  if (alCity)
  {
    v5 = alCity;
    entryDate = [(NTKTimelineEntryModel *)self entryDate];

    if (entryDate)
    {
      v7 = objc_alloc(MEMORY[0x277CE41F8]);
      city2 = [(NTKWorldClockTimelineEntryModel *)self city];
      alCity2 = [city2 alCity];
      [alCity2 latitude];
      v11 = v10;
      city3 = [(NTKWorldClockTimelineEntryModel *)self city];
      alCity3 = [city3 alCity];
      [alCity3 longitude];
      v15 = [v7 initWithLatitude:v11 longitude:v14];

      entryDate2 = [(NTKTimelineEntryModel *)self entryDate];
      ntk_wc_defaultSolarGradientColors = [(NTKWorldClockTimelineEntryModel *)self _getSolarColorsForLocation:v15 atDate:entryDate2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  ntk_wc_defaultSolarGradientColors = [MEMORY[0x277D75348] ntk_wc_defaultSolarGradientColors];
LABEL_6:

  return ntk_wc_defaultSolarGradientColors;
}

- (id)_getSolarColorsForLocation:(id)location atDate:(id)date
{
  dateCopy = date;
  locationCopy = location;
  [NTKSiderealDataSource reverseInterpolateBetweenCalendricalMidnights:dateCopy];
  v8 = v7;
  v9 = [NTKSiderealDataSource siderealDataForLocation:locationCopy atDate:dateCopy useXR:1];

  *&v10 = v8;
  v11 = [v9 gradientWithSunsetFilterForDayProgress:v10];

  return v11;
}

- (void)_graphicRectangularTemplate
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = NTKWorldClockCityAbbreviation(*(self + 24));
  unlocalizedCityName = [*(self + 24) unlocalizedCityName];
  alCity = [*(self + 24) alCity];
  [alCity latitude];
  v8 = v7;
  alCity2 = [*(self + 24) alCity];
  [alCity2 longitude];
  v11 = 138544130;
  v12 = v4;
  v13 = 2114;
  v14 = unlocalizedCityName;
  v15 = 2048;
  v16 = v8;
  v17 = 2048;
  v18 = v10;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "[World Clock] Building graphic rectangular template for %{public}@: %{public}@ <%f, %f>.", &v11, 0x2Au);
}

@end