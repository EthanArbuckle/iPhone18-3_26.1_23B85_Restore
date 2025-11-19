@interface NTKGreenfieldPlaceholderTimelineEntryModel
+ (id)entryModelWithAppIcon:(id)a3 appName:(id)a4 installationProgress:(float)a5;
+ (id)entryModelWithNullState;
+ (id)placeholderImageForFamily:(int64_t)a3;
- (id)_circularSmallTemplateForInstallation;
- (id)_downloadTextWithIsUpperCased:(BOOL)a3;
- (id)_extraLargeTemplateForInstallation;
- (id)_graphicBezelTemplateForInstallation;
- (id)_graphicCircularTemplateForInstallation;
- (id)_graphicCornerTemplateForInstallation;
- (id)_graphicExtraLargeTemplateForInstallation;
- (id)_graphicRectangularTemplateForInstallation;
- (id)_installationTemplateForComplicationFamily:(int64_t)a3;
- (id)_modularLargeTemplateForInstallation;
- (id)_modularSmallTemplateForInstallation;
- (id)_placeholderFullColorImageProvider;
- (id)_placeholderImageProvider;
- (id)_utilitarianLargeTemplateForInstallation;
- (id)_utilitarianSmallFlatTemplateForInstallation;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKGreenfieldPlaceholderTimelineEntryModel

+ (id)entryModelWithNullState
{
  v2 = objc_alloc_init(NTKGreenfieldPlaceholderTimelineEntryModel);
  v2->_modelState = 0;
  v3 = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v2 setEntryDate:v3];

  return v2;
}

+ (id)entryModelWithAppIcon:(id)a3 appName:(id)a4 installationProgress:(float)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NTKGreenfieldPlaceholderTimelineEntryModel);
  v9->_modelState = 1;
  appIcon = v9->_appIcon;
  v9->_appIcon = v7;
  v11 = v7;

  v12 = [v8 copy];
  appName = v9->_appName;
  v9->_appName = v12;

  v14 = fmin(a5, 1.0);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v9->_installationProgress = v14;
  v15 = [MEMORY[0x277CBEAA8] date];

  [(NTKTimelineEntryModel *)v9 setEntryDate:v15];

  return v9;
}

+ (id)placeholderImageForFamily:(int64_t)a3
{
  if (a3 <= 0xC && ((0x1791u >> a3) & 1) != 0)
  {
    NTKImageNamed(off_27877DF20[a3]);
  }

  return 0;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  if (self->_modelState == 1)
  {
    v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _installationTemplateForComplicationFamily:a3];
  }

  else
  {
    v3 = 0;
  }

  [v3 finalize];

  return v3;
}

- (id)_installationTemplateForComplicationFamily:(int64_t)a3
{
  v4 = 0;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCircularTemplateForInstallation];
          break;
        case 12:
          v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicExtraLargeTemplateForInstallation];
          break;
        case 11:
          v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicRectangularTemplateForInstallation];
          break;
      }
    }

    else if (a3 == 7)
    {
      v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _extraLargeTemplateForInstallation];
    }

    else
    {
      if (a3 == 8)
      {
        [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCornerTemplateForInstallation];
      }

      else
      {
        [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicBezelTemplateForInstallation];
      }
      v4 = ;
    }

    goto LABEL_28;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _utilitarianLargeTemplateForInstallation];
      goto LABEL_28;
    }

    if (a3 == 4)
    {
      v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _circularSmallTemplateForInstallation];
      goto LABEL_28;
    }

    if (a3 != 6)
    {
      goto LABEL_28;
    }

LABEL_15:
    v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _utilitarianSmallFlatTemplateForInstallation];
    goto LABEL_28;
  }

  switch(a3)
  {
    case 0:
      v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _modularSmallTemplateForInstallation];
      break;
    case 1:
      v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _modularLargeTemplateForInstallation];
      break;
    case 2:
      goto LABEL_15;
  }

LABEL_28:

  return v4;
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
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

  return v4;
}

- (id)_modularSmallTemplateForInstallation
{
  v2 = MEMORY[0x277CBBA50];
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

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
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

  return v4;
}

- (id)_graphicCornerTemplateForInstallation
{
  v3 = MEMORY[0x277CBBB88];
  v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:1];
  v5 = [v3 textProviderWithText:v4];

  v6 = MEMORY[0x277CBB908];
  v7 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v8 = [v6 templateWithTextProvider:v5 imageProvider:v7];

  return v8;
}

- (id)_graphicBezelTemplateForInstallation
{
  v3 = MEMORY[0x277CBBB88];
  v4 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _downloadTextWithIsUpperCased:1];
  v5 = [v3 textProviderWithText:v4];

  v6 = MEMORY[0x277CBB810];
  v7 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _graphicCircularTemplateForInstallation];
  v8 = [v6 templateWithCircularTemplate:v7 textProvider:v5];

  return v8;
}

- (id)_extraLargeTemplateForInstallation
{
  v2 = MEMORY[0x277CBB7F0];
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

  return v4;
}

- (id)_graphicExtraLargeTemplateForInstallation
{
  v2 = MEMORY[0x277CBB938];
  v3 = [(NTKGreenfieldPlaceholderTimelineEntryModel *)self _placeholderFullColorImageProvider];
  v4 = [v2 templateWithImageProvider:v3];

  return v4;
}

- (id)_downloadTextWithIsUpperCased:(BOOL)a3
{
  v3 = a3;
  v4 = NTKClockFaceLocalizedString(@"COMPLICATION_DOWNLOADING_TEXT", @"Downloading...");
  if (v3)
  {
    v5 = [MEMORY[0x277CBEAF8] currentLocale];
    v6 = [v4 uppercaseStringWithLocale:v5];

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