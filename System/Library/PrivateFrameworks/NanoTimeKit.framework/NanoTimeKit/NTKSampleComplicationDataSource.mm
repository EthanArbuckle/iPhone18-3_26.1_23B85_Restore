@interface NTKSampleComplicationDataSource
+ (BOOL)_isComplicationFamilyAvaialbleBeforeGlory:(int64_t)a3;
+ (BOOL)acceptsClassicComplicationType:(unint64_t)a3 withFamily:(int64_t)a4;
+ (BOOL)acceptsComplicationType:(unint64_t)NSSComplicationDataSourceClass withFamily:(int64_t)a4 forDevice:(id)a5;
- (BOOL)supportsFlowerImages;
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NTKSampleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_alarmTemplate;
- (id)_batteryTemplate;
- (id)_breathingTemplate;
- (id)_city;
- (id)_currentEntryModel;
- (id)_fullColorImageProviderWithSystemImageName:(id)a3 tintColor:(id)a4 fallbackImageName:(id)a5;
- (id)_heartrateTemplate;
- (id)_imageProviderWithSystemImageName:(id)a3 overridePointSize:(id)a4 tintColor:(id)a5 fallbackImageName:(id)a6;
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
- (void)_localeDidChange:(id)a3;
- (void)dealloc;
@end

@implementation NTKSampleComplicationDataSource

+ (BOOL)acceptsComplicationType:(unint64_t)NSSComplicationDataSourceClass withFamily:(int64_t)a4 forDevice:(id)a5
{
  v8 = a5;
  if ([NTKWidgetComplicationMigrationDefines hasMigratedComplicationType:NSSComplicationDataSourceClass family:a4 forDevice:v8])
  {
    goto LABEL_13;
  }

  v9 = a4 == 100 || a4 == 101;
  v10 = v9 || a4 == 102;
  if (v10 || a4 == 103)
  {
    goto LABEL_13;
  }

  if (a4 != 6)
  {
    if (a4 == 104)
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
            if ((a4 - 8) < 5 || *MEMORY[0x277CBB680] == a4)
            {
              goto LABEL_14;
            }

            goto LABEL_62;
          }

          if (NSSComplicationDataSourceClass == 5)
          {
            LOBYTE(NSSComplicationDataSourceClass) = 1;
            if (a4 - 8) < 3 || a4 == 12 || a4 == 11 && ([v8 supportsPDRCapability:740041318])
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

          if ([v8 supportsPDRCapability:710010803])
          {
            goto LABEL_13;
          }

          LOBYTE(NSSComplicationDataSourceClass) = 1;
          if ((a4 & 0xFFFFFFFFFFFFFFFBLL) == 0 || *MEMORY[0x277CBB668] == a4)
          {
            goto LABEL_14;
          }

          if (a4 >= 0xD)
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
          if (a4 - 8) < 5 && ((0x17u >> (a4 - 8)))
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
                v17 = [NSSComplicationDataSourceClass nss_newsComplicationTemplateForFamily:a4 compact:{objc_msgSend(v8, "sizeClass") == 0}];
                LOBYTE(NSSComplicationDataSourceClass) = v17 != 0;

                goto LABEL_14;
              }

              goto LABEL_62;
            }

LABEL_87:
            v18 = [a1 acceptsClassicComplicationType:NSSComplicationDataSourceClass withFamily:a4];
            goto LABEL_63;
          }

          if (a4 == 8)
          {
LABEL_71:
            LOBYTE(NSSComplicationDataSourceClass) = 1;
            goto LABEL_14;
          }

