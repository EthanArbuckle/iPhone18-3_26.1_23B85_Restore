@interface NTKSampleComplicationDataSource
+ (BOOL)_isComplicationFamilyAvaialbleBeforeGlory:(int64_t)glory;
+ (BOOL)acceptsClassicComplicationType:(unint64_t)type withFamily:(int64_t)family;
+ (BOOL)acceptsComplicationType:(unint64_t)NSSComplicationDataSourceClass withFamily:(int64_t)family forDevice:(id)device;
- (BOOL)supportsFlowerImages;
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (NTKSampleComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_alarmTemplate;
- (id)_batteryTemplate;
- (id)_breathingTemplate;
- (id)_city;
- (id)_currentEntryModel;
- (id)_fullColorImageProviderWithSystemImageName:(id)name tintColor:(id)color fallbackImageName:(id)imageName;
- (id)_heartrateTemplate;
- (id)_imageProviderWithSystemImageName:(id)name overridePointSize:(id)size tintColor:(id)color fallbackImageName:(id)imageName;
- (id)_musicTemplate;
- (id)_newsTemplate;
- (id)_nowPlayingTemplate;
- (id)_podcastsTemplate;
- (id)_radioTemplate;
- (id)_reminderTemplate;
- (id)_siriTemplate;
- (id)_solarTemplate;
- (id)_stopwatchTemplate;
- (id)_worldClockTemplate;
- (id)currentSwitcherTemplate;
- (void)_localeDidChange:(id)change;
- (void)dealloc;
@end

@implementation NTKSampleComplicationDataSource

+ (BOOL)acceptsComplicationType:(unint64_t)NSSComplicationDataSourceClass withFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if ([NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:NSSComplicationDataSourceClass family:family forDevice:deviceCopy])
  {
    goto LABEL_13;
  }

  v9 = family == 100 || family == 101;
  v10 = v9 || family == 102;
  if (v10 || family == 103)
  {
    goto LABEL_13;
  }

  if (family != 6)
  {
    if (family == 104)
    {
      if (acceptsComplicationType_withFamily_forDevice__onceToken_380 != -1)
      {
        +[NTKSampleComplicationDataSource acceptsComplicationType:withFamily:forDevice:];
      }

      v15 = acceptsComplicationType_withFamily_forDevice__specialCasedComplicationTypes;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:NSSComplicationDataSourceClass];
      LODWORD(v15) = [v15 containsObject:v16];

      if (!v15)
      {
        goto LABEL_13;
      }
    }

    if (NSSComplicationDataSourceClass <= 19)
    {
      if (NSSComplicationDataSourceClass <= 12)
      {
        if (NSSComplicationDataSourceClass != 2)
        {
          if (NSSComplicationDataSourceClass == 4)
          {
            LOBYTE(NSSComplicationDataSourceClass) = 1;
            if ((family - 8) < 5 || *MEMORY[0x277CBB680] == family)
            {
              goto LABEL_14;
            }

            goto LABEL_62;
          }

          if (NSSComplicationDataSourceClass == 5)
          {
            LOBYTE(NSSComplicationDataSourceClass) = 1;
            if (family - 8) < 3 || family == 12 || family == 11 && ([deviceCopy supportsPDRCapability:740041318])
            {
              goto LABEL_14;
            }

            goto LABEL_62;
          }

          goto LABEL_87;
        }
      }

      else if (NSSComplicationDataSourceClass > 16)
      {
        if (NSSComplicationDataSourceClass != 17)
        {
          if (NSSComplicationDataSourceClass != 19)
          {
            goto LABEL_87;
          }

          if ([deviceCopy supportsPDRCapability:710010803])
          {
            goto LABEL_13;
          }

          LOBYTE(NSSComplicationDataSourceClass) = 1;
          if ((family & 0xFFFFFFFFFFFFFFFBLL) == 0 || *MEMORY[0x277CBB668] == family)
          {
            goto LABEL_14;
          }

          if (family >= 0xD)
          {
            goto LABEL_13;
          }

          v19 = 6020;
          goto LABEL_74;
        }
      }

      else
      {
        if (NSSComplicationDataSourceClass == 13)
        {
          if (family - 8) < 5 && ((0x17u >> (family - 8)))
          {
            goto LABEL_71;
          }

          goto LABEL_62;
        }

        if (NSSComplicationDataSourceClass != 15)
        {
          goto LABEL_87;
        }
      }
    }

    else
    {
      if (NSSComplicationDataSourceClass <= 33)
      {
        if (NSSComplicationDataSourceClass <= 28)
        {
          if (NSSComplicationDataSourceClass != 20)
          {
            if (NSSComplicationDataSourceClass == 26)
            {
              NSSComplicationDataSourceClass = getNSSComplicationDataSourceClass();
              if (objc_opt_respondsToSelector())
              {
                v17 = [NSSComplicationDataSourceClass nss_newsComplicationTemplateForFamily:family compact:{objc_msgSend(deviceCopy, "sizeClass") == 0}];
                LOBYTE(NSSComplicationDataSourceClass) = v17 != 0;

                goto LABEL_14;
              }

              goto LABEL_62;
            }

LABEL_87:
            isRadioPhoneComplicationEnabled = [self acceptsClassicComplicationType:NSSComplicationDataSourceClass withFamily:family];
            goto LABEL_63;
          }

          if (family == 8)
          {
LABEL_71:
            LOBYTE(NSSComplicationDataSourceClass) = 1;
            goto LABEL_14;
          }

LABEL_62:
          isRadioPhoneComplicationEnabled = [self _isComplicationFamilyAvaialbleBeforeGlory:family];
          goto LABEL_63;
        }

        if (NSSComplicationDataSourceClass == 29)
        {
          if (family)
          {
            v20 = family == 10;
          }

          else
          {
            v20 = 1;
          }

          LOBYTE(NSSComplicationDataSourceClass) = v20;
          goto LABEL_14;
        }

        if (NSSComplicationDataSourceClass != 32)
        {
          goto LABEL_87;
        }

        if (family == 3)
        {
          isRadioPhoneComplicationEnabled = NTKIsConnectivityPhoneComplicationEnabled();
          goto LABEL_63;
        }

        goto LABEL_13;
      }

      if (NSSComplicationDataSourceClass <= 37)
      {
        if (NSSComplicationDataSourceClass != 34)
        {
          if (NSSComplicationDataSourceClass != 35)
          {
            goto LABEL_87;
          }

          isRadioPhoneComplicationEnabled = [deviceCopy isRadioPhoneComplicationEnabled];
LABEL_63:
          LOBYTE(NSSComplicationDataSourceClass) = isRadioPhoneComplicationEnabled;
          goto LABEL_14;
        }

        if (family >= 0xC)
        {
LABEL_13:
          LOBYTE(NSSComplicationDataSourceClass) = 0;
          goto LABEL_14;
        }

        v19 = 2058;
LABEL_74:
        LODWORD(NSSComplicationDataSourceClass) = v19 >> family;
        goto LABEL_14;
      }

      if (NSSComplicationDataSourceClass == 38)
      {
        LOBYTE(NSSComplicationDataSourceClass) = family == 12 || (family - 9) < 2;
        goto LABEL_14;
      }

      if (NSSComplicationDataSourceClass != 42)
      {
        goto LABEL_87;
      }
    }

    LOBYTE(NSSComplicationDataSourceClass) = 1;
    if (family == 12 || (family & 0xFFFFFFFFFFFFFFFCLL) == 8)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

  if (acceptsComplicationType_withFamily_forDevice__onceToken != -1)
  {
    +[NTKSampleComplicationDataSource acceptsComplicationType:withFamily:forDevice:];
  }

  v13 = acceptsComplicationType_withFamily_forDevice__smallFlatComplications;
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:NSSComplicationDataSourceClass];
  LOBYTE(NSSComplicationDataSourceClass) = [v13 containsObject:v14];

