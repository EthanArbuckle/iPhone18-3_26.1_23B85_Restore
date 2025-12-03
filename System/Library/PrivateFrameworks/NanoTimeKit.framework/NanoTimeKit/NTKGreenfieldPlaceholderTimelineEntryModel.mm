@interface NTKGreenfieldPlaceholderTimelineEntryModel
+ (id)entryModelWithAppIcon:(id)icon appName:(id)name installationProgress:(float)progress;
+ (id)entryModelWithNullState;
+ (id)placeholderImageForFamily:(int64_t)family;
- (id)_circularSmallTemplateForInstallation;
- (id)_downloadTextWithIsUpperCased:(BOOL)cased;
- (id)_extraLargeTemplateForInstallation;
- (id)_graphicBezelTemplateForInstallation;
- (id)_graphicCircularTemplateForInstallation;
- (id)_graphicCornerTemplateForInstallation;
- (id)_graphicExtraLargeTemplateForInstallation;
- (id)_graphicRectangularTemplateForInstallation;
- (id)_installationTemplateForComplicationFamily:(int64_t)family;
- (id)_modularLargeTemplateForInstallation;
- (id)_modularSmallTemplateForInstallation;
- (id)_placeholderFullColorImageProvider;
- (id)_placeholderImageProvider;
- (id)_utilitarianLargeTemplateForInstallation;
- (id)_utilitarianSmallFlatTemplateForInstallation;
- (id)templateForComplicationFamily:(int64_t)family;
@end

@implementation NTKGreenfieldPlaceholderTimelineEntryModel

+ (id)entryModelWithNullState
{
  v2 = objc_alloc_init(NTKGreenfieldPlaceholderTimelineEntryModel);
  v2->_modelState = 0;
  date = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v2 setEntryDate:date];

  return v2;
}

+ (id)entryModelWithAppIcon:(id)icon appName:(id)name installationProgress:(float)progress
{
  iconCopy = icon;
  nameCopy = name;
  v9 = objc_alloc_init(NTKGreenfieldPlaceholderTimelineEntryModel);
  v9->_modelState = 1;
  appIcon = v9->_appIcon;
  v9->_appIcon = iconCopy;
  v11 = iconCopy;

  v12 = [nameCopy copy];
  appName = v9->_appName;
  v9->_appName = v12;

  v14 = fmin(progress, 1.0);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v9->_installationProgress = v14;
  date = [MEMORY[0x277CBEAA8] date];

  [(NTKTimelineEntryModel *)v9 setEntryDate:date];

  return v9;
}

+ (id)placeholderImageForFamily:(int64_t)family
{
  if (family <= 0xC && ((0x1791u >> family) & 1) != 0)
  {
    NTKImageNamed(off_27877DF20[family]);
  }

  return 0;
}

- (id)templateForComplicationFamily:(int64_t)family
{
  if (self->_modelState == 1)
  {
    v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _installationTemplateForComplicationFamily:family];
  }

  else
  {
    v3 = 0;
  }

  [v3 finalize];

  return v3;
}

- (id)_installationTemplateForComplicationFamily:(int64_t)family
{
  _graphicCircularTemplateForInstallation = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCircularTemplateForInstallation];
          break;
        case 12:
          _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicExtraLargeTemplateForInstallation];
          break;
        case 11:
          _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicRectangularTemplateForInstallation];
          break;
      }
    }

    else if (family == 7)
    {
      _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _extraLargeTemplateForInstallation];
    }

    else
    {
      if (family == 8)
      {
        [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCornerTemplateForInstallation];
      }

      else
      {
        [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicBezelTemplateForInstallation];
      }
      _graphicCircularTemplateForInstallation = ;
    }

    goto LABEL_28;
  }

  if (family > 2)
  {
    if (family == 3)
    {
      _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _utilitarianLargeTemplateForInstallation];
      goto LABEL_28;
    }

    if (family == 4)
    {
      _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _circularSmallTemplateForInstallation];
      goto LABEL_28;
    }

    if (family != 6)
    {
      goto LABEL_28;
    }

LABEL_15:
    _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _utilitarianSmallFlatTemplateForInstallation];
    goto LABEL_28;
  }

  switch(family)
  {
    case 0:
      _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _modularSmallTemplateForInstallation];
      break;
    case 1:
      _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _modularLargeTemplateForInstallation];
      break;
    case 2:
      goto LABEL_15;
  }

LABEL_28:

  return _graphicCircularTemplateForInstallation;
}