LABEL_62:
          v18 = [a1 _isComplicationFamilyAvaialbleBeforeGlory:a4];
          goto LABEL_63;
        }

        if (NSSComplicationDataSourceClass == 29)
        {
          if (a4)
          {
            v20 = a4 == 10;
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

        if (a4 == 3)
        {
          v18 = NTKIsConnectivityPhoneComplicationEnabled();
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

          v18 = [v8 isRadioPhoneComplicationEnabled];
LABEL_63:
          LOBYTE(NSSComplicationDataSourceClass) = v18;
          goto LABEL_14;
        }

        if (a4 >= 0xC)
        {
LABEL_13:
          LOBYTE(NSSComplicationDataSourceClass) = 0;
          goto LABEL_14;
        }

        v19 = 2058;
LABEL_74:
        LODWORD(NSSComplicationDataSourceClass) = v19 >> a4;
        goto LABEL_14;
      }

      if (NSSComplicationDataSourceClass == 38)
      {
        LOBYTE(NSSComplicationDataSourceClass) = a4 == 12 || (a4 - 9) < 2;
        goto LABEL_14;
      }

      if (NSSComplicationDataSourceClass != 42)
      {
        goto LABEL_87;
      }
    }

    LOBYTE(NSSComplicationDataSourceClass) = 1;
    if (a4 == 12 || (a4 & 0xFFFFFFFFFFFFFFFCLL) == 8)
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

+ (BOOL)acceptsClassicComplicationType:(unint64_t)a3 withFamily:(int64_t)a4
{
  v5 = [a1 _isComplicationFamilyAvaialbleBeforeGlory:a4];
  v7 = a3 == 26 || a3 == 11;
  return v5 && v7;
}

+ (BOOL)_isComplicationFamilyAvaialbleBeforeGlory:(int64_t)a3
{
  if (a3 < 7 && ((0x5Fu >> a3) & 1) != 0)
  {
    return 1;
  }

  return a3 == 7 || *MEMORY[0x277CBB668] == a3;
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = [(CLKCComplicationDataSource *)self family];
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
  v10 = [v9 complicationType];

  v11 = 0;
  if (v4 > 10)
  {
    v12 = v7;
    if (v4 != 11)
    {
      if (v4 != 12)
      {
        goto LABEL_9;
      }

      v12 = v8;
    }

    goto LABEL_8;
  }

  v12 = v6;
  if (v4 == 9 || (v12 = v5, v4 == 10))
  {
LABEL_8:
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
    v11 = [v12 objectForKeyedSubscript:v13];
  }

LABEL_9:

  return v11;
}

- (NTKSampleComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKSampleComplicationDataSource;
  v5 = [(CLKCComplicationDataSource *)&v8 initWithComplication:a3 family:a4 forDevice:a5];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel__localeDidChange_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = NTKSampleComplicationDataSource;
  [(NTKSampleComplicationDataSource *)&v4 dealloc];
}

- (id)currentSwitcherTemplate
{
  if (!self->_complicationTemplate)
  {
    v3 = [(CLKCComplicationDataSource *)self complication];
    v4 = [v3 complicationType];

    if (v4 > 19)
    {
      if (v4 <= 33)
      {
        switch(v4)
        {
          case 20:
            v5 = [(NTKSampleComplicationDataSource *)self _reminderTemplate];
            break;
          case 26:
            v5 = [(NTKSampleComplicationDataSource *)self _newsTemplate];
            break;
          case 29:
            v5 = [(NTKSampleComplicationDataSource *)self _siriTemplate];
            break;
          default:
            goto LABEL_36;
        }
      }

      else if (v4 > 37)
      {
        if (v4 == 38)
        {
          v5 = [(NTKSampleComplicationDataSource *)self _solarTemplate];
        }

        else
        {
          if (v4 != 42)
          {
            goto LABEL_36;
          }

          v5 = [(NTKSampleComplicationDataSource *)self _podcastsTemplate];
        }
      }

      else if (v4 == 34)
      {
        v5 = [(NTKSampleComplicationDataSource *)self _nowPlayingTemplate];
      }

      else
      {
        if (v4 != 35)
        {
          goto LABEL_36;
        }

        v5 = [(NTKSampleComplicationDataSource *)self _radioTemplate];
      }
    }

    else if (v4 <= 12)
    {
      switch(v4)
      {
        case 2:
          v5 = [(NTKSampleComplicationDataSource *)self _alarmTemplate];
          break;
        case 4:
          v5 = [(NTKSampleComplicationDataSource *)self _stopwatchTemplate];
          break;
        case 5:
          v5 = [(NTKSampleComplicationDataSource *)self _worldClockTemplate];
          break;
        default:
          goto LABEL_36;
      }
    }

    else if (v4 > 16)
    {
      if (v4 == 17)
      {
        v5 = [(NTKSampleComplicationDataSource *)self _musicTemplate];
      }

      else
      {
        if (v4 != 19)
        {
          goto LABEL_36;
        }

        v5 = [(NTKSampleComplicationDataSource *)self _breathingTemplate];
      }
    }

    else if (v4 == 13)
    {
      v5 = [(NTKSampleComplicationDataSource *)self _batteryTemplate];
    }

    else
    {
      if (v4 != 15)
      {
        goto LABEL_36;
      }

      v5 = [(NTKSampleComplicationDataSource *)self _heartrateTemplate];
    }

    complicationTemplate = self->_complicationTemplate;
    self->_complicationTemplate = v5;
  }

LABEL_36:
  v7 = self->_complicationTemplate;

  return [(CLKComplicationTemplate *)v7 finalizedCopy];
}

