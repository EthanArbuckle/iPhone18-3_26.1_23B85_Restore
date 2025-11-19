@interface NTKAlarmTimelineEntry
+ (id)companionModelWithDevice:(id)a3;
- (NTKAlarmTimelineEntry)initWithDevice:(id)a3;
- (id)_activeStateTimeRelativeDateTextProvider;
- (id)_activeStateTimeTextProvider;
- (id)_circularTemplateForAlarm:(BOOL)a3;
- (id)_extraLargeAlarmInactiveImageProvider;
- (id)_getAlarmImageProviderWithActiveStatus:(BOOL)a3;
- (id)_largeUtilityInactiveImageProvider;
- (id)_modularSmallAlarmInactiveImageProvider;
- (id)_newCircularMediumTemplate;
- (id)_newCircularSmallTemplate;
- (id)_newExtraLargeTemplate;
- (id)_newLargeModularTemplate;
- (id)_newLargeUtilityTemplate;
- (id)_newSignatureBezelTemplate;
- (id)_newSignatureCircularTemplate;
- (id)_newSignatureCornerTemplate;
- (id)_newSignatureExtraLargeCircularTemplate;
- (id)_newSignatureRectangularTemplate;
- (id)_newSmallFlatUtilityTemplate;
- (id)_newSmallModularTemplate;
- (id)_richCircularMetadata;
- (id)_snoozeStateDateTextProvider;
- (id)description;
- (id)templateForComplicationFamily:(int64_t)a3;
- (void)_makeAlarmStackTextTimeProvider:(id *)a3 designatorProvider:(id *)a4 designatorExists:(BOOL *)a5 designatorLeads:(BOOL *)a6;
@end

@implementation NTKAlarmTimelineEntry

+ (id)companionModelWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKAlarmTimelineEntry alloc] initWithDevice:v3];

  [(NTKAlarmTimelineEntry *)v4 setEntryType:4];
  v5 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", 0);
  [(NTKAlarmTimelineEntry *)v4 setAlarmLabel:v5];

  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = +[(CLKDate *)NTKDate];
  v8 = [v6 dateBySettingHour:7 minute:0 second:0 ofDate:v7 options:0];
  [(NTKAlarmTimelineEntry *)v4 setFireDate:v8];

  return v4;
}

- (NTKAlarmTimelineEntry)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKAlarmTimelineEntry;
  v6 = [(NTKAlarmTimelineEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (id)templateForComplicationFamily:(int64_t)a3
{
  v5 = 0;
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v6 = [(NTKAlarmTimelineEntry *)self _newSignatureCircularTemplate];
          break;
        case 11:
          v6 = [(NTKAlarmTimelineEntry *)self _newSignatureRectangularTemplate];
          break;
        case 12:
          v6 = [(NTKAlarmTimelineEntry *)self _newSignatureExtraLargeCircularTemplate];
          break;
        default:
          goto LABEL_28;
      }
    }

    else if (a3 == 7)
    {
      v6 = [(NTKAlarmTimelineEntry *)self _newExtraLargeTemplate];
    }

    else if (a3 == 8)
    {
      v6 = [(NTKAlarmTimelineEntry *)self _newSignatureCornerTemplate];
    }

    else
    {
      v6 = [(NTKAlarmTimelineEntry *)self _newSignatureBezelTemplate];
    }

    goto LABEL_27;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v6 = [(NTKAlarmTimelineEntry *)self _newLargeUtilityTemplate];
      goto LABEL_27;
    }

    if (a3 == 4)
    {
      v6 = [(NTKAlarmTimelineEntry *)self _newCircularSmallTemplate];
      goto LABEL_27;
    }

    if (a3 != 6)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  switch(a3)
  {
    case 0:
      v6 = [(NTKAlarmTimelineEntry *)self _newSmallModularTemplate];
      goto LABEL_27;
    case 1:
      v6 = [(NTKAlarmTimelineEntry *)self _newLargeModularTemplate];
      goto LABEL_27;
    case 2:
LABEL_14:
      v6 = [(NTKAlarmTimelineEntry *)self _newSmallFlatUtilityTemplate];
LABEL_27:
      v5 = v6;
      break;
  }