- (id)_graphicRectangularTemplateForInstallation
{
  v3 = [MEMORY[0x277CBBB88] textProviderWithText:self->_appName];
  v4 = MEMORY[0x277CBBB88];
  v5 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:0];
  v6 = [v4 textProviderWithText:v5];

  v7 = [MEMORY[0x277CBB9D8] templateWithHeaderTextProvider:v3 body1TextProvider:v6];

  return v7;
}

- (id)_utilitarianSmallFlatTemplateForInstallation
{
  v2 = [MEMORY[0x277CBBB88] textProviderWithText:self->_appName];
  v3 = [MEMORY[0x277CBBA90] templateWithTextProvider:v2];

  return v3;
}

- (id)_utilitarianLargeTemplateForInstallation
{
  v2 = MEMORY[0x277CBBB88];
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:1];
  v4 = [v2 textProviderWithText:v3];

  v5 = [MEMORY[0x277CBBA80] templateWithTextProvider:v4];

  return v5;
}

- (id)_graphicCircularTemplateForInstallation
{
  v2 = MEMORY[0x277CBB850];
  _placeholderFullColorImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v4 = [v2 templateWithImageProvider:_placeholderFullColorImageProvider];

  return v4;
}

- (id)_modularSmallTemplateForInstallation
{
  v2 = MEMORY[0x277CBBA50];
  _placeholderImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:_placeholderImageProvider];

  return v4;
}

- (id)_modularLargeTemplateForInstallation
{
  v3 = [MEMORY[0x277CBBB88] textProviderWithText:self->_appName];
  v4 = MEMORY[0x277CBBB88];
  v5 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:0];
  v6 = [v4 textProviderWithText:v5];

  v7 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v3 body1TextProvider:v6];

  return v7;
}

- (id)_circularSmallTemplateForInstallation
{
  v2 = MEMORY[0x277CBB768];
  _placeholderImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:_placeholderImageProvider];

  return v4;
}

- (id)_graphicCornerTemplateForInstallation
{
  v3 = MEMORY[0x277CBBB88];
  v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:1];
  v5 = [v3 textProviderWithText:v4];

  v6 = MEMORY[0x277CBB908];
  _placeholderFullColorImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v8 = [v6 templateWithTextProvider:v5 imageProvider:_placeholderFullColorImageProvider];

  return v8;
}

- (id)_graphicBezelTemplateForInstallation
{
  v3 = MEMORY[0x277CBBB88];
  v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:1];
  v5 = [v3 textProviderWithText:v4];

  v6 = MEMORY[0x277CBB810];
  _graphicCircularTemplateForInstallation = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCircularTemplateForInstallation];
  v8 = [v6 templateWithCircularTemplate:_graphicCircularTemplateForInstallation textProvider:v5];

  return v8;
}

- (id)_extraLargeTemplateForInstallation
{
  v2 = MEMORY[0x277CBB7F0];
  _placeholderImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:_placeholderImageProvider];

  return v4;
}

- (id)_graphicExtraLargeTemplateForInstallation
{
  v2 = MEMORY[0x277CBB938];
  _placeholderFullColorImageProvider = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v4 = [v2 templateWithImageProvider:_placeholderFullColorImageProvider];

  return v4;
}

- (id)_downloadTextWithIsUpperCased:(BOOL)cased
{
  casedCopy = cased;
  v4 = NTKClockFaceLocalizedString(@"COMPLICATION_DOWNLOADING_TEXT", @"Downloading...");
  if (casedCopy)
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v4 uppercaseStringWithLocale:currentLocale];

    v4 = v6;
  }

  return v4;
}

- (id)_placeholderFullColorImageProvider
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_installationProgress];
  [v3 setObject:v4 forKeyedSubscript:@"NTKGreenfieldPlaceholderTimelineEntryModelProgressKey"];

  appIcon = self->_appIcon;
  if (appIcon)
  {
    [v3 setObject:appIcon forKeyedSubscript:@"NTKGreenfieldPlaceholderTimelineEntryModelIconKey"];
  }

  else
  {
    v6 = [objc_opt_class() placeholderImageForFamily:10];
    [v3 setObject:v6 forKeyedSubscript:@"NTKGreenfieldPlaceholderTimelineEntryModelIconKey"];
  }

  v7 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
  v8 = [v3 copy];
  [v7 setMetadata:v8];

  return v7;
}

- (id)_placeholderImageProvider
{
  v3 = +[NTKGreenfieldPlaceholderImageProvider provider];
  [v3 setAppIcon:self->_appIcon];
  [v3 setProgress:self->_installationProgress];

  return v3;
}

@end