- (id)_batteryTemplate
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBBAD8] complicationDate];
  [v3 setEntryDate:v4];

  LODWORD(v5) = 1.0;
  [v3 setLevel:v5];
  [v3 setState:1];
  v6 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  v7 = [v6 complicationTemplate];

  return v7;
}

- (id)_heartrateTemplate
{
  v39[8] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAD8] complicationDate];
  v4 = objc_opt_new();
  [v4 setEntryDate:v3];
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 dateByAddingUnit:64 value:-3 toDate:v3 options:0];
  [v4 setMeasurementDate:v6];

  [v4 setHasBPM:1];
  [v4 setBPM:64];
  if ([(CLKCComplicationDataSource *)self family]== 11)
  {
    v32 = v5;
    v31 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{54, 11}];
    v39[0] = v31;
    v33 = self;
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
    v19 = NTKStartOfDayForDate(v3);
    v20 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v21 = [v20 components:124 fromDate:v3];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __53__NTKSampleComplicationDataSource__heartrateTemplate__block_invoke;
    v34[3] = &unk_27877F1B8;
    v35 = v21;
    v36 = v20;
    v37 = v19;
    v38 = v18;
    v22 = v18;
    v23 = v19;
    self = v33;
    v24 = v23;
    v25 = v20;
    v26 = v21;
    [v17 enumerateObjectsUsingBlock:v34];
    [v4 setHasSummary:1];
    [v4 setDailyHighBPM:173];
    [v4 setDailyLowBPM:54];
    v27 = [v22 copy];
    [v4 setChartPoints:v27];

    v5 = v32;
  }

  v28 = [v4 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  v29 = [v28 complicationTemplate];

  return v29;
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

  v9 = [(CLKCComplicationDataSource *)self family];
  v10 = v9;
  v11 = 0;
  if (v9 > 6)
  {
    if (v9 > 9)
    {
      switch(v9)
      {
        case 10:
          v16 = [MEMORY[0x277CBEB38] dictionary];
          [v16 setObject:@"NTKStopwatchComplicationMetadataStateValue_Stopped" forKeyedSubscript:@"NTKStopwatchComplicationMetadataStateKey"];
          v17 = MEMORY[0x277CBB858];
          break;
        case 11:
          v12 = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:@"stopwatch"];
          [v12 setMonochromeFilterType:1];
          v30 = [MEMORY[0x277D75348] systemOrangeColor];
          [v12 setTintColor:v30];

          v31 = MEMORY[0x277CBBB88];
          v32 = NTKClockFaceLocalizedString(@"STOPWATCH_TITLE", @"Stopwatch");
          v33 = [v31 textProviderWithText:v32];

          v34 = [MEMORY[0x277D75348] systemOrangeColor];
          [v33 setTintColor:v34];

          v11 = [MEMORY[0x277CBB9B8] templateWithHeaderImageProvider:v12 headerTextProvider:v33 bodyTextProvider:v8];

          goto LABEL_31;
        case 12:
          v16 = [MEMORY[0x277CBEB38] dictionary];
          [v16 setObject:@"NTKStopwatchComplicationMetadataStateValue_Stopped" forKeyedSubscript:@"NTKStopwatchComplicationMetadataStateKey"];
          v17 = MEMORY[0x277CBB940];
          break;
        default:
          goto LABEL_32;
      }

      v11 = [v17 templateWithMetadata:v16];
      goto LABEL_38;
    }

    if (v9 == 7)
    {
      v21 = [(CLKCComplicationDataSource *)self device];
      v19 = [NTKComplicationModuleView _extraLargeStopwatchImageProviderForDevice:v21];

      v20 = MEMORY[0x277CBB800];
      goto LABEL_21;
    }

    if (v9 != 8)
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
    v25 = [MEMORY[0x277D75348] systemOrangeColor];
    [v12 setTintColor:v25];

    v26 = [MEMORY[0x277D75348] systemOrangeColor];
    [v8 setTintColor:v26];

    v14 = MEMORY[0x277CBB908];
LABEL_28:
    v15 = v8;
    goto LABEL_29;
  }

  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v12 = [NTKCircularComplicationView _stopwatchImageProviderMedium:0];
        v13 = [MEMORY[0x277CBB790] templateWithImageProvider:v12];
        goto LABEL_30;
      }

      if (v9 != 6)
      {
        goto LABEL_32;
      }

      goto LABEL_14;
    }

    v12 = +[NTKUtilityComplicationView _stopwatchImageProvider];
    v14 = MEMORY[0x277CBBA80];
    goto LABEL_28;
  }

  switch(v9)
  {
    case 0:
      v18 = [(CLKCComplicationDataSource *)self device];
      v19 = [NTKComplicationModuleView _modularSmallStopwatchImageProviderForDevice:v18];

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
  v16 = [MEMORY[0x277D75348] systemOrangeColor];
  [v11 setTintColor:v16];
LABEL_38:

  return v11;
}