LABEL_28:
  if (*MEMORY[0x277CBB668] == a3)
  {
    v7 = [(NTKAlarmTimelineEntry *)self _newCircularMediumTemplate];

    v5 = v7;
  }

  v8 = [MEMORY[0x277D75348] systemOrangeColor];
  [v5 setTintColor:v8];

  return v5;
}

- (id)_newSmallModularTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"modularAlarmSnoozing");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
        v12 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v12];

        v11 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      }

      else
      {
        v5 = 0;
        if (v3 != 4)
        {
          goto LABEL_19;
        }

        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"modularAlarmActive");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm.waves.left.and.right.fill"];
        v10 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v10];

        v11 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
      }

      v5 = v11;
      goto LABEL_19;
    }

LABEL_11:
    v4 = [(NTKAlarmTimelineEntry *)self _modularSmallAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"ALARMS_NONE_SMALL";
    v8 = @"NONE";
    goto LABEL_13;
  }

  if (!v3)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _modularSmallAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"UNKNOWN_TIME";
    v8 = @"‒‒:‒‒";
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    goto LABEL_11;
  }

  v5 = 0;
  if (v3 == 2)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _modularSmallAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"ALARMS_OFF_SMALL";
    v8 = @"OFF";
LABEL_13:
    v9 = NTKClockFaceLocalizedString(v7, v8);
    v5 = [v6 textProviderWithText:v9];
  }

LABEL_19:
  v13 = [MEMORY[0x277CBBA68] templateWithLine1ImageProvider:v4 line2TextProvider:v5];

  return v13;
}

- (id)_newLargeModularTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v18 = MEMORY[0x277CBBB88];
      v19 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", @"Alarm");
      v4 = [v18 textProviderWithText:v19];

      v8 = MEMORY[0x277CBBB88];
      v9 = @"ALARMS_NOT_UPCOMING_LARGE";
      v10 = @"None upcoming";
      goto LABEL_13;
    }

    if (v3 == 5)
    {
      v24 = MEMORY[0x277CBBB88];
      v25 = NTKClockFaceLocalizedString(@"ALARMS_SNOOZE", @"Snooze");
      v4 = [v24 textProviderWithText:v25];

      v13 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
    }

    else
    {
      v5 = 0;
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      v11 = MEMORY[0x277CBBB88];
      v12 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", @"Alarm");
      v4 = [v11 textProviderWithText:v12];

      v13 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
    }

    v5 = v13;
    goto LABEL_16;
  }

  if (!v3)
  {
    v14 = MEMORY[0x277CBBB88];
    v15 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", @"Alarm");
    v4 = [v14 textProviderWithText:v15];

    v16 = MEMORY[0x277CBBB88];
    v17 = NTKClockFaceLocalizedString(@"UNKNOWN_TIME", @"‒‒:‒‒");
    v5 = [v16 textProviderWithText:v17];

    goto LABEL_16;
  }

  if (v3 == 1)
  {
    v20 = MEMORY[0x277CBBB88];
    v21 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", @"Alarm");
    v4 = [v20 textProviderWithText:v21];

    v8 = MEMORY[0x277CBBB88];
    v9 = @"ALARMS_NONE_LARGE";
    v10 = @"No Alarms";
    goto LABEL_13;
  }

  v5 = 0;
  if (v3 != 2)
  {
LABEL_16:
    v23 = [MEMORY[0x277CBBA20] templateWithHeaderTextProvider:v4 bodyTextProvider:v5];
    goto LABEL_17;
  }

  v6 = MEMORY[0x277CBBB88];
  v7 = NTKClockFaceLocalizedString(@"ALARMS_TITLE", @"Alarm");
  v4 = [v6 textProviderWithText:v7];

  v8 = MEMORY[0x277CBBB88];
  v9 = @"ALARMS_OFF_LARGE";
  v10 = @"All alarms off";
LABEL_13:
  v22 = NTKClockFaceLocalizedString(v9, v10);
  v5 = [v8 textProviderWithText:v22];

  v23 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v4 body1TextProvider:v5];
LABEL_17:
  v26 = v23;

  return v26;
}

