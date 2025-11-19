@interface NTKHeartRateTimelineEntryModel
- (id)_bpmString;
- (id)_heartrateString;
- (id)_metadataWithCurrentMeasurements;
- (id)_newCircularTemplateUsingMediumSize:(BOOL)a3;
- (id)_newModularLargeTemplate;
- (id)_newSignatureBezelTemplate;
- (id)_newSignatureRectangularTemplate;
- (id)_newUtilitarianLargeTemplate;
- (id)_signatureBezelTextProvider;
- (id)templateForComplicationFamily:(int64_t)a3;
@end

@implementation NTKHeartRateTimelineEntryModel

- (id)templateForComplicationFamily:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = _NTKLoggingObjectForDomain(14, "NTKLoggingDomainDebug");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2048;
    v15 = a3;
    v6 = v13;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting template for %ld family.", &v12, 0x16u);
  }

  v7 = 0;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v8 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureCircularTemplate];
          break;
        case 11:
          v8 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureRectangularTemplate];
          break;
        case 12:
          v8 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_30;
      }
    }

    else if (a3 == 7)
    {
      v8 = [(NTKHeartRateTimelineEntryModel *)self _newExtraLargeTemplate];
    }

    else if (a3 == 8)
    {
      v8 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureCornerTemplate];
    }

    else
    {
      v8 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureBezelTemplate];
    }
  }

  else if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v8 = [(NTKHeartRateTimelineEntryModel *)self _newUtilitarianLargeTemplate];
        break;
      case 4:
        v8 = [(NTKHeartRateTimelineEntryModel *)self _newCircularTemplateUsingMediumSize:0];
        break;
      case 6:
        v8 = [(NTKHeartRateTimelineEntryModel *)self _newUtilitarianSmallFlatTemplate];
        break;
      default:
        goto LABEL_30;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v8 = [(NTKHeartRateTimelineEntryModel *)self _newModularLargeTemplate];
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_30;
      }

      v8 = [(NTKHeartRateTimelineEntryModel *)self _newUtilitarianSmallTemplate];
    }
  }

  else
  {
    v8 = [(NTKHeartRateTimelineEntryModel *)self _newModularSmallTemplate];
  }

  v7 = v8;
LABEL_30:
  if (*MEMORY[0x277CBB668] == a3)
  {
    v9 = [(NTKHeartRateTimelineEntryModel *)self _newCircularTemplateUsingMediumSize:1];
  }

  else
  {
    if (a3 != 104)
    {
      goto LABEL_35;
    }

    v9 = [(NTKHeartRateTimelineEntryModel *)self _newUtilitarianLargeTemplate];
  }

  v10 = v9;

  v7 = v10;
LABEL_35:

  return v7;
}

- (id)_newUtilitarianLargeTemplate
{
  if (self->_hasBPM)
  {
    v2 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "hasBPM for family: _newUtilitarianLarge", buf, 2u);
    }

    NTKImageNamed(@"ColorHeartrate");
  }

  v3 = MEMORY[0x277CBBB88];
  v4 = NTKClockFaceLocalizedString(@"HEART_RATE_TITLE", 0);
  v5 = [v3 textProviderWithText:v4];

  v6 = [MEMORY[0x277CBBA80] templateWithTextProvider:v5 imageProvider:0];
  v7 = +[NTKHeartRateComplicationUtilties heartrateTintColor];
  [v6 setTintColor:v7];

  return v6;
}

- (id)_newCircularTemplateUsingMediumSize:(BOOL)a3
{
  if (a3)
  {
    v3 = @"VictoryNTKHeartrate";
  }

  else
  {
    v3 = @"ColorHeartrate";
  }

  NTKImageNamed(v3);
}

- (id)_newModularLargeTemplate
{
  if (self->_hasBPM)
  {
    v3 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "hasBPM for family: _newUtilitarianLarge", v22, 2u);
    }

    v4 = MEMORY[0x277CBBB88];
    v5 = NTKClockFaceLocalizedString(@"HEART_RATE_TITLE", 0);
    v6 = [v4 textProviderWithText:v5];

    v7 = MEMORY[0x277CBBB88];
    v8 = [(NTKHeartRateTimelineEntryModel *)self _heartrateString];
    v9 = [v7 textProviderWithText:v8];

    if (self->_lessThanMinute)
    {
      v10 = MEMORY[0x277CBBB88];
      v11 = NTKClockFaceLocalizedString(@"HEART_RATE_TIME_NOW", @"Now");
      v12 = [v10 textProviderWithText:v11];
    }

    else
    {
      v17 = NTKCanUseShortRelativeDateStyleForHeartRateComplicationStrings();
      v18 = MEMORY[0x277CBB6A8];
      if (!v17)
      {
        v18 = MEMORY[0x277CBB6A0];
      }

      v12 = [MEMORY[0x277CBBB60] textProviderWithDate:self->_measurementDate style:*v18 units:112];
      [v12 setTimeTravelUpdateFrequency:0];
      [v12 setDisableOffsetPrefix:1];
      [v12 setDisableSmallCapUnits:1];
      [v12 setItalicized:1];
    }
  }

  else
  {
    v13 = MEMORY[0x277CBBB88];
    v14 = NTKClockFaceLocalizedString(@"HEART_RATE_TITLE", 0);
    v6 = [v13 textProviderWithText:v14];

    v15 = MEMORY[0x277CBBB88];
    v16 = NTKClockFaceLocalizedString(@"HEART_RATE_LARGE_MODULAR_NODATA", 0);
    v9 = [v15 textProviderWithText:v16];

    v12 = 0;
  }

  v19 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v6 body1TextProvider:v9 body2TextProvider:v12];
  v20 = +[NTKHeartRateComplicationUtilties heartrateTintColor];
  [v19 setTintColor:v20];

  return v19;
}