LABEL_14:
  return NSSComplicationDataSourceClass & 1;
}

void __80__NTKSampleComplicationDataSource_acceptsComplicationType_withFamily_forDevice___block_invoke()
{
  v0 = acceptsComplicationType_withFamily_forDevice__smallFlatComplications;
  acceptsComplicationType_withFamily_forDevice__smallFlatComplications = &unk_284189FD0;
}

void __80__NTKSampleComplicationDataSource_acceptsComplicationType_withFamily_forDevice___block_invoke_381()
{
  v0 = acceptsComplicationType_withFamily_forDevice__specialCasedComplicationTypes;
  acceptsComplicationType_withFamily_forDevice__specialCasedComplicationTypes = &unk_284189FE8;
}

+ (BOOL)acceptsClassicComplicationType:(unint64_t)type withFamily:(int64_t)family
{
  v5 = [self _isComplicationFamilyAvaialbleBeforeGlory:family];
  v7 = type == 26 || type == 11;
  return v5 && v7;
}

+ (BOOL)_isComplicationFamilyAvaialbleBeforeGlory:(int64_t)glory
{
  if (glory < 7 && ((0x5Fu >> glory) & 1) != 0)
  {
    return 1;
  }

  return glory == 7 || *MEMORY[0x277CBB668] == glory;
}

- (Class)richComplicationDisplayViewClassForDevice:(id)device
{
  v28[4] = *MEMORY[0x277D85DE8];
  family = [(CLKCComplicationDataSource *)self family];
  v27[0] = &unk_284181E40;
  v28[0] = objc_opt_class();
  v27[1] = &unk_284181D98;
  v28[1] = objc_opt_class();
  v27[2] = &unk_284181DC8;
  v28[2] = objc_opt_class();
  v27[3] = &unk_284181DE0;
  v28[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v25[0] = &unk_284181E40;
  v26[0] = objc_opt_class();
  v25[1] = &unk_284181D98;
  v26[1] = objc_opt_class();
  v25[2] = &unk_284181DE0;
  v26[2] = objc_opt_class();
  v25[3] = &unk_284181DC8;
  v26[3] = objc_opt_class();
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v23 = &unk_284181E10;
  v24 = objc_opt_class();
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v15 = &unk_284181E40;
  v19 = objc_opt_class();
  v16 = &unk_284181D98;
  v20 = objc_opt_class();
  v17 = &unk_284181DC8;
  v21 = objc_opt_class();
  v18 = &unk_284181DE0;
  v22 = objc_opt_class();
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v15 count:4];
  v9 = [(CLKCComplicationDataSource *)self complication:v15];
  complicationType = [v9 complicationType];

  v11 = 0;
  if (family > 10)
  {
    v12 = v7;
    if (family != 11)
    {
      if (family != 12)
      {
        goto LABEL_9;
      }

      v12 = v8;
    }

    goto LABEL_8;
  }

  v12 = v6;
  if (family == 9 || (v12 = v5, family == 10))
  {
LABEL_8:
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:complicationType];
    v11 = [v12 objectForKeyedSubscript:v13];
  }

LABEL_9:

  return v11;
}

- (NTKSampleComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = NTKSampleComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v8 initWithComplication:complication family:family forDevice:device];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = NTKSampleComplicationDataSource;
  [(NTKSampleComplicationDataSource *)&v4 dealloc];
}