- (id)_circularTemplateForAlarm:(BOOL)a3
{
  v3 = a3;
  v19 = 0;
  v17 = 0;
  v18 = 0;
  [(NTKAlarmTimelineEntry *)self _makeAlarmStackTextTimeProvider:&v18 designatorProvider:&v17 designatorExists:&v19 + 1 designatorLeads:&v19];
  v4 = v18;
  v5 = v17;
  v6 = v5;
  if (HIBYTE(v19) != 1 || v4 == 0 || v5 == 0)
  {
    if (v3)
    {
      v9 = MEMORY[0x277CBB750];
    }

    else
    {
      v9 = MEMORY[0x277CBB798];
    }

    v15 = [v9 templateWithTextProvider:v4];
  }

  else
  {
    if (v19)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    v11 = 0x277CBB760;
    if (v19)
    {
      v12 = v4;
    }

    else
    {
      v12 = v5;
    }

    if (!v3)
    {
      v11 = 0x277CBB7A8;
    }

    v13 = *v11;
    v14 = v10;
    v15 = [v13 templateWithLine1TextProvider:v14 line2TextProvider:v12];
  }

  return v15;
}

- (void)_makeAlarmStackTextTimeProvider:(id *)a3 designatorProvider:(id *)a4 designatorExists:(BOOL *)a5 designatorLeads:(BOOL *)a6
{
  v18 = objc_opt_new();
  v11 = [(NTKAlarmTimelineEntry *)self fireDate];
  [v18 setOverrideDate:v11];

  [v18 _setUseNarrowDesignatorTextForGerman:1];
  if (a3)
  {
    v12 = MEMORY[0x277CBBB88];
    v13 = [v18 timeText];
    *a3 = [v12 textProviderWithText:v13];
  }

  if (a4)
  {
    v14 = MEMORY[0x277CBBB88];
    v15 = [v18 designatorText];
    *a4 = [v14 textProviderWithText:v15];
  }

  v16 = v18;
  if (a5)
  {
    *a5 = [v18 timeAndDesignatorTextHasDesignator];
    v16 = v18;
  }

  if (a6)
  {
    v17 = [v16 timeAndDesignatorTextHasDesignator];
    if (v17)
    {
      LOBYTE(v17) = [v18 timeAndDesignatorTextStartsWithDesignator];
    }

    *a6 = v17;
    v16 = v18;
  }
}

- (id)_newCircularSmallTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  if (v3 >= 4)
  {
    if (v3 == 5)
    {
      if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
      {
        NTKImageNamed(@"colorAnalogAlarmSnooze");
      }

      v8 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
      v9 = [MEMORY[0x277D75348] systemOrangeColor];
      [v8 setTintColor:v9];

      v10 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      v6 = [MEMORY[0x277CBB7A0] templateWithLine1ImageProvider:v8 line2TextProvider:v10];
    }

    else if (v3 == 4)
    {
      [(NTKAlarmTimelineEntry *)self _circularTemplateForAlarm:0];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"colorAnalogAlarm");
    }

    v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
    v5 = [MEMORY[0x277D75348] systemOrangeColor];
    [v4 setTintColor:v5];

    v6 = [MEMORY[0x277CBB790] templateWithImageProvider:v4];
  }

  return v6;
}

- (id)_newCircularMediumTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  if (v3 >= 4)
  {
    if (v3 == 5)
    {
      if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
      {
        NTKImageNamed(@"victoryNTKAlarmSnooze");
      }

      v8 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
      v9 = [MEMORY[0x277D75348] systemOrangeColor];
      [v8 setTintColor:v9];

      v10 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      v6 = [MEMORY[0x277CBB758] templateWithLine1ImageProvider:v8 line2TextProvider:v10];
    }

    else if (v3 == 4)
    {
      [(NTKAlarmTimelineEntry *)self _circularTemplateForAlarm:1];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"victoryNTKAlarm");
    }

    v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
    v5 = [MEMORY[0x277D75348] systemOrangeColor];
    [v4 setTintColor:v5];

    v6 = [MEMORY[0x277CBB748] templateWithImageProvider:v4];
  }

  return v6;
}

- (id)_newSmallFlatUtilityTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"analogAlarmSnooze");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
        v15 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v15];

        v12 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      }

      else
      {
        v5 = 0;
        if (v3 != 4)
        {
          goto LABEL_27;
        }

        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"analogAlarmActive");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm.waves.left.and.right.fill"];
        v11 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v11];

        v12 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
      }

      v5 = v12;
      goto LABEL_27;
    }

    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"analogAlarmInactive");
    }