- (id)_alarmTemplate
{
  v3 = [(CLKCComplicationDataSource *)self device];
  v4 = [NTKAlarmTimelineEntry companionModelWithDevice:v3];

  v5 = [v4 templateForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];

  return v5;
}

- (id)_worldClockTemplate
{
  v3 = [(NTKSampleComplicationDataSource *)self _city];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CBEBB0];
    v6 = [v3 timeZone];
    v7 = [v5 timeZoneWithName:v6];

    v8 = MEMORY[0x277CBBB88];
    v9 = NTKWorldClockCityAbbreviation(v4);
    v10 = [v8 textProviderWithText:v9];

    v11 = MEMORY[0x277CBBB88];
    v12 = [v4 name];
    v13 = [v11 textProviderWithText:v12];

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

  v17 = [(CLKCComplicationDataSource *)self family];
  v18 = 0;
  if (v17 == 104)
  {
    v19 = 6;
  }

  else
  {
    v19 = v17;
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

        v21 = v24;
        v31 = [v7 secondsFromGMT];
        v32 = [MEMORY[0x277CBEBB0] systemTimeZone];
        v33 = (v31 - [v32 secondsFromGMT]);

        v34 = [MEMORY[0x277CBBBD8] dayForOffset:v33];
        v55 = [MEMORY[0x277CBBBD8] differenceForOffset:0 caps:0 suppressZero:v33];
        v57 = v7;
        v35 = MEMORY[0x277CBBB88];
        v36 = [v55 string];
        v54 = [v35 textProviderWithText:v36];

        v37 = NTKClockFaceLocalizedString(@"WORLDCLOCK_DAY_BEFORE_TIME", @"string used by localizers as a BOOL");
        v38 = [v37 BOOLValue];

        v39 = NTKClockFaceLocalizedString(@"WORLDCLOCK_NO_SPACE_BETWEEN_DAY_TIME", @"string used by localizers as a BOOL");
        v40 = [v39 BOOLValue];

        v41 = v16;
        if (v38)
        {
          v42 = v34;
        }

        else
        {
          v42 = v41;
        }

        if (v38)
        {
          v43 = v41;
        }

        else
        {
          v43 = v34;
        }

        v44 = MEMORY[0x277CBBBA0];
        if (v40)
        {
          v45 = @"%@%@";
        }

        else
        {
          v45 = @"%@ %@";
        }

        v53 = v34;
        v46 = [v44 textProviderWithFormat:v45, v42, v43];
        v18 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v21 body1TextProvider:v46 body2TextProvider:v54];

        v7 = v57;
        v13 = v56;
        goto LABEL_53;
      }

      v20 = v13;
      if (v10 && v16)
      {
        v21 = v10;
        v27 = v16;
      }

      else
      {
        v21 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
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
          v21 = v10;
          v22 = v16;
        }

        else
        {
          v21 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
          v22 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        }

        v29 = v22;
        v30 = MEMORY[0x277CBB7A8];
        goto LABEL_52;
      }

      v21 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v16, v13];
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

    v21 = [MEMORY[0x277CBBBA0] textProviderWithFormat:v25, v10, v16];
    v26 = MEMORY[0x277CBBA90];