- (id)currentSwitcherTemplate
{
  if (!self->_complicationTemplate)
  {
    complication = [(CLKCComplicationDataSource *)self complication];
    complicationType = [complication complicationType];

    if (complicationType > 19)
    {
      if (complicationType <= 33)
      {
        switch(complicationType)
        {
          case 20:
            _reminderTemplate = [(NTKSampleComplicationDataSource *)self _reminderTemplate];
            break;
          case 26:
            _reminderTemplate = [(NTKSampleComplicationDataSource *)self _newsTemplate];
            break;
          case 29:
            _reminderTemplate = [(NTKSampleComplicationDataSource *)self _siriTemplate];
            break;
          default:
            goto LABEL_36;
        }
      }

      else if (complicationType > 37)
      {
        if (complicationType == 38)
        {
          _reminderTemplate = [(NTKSampleComplicationDataSource *)self _solarTemplate];
        }

        else
        {
          if (complicationType != 42)
          {
            goto LABEL_36;
          }

          _reminderTemplate = [(NTKSampleComplicationDataSource *)self _podcastsTemplate];
        }
      }

      else if (complicationType == 34)
      {
        _reminderTemplate = [(NTKSampleComplicationDataSource *)self _nowPlayingTemplate];
      }

      else
      {
        if (complicationType != 35)
        {
          goto LABEL_36;
        }

        _reminderTemplate = [(NTKSampleComplicationDataSource *)self _radioTemplate];
      }
    }

    else if (complicationType <= 12)
    {
      switch(complicationType)
      {
        case 2:
          _reminderTemplate = [(NTKSampleComplicationDataSource *)self _alarmTemplate];
          break;
        case 4:
          _reminderTemplate = [(NTKSampleComplicationDataSource *)self _stopwatchTemplate];
          break;
        case 5:
          _reminderTemplate = [(NTKSampleComplicationDataSource *)self _worldClockTemplate];
          break;
        default:
          goto LABEL_36;
      }
    }

    else if (complicationType > 16)
    {
      if (complicationType == 17)
      {
        _reminderTemplate = [(NTKSampleComplicationDataSource *)self _musicTemplate];
      }

      else
      {
        if (complicationType != 19)
        {
          goto LABEL_36;
        }

        _reminderTemplate = [(NTKSampleComplicationDataSource *)self _breathingTemplate];
      }
    }

    else if (complicationType == 13)
    {
      _reminderTemplate = [(NTKSampleComplicationDataSource *)self _batteryTemplate];
    }

    else
    {
      if (complicationType != 15)
      {
        goto LABEL_36;
      }

      _reminderTemplate = [(NTKSampleComplicationDataSource *)self _heartrateTemplate];
    }

    complicationTemplate = self->_complicationTemplate;
    self->_complicationTemplate = _reminderTemplate;
  }

LABEL_36:
  v7 = self->_complicationTemplate;

  return [(CLKComplicationTemplate *)v7 finalizedCopy];
}

- (id)_batteryTemplate
{
  v3 = objc_opt_new();
  complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
  [v3 setEntryDate:complicationDate];

  LODWORD(v5) = 1.0;
  [v3 setLevel:v5];
  [v3 setState:1];
  v6 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  complicationTemplate = [v6 complicationTemplate];

  return complicationTemplate;
}

- (id)_heartrateTemplate
{
  v39[8] = *MEMORY[0x277D85DE8];
  complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
  v4 = objc_opt_new();
  [v4 setEntryDate:complicationDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar dateByAddingUnit:64 value:-3 toDate:complicationDate options:0];
  [v4 setMeasurementDate:v6];

  [v4 setHasBPM:1];
  [v4 setBPM:64];
  if ([(CLKCComplicationDataSource *)self family]== 11)
  {
    v32 = currentCalendar;
    v31 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{54, 11}];
    v39[0] = v31;
    selfCopy = self;
    v7 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{66, 40}];
    [v7 addIndexesInRange:{125, 25}];
    v8 = [v7 copy];

    v39[1] = v8;
    v9 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{63, 82}];
    [v9 addIndexesInRange:{155, 18}];
    v10 = [v9 copy];

    v39[2] = v10;
    v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{65, 10}];
    v39[3] = v11;
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{55, 21}];
    v39[4] = v12;
    v13 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{60, 35}];
    v39[5] = v13;
    v14 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{62, 18}];
    [v14 addIndexesInRange:{90, 18}];
    v15 = [v14 copy];

    v39[6] = v15;
    v16 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{65, 30}];
    v39[7] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v19 = NTKStartOfDayForDate(complicationDate);
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v21 = [autoupdatingCurrentCalendar components:124 fromDate:complicationDate];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __53__NTKSampleComplicationDataSource__heartrateTemplate__block_invoke;
    v34[3] = &unk_27877F1B8;
    v35 = v21;
    v36 = autoupdatingCurrentCalendar;
    v37 = v19;
    v38 = v18;
    v22 = v18;
    v23 = v19;
    self = selfCopy;
    v24 = v23;
    v25 = autoupdatingCurrentCalendar;
    v26 = v21;
    [v17 enumerateObjectsUsingBlock:v34];
    [v4 setHasSummary:1];
    [v4 setDailyHighBPM:173];
    [v4 setDailyLowBPM:54];
    v27 = [v22 copy];
    [v4 setChartPoints:v27];

    currentCalendar = v32;
  }

  v28 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  complicationTemplate = [v28 complicationTemplate];

  return complicationTemplate;
}

void __53__NTKSampleComplicationDataSource__heartrateTemplate__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if (a3)
  {
    [*(a1 + 32) setHour:{objc_msgSend(v5, "hour") + ((a3 & 1) == 0)}];
    v7 = (a3 << 63 >> 63) & 0x1E;
  }

  else
  {
    [v5 setHour:6];
    v7 = 0;
  }

  [*(a1 + 32) setMinute:v7];
  v10 = [*(a1 + 40) nextDateAfterDate:*(a1 + 48) matchingComponents:*(a1 + 32) options:2];
  v8 = *(a1 + 56);
  v9 = [MEMORY[0x277D0A7D0] chartPointWithDate:v10 valueIndexSet:v6];

  [v8 addObject:v9];
}