LABEL_17:
    v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
    v13 = [MEMORY[0x277D75348] systemOrangeColor];
    [v4 setTintColor:v13];

    v8 = MEMORY[0x277CBBB88];
    v9 = @"ALARMS_NONE_SMALL";
    v10 = @"NONE";
LABEL_24:
    v14 = NTKClockFaceLocalizedString(v9, v10);
    v5 = [v8 textProviderWithText:v14];

    goto LABEL_27;
  }

  if (!v3)
  {
    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"analogAlarmInactive");
    }

    v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
    v6 = [MEMORY[0x277D75348] systemOrangeColor];
    [v4 setTintColor:v6];

    v8 = MEMORY[0x277CBBB88];
    v9 = @"UNKNOWN_TIME";
    v10 = @"‒‒:‒‒";
    goto LABEL_24;
  }

  if (v3 == 1)
  {
    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"analogAlarmInactive");
    }

    goto LABEL_17;
  }

  v5 = 0;
  if (v3 == 2)
  {
    if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
    {
      NTKImageNamed(@"analogAlarmInactive");
    }

    v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
    v7 = [MEMORY[0x277D75348] systemOrangeColor];
    [v4 setTintColor:v7];

    v8 = MEMORY[0x277CBBB88];
    v9 = @"ALARMS_OFF_SMALL";
    v10 = @"OFF";
    goto LABEL_24;
  }

LABEL_27:
  v16 = [MEMORY[0x277CBBA90] templateWithTextProvider:v5 imageProvider:v4];

  return v16;
}

- (id)_newLargeUtilityTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"analogAlarmSnooze");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
        v14 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v14];

        v13 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      }

      else
      {
        v5 = 0;
        if (v3 != 4)
        {
          goto LABEL_21;
        }

        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"analogAlarmActive");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm.waves.left.and.right.fill"];
        v12 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v12];

        v13 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
      }

      v5 = v13;
      goto LABEL_21;
    }

    v4 = [(NTKAlarmTimelineEntry *)self _largeUtilityInactiveImageProvider];
    v9 = MEMORY[0x277CBBB88];
    v10 = @"ALARMS_NOT_UPCOMING_LARGE_ALL_CAPS";
    v11 = @"NONE UPCOMING";
LABEL_14:
    v7 = NTKClockFaceLocalizedString(v10, v11);
    v5 = [v9 textProviderWithText:v7];
    goto LABEL_15;
  }

  if (!v3)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _largeUtilityInactiveImageProvider];
    v9 = MEMORY[0x277CBBB88];
    v10 = @"UNKNOWN_TIME";
    v11 = @"‒‒:‒‒";
    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _largeUtilityInactiveImageProvider];
    v9 = MEMORY[0x277CBBB88];
    v10 = @"ALARMS_NONE_LARGE_ALL_CAPS";
    v11 = @"NO ALARMS";
    goto LABEL_14;
  }

  v5 = 0;
  if (v3 == 2)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _largeUtilityInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = NTKClockFaceLocalizedString(@"ALARMS_OFF_LARGE_ALL_CAPS", @"ALL ALARMS OFF");
    v8 = NTKClockFaceLocalizedString(@"ALARMS_OFF_LARGE_ALL_CAPS_SHORT", @"ALARMS OFF");
    v5 = [v6 textProviderWithText:v7 shortText:v8];

LABEL_15:
  }

LABEL_21:
  v15 = [MEMORY[0x277CBBA80] templateWithTextProvider:v5 imageProvider:v4];

  return v15;
}

- (id)_newExtraLargeTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"XLmodularAlarmSnoozing");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"zzz"];
        v12 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v12];

        v11 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      }

      else
      {
        v5 = 0;
        if (v3 != 4)
        {
          goto LABEL_19;
        }

        if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
        {
          NTKImageNamed(@"XLmodularAlarmActive");
        }

        v4 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm.waves.left.and.right.fill"];
        v10 = [MEMORY[0x277D75348] systemOrangeColor];
        [v4 setTintColor:v10];

        v11 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
      }

      v5 = v11;
      goto LABEL_19;
    }