LABEL_31:
    v18 = [v26 templateWithTextProvider:v21];
    goto LABEL_53;
  }

  if ((v19 - 8) >= 5)
  {
    if (v19 == 7)
    {
      v20 = v13;
      if (v10 && v16)
      {
        v21 = v10;
        v28 = v16;
      }

      else
      {
        v21 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
        v28 = [MEMORY[0x277CBBB88] textProviderWithText:&stru_284110E98];
      }

      v29 = v28;
      v30 = MEMORY[0x277CBB808];
LABEL_52:
      v18 = [v30 templateWithLine1TextProvider:v21 line2TextProvider:v29];

      v13 = v20;
      goto LABEL_53;
    }

    if (v19 != 6)
    {
      goto LABEL_54;
    }

    goto LABEL_23;
  }

  v21 = [(NTKSampleComplicationDataSource *)self _currentEntryModel];
  v23 = [v21 entryForComplicationFamily:v19];
  v18 = [v23 complicationTemplate];

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

    v18 = v50;
  }

  v51 = [MEMORY[0x277D75348] systemOrangeColor];
  [v18 setTintColor:v51];

  return v18;
}

- (id)_currentEntryModel
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBBAD8] complicationDate];
  [v3 setEntryDate:v4];

  [v3 setShowIdealizedTime:1];
  v5 = [(NTKSampleComplicationDataSource *)self _city];
  [v3 setCity:v5];

  return v3;
}

- (id)_city
{
  v2 = [(CLKCComplicationDataSource *)self complication];
  v3 = [v2 city];

  return v3;
}

- (id)_musicTemplate
{
  v3 = [(CLKCComplicationDataSource *)self family];
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
  if (v3 <= 6)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v29 = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E88 tintColor:v29 fallbackImageName:@"modularSmallMusicProgress"];

        v24 = MEMORY[0x277CBBA40];
        goto LABEL_25;
      }

      if (v3 == 1)
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
      switch(v3)
      {
        case 2:
          v31 = [MEMORY[0x277D75348] whiteColor];
          v32 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E58 tintColor:v31 fallbackImageName:@"utilityCornerMusicProgress"];

          v33 = [MEMORY[0x277CBBB80] simpleProgressProviderWithProgress:0.85];
          [v33 setTintColor:v7];
          v12 = [MEMORY[0x277CBBAA0] templateWithImageProvider:v32 progressProvider:v33 ringStyle:0];

          v8 = v20;
          v11 = v19;
          break;
        case 3:
          NTKImageNamed(@"utilityLongMusicEqualizer");
        case 4:
          v21 = [MEMORY[0x277D75348] whiteColor];
          v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:&unk_284181E70 tintColor:v21 fallbackImageName:@"colorAnalogMusicProgress"];

          v24 = MEMORY[0x277CBB778];
          goto LABEL_25;
      }
    }
  }

  else
  {
    if (v3 <= 9)
    {
      if (v3 != 7)
      {
        if (v3 != 8)
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

        v30 = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v30 fallbackImageName:@"music_signature_corner"];

        v27 = [MEMORY[0x277CBBB88] textProviderWithText:v11];
        [v27 setTintColor:v7];
        v28 = [MEMORY[0x277CBB908] templateWithTextProvider:v27 imageProvider:v22];
        goto LABEL_21;
      }

      v34 = [MEMORY[0x277D75348] whiteColor];
      v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v34 fallbackImageName:@"modularXLMusicProgress"];

      v24 = MEMORY[0x277CBB7D8];