- (id)_stopwatchTemplate
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBB88];
  v4 = CLKFormatTimeIntervalSeconds();
  v5 = [v3 textProviderWithText:v4];

  v6 = MEMORY[0x277CBBB88];
  v7 = CLKFormatTimeIntervalSeconds();
  v8 = [v6 textProviderWithText:v7];

  family = [(CLKCComplicationDataSource *)self family];
  v10 = family;
  v11 = 0;
  if (family > 6)
  {
    if (family > 9)
    {
      switch(family)
      {
        case 10:
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:@"NTKStopwatchComplicationMetadataStateValue_Stopped" forKeyedSubscript:@"NTKStopwatchComplicationMetadataStateKey"];
          v17 = MEMORY[0x277CBB858];
          break;
        case 11:
          v12 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:@"stopwatch"];
          [v12 setMonochromeFilterType:1];
          systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
          [v12 setTintColor:systemOrangeColor];

          v31 = MEMORY[0x277CBBB88];
          v32 = NTKClockFaceLocalizedString(@"STOPWATCH_TITLE", @"Stopwatch");
          v33 = [v31 textProviderWithText:v32];

          systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
          [v33 setTintColor:systemOrangeColor2];

          v11 = [MEMORY[0x277CBB9B8] templateWithHeaderImageProvider:v12 headerTextProvider:v33 bodyTextProvider:v8];

          goto LABEL_31;
        case 12:
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:@"NTKStopwatchComplicationMetadataStateValue_Stopped" forKeyedSubscript:@"NTKStopwatchComplicationMetadataStateKey"];
          v17 = MEMORY[0x277CBB940];
          break;
        default:
          goto LABEL_32;
      }

      v11 = [v17 templateWithMetadata:dictionary];
      goto LABEL_38;
    }

    if (family == 7)
    {
      device = [(CLKCComplicationDataSource *)self device];
      v19 = [NTKComplicationModuleView _extraLargeStopwatchImageProviderForDevice:device];

      v20 = MEMORY[0x277CBB800];
      goto LABEL_21;
    }

    if (family != 8)
    {
      v37 = @"NTKStopwatchBezelComplicationMetadataTimeTextProviderKey";
      v38[0] = v8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v13 = [MEMORY[0x277CBB820] templateWithMetadata:v12];
LABEL_30:
      v11 = v13;
LABEL_31:

      goto LABEL_32;
    }

    v12 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:@"stopwatch"];
    [v12 setMonochromeFilterType:1];
    systemOrangeColor3 = [MEMORY[0x277D75348] systemOrangeColor];
    [v12 setTintColor:systemOrangeColor3];

    systemOrangeColor4 = [MEMORY[0x277D75348] systemOrangeColor];
    [v8 setTintColor:systemOrangeColor4];

    v14 = MEMORY[0x277CBB908];
LABEL_28:
    v15 = v8;
    goto LABEL_29;
  }

  if (family > 2)
  {
    if (family != 3)
    {
      if (family == 4)
      {
        v12 = [NTKCircularComplicationView _stopwatchImageProviderMedium:0];
        v13 = [MEMORY[0x277CBB790] templateWithImageProvider:v12];
        goto LABEL_30;
      }

      if (family != 6)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

    v12 = +[NTKUtilityComplicationView _stopwatchImageProvider];
    v14 = MEMORY[0x277CBBA80];
    goto LABEL_28;
  }

  switch(family)
  {
    case 0:
      device2 = [(CLKCComplicationDataSource *)self device];
      v19 = [NTKComplicationModuleView _modularSmallStopwatchImageProviderForDevice:device2];

      v20 = MEMORY[0x277CBBA68];
LABEL_21:
      v22 = [v20 templateWithLine1ImageProvider:v19 line2TextProvider:v5];
LABEL_26:
      v11 = v22;

      break;
    case 1:
      v23 = MEMORY[0x277CBBB88];
      v24 = NTKClockFaceLocalizedString(@"STOPWATCH_TITLE", 0);
      v19 = [v23 textProviderWithText:v24];

      v22 = [MEMORY[0x277CBBA20] templateWithHeaderTextProvider:v19 bodyTextProvider:v8];
      goto LABEL_26;
    case 2:
LABEL_14:
      v12 = +[NTKUtilityComplicationView _stopwatchImageProvider];
      v14 = MEMORY[0x277CBBA90];
      v15 = v5;
LABEL_29:
      v13 = [v14 templateWithTextProvider:v15 imageProvider:v12];
      goto LABEL_30;
  }

LABEL_32:
  if (v10 == *MEMORY[0x277CBB668])
  {
    v27 = [NTKCircularComplicationView _stopwatchImageProviderMedium:1];
    v28 = [MEMORY[0x277CBB748] templateWithImageProvider:v27];

LABEL_36:
    v11 = v28;

    goto LABEL_37;
  }

  if (v10 == *MEMORY[0x277CBB680])
  {
    v28 = [MEMORY[0x277CBBA78] templateWithTextProvider:v8];

    v35 = @"NTKSimpleTextComplicationTypeMetadataKey";
    v36 = &unk_284181DC8;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v28 setMetadata:v27];
    goto LABEL_36;
  }

LABEL_37:
  dictionary = [MEMORY[0x277D75348] systemOrangeColor];
  [v11 setTintColor:dictionary];
LABEL_38:

  return v11;
}

- (id)_alarmTemplate
{
  device = [(CLKCComplicationDataSource *)self device];
  v4 = [NTKAlarmTimelineEntry companionModelWithDevice:device];

  v5 = [v4 templateForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

- (id)_worldClockTemplate
{
  _city = [(NTKSampleComplicationDataSource *)self _city];
  v4 = _city;
  if (_city)
  {
    v5 = MEMORY[0x277CBEBB0];
    timeZone = [_city timeZone];
    v7 = [v5 timeZoneWithName:timeZone];

    v8 = MEMORY[0x277CBBB88];
    v9 = NTKWorldClockCityAbbreviation(v4);
    v10 = [v8 textProviderWithText:v9];

    v11 = MEMORY[0x277CBBB88];
    name = [v4 name];
    v13 = [v11 textProviderWithText:name];

    v14 = MEMORY[0x277CBBBB8];
    v15 = NTKIdealizedDate();
    v16 = [v14 textProviderWithDate:v15 timeZone:v7];
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v10 = 0;
    v7 = 0;
  }

  family = [(CLKCComplicationDataSource *)self family];
  complicationTemplate = 0;
  if (family == 104)
  {
    v19 = 6;
  }

  else
  {
    v19 = family;
  }

  if (v19 <= 5)
  {
    if (v19 <= 1)
    {
      if (v19)
      {
        if (v19 != 1)
        {
          goto LABEL_54;
        }

        v56 = v13;
        if (v13)
        {
          v24 = v13;
        }

        else
        {
          v24 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        }

        _currentEntryModel = v24;
        secondsFromGMT = [v7 secondsFromGMT];
        systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
        v33 = (secondsFromGMT - [systemTimeZone secondsFromGMT]);

        v34 = [MEMORY[0x277CBBBD8] dayForOffset:v33];
        v55 = [MEMORY[0x277CBBBD8] differenceForOffset:0 caps:0 suppressZero:v33];
        v57 = v7;
        v35 = MEMORY[0x277CBBB88];
        string = [v55 string];
        v54 = [v35 textProviderWithText:string];

        v37 = NTKClockFaceLocalizedString(@"WORLDCLOCK_DAY_BEFORE_TIME", @"string used by localizers as a BOOL");
        bOOLValue = [v37 BOOLValue];

        v39 = NTKClockFaceLocalizedString(@"WORLDCLOCK_NO_SPACE_BETWEEN_DAY_TIME", @"string used by localizers as a BOOL");
        bOOLValue2 = [v39 BOOLValue];

        v41 = v16;
        if (bOOLValue)
        {
          v42 = v34;
        }

        else
        {
          v42 = v41;
        }

        if (bOOLValue)
        {
          v43 = v41;
        }

        else
        {
          v43 = v34;
        }

        v44 = MEMORY[0x277CBBBA0];
        if (bOOLValue2)
        {
          v45 = @"%@%@";
        }

        else
        {
          v45 = @"%@ %@";
        }

        v53 = v34;
        v46 = [v44 textProviderWithFormat:v45, v42, v43];
        complicationTemplate = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:_currentEntryModel body1TextProvider:v46 body2TextProvider:v54];

        v7 = v57;
        v13 = v56;
        goto LABEL_53;
      }

      v20 = v13;
      if (v10 && v16)
      {
        _currentEntryModel = v10;
        v27 = v16;
      }

      else
      {
        _currentEntryModel = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        v27 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
      }

      v29 = v27;
      v30 = MEMORY[0x277CBBA70];
      goto LABEL_52;
    }

    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 != 4)
        {
          goto LABEL_54;
        }

        v20 = v13;
        if (v10 && v16)
        {
          _currentEntryModel = v10;
          v22 = v16;
        }

        else
        {
          _currentEntryModel = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
          v22 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        }

        v29 = v22;
        v30 = MEMORY[0x277CBB7A8];
        goto LABEL_52;
      }

      _currentEntryModel = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v16, v13];
      v26 = MEMORY[0x277CBBA80];
      goto LABEL_31;
    }