LABEL_11:
    v4 = [(NTKAlarmTimelineEntry *)self _extraLargeAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"ALARMS_NONE_SMALL";
    v8 = @"NONE";
    goto LABEL_13;
  }

  if (!v3)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _extraLargeAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"UNKNOWN_TIME";
    v8 = @"‒‒:‒‒";
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    goto LABEL_11;
  }

  v5 = 0;
  if (v3 == 2)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _extraLargeAlarmInactiveImageProvider];
    v6 = MEMORY[0x277CBBB88];
    v7 = @"ALARMS_OFF_SMALL";
    v8 = @"OFF";
LABEL_13:
    v9 = NTKClockFaceLocalizedString(v7, v8);
    v5 = [v6 textProviderWithText:v9];
  }

LABEL_19:
  v13 = [MEMORY[0x277CBB800] templateWithLine1ImageProvider:v4 line2TextProvider:v5];

  return v13;
}

- (id)_newSignatureCornerTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:1];
        v10 = MEMORY[0x277CBBBA0];
        v7 = NTKClockFaceLocalizedString(@"SNOOZING_LABEL_CORNER_FORMAT", @"SNOOZING %@");
        v11 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
      }

      else
      {
        v5 = 0;
        if (v3 != 4)
        {
          goto LABEL_18;
        }

        v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:1];
        v10 = MEMORY[0x277CBBBA0];
        v7 = NTKClockFaceLocalizedString(@"ALARM_LABEL_CORNER_FORMAT", @"ALARM %@");
        v11 = [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
      }

      v8 = v11;
      v9 = [v10 textProviderWithFormat:v7, v11];
      goto LABEL_16;
    }

    v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:0];
    v12 = MEMORY[0x277CBBB88];
    v13 = @"ALARMS_NOT_UPCOMING_CORNER";
    v14 = @"NONE UPCOMING";
LABEL_13:
    v7 = NTKClockFaceLocalizedString(v13, v14);
    v5 = [v12 textProviderWithText:v7];
LABEL_17:

    goto LABEL_18;
  }

  if (!v3)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:0];
    v12 = MEMORY[0x277CBBB88];
    v13 = @"UNKNOWN_TIME";
    v14 = @"‒‒:‒‒";
    goto LABEL_13;
  }

  if (v3 == 1)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:0];
    v12 = MEMORY[0x277CBBB88];
    v13 = @"ALARMS_NONE_CORNER";
    v14 = @"NO ALARMS";
    goto LABEL_13;
  }

  v5 = 0;
  if (v3 == 2)
  {
    v4 = [(NTKAlarmTimelineEntry *)self _getAlarmImageProviderWithActiveStatus:0];
    v6 = MEMORY[0x277CBBB88];
    v7 = NTKClockFaceLocalizedString(@"ALARMS_OFF_CORNER", @"ALL ALARMS OFF");
    v8 = NTKClockFaceLocalizedString(@"ALARMS_OFF_CORNER_SHORT", @"ALARMS OFF");
    v9 = [v6 textProviderWithText:v7 shortText:v8];
LABEL_16:
    v5 = v9;

    goto LABEL_17;
  }

LABEL_18:
  v15 = [MEMORY[0x277D75348] systemOrangeColor];
  [v5 setTintColor:v15];

  v16 = [MEMORY[0x277CBB908] templateWithTextProvider:v5 imageProvider:v4];

  return v16;
}

- (id)_getAlarmImageProviderWithActiveStatus:(BOOL)a3
{
  v3 = a3;
  v19[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277D75348] systemOrangeColor];
    v19[0] = v5;
    v6 = [MEMORY[0x277D75348] whiteColor];
    v19[1] = v6;
    v7 = v19;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
    v18[0] = v5;
    v6 = [MEMORY[0x277D75348] systemOrangeColor];
    v18[1] = v6;
    v7 = v18;
  }

  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v9 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v8];
  v10 = [MEMORY[0x277D755D0] configurationWithScale:1];
  v11 = [v10 configurationByApplyingConfiguration:v9];
  v12 = [MEMORY[0x277D755B8] systemImageNamed:@"alarm.waves.left.and.right.fill" withConfiguration:v11];
  v13 = [MEMORY[0x277D755B8] systemImageNamed:@"alarm" withConfiguration:v11];
  if (![(NTKAlarmTimelineEntry *)self _pairedDeviceSupportsComplicationSymbols])
  {
    NTKImageNamed(@"fullColorAnalogAlarm");
  }

  if (v3)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = [MEMORY[0x277CBBB10] providerWithFullColorImage:v15 monochromeFilterType:1 applyScalingAndCircularMasking:0];

  return v16;
}