LABEL_25:
      LODWORD(v23) = 1062836634;
      v12 = [v24 templateWithImageProvider:v22 fillFraction:0 ringStyle:v23];
      goto LABEL_26;
    }

    switch(v3)
    {
      case 10:
        v12 = v8[2](v8);
        break;
      case 11:
        NTKImageNamed(@"modularLargeMusicEqualizer");
      case 12:
        v25 = [MEMORY[0x277D75348] whiteColor];
        v22 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v25 fallbackImageName:@"graphicXLMusicProgress"];

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
  if (v3 == *MEMORY[0x277CBB668])
  {
    v35 = [MEMORY[0x277D75348] whiteColor];
    v36 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v35 fallbackImageName:@"victoryMusicProgress"];

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
  v3 = [(CLKCComplicationDataSource *)self family];
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
  if (v3 <= 6)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
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

      v19 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v19 fallbackImageName:@"ModularSmallRadio"];

      v16 = MEMORY[0x277CBBA50];
    }

    else
    {
      switch(v3)
      {
        case 2:
          v23 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v23 fallbackImageName:@"UtilityCornerRadio"];

          v16 = MEMORY[0x277CBBAC0];
          break;
        case 3:
          v20 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v20 fallbackImageName:@"UtilityTextStringRadio"];

          v13 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
          v21 = MEMORY[0x277CBBA80];
          goto LABEL_21;
        case 4:
          v15 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v15 fallbackImageName:@"ColorRadio"];

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

  if (v3 <= 9)
  {
    if (v3 != 7)
    {
      if (v3 != 8)
      {
        v11 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
        v12 = MEMORY[0x277CBB810];
        v13 = v9[2](v9);
        v14 = [v12 templateWithCircularTemplate:v13 textProvider:v11];
LABEL_22:
        v10 = v14;
        goto LABEL_23;
      }

      v22 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v22 fallbackImageName:@"GraphicCornerRadio"];

      v13 = [MEMORY[0x277CBBB88] textProviderWithText:@"Try Me"];
      [v13 setTintColor:v7];
      v21 = MEMORY[0x277CBB908];
LABEL_21:
      v14 = [v21 templateWithTextProvider:v13 imageProvider:v11];
      goto LABEL_22;
    }

    v24 = [MEMORY[0x277D75348] whiteColor];
    v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v24 fallbackImageName:@"XLRadio"];

    v16 = MEMORY[0x277CBB7F0];
    goto LABEL_27;
  }

  switch(v3)
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
  if (v3 == *MEMORY[0x277CBB668])
  {
    v25 = [MEMORY[0x277D75348] whiteColor];
    v26 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v25 fallbackImageName:@"VictoryDigitalRadio"];

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
  v3 = [(CLKCComplicationDataSource *)self family];
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
  if (v3 <= 6)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v16 = [MEMORY[0x277D75348] whiteColor];
        v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v16 fallbackImageName:@"ModularSmallPodcast"];

        v17 = [MEMORY[0x277D75348] whiteColor];
        [v11 setTintColor:v17];

        v15 = MEMORY[0x277CBBA50];
        goto LABEL_25;
      }

      if (v3 == 1)
      {
        [MEMORY[0x277CBBB88] textProviderWithText:@"Bigfoot"];
        objc_claimAutoreleasedReturnValue();
        NTKImageNamed(@"modularLargeMusicEqualizer");
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v19 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v19 fallbackImageName:@"UtilityCornerPodcast"];

          v15 = MEMORY[0x277CBBAC0];
          goto LABEL_25;
        case 3:
          NTKImageNamed(@"utilityLongMusicEqualizer");
        case 4:
          v14 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v14 fallbackImageName:@"ColorPodcast"];

          v15 = MEMORY[0x277CBB790];
          goto LABEL_25;
      }
    }
  }

  else
  {
    if (v3 <= 9)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v18 = [MEMORY[0x277D75348] whiteColor];
          v11 = [(NTKSampleComplicationDataSource *)self _fullColorImageProviderWithSystemImageName:v6 tintColor:v18 fallbackImageName:@"GraphicCornerPodcast"];

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

      v20 = [MEMORY[0x277D75348] whiteColor];
      v11 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v20 fallbackImageName:@"XLPodcast"];

      v15 = MEMORY[0x277CBB7F0];
LABEL_25:
      v10 = [v15 templateWithImageProvider:v11];