- (id)_newSignatureBezelTemplate
{
  v3 = MEMORY[0x277CBB810];
  v4 = [(NTKHeartRateTimelineEntryModel *)self _newSignatureCircularTemplate];
  v5 = [(NTKHeartRateTimelineEntryModel *)self _signatureBezelTextProvider];
  v6 = [v3 templateWithCircularTemplate:v4 textProvider:v5];

  return v6;
}

- (id)_signatureBezelTextProvider
{
  if ([(NTKHeartRateTimelineEntryModel *)self isLocked])
  {
    v3 = NTKClockFaceLocalizedString(@"HEART_RATE_SIGNATURE_LARGE_LOCKED", @"Unlock to View");
    v4 = [MEMORY[0x277CBBB88] textProviderWithText:v3];
  }

  else
  {
    if (![(NTKHeartRateTimelineEntryModel *)self hasBPM])
    {
      v11 = MEMORY[0x277CBBB88];
      v12 = NTKClockFaceLocalizedString(@"HEART_RATE_LARGE_MODULAR_NODATA", 0);
      v4 = [v11 textProviderWithText:v12];

      goto LABEL_14;
    }

    v5 = _NTKLoggingObjectForDomain(38, "NTKLoggingDomainHeartRate");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "hasBPM for family: _signaturebezel", buf, 2u);
    }

    v6 = MEMORY[0x277CBBB88];
    v7 = [(NTKHeartRateTimelineEntryModel *)self _heartrateString];
    v3 = [v6 textProviderWithText:v7];

    if (self->_lessThanMinute)
    {
      v8 = MEMORY[0x277CBBB88];
      v9 = NTKClockFaceLocalizedString(@"HEART_RATE_TIME_NOW", @"Now");
      v10 = [v8 textProviderWithText:v9];
    }

    else
    {
      v13 = NTKCanUseShortRelativeDateStyleForHeartRateComplicationStrings();
      v14 = MEMORY[0x277CBB6A8];
      if (!v13)
      {
        v14 = MEMORY[0x277CBB6A0];
      }

      v10 = [MEMORY[0x277CBBB60] textProviderWithDate:self->_measurementDate style:*v14 units:112];
      [v10 setTimeTravelUpdateFrequency:0];
      [v10 setDisableOffsetPrefix:1];
      [v10 setDisableSmallCapUnits:1];
    }

    v15 = MEMORY[0x277CBBBA0];
    v16 = NTKClockFaceLocalizedString(@"HEART_RATE_BEZEL_FORMAT", 0);
    v4 = [v15 textProviderWithFormat:v16, v3, v10];
  }

LABEL_14:

  return v4;
}

- (id)_metadataWithCurrentMeasurements
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NTKHeartRateTimelineEntryModel *)self isLocked])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[NTKHeartRateTimelineEntryModel isLocked](self, "isLocked")}];
    v5 = NTKHeartRateRichComplicationMetadataKeyIsLocked;
LABEL_8:
    [v3 setObject:v4 forKeyedSubscript:*v5];

    goto LABEL_9;
  }

  if ([(NTKHeartRateTimelineEntryModel *)self hasBPM])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_BPM];
    [v3 setObject:v6 forKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyBPM"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_lessThanMinute];
    [v3 setObject:v7 forKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyIsNow"];

    [v3 setObject:self->_measurementDate forKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDate"];
  }

  if ([(NTKHeartRateTimelineEntryModel *)self hasSummary])
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dailyHighBPM];
    [v3 setObject:v8 forKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDailyHighBPM"];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dailyLowBPM];
    [v3 setObject:v9 forKeyedSubscript:@"NTKHeartRateRichComplicationMetadataKeyDailyLowBPM"];

    v10 = [(NTKHeartRateTimelineEntryModel *)self chartPoints];

    if (v10)
    {
      v4 = [(NTKHeartRateTimelineEntryModel *)self chartPoints];
      v5 = NTKHeartRateRichComplicationMetadataKeyChartPoints;
      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = [v3 copy];

  return v11;
}

- (id)_newSignatureRectangularTemplate
{
  v2 = MEMORY[0x277CBB9C8];
  v3 = [(NTKHeartRateTimelineEntryModel *)self _metadataWithCurrentMeasurements];
  v4 = [v2 templateWithMetadata:v3];

  return v4;
}

- (id)_heartrateString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NTKClockFaceLocalizedString(@"HEART_RATE_READING", 0);
  v5 = [(NTKHeartRateTimelineEntryModel *)self _bpmString];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (id)_bpmString
{
  v2 = MEMORY[0x277CCABB8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_BPM];
  v4 = [v2 localizedStringFromNumber:v3 numberStyle:0];

  return v4;
}

@end