- (id)_richCircularMetadata
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(NTKAlarmTimelineEntry *)self entryType];
  if (v4 == 4)
  {
    [v3 setObject:@"NTKAlarmComplicationMetadataStateValue_Set" forKeyedSubscript:@"NTKAlarmComplicationMetadataStateKey"];
    v18 = 0;
    v16 = 0;
    v17 = 0;
    [(NTKAlarmTimelineEntry *)self _makeAlarmStackTextTimeProvider:&v17 designatorProvider:&v16 designatorExists:&v18 + 1 designatorLeads:&v18];
    v6 = v17;
    v12 = v16;
    [v3 setObject:v6 forKeyedSubscript:@"NTKAlarmComplicationMetadataTimeTextProviderKey"];
    [v3 setObject:v12 forKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorTextProviderKey"];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:HIBYTE(v18)];
    [v3 setObject:v13 forKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorExistsKey"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    [v3 setObject:v14 forKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorLeadsKey"];

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBB6E8]];
    goto LABEL_5;
  }

  if (v4 == 5)
  {
    [v3 setObject:@"NTKAlarmComplicationMetadataStateValue_Snooze" forKeyedSubscript:@"NTKAlarmComplicationMetadataStateKey"];
    v5 = [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
    [v3 setObject:v5 forKeyedSubscript:@"NTKAlarmComplicationMetadataTimeTextProviderKey"];

    v6 = [(NTKAlarmTimelineEntry *)self snoozeDate];
    v7 = [v6 dateByAddingTimeInterval:-540.0];
    v8 = MEMORY[0x277CBBBB0];
    v9 = [MEMORY[0x277D75348] systemOrangeColor];
    v19[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v11 = [v8 gaugeProviderWithStyle:1 gaugeColors:v10 gaugeColorLocations:0 startDate:v7 endDate:v6];
    [v3 setObject:v11 forKeyedSubscript:@"NTKAlarmComplicationMetadataGaugeProviderKey"];

LABEL_5:
    goto LABEL_7;
  }

  [v3 setObject:@"NTKAlarmComplicationMetadataStateValue_Idle" forKeyedSubscript:@"NTKAlarmComplicationMetadataStateKey"];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBB6E8]];
LABEL_7:

  return v3;
}

- (id)_newSignatureCircularTemplate
{
  v2 = MEMORY[0x277CBB858];
  v3 = [(NTKAlarmTimelineEntry *)self _richCircularMetadata];
  v4 = [v2 templateWithMetadata:v3];

  return v4;
}

- (id)_newSignatureExtraLargeCircularTemplate
{
  v2 = MEMORY[0x277CBB940];
  v3 = [(NTKAlarmTimelineEntry *)self _richCircularMetadata];
  v4 = [v2 templateWithMetadata:v3];

  return v4;
}

- (id)_newSignatureBezelTemplate
{
  v2 = MEMORY[0x277CBB810];
  v3 = [(NTKAlarmTimelineEntry *)self _newSignatureCircularTemplate];
  v4 = [v2 templateWithCircularTemplate:v3];

  return v4;
}

- (id)_newSignatureRectangularTemplate
{
  v3 = [(NTKAlarmTimelineEntry *)self entryType];
  if (v3 > 2)
  {
    if (v3 != 3)
    {
      if (v3 == 5)
      {
        v8 = MEMORY[0x277CBBB88];
        v9 = NTKClockFaceLocalizedString(@"ALARMS_SNOOZE", @"Snooze");
        [v8 textProviderWithText:v9];
        objc_claimAutoreleasedReturnValue();

        [(NTKAlarmTimelineEntry *)self _snoozeStateDateTextProvider];
        objc_claimAutoreleasedReturnValue();
      }

      else if (v3 == 4)
      {
        [(NTKAlarmTimelineEntry *)self _activeStateTimeTextProvider];
        objc_claimAutoreleasedReturnValue();
        [(NTKAlarmTimelineEntry *)self _activeStateTimeRelativeDateTextProvider];
        objc_claimAutoreleasedReturnValue();
      }

LABEL_15:
      NTKImageNamed(@"fullColorRectangularAlarm");
    }

    v4 = MEMORY[0x277CBBB88];
    v5 = @"ALARMS_NOT_UPCOMING_LARGE";
    v6 = @"None upcoming";
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x277CBBB88];
      v5 = @"ALARMS_NONE_LARGE";
      v6 = @"No Alarms";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_15;
      }

      v4 = MEMORY[0x277CBBB88];
      v5 = @"ALARMS_OFF_LARGE";
      v6 = @"All alarms off";
    }
  }

  else
  {
    v4 = MEMORY[0x277CBBB88];
    v5 = @"UNKNOWN_TIME";
    v6 = @"‒‒:‒‒";
  }

  v7 = NTKClockFaceLocalizedString(v5, v6);
  [v4 textProviderWithText:v7];
  objc_claimAutoreleasedReturnValue();

  goto LABEL_15;
}