LABEL_26:

      goto LABEL_27;
    }

    switch(v3)
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
  if (v3 == *MEMORY[0x277CBB668])
  {
    v21 = [MEMORY[0x277D75348] whiteColor];
    v22 = [(NTKSampleComplicationDataSource *)self _imageProviderWithSystemImageName:v6 overridePointSize:0 tintColor:v21 fallbackImageName:@"VictoryDigitalPodcast"];

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
  v2 = [(CLKCComplicationDataSource *)self family];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  switch(v2)
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

  [0 setTintColor:v3];

  return 0;
}

- (id)_reminderTemplate
{
  v3 = objc_opt_new();
  v4 = NTKClockFaceLocalizedString(@"COMPLICATION_SAMPLE_REMINDER", 0);
  [v3 setPrimaryReminderTitle:v4];

  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = +[(CLKDate *)NTKDate];
  v7 = [v5 dateBySettingHour:15 minute:0 second:0 ofDate:v6 options:0];
  [v3 setDueDate:v7];

  [v3 setOverlappingReminderCount:1];
  v8 = [v3 entryForComplicationFamily:{-[CLKCComplicationDataSource family](self, "family")}];
  v9 = [v8 complicationTemplate];

  return v9;
}

- (id)_breathingTemplate
{
  v3 = [(CLKCComplicationDataSource *)self family];
  if (v3 > 6)
  {
    if (v3 <= 8)
    {
      if (v3 != 7)
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

    switch(v3)
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

  if (v3 <= 3)
  {
    if (!v3)
    {
      if ([(NTKSampleComplicationDataSource *)self supportsFlowerImages])
      {
        NTKImageNamed(@"modularSmallBreathe");
      }

      NTKImageNamed(@"modularBreatheBee");
    }

    if (v3 != 2)
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

  if (v3 == 4)
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

  if (v3 == 6)
  {
    goto LABEL_13;
  }

LABEL_30:
  if (v3 == *MEMORY[0x277CBB668])
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
  v2 = [(CLKCComplicationDataSource *)self device];
  v3 = [v2 isRunningGloryGMOrLater];

  return v3;
}

- (id)_newsTemplate
{
  v3 = NewsServicesLibraryCore();
  if (v3)
  {
    NSSComplicationDataSourceClass = getNSSComplicationDataSourceClass();
    if (objc_opt_respondsToSelector())
    {
      v5 = [(CLKCComplicationDataSource *)self family];
      v6 = [(CLKCComplicationDataSource *)self device];
      v7 = [v6 sizeClass] == 0;

      v3 = [NSSComplicationDataSourceClass nss_newsComplicationTemplateForFamily:v5 compact:v7];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[NTKLocationManager sharedLocationManager];
  v5 = [v4 anyLocation];

  [v3 setObject:v5 forKeyedSubscript:@"NTKSolarComplicationEntryLocationKey"];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NTKSolarComplicationUseIdealizedTimeKey"];
  v6 = [(CLKCComplicationDataSource *)self family];
  switch(v6)
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
      v8 = [*v7 templateWithMetadata:v3];
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_localeDidChange:(id)a3
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

- (id)_imageProviderWithSystemImageName:(id)a3 overridePointSize:(id)a4 tintColor:(id)a5 fallbackImageName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = objc_opt_class();
  v15 = [(CLKCComplicationDataSource *)self device];
  LODWORD(v14) = [v14 _shouldUseFallbackImagesForDevice:v15];

  if (v14)
  {
    NTKImageNamed(v12);
  }

  v16 = [MEMORY[0x277CBBB98] _symbolImageProviderWithSystemName:v10];
  [v16 setTintColor:v13];

  [v16 setOverridePointSize:v11];

  return v16;
}

- (id)_fullColorImageProviderWithSystemImageName:(id)a3 tintColor:(id)a4 fallbackImageName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = [(CLKCComplicationDataSource *)self device];
  if ([v11 _shouldUseFallbackImagesForDevice:v12])
  {
    NTKImageNamed(v9);
  }

  v13 = [MEMORY[0x277CBBB20] _symbolImageProviderWithSystemName:v8];

  [v13 setTintColor:v10];

  return v13;
}

@end