LABEL_23:
    [v16 setDisallowBothMinutesAndDesignator:1];
    if (CLKIsCurrentLocaleCJK())
    {
      v25 = @"%@ %@";
    }

    else
    {
      v25 = @"%@ %@";
    }

    _currentEntryModel = [MEMORY[0x277CBBBA0] textProviderWithFormat:v25, v10, v16];
    v26 = MEMORY[0x277CBBA90];
LABEL_31:
    complicationTemplate = [v26 templateWithTextProvider:_currentEntryModel];
    goto LABEL_53;
  }

  if ((v19 - 8) >= 5)
  {
    if (v19 == 7)
    {
      v20 = v13;
      if (v10 && v16)
      {
        _currentEntryModel = v10;
        v28 = v16;
      }

      else
      {
        _currentEntryModel = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        v28 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
      }

      v29 = v28;
      v30 = MEMORY[0x277CBB808];
LABEL_52:
      complicationTemplate = [v30 templateWithLine1TextProvider:_currentEntryModel line2TextProvider:v29];

      v13 = v20;
      goto LABEL_53;
    }

    if (v19 != 6)
    {
      goto LABEL_54;
    }

    goto LABEL_23;
  }

  _currentEntryModel = [(NTKSampleComplicationDataSource *)self _currentEntryModel];
  v23 = [_currentEntryModel entryForComplicationFamily:v19];
  complicationTemplate = [v23 complicationTemplate];

LABEL_53:
LABEL_54:
  if (v19 == *MEMORY[0x277CBB668])
  {
    if (v10 && v16)
    {
      v47 = v10;
      v48 = v16;
    }

    else
    {
      v47 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
      v48 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
    }

    v49 = v48;
    v50 = [MEMORY[0x277CBB760] templateWithLine1TextProvider:v47 line2TextProvider:v48];

    complicationTemplate = v50;
  }

  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [complicationTemplate setTintColor:systemOrangeColor];

  return complicationTemplate;
}

- (id)_currentEntryModel
{
  v3 = objc_opt_new();
  complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
  [v3 setEntryDate:complicationDate];

  [v3 setShowIdealizedTime:1];
  _city = [(NTKSampleComplicationDataSource *)self _city];
  [v3 setCity:_city];

  return v3;
}

- (id)_city
{
  complication = [(CLKCComplicationDataSource *)self complication];
  city = [complication city];

  return city;
}

- (id)_musicTemplate
{
  family = [(CLKCComplicationDataSource *)self family];
  v4 = @"music";
  v5 = NTKMusicTintColor();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__NTKSampleComplicationDataSource__musicTemplate__block_invoke;
  aBlock[3] = &unk_27877F1E0;
  aBlock[4] = self;
  v6 = v4;
  v42 = v6;
  v7 = v5;
  v43 = v7;
  v44 = 0x3FEB333333333333;
  v8 = _Block_copy(aBlock);
  v9 = NTKClockFaceLocalizedString(@"MUSIC_COMPLICATION_SIGNATURE_NOW_PLAYING_TITLE", @"%1$@ - %2$@");
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v9, @"Try Me", @"Jorja Smith"];
  v11 = v10;
  v12 = 0;
  if (family <= 6)
  {
    if (family <= 1)
    {
      if (!family)
      {
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E88 tintColor:whiteColor fallbackImageName:@"modularSmallMusicProgress"];

        v24 = MEMORY[0x277CBBA40];
        goto LABEL_25;
      }

      if (family == 1)
      {
        [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
        objc_claimAutoreleasedReturnValue();
        NTKImageNamed(@"modularLargeMusicEqualizer");
      }
    }

    else
    {
      v19 = v10;
      v20 = v8;
      switch(family)
      {
        case 2:
          whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          v32 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E58 tintColor:whiteColor2 fallbackImageName:@"utilityCornerMusicProgress"];

          v33 = [MEMORY[0x277CBBB80] simpleProgressProviderWithProgress:0.85];
          [v33 setTintColor:v7];
          v12 = [MEMORY[0x277CBBAA0] templateWithImageProvider:v32 progressProvider:v33 ringStyle:0];

          v8 = v20;
          v11 = v19;
          break;
        case 3:
          NTKImageNamed(@"utilityLongMusicEqualizer");
        case 4:
          whiteColor3 = [MEMORY[0x277D75348] whiteColor];
          v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E70 tintColor:whiteColor3 fallbackImageName:@"colorAnalogMusicProgress"];

          v24 = MEMORY[0x277CBB778];
          goto LABEL_25;
      }
    }
  }

  else
  {
    if (family <= 9)
    {
      if (family != 7)
      {
        if (family != 8)
        {
          v13 = [MEMORY[0x277CBBB88] textProviderWithText:v10];
          v14 = MEMORY[0x277CBB810];
          v8[2](v8);
          v40 = v7;
          v15 = v6;
          v16 = v9;
          v18 = v17 = v11;
          v12 = [v14 templateWithCircularTemplate:v18 textProvider:v13];

          v11 = v17;
          v9 = v16;
          v6 = v15;
          v7 = v40;

          goto LABEL_28;
        }

        whiteColor4 = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:whiteColor4 fallbackImageName:@"music_signature_corner"];

        v27 = [MEMORY[0x277CBBB88] textProviderWithText:v11];
        [v27 setTintColor:v7];
        v28 = [MEMORY[0x277CBB908] templateWithTextProvider:v27 imageProvider:v22];
        goto LABEL_21;
      }

      whiteColor5 = [MEMORY[0x277D75348] whiteColor];
      v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor5 fallbackImageName:@"modularXLMusicProgress"];

      v24 = MEMORY[0x277CBB7D8];