- (id)_activeStateTimeTextProvider
{
  v2 = MEMORY[0x277CBBBB8];
  v3 = [(NTKAlarmTimelineEntry *)self fireDate];
  v4 = [v2 textProviderWithDate:v3];

  [v4 setDisallowBothMinutesAndDesignator:0];

  return v4;
}

- (id)_activeStateTimeRelativeDateTextProvider
{
  v2 = MEMORY[0x277CBBB60];
  v3 = [(NTKAlarmTimelineEntry *)self fireDate];
  v4 = [v2 textProviderWithDate:v3 style:0 units:96];

  return v4;
}

- (id)_snoozeStateDateTextProvider
{
  v2 = MEMORY[0x277CBBB60];
  v3 = [(NTKAlarmTimelineEntry *)self snoozeDate];
  v4 = [v2 textProviderWithDate:v3 style:2 units:224];

  return v4;
}

- (id)_modularSmallAlarmInactiveImageProvider
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke;
  v5[3] = &unk_27877DDA0;
  v5[4] = self;
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke(v5, v3);

  return _modularSmallAlarmInactiveImageProvider_glyphImageProvider;
}

uint64_t __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&NTKAlarmSnoozeSymbol_block_invoke_lock);
  if (NTKAlarmSnoozeSymbol_block_invoke___cachedDevice)
  {
    v4 = NTKAlarmSnoozeSymbol_block_invoke___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != NTKAlarmSnoozeSymbol_block_invoke___previousCLKDeviceVersion))
  {
    NTKAlarmSnoozeSymbol_block_invoke___cachedDevice = v3;
    NTKAlarmSnoozeSymbol_block_invoke___previousCLKDeviceVersion = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v8[4] = *(a1 + 32);
    NTKAlarmSnoozeSymbol_block_invoke_value = __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_2(v8);
  }

  v6 = NTKAlarmSnoozeSymbol_block_invoke_value;
  os_unfair_lock_unlock(&NTKAlarmSnoozeSymbol_block_invoke_lock);

  return v6;
}

uint64_t __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_3;
  v2[3] = &unk_27877DD78;
  v2[4] = *(a1 + 32);
  __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_3(v2);
  return 1;
}

void __64__NTKAlarmTimelineEntry__modularSmallAlarmInactiveImageProvider__block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) _pairedDeviceSupportsComplicationSymbols] & 1) == 0)
  {
    NTKImageNamed(@"modularAlarmInactive");
  }

  v1 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
  v2 = _modularSmallAlarmInactiveImageProvider_glyphImageProvider;
  _modularSmallAlarmInactiveImageProvider_glyphImageProvider = v1;

  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [_modularSmallAlarmInactiveImageProvider_glyphImageProvider setTintColor:v3];
}

- (id)_extraLargeAlarmInactiveImageProvider
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke;
  v5[3] = &unk_27877DDA0;
  v5[4] = self;
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke(v5, v3);

  return _extraLargeAlarmInactiveImageProvider_glyphImageProvider;
}

uint64_t __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&NTKAlarmSnoozeSymbol_block_invoke_2_lock);
  if (NTKAlarmSnoozeSymbol_block_invoke_2___cachedDevice)
  {
    v4 = NTKAlarmSnoozeSymbol_block_invoke_2___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != NTKAlarmSnoozeSymbol_block_invoke_2___previousCLKDeviceVersion))
  {
    NTKAlarmSnoozeSymbol_block_invoke_2___cachedDevice = v3;
    NTKAlarmSnoozeSymbol_block_invoke_2___previousCLKDeviceVersion = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v8[4] = *(a1 + 32);
    NTKAlarmSnoozeSymbol_block_invoke_2_value = __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_2(v8);
  }

  v6 = NTKAlarmSnoozeSymbol_block_invoke_2_value;
  os_unfair_lock_unlock(&NTKAlarmSnoozeSymbol_block_invoke_2_lock);

  return v6;
}

uint64_t __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_3;
  v2[3] = &unk_27877DD78;
  v2[4] = *(a1 + 32);
  __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_3(v2);
  return 1;
}

void __62__NTKAlarmTimelineEntry__extraLargeAlarmInactiveImageProvider__block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) _pairedDeviceSupportsComplicationSymbols] & 1) == 0)
  {
    NTKImageNamed(@"XLmodularAlarmInactive");
  }

  v1 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
  v2 = _extraLargeAlarmInactiveImageProvider_glyphImageProvider;
  _extraLargeAlarmInactiveImageProvider_glyphImageProvider = v1;

  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [_extraLargeAlarmInactiveImageProvider_glyphImageProvider setTintColor:v3];
}

- (id)_largeUtilityInactiveImageProvider
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke;
  v5[3] = &unk_27877DDA0;
  v5[4] = self;
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke(v5, v3);

  return _largeUtilityInactiveImageProvider_glyphImageProvider;
}

uint64_t __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&NTKAlarmSnoozeSymbol_block_invoke_3_lock);
  if (NTKAlarmSnoozeSymbol_block_invoke_3___cachedDevice)
  {
    v4 = NTKAlarmSnoozeSymbol_block_invoke_3___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != NTKAlarmSnoozeSymbol_block_invoke_3___previousCLKDeviceVersion))
  {
    NTKAlarmSnoozeSymbol_block_invoke_3___cachedDevice = v3;
    NTKAlarmSnoozeSymbol_block_invoke_3___previousCLKDeviceVersion = [v3 version];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_2;
    v8[3] = &unk_27877DDA0;
    v8[4] = *(a1 + 32);
    NTKAlarmSnoozeSymbol_block_invoke_3_value = __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_2(v8);
  }

  v6 = NTKAlarmSnoozeSymbol_block_invoke_3_value;
  os_unfair_lock_unlock(&NTKAlarmSnoozeSymbol_block_invoke_3_lock);

  return v6;
}

uint64_t __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_3;
  v2[3] = &unk_27877DD78;
  v2[4] = *(a1 + 32);
  __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_3(v2);
  return 1;
}

void __59__NTKAlarmTimelineEntry__largeUtilityInactiveImageProvider__block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) _pairedDeviceSupportsComplicationSymbols] & 1) == 0)
  {
    NTKImageNamed(@"analogAlarmInactive");
  }

  v1 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
  v2 = _largeUtilityInactiveImageProvider_glyphImageProvider;
  _largeUtilityInactiveImageProvider_glyphImageProvider = v1;

  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [_largeUtilityInactiveImageProvider_glyphImageProvider setTintColor:v3];
}

- (id)description
{
  if (description_onceToken != -1)
  {
    [NTKAlarmTimelineEntry description];
  }

  v3 = MEMORY[0x277CCACA8];
  v4 = [(NTKTimelineEntryModel *)self entryDate];
  v5 = _FormattedDate(v4);
  v6 = [description_typeNames objectAtIndexedSubscript:{-[NTKAlarmTimelineEntry entryType](self, "entryType")}];
  v7 = [(NTKAlarmTimelineEntry *)self alarmLabel];
  v8 = [(NTKAlarmTimelineEntry *)self fireDate];
  v9 = _FormattedDate(v8);
  v10 = [(NTKAlarmTimelineEntry *)self snoozeDate];
  v11 = _FormattedDate(v10);
  v12 = [v3 stringWithFormat:@"EntryDate: %@\tType: %@\tLabel: %@\tFireDate: %@\tSnoozeDate: %@", v5, v6, v7, v9, v11];

  return v12;
}

void __36__NTKAlarmTimelineEntry_description__block_invoke()
{
  v0 = description_typeNames;
  description_typeNames = &unk_28418AA98;
}

@end