LABEL_25:
      LODWORD(v23) = 1062836634;
      v12 = [v24 templateWithImageProvider:v22 fillFraction:0 ringStyle:v23];
      goto LABEL_26;
    }

    switch(family)
    {
      case 10:
        v12 = v8[2](v8);
        break;
      case 11:
        NTKImageNamed(@"modularLargeMusicEqualizer");
      case 12:
        whiteColor6 = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:whiteColor6 fallbackImageName:@"graphicXLMusicProgress"];

        LODWORD(v26) = 1062836634;
        v27 = [MEMORY[0x277CBBB78] gaugeProviderWithStyle:1 gaugeColor:v7 fillFraction:v26];
        v28 = [MEMORY[0x277CBB918] templateWithGaugeProvider:v27 imageProvider:v22];
LABEL_21:
        v12 = v28;

LABEL_26:
        break;
    }
  }

LABEL_28:
  if (family == *MEMORY[0x277CBB668])
  {
    whiteColor7 = [MEMORY[0x277D75348] whiteColor];
    v36 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor7 fallbackImageName:@"victoryMusicProgress"];

    LODWORD(v37) = 1062836634;
    v38 = [MEMORY[0x277CBB740] templateWithImageProvider:v36 fillFraction:0 ringStyle:v37];

    v12 = v38;
  }

  [v12 setTintColor:v7];

  return v12;
}

id __49__NTKSampleComplicationDataSource__musicTemplate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [v2 _fullColorImageProviderWithSystemImageName:v3 tintColor:v4 fallbackImageName:@"victoryMusicProgress"];

  v6 = *(a1 + 56);
  *&v6 = v6;
  v7 = [MEMORY[0x277CBBB78] gaugeProviderWithStyle:1 gaugeColor:*(a1 + 48) fillFraction:v6];
  v8 = [MEMORY[0x277CBB830] templateWithGaugeProvider:v7 imageProvider:v5];

  return v8;
}

- (id)_radioTemplate
{
  v33[1] = *MEMORY[0x277D85DE8];
  family = [(CLKCComplicationDataSource *)self family];
  v4 = @"dot.radiowaves.left.and.right";
  v5 = NTKRadioTintColor();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__NTKSampleComplicationDataSource__radioTemplate__block_invoke;
  aBlock[3] = &unk_27877F208;
  aBlock[4] = self;
  v6 = v4;
  v30 = v6;
  v7 = v5;
  v31 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  v10 = 0;
  if (family <= 6)
  {
    if (family <= 1)
    {
      if (family)
      {
        if (family != 1)
        {
          goto LABEL_29;
        }

        v11 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
        v13 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v7 fallbackImageName:@"ModularLargeRadio"];
        v17 = [MEMORY[0x277CBBB88] textProviderWithText:@"Jorja Smith"];
        v18 = [MEMORY[0x277CBBB58] textProviderWithText:@"falling or flying" overrideBlock:&__block_literal_global_728];
        v10 = [MEMORY[0x277CBBA08] templateWithHeaderImageProvider:v13 headerTextProvider:v11 body1TextProvider:v17 body2TextProvider:v18];

        goto LABEL_23;
      }

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor fallbackImageName:@"ModularSmallRadio"];

      v16 = MEMORY[0x277CBBA50];
    }

    else
    {
      switch(family)
      {
        case 2:
          whiteColor2 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor2 fallbackImageName:@"UtilityCornerRadio"];

          v16 = MEMORY[0x277CBBAC0];
          break;
        case 3:
          whiteColor3 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor3 fallbackImageName:@"UtilityTextStringRadio"];

          v13 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
          v21 = MEMORY[0x277CBBA80];
          goto LABEL_21;
        case 4:
          whiteColor4 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor4 fallbackImageName:@"ColorRadio"];

          v16 = MEMORY[0x277CBB790];
          break;
        default:
          goto LABEL_29;
      }
    }

LABEL_27:
    v10 = [v16 templateWithImageProvider:v11];
    goto LABEL_28;
  }

  if (family <= 9)
  {
    if (family != 7)
    {
      if (family != 8)
      {
        v11 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
        v12 = MEMORY[0x277CBB810];
        v13 = v9[2](v9);
        v14 = [v12 templateWithCircularTemplate:v13 textProvider:v11];
LABEL_22:
        v10 = v14;
        goto LABEL_23;
      }

      whiteColor5 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:whiteColor5 fallbackImageName:@"GraphicCornerRadio"];

      v13 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
      [v13 setTintColor:v7];
      v21 = MEMORY[0x277CBB908];
LABEL_21:
      v14 = [v21 templateWithTextProvider:v13 imageProvider:v11];
      goto LABEL_22;
    }

    whiteColor6 = [MEMORY[0x277D75348] whiteColor];
    v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor6 fallbackImageName:@"XLRadio"];

    v16 = MEMORY[0x277CBB7F0];
    goto LABEL_27;
  }

  switch(family)
  {
    case 10:
      v10 = v8[2](v8);
      break;
    case 11:
      NTKImageNamed(@"modularLargeMusicEqualizer");
    case 12:
      v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v7 fallbackImageName:@"GraphicXLRadio"];
      v10 = [MEMORY[0x277CBB938] templateWithImageProvider:v11];
      v32 = *MEMORY[0x277CBB6E8];
      v33[0] = MEMORY[0x277CBEC38];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      [v10 setMetadata:v13];
LABEL_23:

LABEL_28:
      break;
  }

LABEL_29:
  if (family == *MEMORY[0x277CBB668])
  {
    whiteColor7 = [MEMORY[0x277D75348] whiteColor];
    v26 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor7 fallbackImageName:@"VictoryDigitalRadio"];

    v27 = [MEMORY[0x277CBB748] templateWithImageProvider:v26];

    v10 = v27;
  }

  [v10 setTintColor:v7];

  return v10;
}

id __49__NTKSampleComplicationDataSource__radioTemplate__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _fullColorImageProviderWithSystemImageName:*(a1 + 40) tintColor:*(a1 + 48) fallbackImageName:@"VictoryDigitalRadio"];
  v2 = [MEMORY[0x277CBB850] templateWithImageProvider:v1];
  v5 = *MEMORY[0x277CBB6E8];
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 setMetadata:v3];

  return v2;
}

- (id)_podcastsTemplate
{
  family = [(CLKCComplicationDataSource *)self family];
  v4 = @"podcasts";
  v5 = NTKPodcastsTintColor();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__NTKSampleComplicationDataSource__podcastsTemplate__block_invoke;
  aBlock[3] = &unk_27877F208;
  aBlock[4] = self;
  v6 = v4;
  v26 = v6;
  v7 = v5;
  v27 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  v10 = 0;
  if (family <= 6)
  {
    if (family <= 1)
    {
      if (!family)
      {
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor fallbackImageName:@"ModularSmallPodcast"];

        whiteColor2 = [MEMORY[0x277D75348] whiteColor];
        [v11 setTintColor:whiteColor2];

        v15 = MEMORY[0x277CBBA50];
        goto LABEL_25;
      }

      if (family == 1)
      {
        [MEMORY[0x277CBBB88] textProviderWithText:@"Bigfoot"];
        objc_claimAutoreleasedReturnValue();
        NTKImageNamed(@"modularLargeMusicEqualizer");
      }
    }

    else
    {
      switch(family)
      {
        case 2:
          whiteColor3 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor3 fallbackImageName:@"UtilityCornerPodcast"];

          v15 = MEMORY[0x277CBBAC0];
          goto LABEL_25;
        case 3:
          NTKImageNamed(@"utilityLongMusicEqualizer");
        case 4:
          whiteColor4 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor4 fallbackImageName:@"ColorPodcast"];

          v15 = MEMORY[0x277CBB790];
          goto LABEL_25;
      }
    }
  }

  else
  {
    if (family <= 9)
    {
      if (family != 7)
      {
        if (family == 8)
        {
          whiteColor5 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:whiteColor5 fallbackImageName:@"GraphicCornerPodcast"];

          v13 = [MEMORY[0x277CBBB88] textProviderWithText:@"Bigfoot"];
          [v13 setTintColor:v7];
          [MEMORY[0x277CBB908] templateWithTextProvider:v13 imageProvider:v11];
        }

        else
        {
          v11 = [MEMORY[0x277CBBB88] textProviderWithText:@"Bigfoot"];
          v12 = MEMORY[0x277CBB810];
          v13 = v9[2](v9);
          [v12 templateWithCircularTemplate:v13 textProvider:v11];
        }
        v10 = ;

        goto LABEL_26;
      }

      whiteColor6 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor6 fallbackImageName:@"XLPodcast"];

      v15 = MEMORY[0x277CBB7F0];
LABEL_25:
      v10 = [v15 templateWithImageProvider:v11];
LABEL_26:

      goto LABEL_27;
    }

    switch(family)
    {
      case 10:
        v10 = v8[2](v8);
        break;
      case 11:
        NTKImageNamed(@"modularLargeMusicEqualizer");
      case 12:
        v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v7 fallbackImageName:@"GraphicXLPodcast"];
        v15 = MEMORY[0x277CBB938];
        goto LABEL_25;
    }
  }

LABEL_27:
  if (family == *MEMORY[0x277CBB668])
  {
    whiteColor7 = [MEMORY[0x277D75348] whiteColor];
    v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:whiteColor7 fallbackImageName:@"VictoryDigitalPodcast"];

    v23 = [MEMORY[0x277CBB748] templateWithImageProvider:v22];

    v10 = v23;
  }

  [v10 setTintColor:v7];

  return v10;
}

id __52__NTKSampleComplicationDataSource__podcastsTemplate__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _fullColorImageProviderWithSystemImageName:*(a1 + 40) tintColor:*(a1 + 48) fallbackImageName:@"VictoryDigitalPodcast"];
  v2 = [MEMORY[0x277CBB850] templateWithImageProvider:v1];
  v5 = *MEMORY[0x277CBB6E8];
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 setMetadata:v3];

  return v2;
}

- (id)_nowPlayingTemplate
{
  family = [(CLKCComplicationDataSource *)self family];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  switch(family)
  {
    case 1:
      [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
      objc_claimAutoreleasedReturnValue();
      NTKImageNamed(@"modularLargeMusicEqualizer");
    case 11:
      NTKImageNamed(@"modularLargeMusicEqualizer");
    case 3:
      NTKImageNamed(@"utilityLongMusicEqualizer");
  }

  [0 setTintColor:systemBlueColor];

  return 0;
}

- (id)_reminderTemplate
{
  v3 = objc_opt_new();
  v4 = NTKClockFaceLocalizedString(@"COMPLICATION_SAMPLE_REMINDER", 0);
  [v3 setPrimaryReminderTitle:v4];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = +[(CLKDate *)NTKDate];
  v7 = [currentCalendar dateBySettingHour:15 minute:0 second:0 ofDate:v6 options:0];
  [v3 setDueDate:v7];

  [v3 setOverlappingReminderCount:1];
  v8 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  complicationTemplate = [v8 complicationTemplate];

  return complicationTemplate;
}

- (id)_breathingTemplate
{
  family = [(CLKCComplicationDataSource *)self family];
  if (family > 6)
  {
    if (family <= 8)
    {
      if (family != 7)
      {
        NTKClockFaceLocalizedFormat(@"BREATHE_MINUTES_FORMAT", @"%i MINUTES");
        [MEMORY[0x277CCACA8] localizedStringWithFormat:objc_claimAutoreleasedReturnValue(), 2];
        v4 = [MEMORY[0x277CBBB88] textProviderWithText:objc_claimAutoreleasedReturnValue()];
        v5 = [MEMORY[0x277D75348] colorWithRed:0.22 green:0.64 blue:0.68 alpha:1.0];
        [v4 setTintColor:v5];

        NTKImageNamed(@"signatureCornerBreatheSmall");
      }

      if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
      {
        NTKImageNamed(@"XLBreathe");
      }

      NTKImageNamed(@"XLModularBreatheBee");
    }

    switch(family)
    {
      case 9:
        NTKImageNamed(@"signatureCircularBreathe");
      case 10:
        NTKImageNamed(@"signatureCircularBreathe");
      case 12:
        NTKImageNamed(@"graphicXLCircularBreathe");
    }

    goto LABEL_30;
  }

  if (family <= 3)
  {
    if (!family)
    {
      if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
      {
        NTKImageNamed(@"modularSmallBreathe");
      }

      NTKImageNamed(@"modularBreatheBee");
    }

    if (family != 2)
    {
      goto LABEL_30;
    }

LABEL_13:
    if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
    {
      NTKImageNamed(@"utilityCornerBreathe");
    }

    NTKImageNamed(@"analogCornerBreatheBee");
  }

  if (family == 4)
  {
    if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
    {
      v6 = @"circularSmallBreathe";
    }

    else
    {
      v6 = @"colorAnalogBreatheBee";
    }

    NTKImageNamed(v6);
  }

  if (family == 6)
  {
    goto LABEL_13;
  }

LABEL_30:
  if (family == *MEMORY[0x277CBB668])
  {
    if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
    {
      v7 = @"circularMediumBreathe";
    }

    else
    {
      v7 = @"victoryNTKBreatheBee";
    }

    NTKImageNamed(v7);
  }

  return 0;
}

- (BOOL)supportsFlowerImages
{
  device = [(CLKCComplicationDataSource *)self device];
  isRunningGloryGMOrLater = [device isRunningGloryGMOrLater];

  return isRunningGloryGMOrLater;
}

- (id)_newsTemplate
{
  v3 = NewsServicesLibraryCore();
  if (v3)
  {
    NSSComplicationDataSourceClass = getNSSComplicationDataSourceClass();
    if (objc_opt_respondsToSelector())
    {
      family = [(CLKCComplicationDataSource *)self family];
      device = [(CLKCComplicationDataSource *)self device];
      v7 = [device sizeClass] == 0;

      v3 = [NSSComplicationDataSourceClass nss_newsComplicationTemplateForFamily:family compact:v7];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_siriTemplate
{
  if ([(CLKCComplicationDataSource *)self family]== 10)
  {
    v3 = [MEMORY[0x277CBBB10] fullColorImageProviderWithImageViewClass:objc_opt_class()];
    v4 = MEMORY[0x277CBB850];
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__NTKSampleComplicationDataSource__siriTemplate__block_invoke;
    v7[3] = &unk_27877F230;
    v7[4] = self;
    v3 = [MEMORY[0x277CBBB40] imageProviderWithImageViewCreationHandler:v7];
    v4 = MEMORY[0x277CBBA50];
  }

  v5 = [v4 templateWithImageProvider:v3];

  return v5;
}

NTKStaticSiriAnimationView *__48__NTKSampleComplicationDataSource__siriTemplate__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [NTKStaticSiriAnimationView alloc];
  v7 = [*(a1 + 32) device];
  v8 = [(NTKStaticSiriAnimationView *)v6 initWithFrame:v7 forDevice:0.0, 0.0, a2, a3];

  return v8;
}

- (id)_solarTemplate
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[NTKLocationManager sharedLocationManager];
  anyLocation = [v4 anyLocation];

  [dictionary setObject:anyLocation forKeyedSubscript:@"NTKSolarComplicationEntryLocationKey"];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NTKSolarComplicationUseIdealizedTimeKey"];
  family = [(CLKCComplicationDataSource *)self family];
  switch(family)
  {
    case 12:
      v7 = 0x277CBB940;
      goto LABEL_7;
    case 10:
      v7 = 0x277CBB858;
      goto LABEL_7;
    case 9:
      v7 = 0x277CBB820;
LABEL_7:
      v8 = [*v7 templateWithMetadata:dictionary];
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_localeDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKSampleComplicationDataSource__localeDidChange___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __52__NTKSampleComplicationDataSource__localeDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = [*(a1 + 32) delegate];
  [v4 invalidateSwitcherTemplate];
}

- (id)_imageProviderWithSystemImageName:(id)name overridePointSize:(id)size tintColor:(id)color fallbackImageName:(id)imageName
{
  nameCopy = name;
  sizeCopy = size;
  imageNameCopy = imageName;
  colorCopy = color;
  v14 = objc_opt_class();
  device = [(CLKCComplicationDataSource *)self device];
  LODWORD(v14) = [v14 _shouldUseFallbackImagesForDevice:device];

  if (v14)
  {
    NTKImageNamed(imageNameCopy);
  }

  v16 = [MEMORY[0x277CBBB98] _symbolImageProviderWithSystemName:nameCopy];
  [v16 setTintColor:colorCopy];

  [v16 setOverridePointSize:sizeCopy];

  return v16;
}

- (id)_fullColorImageProviderWithSystemImageName:(id)name tintColor:(id)color fallbackImageName:(id)imageName
{
  nameCopy = name;
  imageNameCopy = imageName;
  colorCopy = color;
  v11 = objc_opt_class();
  device = [(CLKCComplicationDataSource *)self device];
  if ([v11 _shouldUseFallbackImagesForDevice:device])
  {
    NTKImageNamed(imageNameCopy);
  }

  v13 = [MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:nameCopy];

  [v13 setTintColor:colorCopy];

  return v13;
}

@end