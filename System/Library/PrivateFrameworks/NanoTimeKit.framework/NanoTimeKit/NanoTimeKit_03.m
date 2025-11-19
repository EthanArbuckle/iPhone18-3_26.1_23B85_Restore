id NTKRestrictedComplicationsForDevice(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = NTKBundleIDToComplicationTypesMappingForDevice(v1);
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (NTKIsSystemAppRestricted(v9))
        {
          v10 = [v4 objectForKey:v9];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v3 addIndex:{objc_msgSend(*(*(&v17 + 1) + 8 * j), "unsignedIntegerValue")}];
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  if (([v1 isEcgPhoneComplicationEnabled] & 1) == 0)
  {
    [v3 addIndex:46];
  }

  if (([v1 isRadioPhoneComplicationEnabled] & 1) == 0)
  {
    [v3 addIndex:35];
  }

  v15 = [v3 copy];

  return v15;
}

uint64_t NTKIsValidSingleComplicationType(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = NTKAllComplicationTypes();
  v3 = [v2 containsIndex:a1];

  return v3;
}

id NTKAllComplicationTypes()
{
  if (NTKAllComplicationTypes_onceToken != -1)
  {
    NTKAllComplicationTypes_cold_1();
  }

  v1 = NTKAllComplicationTypes_allTypes;

  return v1;
}

__CFString *NTKComplicationTypeDescription(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count] && (objc_msgSend(v2, "containsIndex:", 0) & 1) == 0)
  {
    v5 = [MEMORY[0x277CCAB68] string];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __NTKComplicationTypeDescription_block_invoke;
    v6[3] = &unk_2787813B0;
    v3 = v5;
    v7 = v3;
    [v2 enumerateIndexesUsingBlock:v6];
  }

  else
  {
    v3 = @"Off";
  }

  return v3;
}

uint64_t __NTKComplicationTypeDescription_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = a2 - 1;
  if (a2 - 1) <= 0x3A && ((0x7FABFFFDFFFFEFFuLL >> v3))
  {
    v4 = result;
    v5 = off_278788BD0[v3];
    if ([*(result + 32) length])
    {
      [*(v4 + 32) appendString:@"|"];
    }

    v6 = *(v4 + 32);

    return [v6 appendString:v5];
  }

  return result;
}

uint64_t NTKPrintableComplicationType(uint64_t a1)
{
  if (((a1 != 0) & NTKIsValidSingleComplicationType(a1)) != 0)
  {
    return a1;
  }

  else
  {
    return -1;
  }
}

id _NTKClockFaceLocalizedStringForKeyWithFallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = NTKClockFaceLocalizedString(v5, v7);
    if ([v8 isEqualToString:v5])
    {
    }

    else if (v8)
    {
      goto LABEL_6;
    }
  }

  v8 = NTKClockFaceLocalizedString(v6, v7);
LABEL_6:

  return v8;
}

id _NTKCompanionClockFaceLocalizedStringForKeyWithFallback(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = NTKCompanionClockFaceLocalizedString(v5, v7);
    if ([v8 isEqualToString:v5])
    {
    }

    else if (v8)
    {
      goto LABEL_6;
    }
  }

  v8 = NTKCompanionClockFaceLocalizedString(v6, v7);
LABEL_6:

  return v8;
}

id _NTKComplicationTypeLocalizedLabelTextFromTypeKey(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 hasPrefix:@"HIDDEN_"];
  v6 = MEMORY[0x277CCACA8];
  if (v5)
  {
    v7 = [v3 substringFromIndex:{objc_msgSend(@"HIDDEN_", "length")}];
    v8 = [v6 stringWithFormat:@"FALL_HIDDEN_COMPLICATION_TYPE_EDIT_LABEL_%@", v7];

    if (v4)
    {
LABEL_3:
      v9 = [v8 stringByAppendingString:v4];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"COMPLICATION_TYPE_EDIT_LABEL_%@", v3];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = [v9 stringByAppendingString:@"_COMPANION"];
  v11 = [v8 stringByAppendingString:@"_COMPANION"];
  v12 = _NTKCompanionClockFaceLocalizedStringForKeyWithFallback(v10, v11, @"Editing label for complication type");
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = _NTKClockFaceLocalizedStringForKeyWithFallback(v9, v8, @"Editing label for complication type");
  }

  v15 = v14;

  return v15;
}

__CFString *_NTKComplicationTypeLocalizedLabelText(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5 = @"Connectivity";
  v6 = @"Internal: Lux Viewer";
  switch(a1)
  {
    case 0:
      v4 = @"OFF";
      goto LABEL_51;
    case 1:
      v4 = @"DATE";
      goto LABEL_51;
    case 2:
      v4 = @"ALARM";
      goto LABEL_51;
    case 3:
      v4 = @"TIMER";
      goto LABEL_51;
    case 4:
      v4 = @"STOPWATCH";
      goto LABEL_51;
    case 5:
      v4 = @"WORLD_CLOCK";
      goto LABEL_51;
    case 6:
      v4 = @"FINDMY";
      goto LABEL_51;
    case 7:
      v4 = @"WELLNESS";
      goto LABEL_51;
    case 8:
      v4 = @"NEXT_EVENT";
      goto LABEL_51;
    case 10:
      v4 = @"WEATHER";
      goto LABEL_51;
    case 11:
      v4 = @"MOON_PHASE";
      goto LABEL_51;
    case 12:
      v4 = @"SUNRISE";
      goto LABEL_51;
    case 13:
      v4 = @"BATTERY";
      goto LABEL_51;
    case 14:
      v4 = @"MONOGRAM";
      goto LABEL_51;
    case 15:
      v4 = @"HEARTRATE";
      goto LABEL_51;
    case 16:
      v4 = @"LUNAR_DATE";
      goto LABEL_51;
    case 17:
      v4 = @"MUSIC";
      goto LABEL_51;
    case 18:
      v4 = @"WORKOUT";
      goto LABEL_51;
    case 19:
      v7 = [MEMORY[0x277CBBAE8] currentDevice];
      v8 = [v7 supportsPDRCapability:710010803];

      if (v8)
      {
        v4 = @"MIND";
      }

      else
      {
        v4 = @"HUMMINGBIRD";
      }

      goto LABEL_51;
    case 20:
      v4 = @"REMINDERS";
      goto LABEL_51;
    case 21:
      v4 = @"REMOTE";
      goto LABEL_51;
    case 22:
      v4 = @"WEATHER_CONDITIONS";
      goto LABEL_51;
    case 23:
      v4 = @"MESSAGES";
      goto LABEL_51;
    case 24:
      v4 = @"PHONE";
      goto LABEL_51;
    case 25:
      v4 = @"MAPS";
      goto LABEL_51;
    case 26:
      v4 = @"NEWS";
      goto LABEL_51;
    case 27:
      v4 = @"MAIL";
      goto LABEL_51;
    case 28:
      v4 = @"HOME";
      goto LABEL_51;
    case 29:
      v4 = @"SIRI";
      goto LABEL_51;
    case 32:
      goto LABEL_52;
    case 33:
      v4 = @"TIN_CAN";
      goto LABEL_51;
    case 34:
      v4 = @"NOW_PLAYING";
      goto LABEL_51;
    case 35:
      v4 = @"RADIO";
      goto LABEL_51;
    case 36:
      v4 = @"WEATHER_AIR_QUALITY";
      goto LABEL_51;
    case 37:
      v4 = @"PEOPLE";
      goto LABEL_51;
    case 38:
      v4 = @"SOLAR";
      goto LABEL_51;
    case 39:
      v4 = @"ASTRONOMY_EARTH";
      goto LABEL_51;
    case 40:
      v4 = @"ASTRONOMY_LUNA";
      goto LABEL_51;
    case 41:
      v4 = @"ASTRONOMY_ORRERY";
      goto LABEL_51;
    case 42:
      v4 = @"PODCAST";
      goto LABEL_51;
    case 43:
      v4 = @"WEATHER_UV_INDEX";
      goto LABEL_51;
    case 44:
      v4 = @"WEATHER_WIND";
      goto LABEL_51;
    case 45:
      v4 = @"DIGITAL_TIME";
      goto LABEL_51;
    case 46:
      v4 = @"ECG";
      goto LABEL_51;
    case 50:
      goto LABEL_53;
    case 52:
      v6 = @"Internal: Watch Build Vers";
      goto LABEL_53;
    case 53:
      v6 = @"Internal: Phone Build Vers";
      goto LABEL_53;
    case 57:
      v4 = @"DIGITAL_TIME_NO_SEC";
      goto LABEL_51;
    case 58:
      v6 = @"Internal: Nits Viewer";
      goto LABEL_53;
    default:
LABEL_51:
      v5 = _NTKComplicationTypeLocalizedLabelTextFromTypeKey(v4, v3);
LABEL_52:
      v6 = v5;
LABEL_53:

      return v6;
  }
}

__CFString *NTKComplicationDuetIdentifier(unint64_t a1)
{
  if (a1 <= 0x2C)
  {
    if (((1 << a1) & 0x181000400400) != 0)
    {
      return @"com.apple.weather.watchapp";
    }

    if (a1 == 17)
    {
      return @"com.apple.NanoMusic";
    }

    if (a1 == 20)
    {
      return @"com.apple.reminders";
    }
  }

  if (a1 == 8)
  {
    return @"com.apple.glances.NanoCalendar";
  }

  else
  {
    return 0;
  }
}

id NTKComplicationTypeRankedListWithDefaultTypes(void *a1)
{
  v1 = NTKComplicationTypeFallbackList_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    NTKComplicationTypeRankedListWithDefaultTypes_cold_1();
  }

  v3 = [v2 arrayByAddingObjectsFromArray:NTKComplicationTypeFallbackList_complicationFallbackList];

  return v3;
}

id NTKLocalizedNameForCustomEditMode(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) <= 0x12 && ((0x77601u >> v1))
  {
    v2 = [(__CFString *)off_278788DA8[v1] stringByAppendingString:@"_COMPANION"];
    v3 = NTKCompanionClockFaceLocalizedString(v2, @"edit mode");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void NTKEnumerateDateStyles(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v8 = __NTKEnumerateDateStyles_block_invoke;
  v9 = &unk_278788A50;
  v4 = v3;
  v10 = v4;
  v11 = 0;
  v5 = 1;
  do
  {
    if ((v5 & a1) != 0)
    {
      (v8)(v7, v5, &v11);
      v6 = v11 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v5 > 0x800)
    {
      break;
    }

    v5 *= 2;
  }

  while (v6);
}

uint64_t NTKComplicationAnimationForDates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isEqualToDate:v4])
    {
      v6 = 0;
    }

    else
    {
      v7 = [v3 laterDate:v5];
      if (v7 == v3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

uint64_t NTKIsPPTDevice()
{
  if (NTKIsPPTDevice_onceToken != -1)
  {
    NTKIsPPTDevice_cold_1();
  }

  return NTKIsPPTDevice_isPPTDevice;
}

void __NTKIsPPTDevice_block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  NTKIsPPTDevice_isPPTDevice = [v0 fileExistsAtPath:@"/var/mobile/Library/PPTDevice"];
}

uint64_t NTKIsUnitTests()
{
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];
  v2 = [v1 isEqualToString:@"xctest"];

  return v2;
}

__CFString *NTKReportingValueForFace(void *a1)
{
  v1 = a1;
  v2 = [v1 faceStyle];
  v3 = 0;
  switch(v2)
  {
    case 0:
      v3 = @"utility";
      break;
    case 1:
      v3 = @"simple";
      break;
    case 2:
      v3 = @"chronograph";
      break;
    case 3:
      v3 = @"color";
      break;
    case 4:
      v3 = @"modular";
      break;
    case 5:
      v3 = @"photo";
      break;
    case 6:
      v3 = @"motion";
      break;
    case 7:
      v3 = @"timelapse";
      break;
    case 8:
      v3 = @"solar";
      break;
    case 9:
      v3 = @"astronomy";
      break;
    case 10:
      v3 = @"mickey";
      break;
    case 11:
    case 15:
      break;
    case 12:
      v3 = @"xlarge";
      break;
    case 13:
      v3 = @"album";
      break;
    case 14:
      v3 = @"zeus";
      break;
    case 16:
      v3 = @"activity-analog";
      break;
    case 17:
      v3 = @"activity-digital";
      break;
    case 18:
      v3 = @"numerals";
      break;
    case 19:
      v3 = @"victory-analog";
      break;
    case 20:
      v3 = @"victory-digital";
      break;
    case 21:
      v3 = @"up-next";
      break;
    case 22:
      v3 = @"photos";
      break;
    case 23:
      v3 = @"kaleidoscope";
      break;
    case 24:
      v3 = @"explorer";
      break;
    case 25:
      v3 = @"infinity";
      break;
    case 26:
      v3 = @"pride";
      break;
    case 27:
      v3 = @"breathe";
      break;
    case 28:
      v3 = @"smoke";
      break;
    case 29:
      v3 = @"whistler-digital";
      break;
    case 30:
      v3 = @"whistler-analog";
      break;
    case 31:
      v3 = @"metallic";
      break;
    case 32:
      v3 = @"fire-water";
      break;
    case 33:
      v3 = @"pride-analog";
      break;
    case 34:
      v3 = @"whistler-subdials";
      break;
    case 35:
      v3 = @"olympus";
      break;
    case 36:
      v3 = @"sidereal";
      break;
    case 37:
      v3 = @"big-numerals-digital";
      break;
    case 38:
      v3 = @"big-numerals-analog";
      break;
    case 39:
      v3 = @"california";
      break;
    case 40:
      v3 = @"blackcomb";
      break;
    case 41:
      v3 = @"spectrum-analog";
      break;
    case 42:
      v3 = @"whitetank";
      break;
    case 43:
      v3 = @"schooltime";
      break;
    case 44:
      v3 = [v1 bundleIdentifier];
      break;
    default:
      switch(v2)
      {
        case 200:
          v3 = @"utility-r";
          break;
        case 201:
          v3 = @"simple-r";
          break;
        case 202:
          v3 = @"chronograph-r";
          break;
        case 203:
          v3 = @"color-r";
          break;
        case 210:
          v3 = @"mickey-r";
          break;
        case 212:
          v3 = @"xlarge-r";
          break;
        case 216:
          v3 = @"activity-analog-r";
          break;
        case 217:
          v3 = @"activity-digital-r";
          break;
        case 218:
          v3 = @"numerals-r";
          break;
        case 219:
          v3 = @"victory-analog-r";
          break;
        case 220:
          v3 = @"victory-digital-r";
          break;
        case 221:
          v3 = @"up-next-r";
          break;
        case 223:
          v3 = @"kaleidoscope-r";
          break;
        case 224:
          v3 = @"explorer-r";
          break;
        case 227:
          v3 = @"breathe-r";
          break;
        case 228:
          v3 = @"smoke-r";
          break;
        case 231:
          v3 = @"metallic-r";
          break;
        case 232:
          v3 = @"fire-water-r";
          break;
        case 233:
          v3 = @"pride-analog-r";
          break;
        default:
          goto LABEL_65;
      }

      break;
  }

LABEL_65:

  return v3;
}

id NTKAnalyticsValueForFace(void *a1)
{
  v1 = a1;
  if ([v1 faceStyle] == 44)
  {
    [v1 analyticsIdentifier];
  }

  else
  {
    NTKReportingValueForFace(v1);
  }
  v2 = ;

  return v2;
}

__CFString *_NTKReportingValueForComplicationType(uint64_t a1)
{
  if ((a1 - 1) > 0x38)
  {
    return @"Unknown Complication";
  }

  else
  {
    return off_278788E40[a1 - 1];
  }
}

id NTKReportingValueForComplication(void *a1)
{
  v1 = a1;
  v2 = _NTKReportingValueForComplicationType([v1 complicationType]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v1 complication];
    v4 = +[NTKBundleComplicationManager sharedManager];
    v5 = [v4 dataSourceClassForBundleComplication:v1];

    v6 = [v5 legacyNTKComplicationType];
    v7 = v6;
    if (v6)
    {
      _NTKReportingValueForComplicationType([v6 unsignedIntegerValue]);
      v2 = v8 = v2;
    }

    else
    {
      v8 = [v3 bundleIdentifier];
      if ([v8 length])
      {
        v9 = [v2 stringByAppendingString:v8];

        v2 = v9;
      }
    }
  }

  return v2;
}

uint64_t NTKComplicationTypeV2fromV1Encoding(uint64_t a1)
{
  if (a1 >= 0x8000)
  {
    if (a1 < 0x400000)
    {
      v24 = 21;
      v25 = 22;
      if (a1 != 0x200000)
      {
        v25 = 0;
      }

      if (a1 != 0x100000)
      {
        v24 = v25;
      }

      v26 = 19;
      v27 = 20;
      if (a1 != 0x80000)
      {
        v27 = 0;
      }

      if (a1 != 0x40000)
      {
        v26 = v27;
      }

      if (a1 < 0x100000)
      {
        v24 = v26;
      }

      v28 = 16;
      v29 = 17;
      v30 = 18;
      if (a1 != 0x20000)
      {
        v30 = 0;
      }

      if (a1 != 0x10000)
      {
        v29 = v30;
      }

      if (a1 != 0x8000)
      {
        v28 = v29;
      }

      if (a1 < 0x40000)
      {
        return v28;
      }

      else
      {
        return v24;
      }
    }

    else
    {
      v10 = 31;
      if (a1 != 0x40000000)
      {
        v10 = 0;
      }

      if (a1 == 0x10000000)
      {
        v11 = 29;
      }

      else
      {
        v11 = v10;
      }

      v12 = 28;
      if (a1 != 0x8000000)
      {
        v12 = 0;
      }

      if (a1 == 0x4000000)
      {
        v13 = 27;
      }

      else
      {
        v13 = v12;
      }

      if (a1 <= 0xFFFFFFF)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = 26;
      if (a1 != 0x2000000)
      {
        v15 = 0;
      }

      if (a1 == 0x1000000)
      {
        v16 = 25;
      }

      else
      {
        v16 = v15;
      }

      v17 = 23;
      v18 = 24;
      if (a1 != 0x800000)
      {
        v18 = 0;
      }

      if (a1 != 0x400000)
      {
        v17 = v18;
      }

      if (a1 <= 0xFFFFFF)
      {
        v19 = v17;
      }

      else
      {
        v19 = v16;
      }

      if (a1 <= 0x3FFFFFF)
      {
        return v19;
      }

      else
      {
        return v14;
      }
    }
  }

  else
  {
    if (a1 <= 127)
    {
      v1 = 6;
      v21 = 7;
      if (a1 != 64)
      {
        v21 = 0;
      }

      if (a1 != 32)
      {
        v1 = v21;
      }

      v22 = 4;
      v23 = 5;
      if (a1 != 16)
      {
        v23 = 0;
      }

      if (a1 != 8)
      {
        v22 = v23;
      }

      if (a1 <= 31)
      {
        v1 = v22;
      }

      v5 = 3;
      if (a1 != 4)
      {
        v5 = 0;
      }

      if (a1 == 2)
      {
        v5 = 2;
      }

      if (a1 == 1)
      {
        v5 = 1;
      }

      v9 = a1 <= 7;
    }

    else
    {
      v1 = 14;
      v2 = 15;
      if (a1 != 0x4000)
      {
        v2 = 0;
      }

      if (a1 != 0x2000)
      {
        v1 = v2;
      }

      v3 = 12;
      v4 = 13;
      if (a1 != 4096)
      {
        v4 = 0;
      }

      if (a1 != 2048)
      {
        v3 = v4;
      }

      if (a1 < 0x2000)
      {
        v1 = v3;
      }

      v5 = 10;
      v6 = 11;
      if (a1 != 1024)
      {
        v6 = 0;
      }

      if (a1 != 512)
      {
        v5 = v6;
      }

      v7 = 8;
      v8 = 9;
      if (a1 != 256)
      {
        v8 = 0;
      }

      if (a1 != 128)
      {
        v7 = v8;
      }

      if (a1 <= 511)
      {
        v5 = v7;
      }

      v9 = a1 <= 2047;
    }

    if (v9)
    {
      return v5;
    }

    else
    {
      return v1;
    }
  }
}

void __NTKAllComplicationTypes_block_invoke()
{
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 60}];
  v1 = NTKAllComplicationTypes_allTypes;
  NTKAllComplicationTypes_allTypes = v0;
}

id NTKLauncherIconComplicationTypes()
{
  if (NTKLauncherIconComplicationTypes_onceToken != -1)
  {
    NTKLauncherIconComplicationTypes_cold_1();
  }

  v1 = NTKLauncherIconComplicationTypes_launcherIcons;

  return v1;
}

void __NTKLauncherIconComplicationTypes_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9BA0;
  v2[1] = unk_22DCE9BB0;
  v2[2] = xmmword_22DCE9BC0;
  v2[3] = unk_22DCE9BD0;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:8];
  v1 = NTKLauncherIconComplicationTypes_launcherIcons;
  NTKLauncherIconComplicationTypes_launcherIcons = v0;
}

id NTKAllRegularComplicationTypes()
{
  if (NTKAllRegularComplicationTypes_onceToken != -1)
  {
    NTKAllRegularComplicationTypes_cold_1();
  }

  v1 = NTKAllRegularComplicationTypes_allRegular;

  return v1;
}

void __NTKAllRegularComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BD40 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BD40);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BD40 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllRegularComplicationTypes_allRegular;
  NTKAllRegularComplicationTypes_allRegular = v6;
}

id NTKAllSmallComplicationTypes()
{
  if (NTKAllSmallComplicationTypes_onceToken != -1)
  {
    NTKAllSmallComplicationTypes_cold_1();
  }

  v1 = NTKAllSmallComplicationTypes_allRegular;

  return v1;
}

void __NTKAllSmallComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllRegularComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BD58 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BD58);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BD58 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllSmallComplicationTypes_allRegular;
  NTKAllSmallComplicationTypes_allRegular = v6;
}

id NTKAllCircularMediumComplicationTypes()
{
  if (NTKAllCircularMediumComplicationTypes_onceToken != -1)
  {
    NTKAllCircularMediumComplicationTypes_cold_1();
  }

  v1 = NTKAllCircularMediumComplicationTypes_results;

  return v1;
}

void __NTKAllCircularMediumComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllRegularComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BD70 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BD70);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BD70 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllCircularMediumComplicationTypes_results;
  NTKAllCircularMediumComplicationTypes_results = v6;
}

id NTKAllSignatureBezelTypes()
{
  if (NTKAllSignatureBezelTypes_onceToken != -1)
  {
    NTKAllSignatureBezelTypes_cold_1();
  }

  v1 = NTKAllSignatureBezelTypes_results;

  return v1;
}

void __NTKAllSignatureBezelTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:14];
  [v2 addIndex:1];
  [v2 addIndex:38];
  [v2 addIndex:18];
  [v2 addIndex:3];
  [v2 addIndex:10];
  [v2 addIndex:36];
  [v2 addIndex:22];
  [v2 addIndex:43];
  [v2 addIndex:44];
  [v2 addIndex:37];
  [v2 addIndex:40];
  [v2 addIndex:39];
  [v2 addIndex:41];
  [v2 addIndex:15];
  [v2 addIndex:13];
  [v2 addIndex:8];
  [v2 addIndex:7];
  [v2 addIndex:45];
  [v2 addIndex:5];
  [v2 addIndex:17];
  [v2 addIndex:2];
  [v2 addIndex:4];
  [v2 addIndex:33];
  [v2 addIndex:31];
  [v2 addIndex:19];
  [v2 addIndex:48];
  [v2 addIndex:23];
  [v2 addIndex:20];
  [v2 addIndex:26];
  [v2 addIndex:6];
  [v2 addIndex:28];
  [v2 addIndex:27];
  [v2 addIndex:25];
  [v2 addIndex:24];
  [v2 addIndex:21];
  [v2 addIndex:35];
  [v2 addIndex:42];
  [v2 addIndex:46];
  [v2 addIndex:50];
  [v2 addIndex:58];
  [v2 addIndex:52];
  [v2 addIndex:53];
  [v2 addIndex:56];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKAllSignatureBezelTypes_results;
  NTKAllSignatureBezelTypes_results = v0;
}

id NTKAllSimpleTextComplicationTypes()
{
  if (NTKAllSimpleTextComplicationTypes_onceToken != -1)
  {
    NTKAllSimpleTextComplicationTypes_cold_1();
  }

  v1 = NTKAllSimpleTextComplicationTypes_results;

  return v1;
}

void __NTKAllSimpleTextComplicationTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:45];
  [v2 addIndex:14];
  [v2 addIndex:1];
  [v2 addIndex:4];
  [v2 addIndex:3];
  [v2 addIndex:48];
  [v2 addIndex:23];
  [v2 addIndex:20];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKAllSimpleTextComplicationTypes_results;
  NTKAllSimpleTextComplicationTypes_results = v0;
}

id NTKAllSignatureCornerTypes()
{
  if (NTKAllSignatureCornerTypes_onceToken != -1)
  {
    NTKAllSignatureCornerTypes_cold_1();
  }

  v1 = NTKAllSignatureCornerTypes_results;

  return v1;
}

void __NTKAllSignatureCornerTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:20];
  [v2 addIndex:12];
  [v2 addIndex:10];
  [v2 addIndex:36];
  [v2 addIndex:22];
  [v2 addIndex:43];
  [v2 addIndex:44];
  [v2 addIndex:37];
  [v2 addIndex:13];
  [v2 addIndex:7];
  [v2 addIndex:2];
  [v2 addIndex:4];
  [v2 addIndex:17];
  [v2 addIndex:15];
  [v2 addIndex:18];
  [v2 addIndex:8];
  [v2 addIndex:5];
  [v2 addIndex:3];
  [v2 addIndex:33];
  [v2 addIndex:31];
  [v2 addIndex:19];
  [v2 addIndex:40];
  [v2 addIndex:48];
  [v2 addIndex:20];
  [v2 addIndex:23];
  [v2 addIndex:26];
  [v2 addIndex:6];
  [v2 addIndex:28];
  [v2 addIndex:27];
  [v2 addIndex:25];
  [v2 addIndex:24];
  [v2 addIndex:21];
  [v2 addIndex:35];
  [v2 addIndex:42];
  [v2 addIndex:1];
  [v2 addIndex:46];
  [v2 addIndex:50];
  [v2 addIndex:58];
  [v2 addIndex:52];
  [v2 addIndex:53];
  [v2 addIndex:56];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKAllSignatureCornerTypes_results;
  NTKAllSignatureCornerTypes_results = v0;
}

id NTKAllSignatureCircularTypes()
{
  if (NTKAllSignatureCircularTypes_onceToken != -1)
  {
    NTKAllSignatureCircularTypes_cold_1();
  }

  v1 = NTKAllSignatureCircularTypes_results;

  return v1;
}

void __NTKAllSignatureCircularTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:10];
  [v2 addIndex:36];
  [v2 addIndex:22];
  [v2 addIndex:43];
  [v2 addIndex:44];
  [v2 addIndex:37];
  [v2 addIndex:2];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:12];
  [v2 addIndex:38];
  [v2 addIndex:39];
  [v2 addIndex:40];
  [v2 addIndex:41];
  [v2 addIndex:5];
  [v2 addIndex:18];
  [v2 addIndex:15];
  [v2 addIndex:13];
  [v2 addIndex:7];
  [v2 addIndex:1];
  [v2 addIndex:16];
  [v2 addIndex:17];
  [v2 addIndex:33];
  [v2 addIndex:31];
  [v2 addIndex:19];
  [v2 addIndex:48];
  [v2 addIndex:23];
  [v2 addIndex:20];
  [v2 addIndex:26];
  [v2 addIndex:6];
  [v2 addIndex:28];
  [v2 addIndex:27];
  [v2 addIndex:25];
  [v2 addIndex:24];
  [v2 addIndex:21];
  [v2 addIndex:35];
  [v2 addIndex:42];
  [v2 addIndex:8];
  [v2 addIndex:46];
  [v2 addIndex:50];
  [v2 addIndex:58];
  [v2 addIndex:52];
  [v2 addIndex:53];
  [v2 addIndex:56];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKAllSignatureCircularTypes_results;
  NTKAllSignatureCircularTypes_results = v0;
}

id NTKAllExtendedSignatureCircularTypes()
{
  if (NTKAllExtendedSignatureCircularTypes_onceToken != -1)
  {
    NTKAllExtendedSignatureCircularTypes_cold_1();
  }

  v1 = NTKAllExtendedSignatureCircularTypes_results;

  return v1;
}

void __NTKAllExtendedSignatureCircularTypes_block_invoke()
{
  v0 = NTKAllSignatureCircularTypes();
  v3 = [v0 mutableCopy];

  [v3 addIndex:14];
  [v3 addIndex:45];
  v1 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v3];
  v2 = NTKAllExtendedSignatureCircularTypes_results;
  NTKAllExtendedSignatureCircularTypes_results = v1;
}

id NTKAllSignatureRectangularTypes()
{
  if (NTKAllSignatureRectangularTypes_onceToken != -1)
  {
    NTKAllSignatureRectangularTypes_cold_1();
  }

  v1 = NTKAllSignatureRectangularTypes_results;

  return v1;
}

void __NTKAllSignatureRectangularTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:7];
  [v2 addIndex:1];
  [v2 addIndex:16];
  [v2 addIndex:8];
  [v2 addIndex:22];
  [v2 addIndex:43];
  [v2 addIndex:44];
  [v2 addIndex:31];
  [v2 addIndex:15];
  [v2 addIndex:48];
  [v2 addIndex:23];
  [v2 addIndex:20];
  [v2 addIndex:26];
  [v2 addIndex:3];
  [v2 addIndex:2];
  [v2 addIndex:4];
  [v2 addIndex:34];
  [v2 addIndex:35];
  [v2 addIndex:17];
  [v2 addIndex:42];
  [v2 addIndex:18];
  [v2 addIndex:40];
  [v2 addIndex:12];
  [v2 addIndex:5];
  [v2 addIndex:50];
  [v2 addIndex:58];
  [v2 addIndex:52];
  [v2 addIndex:53];
  [v2 addIndex:56];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKAllSignatureRectangularTypes_results;
  NTKAllSignatureRectangularTypes_results = v0;
}

id NTKAllExtraLargeComplicationTypes()
{
  if (NTKAllExtraLargeComplicationTypes_onceToken != -1)
  {
    NTKAllExtraLargeComplicationTypes_cold_1();
  }

  v1 = NTKAllExtraLargeComplicationTypes_results;

  return v1;
}

void __NTKAllExtraLargeComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllRegularComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BD88 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BD88);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BD88 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllExtraLargeComplicationTypes_results;
  NTKAllExtraLargeComplicationTypes_results = v6;
}

id NTKAllGraphicExtraLargeComplicationTypes()
{
  if (NTKAllGraphicExtraLargeComplicationTypes_onceToken != -1)
  {
    NTKAllGraphicExtraLargeComplicationTypes_cold_1();
  }

  v1 = NTKAllGraphicExtraLargeComplicationTypes_results;

  return v1;
}

void __NTKAllGraphicExtraLargeComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllRegularComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BDA0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BDA0);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BDA0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllGraphicExtraLargeComplicationTypes_results;
  NTKAllGraphicExtraLargeComplicationTypes_results = v6;
}

id NTKAllLargeComplicationTypes()
{
  if (NTKAllLargeComplicationTypes_onceToken != -1)
  {
    NTKAllLargeComplicationTypes_cold_1();
  }

  v1 = NTKAllLargeComplicationTypes_allLarge;

  return v1;
}

void __NTKAllLargeComplicationTypes_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = NTKAllRegularComplicationTypes();
  v1 = [v0 mutableCopy];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [&unk_28418BDB8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(&unk_28418BDB8);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v9 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BDB8 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v6 = NTKLauncherIconComplicationTypes();
  [v1 removeIndexes:v6];

  v7 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v8 = NTKAllLargeComplicationTypes_allLarge;
  NTKAllLargeComplicationTypes_allLarge = v7;
}

id NTKAllUtilityLargeComplicationTypes()
{
  if (NTKAllUtilityLargeComplicationTypes_onceToken != -1)
  {
    NTKAllUtilityLargeComplicationTypes_cold_1();
  }

  v1 = NTKAllUtilityLargeComplicationTypes_allUtilityLarge;

  return v1;
}

void __NTKAllUtilityLargeComplicationTypes_block_invoke()
{
  v0 = NTKAllRegularComplicationTypes();
  v4 = [v0 mutableCopy];

  [v4 addIndex:32];
  [v4 removeIndex:19];
  [v4 removeIndex:22];
  v1 = NTKLauncherIconComplicationTypes();
  [v4 removeIndexes:v1];

  v2 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v4];
  v3 = NTKAllUtilityLargeComplicationTypes_allUtilityLarge;
  NTKAllUtilityLargeComplicationTypes_allUtilityLarge = v2;
}

id NTKAllLargeNonLegacyComplicationTypes()
{
  if (NTKAllLargeNonLegacyComplicationTypes_onceToken != -1)
  {
    NTKAllLargeNonLegacyComplicationTypes_cold_1();
  }

  v1 = NTKAllLargeNonLegacyComplicationTypes_allLargeNonLegacy;

  return v1;
}

void __NTKAllLargeNonLegacyComplicationTypes_block_invoke()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = NTKAllLargeComplicationTypes();
  v1 = [v0 mutableCopy];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&unk_28418BDD0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(&unk_28418BDD0);
        }

        [v1 removeIndex:{objc_msgSend(*(*(&v8 + 1) + 8 * v5++), "unsignedIntegerValue")}];
      }

      while (v3 != v5);
      v3 = [&unk_28418BDD0 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v1];
  v7 = NTKAllLargeNonLegacyComplicationTypes_allLargeNonLegacy;
  NTKAllLargeNonLegacyComplicationTypes_allLargeNonLegacy = v6;
}

id NTKUpNextDataSourceSupressingComplicationTypes()
{
  if (NTKUpNextDataSourceSupressingComplicationTypes_onceToken != -1)
  {
    NTKUpNextDataSourceSupressingComplicationTypes_cold_1();
  }

  v1 = NTKUpNextDataSourceSupressingComplicationTypes_hideDuplicatesOnSupergreen;

  return v1;
}

void __NTKUpNextDataSourceSupressingComplicationTypes_block_invoke()
{
  v2 = [MEMORY[0x277CCAB58] indexSet];
  [v2 addIndex:2];
  [v2 addIndex:19];
  [v2 addIndex:9];
  [v2 addIndex:4];
  [v2 addIndex:3];
  [v2 addIndex:7];
  [v2 addIndex:18];
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v2];
  v1 = NTKUpNextDataSourceSupressingComplicationTypes_hideDuplicatesOnSupergreen;
  NTKUpNextDataSourceSupressingComplicationTypes_hideDuplicatesOnSupergreen = v0;
}

id NTKNewToFortuneComplicationTypes()
{
  if (NTKNewToFortuneComplicationTypes_onceToken != -1)
  {
    NTKNewToFortuneComplicationTypes_cold_1();
  }

  v1 = NTKNewToFortuneComplicationTypes_fortune;

  return v1;
}

void __NTKNewToFortuneComplicationTypes_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = xmmword_22DCE9BE0;
  v3 = 34;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:&v2 count:3];
  v1 = NTKNewToFortuneComplicationTypes_fortune;
  NTKNewToFortuneComplicationTypes_fortune = v0;
}

id NTKNewToGloryComplicationTypes()
{
  if (NTKNewToGloryComplicationTypes_onceToken != -1)
  {
    NTKNewToGloryComplicationTypes_cold_1();
  }

  v1 = NTKNewToGloryComplicationTypes_glory;

  return v1;
}

void __NTKNewToGloryComplicationTypes_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[2] = xmmword_22DCE9C18;
  v2[3] = unk_22DCE9C28;
  v2[4] = xmmword_22DCE9C38;
  v2[0] = xmmword_22DCE9BF8;
  v2[1] = unk_22DCE9C08;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:10];
  v1 = NTKNewToGloryComplicationTypes_glory;
  NTKNewToGloryComplicationTypes_glory = v0;
}

id NTKAllUtilitySmallFlatComplicationTypes()
{
  if (NTKAllUtilitySmallFlatComplicationTypes_onceToken != -1)
  {
    NTKAllUtilitySmallFlatComplicationTypes_cold_1();
  }

  v1 = NTKAllUtilitySmallFlatComplicationTypes_utilitySmallFlat;

  return v1;
}

void __NTKAllUtilitySmallFlatComplicationTypes_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[6] = xmmword_22DCE9CA8;
  v2[7] = unk_22DCE9CB8;
  v2[8] = xmmword_22DCE9CC8;
  v2[2] = xmmword_22DCE9C68;
  v2[3] = unk_22DCE9C78;
  v2[4] = xmmword_22DCE9C88;
  v2[5] = unk_22DCE9C98;
  v2[0] = xmmword_22DCE9C48;
  v2[1] = unk_22DCE9C58;
  v3 = 56;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:19];
  v1 = NTKAllUtilitySmallFlatComplicationTypes_utilitySmallFlat;
  NTKAllUtilitySmallFlatComplicationTypes_utilitySmallFlat = v0;
}

id NTKAllUtilityLargeNarrowComplicationTypes()
{
  if (NTKAllUtilityLargeNarrowComplicationTypes_onceToken != -1)
  {
    NTKAllUtilityLargeNarrowComplicationTypes_cold_1();
  }

  v1 = NTKAllUtilityLargeNarrowComplicationTypes_utilityLargeNarrow;

  return v1;
}

void __NTKAllUtilityLargeNarrowComplicationTypes_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v2[10] = xmmword_22DCE9D80;
  v2[11] = unk_22DCE9D90;
  v2[12] = xmmword_22DCE9DA0;
  v2[13] = unk_22DCE9DB0;
  v2[6] = xmmword_22DCE9D40;
  v2[7] = unk_22DCE9D50;
  v2[8] = xmmword_22DCE9D60;
  v2[9] = unk_22DCE9D70;
  v2[2] = xmmword_22DCE9D00;
  v2[3] = unk_22DCE9D10;
  v2[4] = xmmword_22DCE9D20;
  v2[5] = unk_22DCE9D30;
  v2[0] = xmmword_22DCE9CE0;
  v2[1] = unk_22DCE9CF0;
  v3 = 56;
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndexes:v2 count:29];
  v1 = NTKAllUtilityLargeNarrowComplicationTypes_utilityLargeNarrow;
  NTKAllUtilityLargeNarrowComplicationTypes_utilityLargeNarrow = v0;
}

id NTKUtilityComplicationCircularTypes()
{
  if (NTKUtilityComplicationCircularTypes_onceToken != -1)
  {
    NTKUtilityComplicationCircularTypes_cold_1();
  }

  v1 = NTKUtilityComplicationCircularTypes_utilityComplicationCircularTypes;

  return v1;
}

void __NTKUtilityComplicationCircularTypes_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = xmmword_22DCE9DC8;
  v2[1] = unk_22DCE9DD8;
  v0 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexes:v2 count:4];
  v1 = NTKUtilityComplicationCircularTypes_utilityComplicationCircularTypes;
  NTKUtilityComplicationCircularTypes_utilityComplicationCircularTypes = v0;
}

id NTKWrappedNoneComplicationType()
{
  if (NTKWrappedNoneComplicationType_onceToken != -1)
  {
    NTKWrappedNoneComplicationType_cold_1();
  }

  v1 = NTKWrappedNoneComplicationType_none;

  return v1;
}

void __NTKWrappedNoneComplicationType_block_invoke()
{
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  v1 = NTKWrappedNoneComplicationType_none;
  NTKWrappedNoneComplicationType_none = v0;
}

id NTKWrappedDateComplicationType()
{
  if (NTKWrappedDateComplicationType_onceToken != -1)
  {
    NTKWrappedDateComplicationType_cold_1();
  }

  v1 = NTKWrappedDateComplicationType_date;

  return v1;
}

void __NTKWrappedDateComplicationType_block_invoke()
{
  v0 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
  v1 = NTKWrappedDateComplicationType_date;
  NTKWrappedDateComplicationType_date = v0;
}

uint64_t NTKIsInternalDebuggingEnabled(uint64_t a1, uint64_t a2)
{
  if (NTKInternalBuild(a1, a2) && NTKIsInternalDebuggingEnabled_onceToken != -1)
  {
    NTKIsInternalDebuggingEnabled_cold_1();
  }

  return NTKIsInternalDebuggingEnabled_isEnabled;
}

uint64_t __NTKIsInternalDebuggingEnabled_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"NTKFaceInternalDebuggingEnabled", @"com.apple.NanoTimeKit.face", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = result == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    NTKIsInternalDebuggingEnabled_isEnabled = 1;
  }

  return result;
}

__CFString *NTKFaceDataModeDescription(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"notSet";
  }

  else
  {
    return off_278789008[a1 - 1];
  }
}

void NTKSetScreenOn(int a1)
{
  if (__NTKIsScreenOn != a1)
  {
    __NTKIsScreenOn = a1;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"NTKFaceScreenOnDidChangeNotification" object:0];
  }
}

id NTKCarbonaraWidgetIntentWithHomeIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithPath:@"/System/Library/PrivateFrameworks/HomeEnergyUI.framework"];
  v4 = [MEMORY[0x277CD4000] _defaultSchemaForBundle:v3];
  v5 = [v4 intentWithName:@"ConfigurationIntent"];
  [v5 _setLaunchId:@"com.apple.NanoHome"];
  [v5 setValue:v2 forKey:@"homeIdentifier"];

  v6 = INIntentWithTypedIntent();

  return v6;
}

void __NTKComplicationTypeFallbackList_block_invoke()
{
  v0 = NTKComplicationTypeFallbackList_complicationFallbackList;
  NTKComplicationTypeFallbackList_complicationFallbackList = &unk_28418BDE8;
}

__CFString *NTKArgonStringForFetchReason(uint64_t a1, uint64_t a2)
{
  if ((a1 - 1) < 4)
  {
    return off_278789060[a1 - 1];
  }

  if (NTKInternalBuild(a1, a2))
  {
    [MEMORY[0x277CBEAD8] raise:@"NTKArgonFetchReasonInvalidException" format:{@"Unknown Argon fetch reason %ld", a1}];
  }

  return @"Unknown";
}

id colorWithName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = [MEMORY[0x277D75348] colorNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];
    v9 = v8;
    if (v7 && v8)
    {
      [v7 setPathLocation:v5];
      [v7 setBundleLocation:v6];
      [v7 setColor:v9];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id colorEntryName(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    v8 = v5;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (!v5)
  {
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v5, v6];
LABEL_6:
  v8 = v7;
LABEL_7:
  if (a3)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v8, @"tritium"];

    v8 = v9;
  }

  return v8;
}

id NTKFaceColorPalette_ExecuteWithSelectorName(void *a1, NSString *a2)
{
  v3 = a1;
  v4 = NSSelectorFromString(a2);
  if (objc_opt_respondsToSelector())
  {
    v5 = ([v3 methodForSelector:v4])(v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id NTKFaceColorPalette_DefaultPropertAccessor(void *a1, const char *a2)
{
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v5 = [v3 valueForKey:v4];

  return v5;
}

__n128 _LayoutConstants_14@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  v5 = v10;
  ___LayoutConstants_block_invoke_73(a1, v10);
  if (a2 != 10)
  {
    if (a2 == 12)
    {
      v5 = &v10[6] + 8;
    }

    else
    {
      v6 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _LayoutConstants_cold_1(a2, v6);
      }

      v5 = v10;
    }
  }

  v7 = *(v5 + 5);
  *(a3 + 64) = *(v5 + 4);
  *(a3 + 80) = v7;
  *(a3 + 96) = *(v5 + 12);
  v8 = *(v5 + 1);
  *a3 = *v5;
  *(a3 + 16) = v8;
  result = *(v5 + 3);
  *(a3 + 32) = *(v5 + 2);
  *(a3 + 48) = result;
  return result;
}

uint64_t isLibraryAvailable(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return [MEMORY[0x277CBBAE8] PDRDeviceIsRunningDaytonaOrLater:a2];
  }

  return result;
}

void sub_22DC575C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *sectnameForStyle(uint64_t a1)
{
  v1 = @"__VictoryFont2";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"__VictoryFont1";
  }
}

id NTKCBundleLocalizedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = NTKCDefaultValueLocalizedString(v3, @"NanoTimeKitCompanion", v5, 0);
  if (v6)
  {
    goto LABEL_2;
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __NTKCBundleLocalizedString_block_invoke;
  v14 = &unk_278789358;
  v8 = v3;
  v15 = v8;
  v16 = v4;
  v9 = _Block_copy(&v11);
  v7 = (*(v9 + 2))(v9, MEMORY[0x277CBEBF8], 0);

  if (!v7)
  {
    v6 = [v8 copy];
LABEL_2:
    v7 = v6;
  }

  return v7;
}

uint64_t NTKCScreenStyle()
{
  if (NTKCScreenStyle_onceToken != -1)
  {
    NTKCScreenStyle_cold_1();
  }

  return NTKCScreenStyle_style;
}

void __NTKCScreenStyle_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;
  v5 = v4;

  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = -1;
  if (v6 >= 750.0)
  {
    v7 = 1;
  }

  if (v6 == 750.0)
  {
    v7 = 0;
  }

  NTKCScreenStyle_style = v7;
}

double NTKCSecondHandCenterOffset()
{
  if (NTKCSecondHandCenterOffset_onceToken != -1)
  {
    NTKCSecondHandCenterOffset_cold_1();
  }

  return *&NTKCSecondHandCenterOffset_offset_0;
}

void __NTKCSecondHandCenterOffset_block_invoke()
{
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v1 = v0 <= 2.0;
  v2 = 1.33333333;
  if (v1)
  {
    v2 = 1.5;
  }

  v3 = 7.33333333;
  if (v1)
  {
    v3 = 7.5;
  }

  NTKCSecondHandCenterOffset_offset_0 = *&v2;
  NTKCSecondHandCenterOffset_offset_1 = *&v3;
}

id NTKCImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = a1;
  v3 = NTKCBundle();
  v4 = [v1 imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

double NTKCScreenEdgeMargin()
{
  if (NTKCScreenEdgeMargin_onceToken != -1)
  {
    NTKCScreenEdgeMargin_cold_1();
  }

  return *&NTKCScreenEdgeMargin_margin;
}

double __NTKCScreenEdgeMargin_block_invoke()
{
  if (NTKCScreenStyle_onceToken != -1)
  {
    NTKCScreenStyle_cold_1();
  }

  result = dbl_22DCE9F38[NTKCScreenStyle_style + 1];
  NTKCScreenEdgeMargin_margin = *&result;
  return result;
}

id NTKCSeparatorColor()
{
  if (NTKCSeparatorColor_onceToken != -1)
  {
    NTKCSeparatorColor_cold_1();
  }

  v1 = NTKCSeparatorColor_color;

  return v1;
}

void __NTKCSeparatorColor_block_invoke()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75348] colorWithRed:0.262745098 green:0.262745098 blue:0.270588235 alpha:1.0];
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v2 = MEMORY[0x277D75348];
  v6 = v1;
  v7[0] = v0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 _dynamicColorWithColorsByTraitCollection:v3];
  v5 = NTKCSeparatorColor_color;
  NTKCSeparatorColor_color = v4;
}

id NTKCActiveColor()
{
  if (NTKCActiveColor_onceToken != -1)
  {
    NTKCActiveColor_cold_1();
  }

  v1 = NTKCActiveColor_color;

  return v1;
}

void __NTKCActiveColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.105882353 green:1.0 blue:0.549019608 alpha:1.0];
  v1 = NTKCActiveColor_color;
  NTKCActiveColor_color = v0;
}

id NTKCOutlineColor(int a1)
{
  if (a1)
  {
    NTKCActiveColor();
  }

  else
  {
    NTKCSeparatorColor();
  }
  v1 = ;

  return v1;
}

id NTKCActionColor()
{
  if (NTKCActionColor_onceToken != -1)
  {
    NTKCActionColor_cold_1();
  }

  v1 = NTKCActionColor_color;

  return v1;
}

void __NTKCActionColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.945098039 green:0.564705882 blue:0.192156863 alpha:1.0];
  v1 = NTKCActionColor_color;
  NTKCActionColor_color = v0;
}

id NTKCRemoveColor()
{
  if (NTKCRemoveColor_onceToken != -1)
  {
    NTKCRemoveColor_cold_1();
  }

  v1 = NTKCRemoveColor_color;

  return v1;
}

void __NTKCRemoveColor_block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.945098039 green:0.180392157 blue:0.180392157 alpha:1.0];
  v1 = NTKCRemoveColor_color;
  NTKCRemoveColor_color = v0;
}

id NTKCBlankAppIconImage()
{
  if (NTKCBlankAppIconImage_onceToken != -1)
  {
    NTKCBlankAppIconImage_cold_1();
  }

  v1 = NTKCBlankAppIconImage_blankIcon;

  return v1;
}

void __NTKCBlankAppIconImage_block_invoke()
{
  v0 = NTKCImageNamed(@"NoContentIcon");
  v1 = NTKCBlankAppIconImage_blankIcon;
  NTKCBlankAppIconImage_blankIcon = v0;
}

void sub_22DC59ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC59DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22DC5A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22DC5F794(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t GallerySnapshot.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 GallerySnapshot.id.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t GallerySnapshot.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GallerySnapshot.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for GallerySnapshot()
{
  result = qword_27DA2CC38;
  if (!qword_27DA2CC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GallerySnapshot.snapshot.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GallerySnapshot() + 24);

  return sub_22DC603CC(a1, v3);
}

uint64_t sub_22DC603CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC6047C()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC604C4()
{
  v1 = *v0;
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](v1);
  return sub_22DCB68EC();
}

uint64_t sub_22DC60508()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x746F687370616E73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22DC60550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DC61644(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DC60590(uint64_t a1)
{
  v2 = sub_22DC60FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC605CC(uint64_t a1)
{
  v2 = sub_22DC60FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GallerySnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CB88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7, v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC60FD8();
  sub_22DCB690C();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v16 = *v3;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v15[15] = 0;
  sub_22DC6102C();

  sub_22DCB67BC();

  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_22DCB679C();
    type metadata accessor for GallerySnapshot();
    LOBYTE(v16) = 2;
    type metadata accessor for FaceSnapshot(0);
    sub_22DC61290(&qword_27DA2CBA0, type metadata accessor for FaceSnapshot);
    sub_22DCB67BC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t GallerySnapshot.hash(into:)()
{
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB618C();
  type metadata accessor for GallerySnapshot();
  return FaceSnapshot.hash(into:)();
}

uint64_t GallerySnapshot.hashValue.getter()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB618C();
  type metadata accessor for GallerySnapshot();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t GallerySnapshot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for FaceSnapshot(0);
  MEMORY[0x28223BE20](v4, v5, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CBA8);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9, v10, v11);
  v13 = v27 - v12;
  v14 = type metadata accessor for GallerySnapshot();
  MEMORY[0x28223BE20](v14, v15, v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_22DC60FD8();
  sub_22DCB68FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  v20 = v29;
  v21 = v18;
  v27[1] = v4;
  v35 = 0;
  sub_22DC610CC();
  v22 = v30;
  sub_22DCB673C();
  v23 = v33;
  v24 = v34;
  *v21 = v32;
  *(v21 + 16) = v23;
  *(v21 + 24) = v24;
  LOBYTE(v32) = 1;
  *(v21 + 32) = sub_22DCB671C();
  *(v21 + 40) = v25;
  LOBYTE(v32) = 2;
  sub_22DC61290(&qword_27DA2CBB8, type metadata accessor for FaceSnapshot);
  sub_22DCB673C();
  (*(v20 + 8))(v13, v22);
  sub_22DC61120(v8, v21 + *(v14 + 24));
  sub_22DC61184(v21, v28, type metadata accessor for GallerySnapshot);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_22DC611EC(v21);
}

uint64_t sub_22DC60C84()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB618C();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t sub_22DC60D04()
{
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB618C();
  return FaceSnapshot.hash(into:)();
}

uint64_t sub_22DC60D70()
{
  sub_22DCB68AC();
  sub_22DCB618C();
  sub_22DCB618C();
  sub_22DCB618C();
  FaceSnapshot.hash(into:)();
  return sub_22DCB68EC();
}

uint64_t sub_22DC60E1C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

BOOL _s11NanoTimeKit15GallerySnapshotV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v9 = v4 == v6 && v5 == v7;
  if (!v9 && (sub_22DCB680C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_22DCB680C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for GallerySnapshot() + 24);

  return _s11NanoTimeKit12FaceSnapshotV2eeoiySbAC_ACtFZ_0((a1 + v10), (a2 + v10));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22DC60FD8()
{
  result = qword_27DA2CB90;
  if (!qword_27DA2CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CB90);
  }

  return result;
}

unint64_t sub_22DC6102C()
{
  result = qword_27DA2CB98;
  if (!qword_27DA2CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CB98);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_22DC610CC()
{
  result = qword_27DA2CBB0;
  if (!qword_27DA2CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CBB0);
  }

  return result;
}

uint64_t sub_22DC61120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC61184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC611EC(uint64_t a1)
{
  v2 = type metadata accessor for GallerySnapshot();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DC61290(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22DC612DC()
{
  result = qword_27DA2CC28;
  if (!qword_27DA2CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CC28);
  }

  return result;
}

uint64_t sub_22DC61358()
{
  result = type metadata accessor for FaceSnapshot(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GallerySnapshot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GallerySnapshot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DC61540()
{
  result = qword_27DA2CC48;
  if (!qword_27DA2CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CC48);
  }

  return result;
}

unint64_t sub_22DC61598()
{
  result = qword_27DA2CC50;
  if (!qword_27DA2CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CC50);
  }

  return result;
}

unint64_t sub_22DC615F0()
{
  result = qword_27DA2CC58;
  if (!qword_27DA2CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CC58);
  }

  return result;
}

uint64_t sub_22DC61644(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22DCB680C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_22DCB680C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22DCB680C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22DC61760(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22DC61780(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_22DC617D0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id WatchConnectivityMultiplexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchConnectivityMultiplexer.init()()
{
  ObjectType = swift_getObjectType();
  sub_22DCB5FCC();
  *&v0[OBJC_IVAR___NTKWatchConnectivityMultiplexer_watchConnectivityManager] = 0;
  *&v0[OBJC_IVAR___NTKWatchConnectivityMultiplexer_managerDelegate] = 0;
  *&v0[OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients] = MEMORY[0x277D84F90];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t WatchConnectivityMultiplexer.registerClient(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_22DCB662C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D7920](i, v5);
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    swift_unknownObjectRelease();
    if (v8 == a1)
    {
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectRetain();
  MEMORY[0x2318D7590](v9);
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22DCB622C();
  }

  sub_22DCB624C();
  return swift_endAccess();
}

Swift::Void __swiftcall WatchConnectivityMultiplexer.activate()()
{
  v1 = v0;
  v2 = sub_22DCB5FDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_watchConnectivityManager;
  if (!*(v0 + OBJC_IVAR___NTKWatchConnectivityMultiplexer_watchConnectivityManager))
  {
    v9 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_logger;
    v10 = sub_22DCB5FBC();
    v11 = sub_22DCB63AC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = v9;
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22D9C5000, v10, v11, "Activating", v13, 2u);
      v14 = v13;
      v9 = v12;
      MEMORY[0x2318DAAC0](v14, -1, -1);
    }

    v25 = [objc_allocWithZone(MEMORY[0x277CE3128]) init];
    v15 = *(v3 + 16);
    v15(v7, v1 + v9, v2);
    v16 = type metadata accessor for WatchConnectivityMultiplexer.ManagerDelegate(0);
    v17 = objc_allocWithZone(v16);
    swift_unknownObjectWeakInit();
    v15(&v17[OBJC_IVAR____TtCC11NanoTimeKit28WatchConnectivityMultiplexer15ManagerDelegate_logger], v7, v2);
    swift_unknownObjectWeakAssign();
    v26.receiver = v17;
    v26.super_class = v16;
    v18 = objc_msgSendSuper2(&v26, sel_init);
    (*(v3 + 8))(v7, v2);
    v19 = *(v1 + v8);
    v20 = v25;
    *(v1 + v8) = v25;
    v21 = v20;

    v22 = *(v1 + OBJC_IVAR___NTKWatchConnectivityMultiplexer_managerDelegate);
    *(v1 + OBJC_IVAR___NTKWatchConnectivityMultiplexer_managerDelegate) = v18;
    v23 = v18;

    [v21 setDelegate_];
  }
}

void sub_22DC61F14(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v6 - 8, v7, v8);
  v10 = &v20 - v9;

  v11 = sub_22DCB5FBC();
  v12 = sub_22DCB63DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_22DC87280(0xD000000000000021, 0x800000022DD0FCE0, &v21);
    *(v13 + 12) = 2080;
    if (!a2)
    {
      __break(1u);
      return;
    }

    *(v13 + 14) = sub_22DC87280(a1, a2, &v21);
    _os_log_impl(&dword_22D9C5000, v11, v12, "%s called for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v14, -1, -1);
    MEMORY[0x2318DAAC0](v13, -1, -1);
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  v15 = sub_22DCB62BC();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  sub_22DCB629C();

  v16 = v3;
  v17 = sub_22DCB628C();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v16;
  v18[5] = a1;
  v18[6] = a2;
  sub_22DC95460(0, 0, v10, &unk_22DCEA398, v18);
}

uint64_t sub_22DC62180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  sub_22DCB629C();
  v6[9] = sub_22DCB628C();
  v8 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC6221C, v8, v7);
}

uint64_t sub_22DC6221C()
{
  v26 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients;
    swift_beginAccess();
    v4 = *&v2[v3];
    v24 = v2;
    if (v4 >> 62)
    {
LABEL_26:
      v5 = sub_22DCB662C();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2318D7920](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v7 = *(v4 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        v9 = sub_22DCB611C();
        v10 = [v7 handleWatchConnectivityReloadFor_];

        if (v10)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_15;
        }
      }

      swift_unknownObjectRetain();
      v17 = sub_22DCB5FBC();
      v18 = sub_22DCB63DC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_22DC87280(0xD000000000000021, 0x800000022DD0FCE0, &v25);
        *(v19 + 12) = 2080;
        *(v0 + 40) = v7;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE48);
        v21 = sub_22DCB616C();
        v23 = sub_22DC87280(v21, v22, &v25);

        *(v19 + 14) = v23;
        _os_log_impl(&dword_22D9C5000, v17, v18, "%s handled by %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DAAC0](v20, -1, -1);
        MEMORY[0x2318DAAC0](v19, -1, -1);

        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_15:

      v11 = sub_22DCB5FBC();
      v12 = sub_22DCB63CC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_22DC87280(0xD000000000000021, 0x800000022DD0FCE0, &v25);
        _os_log_impl(&dword_22D9C5000, v11, v12, "%s unhandled", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x2318DAAC0](v14, -1, -1);
        MEMORY[0x2318DAAC0](v13, -1, -1);
      }

LABEL_18:
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_22DC62670(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  sub_22DCB629C();
  v3[24] = sub_22DCB628C();
  v5 = sub_22DCB625C();
  v3[25] = v5;
  v3[26] = v4;

  return MEMORY[0x2822009F8](sub_22DC6270C, v5, v4);
}

uint64_t sub_22DC6270C()
{
  v29 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  if (!Strong)
  {

    sub_22DC65598();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
LABEL_11:
    v17 = v0[1];
    goto LABEL_12;
  }

  v2 = Strong;
  v3 = v0[22];
  if (!v3)
  {

    sub_22DC65598();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();

    goto LABEL_11;
  }

  v0[28] = OBJC_IVAR____TtCC11NanoTimeKit28WatchConnectivityMultiplexer15ManagerDelegate_logger;

  v4 = sub_22DCB5FBC();
  v5 = sub_22DCB63AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22DC87280(0xD000000000000019, 0x800000022DD0FCC0, v28);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_22DC87280(v6, v3, v28);
    _os_log_impl(&dword_22D9C5000, v4, v5, "%s called for %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v8, -1, -1);
    MEMORY[0x2318DAAC0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients;
  swift_beginAccess();
  v10 = *&v2[v9];
  v0[29] = v10;
  if (v10 >> 62)
  {
    v21 = sub_22DCB662C();
    v0[30] = v21;
    if (v21)
    {
LABEL_7:
      v12 = v0[29];

      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2318D7920](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282200938](v13);
        }

        v14 = *(v12 + 32);
        swift_unknownObjectRetain();
      }

      v0[31] = v14;
      v0[32] = 1;
      v19 = sub_22DCB611C();
      v0[33] = v19;
      v0[2] = v0;
      v0[7] = v0 + 35;
      v0[3] = sub_22DC62BD4;
      v20 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE58);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_22DC63440;
      v0[13] = &block_descriptor_53;
      v0[14] = v20;
      [v14 hasActiveComplicationFor:v19 completionHandler:v0 + 10];
      v13 = (v0 + 2);

      return MEMORY[0x282200938](v13);
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[30] = v11;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  v22 = sub_22DCB5FBC();
  v23 = sub_22DCB63AC();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[27];
  if (v24)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_22DC87280(0xD000000000000019, 0x800000022DD0FCC0, v28);
    _os_log_impl(&dword_22D9C5000, v22, v23, "%s not privileged", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2318DAAC0](v27, -1, -1);
    MEMORY[0x2318DAAC0](v26, -1, -1);
  }

  v17 = v0[1];
LABEL_12:

  return v17(0);
}

uint64_t sub_22DC62BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_22DC63160;
  }

  else
  {
    v5 = sub_22DC62D04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22DC62D04()
{
  v27 = v0;
  v1 = *(v0 + 280);

  if ((v1 & 1) == 0)
  {
    v12 = swift_unknownObjectRelease();
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    if (v13 == *(v0 + 240))
    {

      v15 = sub_22DCB5FBC();
      v16 = sub_22DCB63AC();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 216);
      if (v17)
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_22DC87280(0xD000000000000019, 0x800000022DD0FCC0, &v26);
        _os_log_impl(&dword_22D9C5000, v15, v16, "%s not privileged", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x2318DAAC0](v20, -1, -1);
        MEMORY[0x2318DAAC0](v19, -1, -1);
      }

      goto LABEL_9;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2318D7920](*(v0 + 256));
      v23 = v12;
    }

    else
    {
      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v23 = *(v14 + 8 * v13 + 32);
      v12 = swift_unknownObjectRetain();
    }

    *(v0 + 248) = v23;
    *(v0 + 256) = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v24 = sub_22DCB611C();
      *(v0 + 264) = v24;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 280;
      *(v0 + 24) = sub_22DC62BD4;
      v25 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE58);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_22DC63440;
      *(v0 + 104) = &block_descriptor_53;
      *(v0 + 112) = v25;
      [v23 hasActiveComplicationFor:v24 completionHandler:v0 + 80];
      v12 = v0 + 16;

      return MEMORY[0x282200938](v12);
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x282200938](v12);
  }

  swift_unknownObjectRetain();
  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63AC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 248);
  v6 = *(v0 + 216);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22DC87280(0xD000000000000019, 0x800000022DD0FCC0, &v26);
    *(v7 + 12) = 2080;
    *(v0 + 80) = v5;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE48);
    v9 = sub_22DCB616C();
    v11 = sub_22DC87280(v9, v10, &v26);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_22D9C5000, v2, v3, "%s privileged by %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v8, -1, -1);
    MEMORY[0x2318DAAC0](v7, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

LABEL_9:
  v21 = *(v0 + 8);

  return v21(v1);
}

uint64_t sub_22DC63160()
{
  v18 = v0;
  v2 = v0[33];
  v1 = v0[34];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[32];
  v5 = v0[29];
  if (v4 != v0[30])
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x2318D7920](v0[32]);
      v14 = v3;
    }

    else
    {
      if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v14 = *(v5 + 8 * v4 + 32);
      v3 = swift_unknownObjectRetain();
    }

    v0[31] = v14;
    v0[32] = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      v15 = sub_22DCB611C();
      v0[33] = v15;
      v0[2] = v0;
      v0[7] = v0 + 35;
      v0[3] = sub_22DC62BD4;
      v16 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE58);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_22DC63440;
      v0[13] = &block_descriptor_53;
      v0[14] = v16;
      [v14 hasActiveComplicationFor:v15 completionHandler:v0 + 10];
      v3 = (v0 + 2);

      return MEMORY[0x282200938](v3);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  v6 = sub_22DCB5FBC();
  v7 = sub_22DCB63AC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[27];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_22DC87280(0xD000000000000019, 0x800000022DD0FCC0, &v17);
    _os_log_impl(&dword_22D9C5000, v6, v7, "%s not privileged", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2318DAAC0](v11, -1, -1);
    MEMORY[0x2318DAAC0](v10, -1, -1);
  }

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_22DC63440(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22DC63694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22DCB629C();
  v3[5] = sub_22DCB628C();
  v5 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC63730, v5, v4);
}

uint64_t sub_22DC63730()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_22DCB612C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_22DC65BF4;

  return sub_22DC62670(v3, v5);
}

uint64_t sub_22DC63818()
{
  v1[21] = v0;
  sub_22DCB629C();
  v1[22] = sub_22DCB628C();
  v3 = sub_22DCB625C();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_22DC638B0, v3, v2);
}

uint64_t sub_22DC638B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients;
    swift_beginAccess();
    v4 = *&v2[v3];
    v0[26] = v4;
    if (v4 >> 62)
    {
      v11 = v4;
      v5 = sub_22DCB662C();
      v4 = v11;
      v0[27] = v5;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[27] = v5;
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
        }

        else
        {
          v0[28] = OBJC_IVAR____TtCC11NanoTimeKit28WatchConnectivityMultiplexer15ManagerDelegate_logger;
          v0[29] = 0;
          v6 = v0[26];

          if ((v6 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x2318D7920](0, v6);
          }

          else
          {
            v7 = *(v6 + 32);
            swift_unknownObjectRetain();
          }

          v0[30] = v7;
          v0[2] = v0;
          v0[3] = sub_22DC63B1C;
          v10 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE50);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = sub_22DC64194;
          v0[13] = &block_descriptor;
          v0[14] = v10;
          [v7 handleCompanionDeviceHasBecomeActiveWithCompletionHandler_];
          v4 = (v0 + 2);
        }

        return MEMORY[0x282200938](v4);
      }
    }

    v9 = v0[1];
  }

  else
  {

    sub_22DC65598();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_22DC63B1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_22DC63E00;
  }

  else
  {
    v5 = sub_22DC63C4C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_22DC63C4C()
{
  swift_unknownObjectRelease();
  v1 = v0[29] + 1;
  if (v1 == v0[27])
  {
    v2 = v0[25];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[29] = v1;
    v5 = v0[26];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2318D7920]();
    }

    else
    {
      v6 = *(v5 + 8 * v1 + 32);
      swift_unknownObjectRetain();
    }

    v0[30] = v6;
    v0[2] = v0;
    v0[3] = sub_22DC63B1C;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22DC64194;
    v0[13] = &block_descriptor;
    v0[14] = v7;
    [v6 handleCompanionDeviceHasBecomeActiveWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_22DC63E00()
{
  v24 = v0;
  v1 = v0[31];
  swift_willThrow();
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63CC();
  swift_unknownObjectRelease();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[30];
  v7 = v0[31];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v8 = 136315650;
    *(v8 + 4) = sub_22DC87280(0xD00000000000001DLL, 0x800000022DD0FC80, v23);
    *(v8 + 12) = 2080;
    v0[10] = v6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE48);
    v10 = sub_22DCB616C();
    v12 = sub_22DC87280(v10, v11, v23);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    *v9 = v14;
    _os_log_impl(&dword_22D9C5000, v3, v4, "%s error handling for %s: %@", v8, 0x20u);
    sub_22DC657D8(v9);
    MEMORY[0x2318DAAC0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v22, -1, -1);
    MEMORY[0x2318DAAC0](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v15 = v0[29] + 1;
  if (v15 == v0[27])
  {
    v16 = v0[25];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v0[29] = v15;
    v19 = v0[26];
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x2318D7920]();
    }

    else
    {
      v20 = *(v19 + 8 * v15 + 32);
      swift_unknownObjectRetain();
    }

    v0[30] = v20;
    v0[2] = v0;
    v0[3] = sub_22DC63B1C;
    v21 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE50);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22DC64194;
    v0[13] = &block_descriptor;
    v0[14] = v21;
    [v20 handleCompanionDeviceHasBecomeActiveWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_22DC64194(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D820);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_22DC643B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_22DCB629C();
  v2[4] = sub_22DCB628C();
  v4 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC6444C, v4, v3);
}

uint64_t sub_22DC6444C()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22DC644FC;

  return sub_22DC63818();
}

uint64_t sub_22DC644FC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {
    if (v3)
    {
      v6 = *(v2 + 40);
      v7 = sub_22DCB5A0C();

      (v6)[2](v6, v7);
      _Block_release(v6);
    }

    else
    {
    }
  }

  else if (v3)
  {
    v8 = *(v2 + 40);
    v8[2](v8, 0);
    _Block_release(v8);
  }

  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_22DC64698(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_22DCB629C();
  v3[9] = sub_22DCB628C();
  v5 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC64734, v5, v4);
}

uint64_t sub_22DC64734()
{
  v38 = v0;
  v1 = v0;
  v2 = v0[7];

  v3 = sub_22DCB5FBC();
  v4 = sub_22DCB63DC();
  v36 = v2;

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37[0] = v7;
    *v6 = 136315394;
    result = sub_22DC87280(0xD00000000000001CLL, 0x800000022DD0FC40, v37);
    *(v6 + 4) = result;
    *(v6 + 12) = 2080;
    if (!v5)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    *(v6 + 14) = sub_22DC87280(v1[6], v36, v37);
    _os_log_impl(&dword_22D9C5000, v3, v4, "%s called for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DAAC0](v7, -1, -1);
    MEMORY[0x2318DAAC0](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR___NTKWatchConnectivityMultiplexer_clients;
    swift_beginAccess();
    v12 = *&v10[v11];
    v34 = v10;
    if (v12 >> 62)
    {
LABEL_32:
      v13 = sub_22DCB662C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      v35 = v1[7];
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x2318D7920](v14, v12);
          v15 = result;
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v15 = *(v12 + 8 * v14 + 32);
          result = swift_unknownObjectRetain();
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_18;
          }
        }

        if (!v35)
        {
          __break(1u);
          goto LABEL_34;
        }

        v17 = v1;
        v18 = sub_22DCB611C();
        v19 = [v15 shouldWakeAppForWatchConnectivityReloadFor_];

        if (v19)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v14;
        v1 = v17;
        if (v16 == v13)
        {
          goto LABEL_19;
        }
      }

      v1 = v17;

      swift_unknownObjectRetain();
      v27 = sub_22DCB5FBC();
      v28 = sub_22DCB63DC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v37[0] = v30;
        *v29 = 136315394;
        *(v29 + 4) = sub_22DC87280(0xD00000000000001CLL, 0x800000022DD0FC40, v37);
        *(v29 + 12) = 2080;
        v17[5] = v15;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CE48);
        v31 = sub_22DCB616C();
        v33 = sub_22DC87280(v31, v32, v37);
        v1 = v17;

        *(v29 + 14) = v33;
        _os_log_impl(&dword_22D9C5000, v27, v28, "%s waking for %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318DAAC0](v30, -1, -1);
        MEMORY[0x2318DAAC0](v29, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v24 = 1;
    }

    else
    {
LABEL_19:

      v20 = sub_22DCB5FBC();
      v21 = sub_22DCB63DC();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v37[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_22DC87280(0xD00000000000001CLL, 0x800000022DD0FC40, v37);
        _os_log_impl(&dword_22D9C5000, v20, v21, "%s not waking", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x2318DAAC0](v23, -1, -1);
        MEMORY[0x2318DAAC0](v22, -1, -1);
      }

      v24 = 0;
    }

    v26 = v1[1];
  }

  else
  {

    sub_22DC65598();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = v1[1];
    v24 = 0;
  }

  return v26(v24);
}

uint64_t sub_22DC64E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22DCB629C();
  v3[5] = sub_22DCB628C();
  v5 = sub_22DCB625C();

  return MEMORY[0x2822009F8](sub_22DC64EE0, v5, v4);
}

uint64_t sub_22DC64EE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_22DCB612C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_22DC64FC8;

  return sub_22DC64698(v3, v5);
}

uint64_t sub_22DC64FC8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 32);
  v7 = *v2;

  if (v1)
  {
    if (v5)
    {
      v8 = *(v4 + 48);
      v9 = sub_22DCB5A0C();

      (v8)[2](v8, 0, v9);
      _Block_release(v8);
    }

    else
    {
    }
  }

  else if (v5)
  {
    v10 = *(v4 + 48);
    v10[2](v10, a1 & 1, 0);
    _Block_release(v10);
  }

  v11 = *(v7 + 8);

  return v11();
}

id sub_22DC651C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22DC652A4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DC652DC()
{
  result = sub_22DCB5FDC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22DC6538C()
{
  result = sub_22DCB5FDC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22DC65424()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DC65BFC;

  return sub_22DC64E44(v2, v3, v4);
}

uint64_t sub_22DC654D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DC65BFC;

  return sub_22DC9E6CC(v2, v3, v4);
}

unint64_t sub_22DC65598()
{
  result = qword_27DA2CE40;
  if (!qword_27DA2CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CE40);
  }

  return result;
}

uint64_t sub_22DC655EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DC65BFC;

  return sub_22DC643B4(v2, v3);
}

uint64_t sub_22DC65698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22DC65BFC;

  return sub_22DC9E7B4(a1, v4, v5, v6);
}

uint64_t sub_22DC65774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22DC657D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22DC65888()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22DC65BFC;

  return sub_22DC63694(v2, v3, v4);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22DC6597C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D9CB0D8;

  return sub_22DC62180(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for WatchConnectivityMultiplexer.MultiplexierError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchConnectivityMultiplexer.MultiplexierError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DC65B98()
{
  result = qword_27DA2CE60;
  if (!qword_27DA2CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CE60);
  }

  return result;
}

Swift::Bool __swiftcall NTKComplicationProvider.isComplicationAvailable(_:for:)(NTKComplication _, Swift::OpaquePointer a2)
{
  isa = _.super.super.isa;
  v4 = *(_._uniqueIdentifier + 2);
  if (v4)
  {
    uniqueIdentifier = _._uniqueIdentifier;
    sub_22DCB65DC();
    v6 = uniqueIdentifier + 4;
    do
    {
      ++v6;
      sub_22DCB639C();
      sub_22DCB65BC();
      sub_22DCB65EC();
      sub_22DCB65FC();
      sub_22DCB65CC();
      --v4;
    }

    while (v4);
  }

  sub_22DC6600C(0, &qword_27DA2CE68);
  v7 = sub_22DCB61EC();

  v8 = [v2 isComplicationAvailable:isa forFamilies:v7];

  return v8;
}

Swift::Void __swiftcall NTKComplicationProvider.appendOrReplaceConfigurableDefaultComplication(_:to:)(NTKComplication _, Swift::OpaquePointer *to)
{
  isa = _.super.super.isa;
  sub_22DC65E10(*_._uniqueIdentifier);

  v4 = objc_allocWithZone(MEMORY[0x277CBEB18]);
  v5 = sub_22DCB61EC();

  v6 = [v4 initWithArray_];

  [v2 appendOrReplaceConfigurableDefaultComplication:isa toComplications:v6];
  sub_22DC6600C(0, &qword_27DA2CE70);
  v6;
  sub_22DCB61FC();
  __break(1u);
}

char *sub_22DC65E10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22DCB662C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_22DC9C408(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2318D7920](i, a1);
        sub_22DC6600C(0, &qword_27DA2CE70);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_22DC9C408((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_22DC66054(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_22DC6600C(0, &qword_27DA2CE70);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22DC9C408((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_22DC66054(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DC6600C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_22DC66054(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

int *sub_22DC66084@<X0>(uint64_t a1@<X8>)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = sub_22DCB5A2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DCB5A8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16);
  v73 = &v64 - v17;
  MEMORY[0x28223BE20](v18, v19, v20);
  v22 = &v64 - v21;
  MEMORY[0x28223BE20](v23, v24, v25);
  v27 = &v64 - v26;
  MEMORY[0x28223BE20](v28, v29, v30);
  v32 = &v64 - v31;
  v33 = BSCurrentUserDirectory();
  if (v33)
  {
    v72 = a1;
    v69 = v27;
    v34 = v33;
    sub_22DCB612C();
    v76 = v22;
    v70 = v32;

    sub_22DCB5A3C();

    v78 = 0x7972617262694CLL;
    v79 = 0xE700000000000000;
    v68 = *MEMORY[0x277CC91C0];
    v77 = v8;
    v35 = *(v3 + 104);
    v35(v7);
    v75 = sub_22DC718F8();
    v36 = v73;
    sub_22DCB5A7C();
    v37 = *(v3 + 8);
    v67 = v3 + 8;
    v37(v7, v2);
    v74 = v37;
    v71 = v9;
    v65 = *(v9 + 8);
    v65(v13, v77);
    v78 = 0x736568636143;
    v79 = 0xE600000000000000;
    v38 = v68;
    (v35)(v7, v68, v2);
    v66 = v35;
    sub_22DCB5A7C();
    v37(v7, v2);
    v39 = v65;
    v65(v36, v77);
    v78 = 0x656D69546F6E614ELL;
    v79 = 0xEB0000000074694BLL;
    (v35)(v7, v38, v2);
    v40 = v69;
    v41 = v76;
    sub_22DCB5A7C();
    v74(v7, v2);
    v39(v41, v77);
    v78 = 0xD000000000000012;
    v79 = 0x800000022DD0FDE0;
    v66(v7, v38, v2);
    v42 = v77;
    v43 = v70;
    sub_22DCB5A7C();
    v44 = v43;
    v74(v7, v2);
    v45 = v42;
    v39(v40, v42);
    v46 = objc_opt_self();
    v47 = [v46 defaultManager];
    v48 = sub_22DCB5A4C();
    v78 = 0;
    LODWORD(v42) = [v47 removeItemAtURL:v48 error:&v78];

    if (v42)
    {
      v49 = v78;
    }

    else
    {
      v53 = v78;
      v54 = sub_22DCB5A1C();

      swift_willThrow();
    }

    v55 = [v46 defaultManager];
    v56 = sub_22DCB5A4C();
    v78 = 0;
    v57 = [v55 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:0 error:&v78];

    v58 = v71;
    v76 = v78;
    if (v57)
    {
      v59 = v72;
      (*(v71 + 32))(v72, v44, v45);
      (*(v58 + 56))(v59, 0, 1, v45);
      *(v59 + *(type metadata accessor for ReplicatorDirectoryResult(0) + 20)) = 0;
      v60 = v76;

      return v60;
    }

    else
    {
      v61 = v76;
      v62 = sub_22DCB5A1C();

      swift_willThrow();
      v39(v44, v45);
      v63 = v72;
      (*(v58 + 56))(v72, 1, 1, v45);
      result = type metadata accessor for ReplicatorDirectoryResult(0);
      *(v63 + result[5]) = v62;
    }
  }

  else
  {
    (*(v9 + 56))(a1, 1, 1, v8);
    sub_22DC717A0();
    v50 = swift_allocError();
    *v51 = 1;
    result = type metadata accessor for ReplicatorDirectoryResult(0);
    *(a1 + result[5]) = v50;
  }

  return result;
}

uint64_t sub_22DC66788(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for ReplicatorDirectoryResult(0);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

int *sub_22DC667E0@<X0>(uint64_t a1@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  v2 = sub_22DCB5A2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DCB5A8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19, v20, v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24, v25, v26);
  v94 = &v85 - v27;
  MEMORY[0x28223BE20](v28, v29, v30);
  v95 = &v85 - v31;
  MEMORY[0x28223BE20](v32, v33, v34);
  v36 = &v85 - v35;
  v37 = BSCurrentUserDirectory();
  if (v37)
  {
    v87 = v13;
    v89 = a1;
    v98 = v8;
    v38 = v9;
    v39 = v37;
    sub_22DCB612C();
    v93 = v36;
    v40 = v3;

    sub_22DCB5A3C();

    v100 = 0x7972617262694CLL;
    v101 = 0xE700000000000000;
    v41 = *MEMORY[0x277CC91C0];
    v42 = v40 + 104;
    v43 = *(v40 + 104);
    v43(v7, v41, v2);
    v96 = sub_22DC718F8();
    sub_22DCB5A7C();
    v44 = *(v40 + 8);
    v97 = (v40 + 8);
    v44(v7, v2);
    v88 = v38;
    v99 = *(v38 + 8);
    v45 = v18;
    v46 = v23;
    v47 = v98;
    v99(v45, v98);
    v100 = 0x736568636143;
    v101 = 0xE600000000000000;
    v92 = v41;
    v43(v7, v41, v2);
    v90 = v43;
    v48 = v94;
    sub_22DCB5A7C();
    v91 = v44;
    v44(v7, v2);
    v99(v46, v47);
    v100 = 0x656D69546F6E614ELL;
    v101 = 0xEB0000000074694BLL;
    v43(v7, v41, v2);
    v49 = v95;
    sub_22DCB5A7C();
    v44(v7, v2);
    v50 = v48;
    v51 = v98;
    v52 = v99;
    v99(v50, v98);
    v100 = 0xD000000000000016;
    v101 = 0x800000022DD0FE00;
    v85 = v42;
    v90(v7, v92, v2);
    v53 = v93;
    sub_22DCB5A7C();
    v86 = v2;
    v91(v7, v2);
    v54 = v53;
    v94 = (v38 + 8);
    v55 = v52(v49, v51);
    if (NTKInternalBuild(v55, v56))
    {
      v57 = v95;
      sub_22DCB5A5C();
      v100 = 0xD000000000000012;
      v101 = 0x800000022DD0FE20;
      v58 = v86;
      v90(v7, v92, v86);
      v59 = v87;
      sub_22DCB5A7C();
      v91(v7, v58);
      v60 = v98;
      v99(v57, v98);
      v61 = [objc_opt_self() defaultManager];
      v62 = sub_22DCB5A4C();
      v100 = 0;
      LODWORD(v58) = [v61 removeItemAtURL:v62 error:&v100];

      if (v58)
      {
        v63 = v100;
      }

      else
      {
        v67 = v100;
        v68 = sub_22DCB5A1C();

        swift_willThrow();
      }

      v99(v59, v60);
      v54 = v93;
    }

    v69 = objc_opt_self();
    v70 = [v69 defaultManager];
    v71 = sub_22DCB5A4C();
    v100 = 0;
    v72 = [v70 removeItemAtURL:v71 error:&v100];

    if (v72)
    {
      v73 = v100;
    }

    else
    {
      v74 = v100;
      v75 = sub_22DCB5A1C();

      swift_willThrow();
    }

    v76 = v89;
    v77 = [v69 defaultManager];
    v78 = sub_22DCB5A4C();
    v100 = 0;
    v79 = [v77 createDirectoryAtURL:v78 withIntermediateDirectories:1 attributes:0 error:&v100];

    v80 = v98;
    v97 = v100;
    if (v79)
    {
      v81 = v88;
      (*(v88 + 32))(v76, v54, v98);
      (*(v81 + 56))(v76, 0, 1, v80);
      *(v76 + *(type metadata accessor for ReplicatorDirectoryResult(0) + 20)) = 0;
      v82 = v97;

      return v82;
    }

    else
    {
      v83 = v97;
      v84 = sub_22DCB5A1C();

      swift_willThrow();
      v99(v54, v80);
      (*(v88 + 56))(v76, 1, 1, v80);
      result = type metadata accessor for ReplicatorDirectoryResult(0);
      *(v76 + result[5]) = v84;
    }
  }

  else
  {
    (*(v9 + 56))(a1, 1, 1, v8);
    sub_22DC717A0();
    v64 = swift_allocError();
    *v65 = 1;
    result = type metadata accessor for ReplicatorDirectoryResult(0);
    *(a1 + result[5]) = v64;
  }

  return result;
}

uint64_t sub_22DC67050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for LibrarySnapshot();
  MEMORY[0x28223BE20](v4, v5, v6);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D050);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ReplicatedLibrarySnapshot(0);
  MEMORY[0x28223BE20](v13 - 8, v14, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC72610();
  sub_22DCB68FC();
  if (!v2)
  {
    v18 = v21;
    sub_22D9CA4B8(&qword_27DA2D060, type metadata accessor for LibrarySnapshot);
    v19 = v23;
    sub_22DCB673C();
    (*(v22 + 8))(v12, v8);
    sub_22DC71AC8(v19, v17, type metadata accessor for LibrarySnapshot);
    sub_22DC71AC8(v17, v18, type metadata accessor for ReplicatedLibrarySnapshot);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22DC672E4(uint64_t a1)
{
  v2 = sub_22DC72610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC67320(uint64_t a1)
{
  v2 = sub_22DC72610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DC67374(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D068);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC72610();
  sub_22DCB690C();
  type metadata accessor for LibrarySnapshot();
  sub_22D9CA4B8(&qword_27DA2D070, type metadata accessor for LibrarySnapshot);
  sub_22DCB67BC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22DC67520@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for GallerySnapshot();
  MEMORY[0x28223BE20](v4, v5, v6);
  v23 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D078);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ReplicatedGallerySnapshot(0);
  MEMORY[0x28223BE20](v13 - 8, v14, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC72664();
  sub_22DCB68FC();
  if (!v2)
  {
    v18 = v21;
    sub_22D9CA4B8(&qword_27DA2D088, type metadata accessor for GallerySnapshot);
    v19 = v23;
    sub_22DCB673C();
    (*(v22 + 8))(v12, v8);
    sub_22DC71AC8(v19, v17, type metadata accessor for GallerySnapshot);
    sub_22DC71AC8(v17, v18, type metadata accessor for ReplicatedGallerySnapshot);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22DC67794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22DCB680C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22DC6781C(uint64_t a1)
{
  v2 = sub_22DC72664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DC67858(uint64_t a1)
{
  v2 = sub_22DC72664();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DC678AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D090);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DC72664();
  sub_22DCB690C();
  type metadata accessor for GallerySnapshot();
  sub_22D9CA4B8(&qword_27DA2D098, type metadata accessor for GallerySnapshot);
  sub_22DCB67BC();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_22DC67A24()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 40) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    sub_22DC714C8(*(v1 + 16));

    sub_22DCB634C();
  }

  os_unfair_lock_unlock((v1 + 48));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DC67B40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DC67B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_22DC67BF8@<X0>(uint64_t a1@<X8>)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = sub_22DCB5A2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22DCB5A8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19, v20, v21);
  v74 = &v68 - v22;
  MEMORY[0x28223BE20](v23, v24, v25);
  v75 = &v68 - v26;
  MEMORY[0x28223BE20](v27, v28, v29);
  v31 = &v68 - v30;
  MEMORY[0x28223BE20](v32, v33, v34);
  v36 = &v68 - v35;
  v37 = BSCurrentUserDirectory();
  if (v37)
  {
    v73 = a1;
    v80 = v31;
    v38 = v37;
    sub_22DCB612C();
    v81 = v8;
    v71 = v36;

    sub_22DCB5A3C();

    v82 = 0x7972617262694CLL;
    v83 = 0xE700000000000000;
    v39 = *MEMORY[0x277CC91C0];
    v78 = *(v3 + 104);
    v78(v7, v39, v2);
    v79 = v3 + 104;
    v77 = sub_22DC718F8();
    sub_22DCB5A7C();
    v40 = *(v3 + 8);
    v40(v7, v2);
    v69 = v40;
    v72 = v9;
    v76 = *(v9 + 8);
    v76(v13, v81);
    v82 = 0x736568636143;
    v83 = 0xE600000000000000;
    v41 = v39;
    v42 = v18;
    v43 = v78;
    v78(v7, v39, v2);
    v44 = v74;
    sub_22DCB5A7C();
    v40(v7, v2);
    v45 = v2;
    v46 = v76;
    v76(v42, v81);
    v82 = 0x656D69546F6E614ELL;
    v83 = 0xEB0000000074694BLL;
    v70 = v41;
    v43(v7, v41, v45);
    v47 = v75;
    sub_22DCB5A7C();
    v48 = v69;
    v69(v7, v45);
    v46(v44, v81);
    v82 = 0x746163696C706552;
    v83 = 0xEA0000000000726FLL;
    v49 = v41;
    v50 = v78;
    v78(v7, v49, v45);
    sub_22DCB5A7C();
    v48(v7, v45);
    v51 = v76;
    v76(v47, v81);
    v82 = 0x746F687370616E53;
    v83 = 0xE900000000000073;
    v50(v7, v70, v45);
    v52 = v71;
    v53 = v51;
    v54 = v80;
    v55 = v81;
    sub_22DCB5A7C();
    v48(v7, v45);
    v56 = v53;
    v53(v54, v55);
    v57 = [objc_opt_self() defaultManager];
    v58 = sub_22DCB5A4C();
    v82 = 0;
    LODWORD(v46) = [v57 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:&v82];

    v80 = v82;
    if (v46)
    {
      v60 = v72;
      v59 = v73;
      (*(v72 + 32))(v73, v52, v55);
      (*(v60 + 56))(v59, 0, 1, v55);
      *(v59 + *(type metadata accessor for ReplicatorDirectoryResult(0) + 20)) = 0;
      v61 = v80;

      return v61;
    }

    else
    {
      v65 = v80;
      v66 = sub_22DCB5A1C();

      swift_willThrow();
      v56(v52, v55);
      v67 = v73;
      (*(v72 + 56))(v73, 1, 1, v55);
      result = type metadata accessor for ReplicatorDirectoryResult(0);
      *(v67 + result[5]) = v66;
    }
  }

  else
  {
    (*(v9 + 56))(a1, 1, 1, v8);
    sub_22DC717A0();
    v63 = swift_allocError();
    *v64 = 1;
    result = type metadata accessor for ReplicatorDirectoryResult(0);
    *(a1 + result[5]) = v63;
  }

  return result;
}

char *sub_22DC68304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  if (v6)
  {
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    return sub_22DC714C8(v6);
  }

  v11 = a1;
  result = sub_22DC70AF8(a2);
  if (!v3)
  {
    v13 = result;
    if (result)
    {

      sub_22DCB5E8C();

      v15 = sub_22DC70E40(v13);
      v16 = sub_22DC71184(v13);
      *v11 = v13;
      v11[1] = v16;
      v11[2] = v15;
      v11[3] = 0;
      *a3 = v13;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = 0;

      v6 = 0;
      return sub_22DC714C8(v6);
    }

    sub_22DC70DEC();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DC68450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a4;
  v24[2] = a2;
  v24[3] = a1;
  v5 = sub_22DCB5A8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9);
  v10 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13);
  v15 = v24 - v14;
  v24[1] = v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = *(v6 + 16);
  v17(v15, a3, v5);
  v18 = swift_allocObject();
  swift_weakInit();
  v17(v10, a3, v5);
  v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v6 + 32))(v21 + v19, v10, v5);
  *(v21 + v20) = v16;
  sub_22DCB5E9C();
  swift_allocObject();

  v22 = sub_22DCB5E5C();

  swift_beginAccess();
  if (*(v16 + 16))
  {
  }

  else if (v22)
  {

    return v22;
  }

  return 0;
}

uint64_t sub_22DC686FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v6 = sub_22DCB5A8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = &v54 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    if (qword_27DA2CB38 != -1)
    {
      swift_once();
    }

    v18 = sub_22DCB5FDC();
    v19 = __swift_project_value_buffer(v18, qword_27DA37690);
    v20 = *(v7 + 16);
    v59 = a3;
    v55 = v20;
    v20(v16, a3, v6);
    v56 = v19;
    v21 = sub_22DCB5FBC();
    v22 = sub_22DCB63CC();
    v23 = os_log_type_enabled(v21, v22);
    v58 = v7;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54 = v11;
      v26 = v25;
      v60[0] = v25;
      *v24 = 136315138;
      sub_22D9CA4B8(&qword_27DA2CF10, MEMORY[0x277CC9260]);
      v27 = sub_22DCB67DC();
      v28 = v7;
      v29 = a4;
      v31 = v30;
      v57 = *(v28 + 8);
      v57(v16, v6);
      v32 = sub_22DC87280(v27, v31, v60);
      a4 = v29;

      *(v24 + 4) = v32;
      _os_log_impl(&dword_22D9C5000, v21, v22, "DB corrupted at %s…", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v33 = v26;
      v11 = v54;
      MEMORY[0x2318DAAC0](v33, -1, -1);
      MEMORY[0x2318DAAC0](v24, -1, -1);
    }

    else
    {

      v57 = *(v7 + 8);
      v57(v16, v6);
    }

    v34 = [objc_opt_self() defaultManager];
    v35 = v59;
    v36 = sub_22DCB5A4C();
    v60[0] = 0;
    v37 = [v34 removeItemAtURL:v36 error:v60];

    if (v37)
    {
      v38 = v60[0];
    }

    else
    {
      v39 = v60[0];
      v40 = sub_22DCB5A1C();

      swift_willThrow();
      v55(v11, v35, v6);
      v41 = v40;
      v42 = sub_22DCB5FBC();
      v43 = sub_22DCB63CC();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60[0] = v59;
        *v44 = 136315394;
        sub_22D9CA4B8(&qword_27DA2CF10, MEMORY[0x277CC9260]);
        v46 = sub_22DCB67DC();
        v47 = a4;
        v49 = v48;
        v57(v11, v6);
        v50 = sub_22DC87280(v46, v49, v60);
        a4 = v47;

        *(v44 + 4) = v50;
        *(v44 + 12) = 2112;
        v51 = v40;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 14) = v52;
        *v45 = v52;
        _os_log_impl(&dword_22D9C5000, v42, v43, "DB reset at %s failed - %@", v44, 0x16u);
        sub_22D9CA164(v45, &qword_27DA2D450);
        MEMORY[0x2318DAAC0](v45, -1, -1);
        v53 = v59;
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x2318DAAC0](v53, -1, -1);
        MEMORY[0x2318DAAC0](v44, -1, -1);
      }

      else
      {

        v57(v11, v6);
      }
    }

    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_22DC68CA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a4;
  v8 = sub_22DCB5F1C();
  MEMORY[0x28223BE20](v8 - 8, v9, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22DCEA460;
  v14 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 40) = v14;
  v15 = a1[3];
  *(v13 + 48) = a1[2];
  *(v13 + 56) = v15;
  v17[3] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF20);
  sub_22DC7164C();
  sub_22DCB60FC();

  sub_22DC71584(a6, v12, MEMORY[0x277D46780]);

  return sub_22DCB5F0C();
}

void sub_22DC68E34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22DCB5B3C();
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatedGallerySnapshot(0);
  MEMORY[0x28223BE20](v10, v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17);
  v19 = (&v53 - v18);
  MEMORY[0x28223BE20](v20, v21, v22);
  v24 = &v53 - v23;
  sub_22D9CA4B8(&qword_27DA2CF40, type metadata accessor for ReplicatedGallerySnapshot);
  sub_22DCB5EFC();
  if (!v2)
  {
    v57 = v19;
    v58 = v14;
    v25 = v9;
    v26 = v60;
    v59 = 0;
    if (qword_27DA2CB30 != -1)
    {
      swift_once();
    }

    v27 = sub_22DCB5FDC();
    __swift_project_value_buffer(v27, qword_27DA37678);
    sub_22DC71584(a1, v24, type metadata accessor for ReplicatedGallerySnapshot);
    v28 = v57;
    sub_22DC71584(a1, v57, type metadata accessor for ReplicatedGallerySnapshot);
    v29 = *(v26 + 16);
    v56 = v25;
    v29(v25, a2, v5);
    v30 = v58;
    sub_22DC71584(a1, v58, type metadata accessor for ReplicatedGallerySnapshot);
    v31 = sub_22DCB5FBC();
    v32 = sub_22DCB63DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v61 = v55;
      *v33 = 136315906;
      v54 = v32;
      v53 = v5;
      v34 = v30;
      v35 = *(v24 + 2);
      v36 = *(v24 + 3);

      sub_22DC715EC(v24, type metadata accessor for ReplicatedGallerySnapshot);
      v37 = sub_22DC87280(v35, v36, &v61);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = *v28;
      v39 = v28[1];

      sub_22DC715EC(v28, type metadata accessor for ReplicatedGallerySnapshot);
      v40 = sub_22DC87280(v38, v39, &v61);

      *(v33 + 14) = v40;
      *(v33 + 22) = 2080;
      sub_22D9CA4B8(&unk_27DA2D490, MEMORY[0x277CC95F0]);
      v41 = v56;
      v42 = v53;
      v43 = sub_22DCB67DC();
      v45 = v44;
      (*(v26 + 8))(v41, v42);
      v46 = v31;
      v47 = sub_22DC87280(v43, v45, &v61);

      *(v33 + 24) = v47;
      *(v33 + 32) = 2080;
      v48 = (v34 + *(type metadata accessor for GallerySnapshot() + 24));
      v49 = *v48;
      v50 = v48[1];

      sub_22DC715EC(v34, type metadata accessor for ReplicatedGallerySnapshot);
      v51 = sub_22DC87280(v49, v50, &v61);

      *(v33 + 34) = v51;
      _os_log_impl(&dword_22D9C5000, v46, v54, "Entry %s on %s has hash of %s for %s…", v33, 0x2Au);
      v52 = v55;
      swift_arrayDestroy();
      MEMORY[0x2318DAAC0](v52, -1, -1);
      MEMORY[0x2318DAAC0](v33, -1, -1);
    }

    else
    {

      sub_22DC715EC(v30, type metadata accessor for ReplicatedGallerySnapshot);
      (*(v26 + 8))(v56, v5);
      sub_22DC715EC(v28, type metadata accessor for ReplicatedGallerySnapshot);
      sub_22DC715EC(v24, type metadata accessor for ReplicatedGallerySnapshot);
    }
  }
}

uint64_t sub_22DC69338@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v82 = a1;
  v80 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v81 = &v68[-v8];
  v9 = type metadata accessor for ReplicatedGallerySnapshot(0);
  MEMORY[0x28223BE20](v9, v10, v11);
  v79 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v14, v15);
  v75 = &v68[-v16];
  v78 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v78, v17, v18);
  v20 = &v68[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22DCB5A8C();
  v76 = *(v21 - 8);
  v77 = v21;
  MEMORY[0x28223BE20](v21, v22, v23);
  v25 = &v68[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27, v28);
  v30 = &v68[-v29];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22D9CA4B8(&qword_27DA2CF38, type metadata accessor for ReplicatedGallerySnapshot);
  v31 = v82;
  sub_22D9CA4B8(&qword_27DA2CF40, type metadata accessor for ReplicatedGallerySnapshot);
  v32 = v84;
  result = sub_22DCB5F6C();
  if (!v32)
  {
    v35 = v75;
    v73 = 0;
    v74 = v25;
    v83 = result;
    v84 = v34;
    v36 = v31;
    v37 = v31 + *(type metadata accessor for GallerySnapshot() + 24);
    v38 = type metadata accessor for FaceSnapshot(0);
    sub_22DC71584(v37 + *(v38 + 40), v20, type metadata accessor for FaceSnapshot.CachedFile);
    v39 = v77;
    v40 = v76;
    (*(v76 + 32))(v30, &v20[*(v78 + 20)], v77);
    v41 = v30;
    if (qword_27DA2CB30 != -1)
    {
      swift_once();
    }

    v42 = sub_22DCB5FDC();
    __swift_project_value_buffer(v42, qword_27DA37678);
    v43 = v35;
    sub_22DC71584(v36, v35, type metadata accessor for ReplicatedGallerySnapshot);
    v44 = v79;
    sub_22DC71584(v36, v79, type metadata accessor for ReplicatedGallerySnapshot);
    v45 = *(v40 + 16);
    v46 = v74;
    v82 = v40 + 16;
    v78 = v45;
    v45(v74, v41, v39);
    v47 = sub_22DCB5FBC();
    v48 = sub_22DCB63DC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85 = v71;
      *v49 = 136315650;
      v70 = v47;
      v72 = v41;
      v50 = v40;
      v51 = v39;
      v52 = v44;
      v53 = *(v43 + 16);
      v54 = *(v43 + 24);

      v69 = v48;
      sub_22DC715EC(v43, type metadata accessor for ReplicatedGallerySnapshot);
      v55 = sub_22DC87280(v53, v54, &v85);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      v56 = *v52;
      v57 = v52[1];

      sub_22DC715EC(v52, type metadata accessor for ReplicatedGallerySnapshot);
      v58 = sub_22DC87280(v56, v57, &v85);

      *(v49 + 14) = v58;
      *(v49 + 22) = 2080;
      sub_22D9CA4B8(&qword_27DA2CF10, MEMORY[0x277CC9260]);
      v59 = v74;
      v60 = sub_22DCB67DC();
      v62 = v61;
      v63 = *(v50 + 8);
      v63(v59, v51);
      v64 = sub_22DC87280(v60, v62, &v85);
      v39 = v51;
      v40 = v50;
      v41 = v72;

      *(v49 + 24) = v64;
      v65 = v70;
      _os_log_impl(&dword_22D9C5000, v70, v69, "Encoding %s on %s with %s…", v49, 0x20u);
      v66 = v71;
      swift_arrayDestroy();
      MEMORY[0x2318DAAC0](v66, -1, -1);
      MEMORY[0x2318DAAC0](v49, -1, -1);
    }

    else
    {

      v63 = *(v40 + 8);
      v63(v46, v39);
      sub_22DC715EC(v44, type metadata accessor for ReplicatedGallerySnapshot);
      sub_22DC715EC(v43, type metadata accessor for ReplicatedGallerySnapshot);
    }

    v67 = v81;
    (v78)(v81, v41, v39);
    (*(v40 + 56))(v67, 0, 1, v39);
    sub_22DCB5F3C();
    return (v63)(v41, v39);
  }

  return result;
}

uint64_t sub_22DC699BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[0] = a4;
  v8 = sub_22DCB5F1C();
  MEMORY[0x28223BE20](v8 - 8, v9, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF18);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22DCEA460;
  v14 = a1[1];
  *(v13 + 32) = *a1;
  *(v13 + 40) = v14;
  type metadata accessor for LibraryReplicatorIdentifier();

  *(v13 + 48) = sub_22DCB5AEC();
  *(v13 + 56) = v15;
  v17[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF20);
  sub_22DC7164C();
  sub_22DCB60FC();

  sub_22DC71584(a6, v12, MEMORY[0x277D46780]);

  return sub_22DCB5F0C();
}

void sub_22DC69B58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v66, v4, v5);
  v64 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22DCB5B3C();
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatedLibrarySnapshot(0);
  MEMORY[0x28223BE20](v12, v13, v14);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v22, v23, v24);
  v26 = &v59 - v25;
  sub_22D9CA4B8(&qword_27DA2CF08, type metadata accessor for ReplicatedLibrarySnapshot);
  v65 = a1;
  v27 = v68;
  sub_22DCB5EFC();
  if (!v27)
  {
    v28 = a2;
    v62 = v21;
    v63 = v16;
    v29 = v67;
    v68 = 0;
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v30 = sub_22DCB5FDC();
    __swift_project_value_buffer(v30, qword_27DA37660);
    v31 = v65;
    sub_22DC71584(v65, v26, type metadata accessor for ReplicatedLibrarySnapshot);
    v32 = v62;
    sub_22DC71584(v31, v62, type metadata accessor for ReplicatedLibrarySnapshot);
    (*(v29 + 16))(v11, v28, v7);
    v33 = v31;
    v34 = v63;
    sub_22DC71584(v33, v63, type metadata accessor for ReplicatedLibrarySnapshot);
    v35 = sub_22DCB5FBC();
    v36 = sub_22DCB63DC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v61 = v36;
      v38 = v32;
      v39 = v37;
      v65 = swift_slowAlloc();
      v69 = v65;
      *v39 = 136315906;
      v60 = v35;
      v59 = sub_22D9CA4B8(&unk_27DA2D490, MEMORY[0x277CC95F0]);
      v40 = sub_22DCB67DC();
      v42 = v41;
      v43 = v11;
      v66 = type metadata accessor for ReplicatedLibrarySnapshot;
      sub_22DC715EC(v26, type metadata accessor for ReplicatedLibrarySnapshot);
      v44 = sub_22DC87280(v40, v42, &v69);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = v64;
      sub_22DC71584(v38, v64, type metadata accessor for LibraryReplicatorIdentifier);
      sub_22DC715EC(v38, type metadata accessor for ReplicatedLibrarySnapshot);
      v46 = *v45;
      v47 = v45[1];

      sub_22DC715EC(v45, type metadata accessor for LibraryReplicatorIdentifier);
      v48 = sub_22DC87280(v46, v47, &v69);

      *(v39 + 14) = v48;
      *(v39 + 22) = 2080;
      v49 = sub_22DCB67DC();
      v51 = v50;
      (*(v67 + 8))(v43, v7);
      v52 = sub_22DC87280(v49, v51, &v69);

      *(v39 + 24) = v52;
      *(v39 + 32) = 2080;
      v53 = (v34 + *(type metadata accessor for LibrarySnapshot() + 24));
      v54 = *v53;
      v55 = v53[1];

      sub_22DC715EC(v34, v66);
      v56 = sub_22DC87280(v54, v55, &v69);

      *(v39 + 34) = v56;
      v57 = v60;
      _os_log_impl(&dword_22D9C5000, v60, v61, "Entry %s on %s has hash of %s for %s…", v39, 0x2Au);
      v58 = v65;
      swift_arrayDestroy();
      MEMORY[0x2318DAAC0](v58, -1, -1);
      MEMORY[0x2318DAAC0](v39, -1, -1);
    }

    else
    {

      sub_22DC715EC(v34, type metadata accessor for ReplicatedLibrarySnapshot);
      (*(v67 + 8))(v11, v7);
      sub_22DC715EC(v32, type metadata accessor for ReplicatedLibrarySnapshot);
      sub_22DC715EC(v26, type metadata accessor for ReplicatedLibrarySnapshot);
    }
  }
}

uint64_t sub_22DC6A110@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v88 = a1;
  v85 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v86 = &v73[-v8];
  v79 = type metadata accessor for LibraryReplicatorIdentifier();
  MEMORY[0x28223BE20](v79, v9, v10);
  v80 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for ReplicatedLibrarySnapshot(0);
  MEMORY[0x28223BE20](v12, v13, v14);
  v82 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17, v18);
  v81 = &v73[-v19];
  v84 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v84, v20, v21);
  v23 = &v73[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_22DCB5A8C();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v24, v25);
  v27 = &v73[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28, v29, v30);
  v32 = &v73[-v31];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22D9CA4B8(&qword_27DA2CF00, type metadata accessor for ReplicatedLibrarySnapshot);
  sub_22D9CA4B8(&qword_27DA2CF08, type metadata accessor for ReplicatedLibrarySnapshot);
  v33 = v88;
  v34 = v90;
  result = sub_22DCB5F6C();
  if (!v34)
  {
    v38 = v81;
    v37 = v82;
    v77 = 0;
    v78 = v27;
    v89 = result;
    v90 = v36;
    v39 = v33;
    v40 = v33 + *(type metadata accessor for LibrarySnapshot() + 24);
    v41 = type metadata accessor for FaceSnapshot(0);
    sub_22DC71584(v40 + *(v41 + 40), v23, type metadata accessor for FaceSnapshot.CachedFile);
    v42 = v83;
    v43 = v87;
    (*(v83 + 32))(v32, &v23[*(v84 + 20)], v87);
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v44 = sub_22DCB5FDC();
    __swift_project_value_buffer(v44, qword_27DA37660);
    v45 = v38;
    sub_22DC71584(v39, v38, type metadata accessor for ReplicatedLibrarySnapshot);
    v46 = v39;
    v47 = v37;
    sub_22DC71584(v46, v37, type metadata accessor for ReplicatedLibrarySnapshot);
    v48 = *(v42 + 16);
    v49 = v78;
    v88 = v32;
    v84 = v42 + 16;
    v76 = v48;
    v48(v78, v32, v43);
    v50 = sub_22DCB5FBC();
    v51 = sub_22DCB63DC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v47;
      v53 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v91 = v75;
      *v53 = 136315650;
      v74 = v51;
      sub_22DCB5B3C();
      v79 = v50;
      sub_22D9CA4B8(&unk_27DA2D490, MEMORY[0x277CC95F0]);
      v54 = sub_22DCB67DC();
      v56 = v55;
      v57 = v42;
      sub_22DC715EC(v45, type metadata accessor for ReplicatedLibrarySnapshot);
      v58 = sub_22DC87280(v54, v56, &v91);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2080;
      v59 = v80;
      sub_22DC71584(v52, v80, type metadata accessor for LibraryReplicatorIdentifier);
      sub_22DC715EC(v52, type metadata accessor for ReplicatedLibrarySnapshot);
      v60 = *v59;
      v61 = v59[1];

      sub_22DC715EC(v59, type metadata accessor for LibraryReplicatorIdentifier);
      v62 = sub_22DC87280(v60, v61, &v91);

      *(v53 + 14) = v62;
      *(v53 + 22) = 2080;
      sub_22D9CA4B8(&qword_27DA2CF10, MEMORY[0x277CC9260]);
      v63 = v78;
      v64 = sub_22DCB67DC();
      v66 = v65;
      v67 = *(v42 + 8);
      v67(v63, v87);
      v68 = sub_22DC87280(v64, v66, &v91);

      *(v53 + 24) = v68;
      v69 = v79;
      _os_log_impl(&dword_22D9C5000, v79, v74, "Encoding %s on %s with %s…", v53, 0x20u);
      v70 = v75;
      swift_arrayDestroy();
      MEMORY[0x2318DAAC0](v70, -1, -1);
      v43 = v87;
      MEMORY[0x2318DAAC0](v53, -1, -1);
    }

    else
    {

      v57 = v42;
      v67 = *(v42 + 8);
      v67(v49, v43);
      sub_22DC715EC(v47, type metadata accessor for ReplicatedLibrarySnapshot);
      sub_22DC715EC(v45, type metadata accessor for ReplicatedLibrarySnapshot);
    }

    v71 = v86;
    v72 = v88;
    v76(v86, v88, v43);
    (*(v57 + 56))(v71, 0, 1, v43);
    sub_22DCB5F3C();
    return (v67)(v72, v43);
  }

  return result;
}

uint64_t *sub_22DC6A874()
{
  v2 = *v0;
  v3 = v0[2];
  v7 = v0;
  v8 = v2;
  os_unfair_lock_lock((v3 + 48));
  v4 = &v6;
  sub_22DC729E0((v3 + 16), v9);
  os_unfair_lock_unlock((v3 + 48));
  if (!v1)
  {
    v4 = v9[1];
  }

  return v4;
}

void *sub_22DC6A924()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFD0);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = &v49 - v6;
  v8 = type metadata accessor for LibrarySnapshot();
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFD8);
  MEMORY[0x28223BE20](v18, v19, v20);
  v22 = &v49 - v21;
  result = sub_22DC6A874();
  if (!v1)
  {
    v59 = v18;
    v53 = v12;
    v54 = 0;
    v24 = sub_22DCB5E3C();

    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = (v26 + 63) >> 6;
    v57 = (v56 + 48);
    v61 = v24;

    v30 = 0;
    v55 = MEMORY[0x277D84F90];
    v60 = v8;
    v52 = v17;
    v58 = v2;
    while (1)
    {
      v31 = v30;
      if (!v28)
      {
        break;
      }

      v32 = v7;
LABEL_11:
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v61;
      v36 = *(v61 + 48);
      v37 = type metadata accessor for LibraryReplicatorIdentifier();
      sub_22DC71584(v36 + *(*(v37 - 8) + 72) * v34, v22, type metadata accessor for LibraryReplicatorIdentifier);
      v38 = *(v35 + 56);
      v39 = v38 + *(*(type metadata accessor for ReplicatedLibrarySnapshot(0) - 8) + 72) * v34;
      v40 = *(v59 + 48);
      sub_22DC71584(v39, &v22[v40], type metadata accessor for ReplicatedLibrarySnapshot);
      v7 = v32;
      sub_22DC6AD80(v22, &v22[v40], v32);
      sub_22D9CA164(v22, &qword_27DA2CFD8);
      if ((*v57)(v32, 1, v60) == 1)
      {
        result = sub_22D9CA164(v32, &qword_27DA2CFD0);
      }

      else
      {
        v51 = type metadata accessor for LibrarySnapshot;
        v41 = v32;
        v42 = v52;
        sub_22DC71AC8(v41, v52, type metadata accessor for LibrarySnapshot);
        sub_22DC71AC8(v42, v53, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_22DC9ECF8(0, v55[2] + 1, 1, v55);
        }

        v44 = v55[2];
        v43 = v55[3];
        v45 = (v44 + 1);
        if (v44 >= v43 >> 1)
        {
          v50 = v55[2];
          v51 = (v44 + 1);
          v48 = sub_22DC9ECF8(v43 > 1, v44 + 1, 1, v55);
          v44 = v50;
          v45 = v51;
          v55 = v48;
        }

        v47 = v55;
        v46 = v56;
        v55[2] = v45;
        result = sub_22DC71AC8(v53, v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, type metadata accessor for LibrarySnapshot);
      }
    }

    while (1)
    {
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        return v55;
      }

      v28 = *(v25 + 8 * v30);
      ++v31;
      if (v28)
      {
        v32 = v7;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DC6AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v67 = a1;
  v63 = type metadata accessor for FaceSnapshot(0);
  MEMORY[0x28223BE20](v63, v4, v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v61, v7, v8);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22DCB5A8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v20 - 8, v21, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27);
  v29 = &v57 - v28;
  MEMORY[0x28223BE20](v30, v31, v32);
  v34 = &v57 - v33;
  sub_22DC6B380(&v57 - v33);
  sub_22DC71738(v34, v29, &qword_27DA2CEF8);
  v35 = *(v11 + 48);
  if (v35(v29, 1, v10) == 1)
  {
    sub_22D9CA164(v34, &qword_27DA2CEF8);
    sub_22D9CA164(v29, &qword_27DA2CEF8);
    v36 = type metadata accessor for LibrarySnapshot();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  else
  {
    v66 = v24;
    v59 = a3;
    v38 = *(v11 + 32);
    v38(v19, v29, v10);
    sub_22DC6A874();
    v58 = v38;
    sub_22DCB5E2C();
    v39 = v19;

    v42 = v66;
    if (v35(v66, 1, v10) == 1)
    {
      (*(v11 + 8))(v39, v10);
      sub_22D9CA164(v34, &qword_27DA2CEF8);
      v40 = v59;
      sub_22D9CA164(v42, &qword_27DA2CEF8);
      v41 = type metadata accessor for LibrarySnapshot();
      return (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    }

    else
    {
      v43 = v60;
      v58(v60, v42, v10);
      v44 = sub_22DCB5A4C();
      NTKMarkFileAtURLAsPurgeable(v44, 0);

      (*(v11 + 8))(v39, v10);
      sub_22D9CA164(v34, &qword_27DA2CEF8);
      v45 = type metadata accessor for LibrarySnapshot();
      v46 = v65;
      v47 = v65 + *(v45 + 24);
      v49 = v62;
      v48 = v63;
      sub_22DC71584(v47 + *(v63 + 40), v62, type metadata accessor for FaceSnapshot.CachedFile);
      (*(v11 + 40))(v49 + *(v61 + 20), v43, v10);
      v50 = v64;
      sub_22DC71584(v47, v64, type metadata accessor for FaceSnapshot);
      sub_22DC71B30(v49, v50 + *(v48 + 40));
      v51 = (v46 + *(v45 + 20));
      v53 = *v51;
      v52 = v51[1];
      v54 = v46;
      v55 = v59;
      sub_22DC71584(v54, v59, type metadata accessor for LibraryReplicatorIdentifier);
      v56 = (v55 + *(v45 + 20));
      *v56 = v53;
      v56[1] = v52;
      sub_22DC71AC8(v50, v55 + *(v45 + 24), type metadata accessor for FaceSnapshot);
      (*(*(v45 - 8) + 56))(v55, 0, 1, v45);
    }
  }
}

uint64_t sub_22DC6B380@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v6 = &v26 - v5;
  if (qword_27DA2CB10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for ReplicatorDirectoryResult(0);
  v8 = __swift_project_value_buffer(v7, qword_27DA2CE78);
  sub_22DC71738(v8, v6, &qword_27DA2CEF8);
  v9 = sub_22DCB5A8C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_22D9CA164(v6, &qword_27DA2CEF8);
    v11 = *(v7 + 20);
    v12 = *(v8 + v11);
    if (v12)
    {
      v13 = *(v8 + v11);
    }

    else
    {
      sub_22DC717A0();
      v13 = swift_allocError();
      *v15 = 3;
    }

    swift_willThrow();
    v16 = v12;
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v17 = sub_22DCB5FDC();
    __swift_project_value_buffer(v17, qword_27DA37660);
    v18 = v13;
    v19 = sub_22DCB5FBC();
    v20 = sub_22DCB63CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v13;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_22D9C5000, v19, v20, "Path failed %@", v21, 0xCu);
      sub_22D9CA164(v22, &qword_27DA2D450);
      MEMORY[0x2318DAAC0](v22, -1, -1);
      MEMORY[0x2318DAAC0](v21, -1, -1);
    }

    else
    {
    }

    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    v14 = 0;
  }

  return (*(v10 + 56))(a1, v14, 1, v9);
}

uint64_t sub_22DC6B6AC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v23 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98);
  v8 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v7, v9, v10);
  v13 = &v21 - v12;
  v22 = *(v8 + 16);
  v22(&v21 - v12, a1, v7, v11);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v15 + ((v14 + 16) & ~v14), v13, v7);
  sub_22DCB62DC();
  v16 = sub_22DCB62BC();
  v17 = v23;
  (*(*(v16 - 8) + 56))(v23, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  (v22)(v13, a1, v7);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  v21(v19 + ((v14 + 40) & ~v14), v13, v7);
  sub_22DC95460(0, 0, v17, &unk_22DCEA5B0, v19);
}

uint64_t sub_22DC6B94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for FaceSnapshot(0);
  v5[15] = swift_task_alloc();
  v5[16] = type metadata accessor for FaceSnapshot.CachedFile(0);
  v5[17] = swift_task_alloc();
  v6 = sub_22DCB5A8C();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  type metadata accessor for ReplicatedLibrarySnapshot(0);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFA0);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFA8);
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFB0);
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFB8);
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v11 = type metadata accessor for LibrarySnapshot();
  v5[39] = v11;
  v5[40] = *(v11 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC6BD14, 0, 0);
}

uint64_t sub_22DC6BD14()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_27DA2CB28 != -1)
    {
      swift_once();
    }

    v1 = sub_22DCB5FDC();
    __swift_project_value_buffer(v1, qword_27DA37660);
    v2 = sub_22DCB5FBC();
    v3 = sub_22DCB63CC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_8;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No snapshots to send, issue getting library snapshots";
    goto LABEL_7;
  }

  v8 = sub_22DC6A924();

  if (qword_27DA2CB28 != -1)
  {
    swift_once();
  }

  v9 = sub_22DCB5FDC();
  *(v0 + 352) = __swift_project_value_buffer(v9, qword_27DA37660);

  v10 = sub_22DCB5FBC();
  v11 = sub_22DCB63DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8[2];

    _os_log_impl(&dword_22D9C5000, v10, v11, "sending %ld snapshot(s) to listener…", v12, 0xCu);
    MEMORY[0x2318DAAC0](v12, -1, -1);
  }

  else
  {
  }

  v13 = v8[2];
  if (v13)
  {
    v14 = *(v0 + 320);
    v15 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    v17 = (*(v0 + 296) + 8);
    do
    {
      v18 = *(v0 + 304);
      v19 = *(v0 + 288);
      sub_22DC71584(v15, *(v0 + 344), type metadata accessor for LibrarySnapshot);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98);
      sub_22DCB62EC();
      (*v17)(v18, v19);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    *(v0 + 360) = sub_22DC6A874();
    v21 = *(v0 + 248);
    v20 = *(v0 + 256);
    v22 = *(v0 + 240);

    sub_22DCB5E1C();
    sub_22DCB631C();
    (*(v21 + 8))(v20, v22);
    *(v0 + 384) = *MEMORY[0x277D46678];
    *(v0 + 388) = *MEMORY[0x277D46680];
    *(v0 + 368) = 0;
    v23 = swift_task_alloc();
    *(v0 + 376) = v23;
    *v23 = v0;
    v23[1] = sub_22DC6C29C;
    v24 = *(v0 + 264);

    return MEMORY[0x2822003E8](v0 + 88, 0, 0, v24);
  }

  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No updates to send, issue getting store";
LABEL_7:
    _os_log_impl(&dword_22D9C5000, v2, v3, v5, v4, 2u);
    MEMORY[0x2318DAAC0](v4, -1, -1);
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98);
  sub_22DCB62FC();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22DC6C29C()
{

  return MEMORY[0x2822009F8](sub_22DC6C398, 0, 0);
}

uint64_t sub_22DC6C398()
{
  v1 = *(v0 + 88);
  if (v1)
  {

    v2 = sub_22DCB5FBC();
    v3 = sub_22DCB63DC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&dword_22D9C5000, v2, v3, "%ld update(s) from store…", v4, 0xCu);
      MEMORY[0x2318DAAC0](v4, -1, -1);
    }

    else
    {
    }

    v5 = *(v1 + 16);
    v6 = swift_beginAccess();
    v10 = *(v0 + 368);
    v112 = v5;
    if (v5)
    {
      v11 = 0;
      v108 = v1;
      do
      {
        if (v11 >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x2822003E8](v6, v7, v8, v9);
        }

        v18 = *(v0 + 216);
        v19 = *(v18 + 16);
        v19(*(v0 + 232), v1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, *(v0 + 208));
        if (!swift_weakLoadStrong())
        {

          v83 = sub_22DCB5FBC();
          v84 = sub_22DCB63CC();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            v86 = "Update not sent, self appears to be nil";
            goto LABEL_43;
          }

LABEL_44:
          v88 = *(v0 + 272);
          v87 = *(v0 + 280);
          v89 = *(v0 + 264);
          v90 = *(v0 + 232);
          v91 = *(v0 + 208);
          v92 = *(v0 + 216);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98);
          sub_22DCB62FC();

          (*(v92 + 8))(v90, v91);
          (*(v88 + 8))(v87, v89);
          goto LABEL_45;
        }

        if (sub_22DCB635C())
        {

          v83 = sub_22DCB5FBC();
          v84 = sub_22DCB63CC();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            v86 = "Update not sent, task cancelled";
LABEL_43:
            _os_log_impl(&dword_22D9C5000, v83, v84, v86, v85, 2u);
            MEMORY[0x2318DAAC0](v85, -1, -1);
          }

          goto LABEL_44;
        }

        v20 = *(v0 + 384);
        v21 = *(v0 + 224);
        v22 = *(v0 + 208);
        v23 = *(v0 + 216);
        v19(v21, *(v0 + 232), v22);
        v24 = (*(v23 + 88))(v21, v22);
        if (v24 == v20)
        {
          (*(*(v0 + 216) + 96))(*(v0 + 224), *(v0 + 208));
          v25 = sub_22DCB5FBC();
          v26 = sub_22DCB63DC();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_22D9C5000, v25, v26, "Delete update…", v27, 2u);
            MEMORY[0x2318DAAC0](v27, -1, -1);
          }

          v13 = *(v0 + 224);
          v12 = *(v0 + 232);
          v15 = *(v0 + 208);
          v14 = *(v0 + 216);

          (*(v14 + 8))(v12, v15);
          v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFC8) + 48);
          v17 = sub_22DCB5F2C();
          (*(*(v17 - 8) + 8))(v13 + v16, v17);
          v6 = sub_22DC715EC(v13, type metadata accessor for LibraryReplicatorIdentifier);
        }

        else
        {
          if (v24 == *(v0 + 388))
          {
            v28 = *(v0 + 224);
            v29 = *(v0 + 200);
            (*(*(v0 + 216) + 96))(v28, *(v0 + 208));
            sub_22DC71AC8(v28, v29, type metadata accessor for ReplicatedLibrarySnapshot);
            if (qword_27DA2CB10 != -1)
            {
              swift_once();
            }

            v30 = *(v0 + 184);
            v31 = *(v0 + 144);
            v32 = *(v0 + 152);
            v33 = type metadata accessor for ReplicatorDirectoryResult(0);
            v34 = __swift_project_value_buffer(v33, qword_27DA2CE78);
            sub_22DC71738(v34, v30, &qword_27DA2CEF8);
            v109 = *(v32 + 48);
            if (v109(v30, 1, v31) == 1)
            {
              sub_22D9CA164(*(v0 + 184), &qword_27DA2CEF8);
              v35 = *(v34 + *(v33 + 20));
              if (v35)
              {
                swift_willThrow();
                v36 = v35;
              }

              else
              {
                sub_22DC717A0();
                v35 = swift_allocError();
                *v40 = 3;
                swift_willThrow();
              }

              goto LABEL_26;
            }

            (*(*(v0 + 152) + 32))(*(v0 + 168), *(v0 + 184), *(v0 + 144));
            sub_22DCB5E2C();
            v35 = v10;
            (*(*(v0 + 152) + 8))(*(v0 + 168), *(v0 + 144));
            if (v10)
            {
LABEL_26:
              v41 = v35;
              v42 = sub_22DCB5FBC();
              v43 = sub_22DCB63CC();

              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                v45 = swift_slowAlloc();
                *v44 = 138412290;
                v46 = v35;
                v47 = _swift_stdlib_bridgeErrorToNSError();
                *(v44 + 4) = v47;
                *v45 = v47;
                _os_log_impl(&dword_22D9C5000, v42, v43, "URL caches directory failed %@", v44, 0xCu);
                sub_22D9CA164(v45, &qword_27DA2D450);
                MEMORY[0x2318DAAC0](v45, -1, -1);
                MEMORY[0x2318DAAC0](v44, -1, -1);
              }

              else
              {
              }

              (*(*(v0 + 152) + 56))(*(v0 + 192), 1, 1, *(v0 + 144));
            }

            v48 = *(v0 + 224);
            v49 = *(v0 + 192);
            v50 = *(v0 + 176);
            v51 = *(v0 + 144);
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CFC0);
            v53 = v52[12];
            v54 = v52[16];
            v55 = v52[20];
            sub_22DC71738(v49, v50, &qword_27DA2CEF8);
            v110 = v54;
            v111 = v53;
            if (v109(v50, 1, v51) == 1)
            {
              v56 = v55;
              sub_22D9CA164(*(v0 + 176), &qword_27DA2CEF8);
              v57 = sub_22DCB5FBC();
              v58 = sub_22DCB63DC();
              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                *v59 = 0;
                _os_log_impl(&dword_22D9C5000, v57, v58, "Entry is URL - skipping…", v59, 2u);
                MEMORY[0x2318DAAC0](v59, -1, -1);
              }

              v60 = *(v0 + 232);
              v61 = *(v0 + 208);
              v62 = *(v0 + 216);
              v64 = *(v0 + 192);
              v63 = *(v0 + 200);

              sub_22D9CA164(v64, &qword_27DA2CEF8);
              sub_22DC715EC(v63, type metadata accessor for ReplicatedLibrarySnapshot);
              (*(v62 + 8))(v60, v61);
              v65 = sub_22DCB5B3C();
              (*(*(v65 - 8) + 8))(v48 + v56, v65);
              sub_22D9CA164(v48 + v110, &qword_27DA2CEF8);
              v66 = sub_22DCB5F2C();
              v6 = (*(*(v66 - 8) + 8))(v48 + v111, v66);
            }

            else
            {
              v97 = *(v0 + 336);
              v98 = *(v0 + 328);
              v107 = v48;
              v67 = *(v0 + 312);
              v99 = *(v0 + 304);
              v100 = *(v0 + 296);
              v101 = *(v0 + 288);
              v103 = *(v0 + 216);
              v104 = *(v0 + 208);
              v105 = *(v0 + 232);
              v106 = v55;
              v68 = *(v0 + 200);
              v102 = *(v0 + 192);
              v70 = *(v0 + 152);
              v69 = *(v0 + 160);
              v71 = *(v0 + 136);
              v72 = *(v0 + 144);
              v95 = *(v0 + 128);
              v96 = *(v0 + 120);
              v73 = *(v0 + 112);
              (*(v70 + 32))(v69, *(v0 + 176), v72);
              v74 = sub_22DCB5A4C();
              NTKMarkFileAtURLAsPurgeable(v74, 0);

              v75 = v68 + *(v67 + 24);
              sub_22DC71584(v75 + *(v73 + 40), v71, type metadata accessor for FaceSnapshot.CachedFile);
              (*(v70 + 24))(v71 + *(v95 + 20), v69, v72);
              sub_22DC71584(v75, v96, type metadata accessor for FaceSnapshot);
              sub_22DC71A64(v71, v96 + *(v73 + 40));
              sub_22DC71584(v68, v97, type metadata accessor for LibraryReplicatorIdentifier);
              v76 = (v68 + *(v67 + 20));
              v78 = *v76;
              v77 = v76[1];
              sub_22DC71584(v96, v97 + *(v67 + 24), type metadata accessor for FaceSnapshot);
              v79 = (v97 + *(v67 + 20));
              *v79 = v78;
              v79[1] = v77;
              sub_22DC71584(v97, v98, type metadata accessor for LibrarySnapshot);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98);
              sub_22DCB62EC();
              (*(v100 + 8))(v99, v101);
              sub_22DC715EC(v97, type metadata accessor for LibrarySnapshot);
              (*(v70 + 8))(v69, v72);
              sub_22D9CA164(v102, &qword_27DA2CEF8);
              sub_22DC715EC(v68, type metadata accessor for ReplicatedLibrarySnapshot);
              (*(v103 + 8))(v105, v104);
              sub_22DC715EC(v96, type metadata accessor for FaceSnapshot);
              sub_22DC715EC(v71, type metadata accessor for FaceSnapshot.CachedFile);
              v80 = sub_22DCB5B3C();
              (*(*(v80 - 8) + 8))(v107 + v106, v80);
              sub_22D9CA164(v107 + v110, &qword_27DA2CEF8);
              v81 = sub_22DCB5F2C();
              v6 = (*(*(v81 - 8) + 8))(v107 + v111, v81);
            }

            v10 = 0;
            v1 = v108;
            goto LABEL_9;
          }

          v37 = *(v0 + 224);
          v38 = *(v0 + 208);
          v39 = *(*(v0 + 216) + 8);
          v39(*(v0 + 232), v38);
          v6 = v39(v37, v38);
        }

LABEL_9:
        ++v11;
      }

      while (v112 != v11);
    }

    *(v0 + 368) = v10;
    v82 = swift_task_alloc();
    *(v0 + 376) = v82;
    *v82 = v0;
    v82[1] = sub_22DC6C29C;
    v9 = *(v0 + 264);
    v6 = v0 + 88;
    v7 = 0;
    v8 = 0;

    return MEMORY[0x2822003E8](v6, v7, v8, v9);
  }

  else
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_45:

    v93 = *(v0 + 8);

    return v93();
  }
}

uint64_t *sub_22DC6D180()
{
  v2 = *v0;
  v3 = v0[2];
  v7 = v0;
  v8 = v2;
  os_unfair_lock_lock((v3 + 48));
  v4 = &v6;
  sub_22DC729E0((v3 + 16), v9);
  os_unfair_lock_unlock((v3 + 48));
  if (!v1)
  {
    v4 = v9[2];
  }

  return v4;
}

void *sub_22DC6D230()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D460);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v7 = (&v51 - v6);
  v8 = type metadata accessor for GallerySnapshot();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16);
  v18 = &v51 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF90);
  MEMORY[0x28223BE20](v57, v19, v20);
  v22 = (&v51 - v21);
  result = sub_22DC6D180();
  if (!v1)
  {
    v52 = v18;
    v54 = v13;
    v55 = 0;
    v24 = sub_22DCB5E3C();

    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = (v26 + 63) >> 6;
    v53 = v9;
    v58 = (v9 + 48);
    v65 = v24;

    v30 = 0;
    v56 = MEMORY[0x277D84F90];
    v31 = v57;
    v59 = v29;
    v60 = v24 + 64;
    v63 = v7;
    v64 = v2;
    v61 = v22;
    v62 = v8;
LABEL_5:
    v32 = v30;
    if (!v28)
    {
      goto LABEL_7;
    }

    do
    {
      v33 = v31;
      v30 = v32;
LABEL_11:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v30 << 6);
      v36 = *(v65 + 56);
      v37 = (*(v65 + 48) + 32 * v35);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v42 = v36 + *(*(type metadata accessor for ReplicatedGallerySnapshot(0) - 8) + 72) * v35;
      v31 = v33;
      v43 = *(v33 + 48);
      v44 = v61;
      sub_22DC71584(v42, v61 + v43, type metadata accessor for ReplicatedGallerySnapshot);
      *v44 = v38;
      v44[1] = v39;
      v44[2] = v40;
      v44[3] = v41;

      v45 = (v44 + v43);
      v46 = v63;
      sub_22DC6D67C(v44, v45, v64, v63);
      sub_22D9CA164(v44, &qword_27DA2CF90);
      if ((*v58)(v46, 1, v62) != 1)
      {
        v47 = v52;
        sub_22DC71AC8(v46, v52, type metadata accessor for GallerySnapshot);
        sub_22DC71AC8(v47, v54, type metadata accessor for GallerySnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_22DC9ED20(0, v56[2] + 1, 1, v56);
        }

        v49 = v56[2];
        v48 = v56[3];
        if (v49 >= v48 >> 1)
        {
          v56 = sub_22DC9ED20(v48 > 1, v49 + 1, 1, v56);
        }

        v50 = v56;
        v56[2] = v49 + 1;
        result = sub_22DC71AC8(v54, v50 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49, type metadata accessor for GallerySnapshot);
        v29 = v59;
        v25 = v60;
        goto LABEL_5;
      }

      result = sub_22D9CA164(v46, &qword_27DA2D460);
      v32 = v30;
      v29 = v59;
      v25 = v60;
    }

    while (v28);
LABEL_7:
    while (1)
    {
      v30 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v30 >= v29)
      {

        return v56;
      }

      v28 = *(v25 + 8 * v30);
      ++v32;
      if (v28)
      {
        v33 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22DC6D67C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  v74 = a3;
  v70 = a2;
  v68 = type metadata accessor for FaceSnapshot(0);
  MEMORY[0x28223BE20](v68, v6, v7);
  v69 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for FaceSnapshot.CachedFile(0);
  MEMORY[0x28223BE20](v66, v9, v10);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DCB5A8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18, v19);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v22 - 8, v23, v24);
  v75 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27, v28);
  v30 = &v63 - v29;
  MEMORY[0x28223BE20](v31, v32, v33);
  v35 = &v63 - v34;
  v37 = *a1;
  v36 = a1[1];
  v38 = a1[3];
  v72 = a1[2];
  v73 = v36;
  v71 = v38;
  sub_22DC6DCD0(&v63 - v34);
  sub_22DC71738(v35, v30, &qword_27DA2CEF8);
  v39 = *(v13 + 48);
  if (v39(v30, 1, v12) == 1)
  {
    sub_22D9CA164(v35, &qword_27DA2CEF8);
    sub_22D9CA164(v30, &qword_27DA2CEF8);
    v40 = type metadata accessor for GallerySnapshot();
    return (*(*(v40 - 8) + 56))(a4, 1, 1, v40);
  }

  else
  {
    v63 = v37;
    v64 = a4;
    v42 = *(v13 + 32);
    v42(v21, v30, v12);
    v43 = v13;
    sub_22DC6D180();
    v74 = v42;
    v76 = v63;
    v77 = v73;
    v78 = v72;
    v79 = v71;
    v44 = v75;
    sub_22DCB5E2C();

    if (v39(v44, 1, v12) == 1)
    {
      (*(v13 + 8))(v21, v12);
      sub_22D9CA164(v35, &qword_27DA2CEF8);
      v45 = v64;
      sub_22D9CA164(v44, &qword_27DA2CEF8);
      v46 = type metadata accessor for GallerySnapshot();
      return (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    else
    {
      v47 = v65;
      v74(v65, v44, v12);
      v48 = sub_22DCB5A4C();
      NTKMarkFileAtURLAsPurgeable(v48, 0);

      v49 = v43;
      (*(v43 + 8))(v21, v12);
      sub_22D9CA164(v35, &qword_27DA2CEF8);
      v50 = type metadata accessor for GallerySnapshot();
      v51 = v70;
      v52 = v70 + *(v50 + 24);
      v54 = v67;
      v53 = v68;
      sub_22DC71584(v52 + *(v68 + 40), v67, type metadata accessor for FaceSnapshot.CachedFile);
      (*(v49 + 40))(v54 + *(v66 + 20), v47, v12);
      v55 = v69;
      sub_22DC71584(v52, v69, type metadata accessor for FaceSnapshot);
      sub_22DC71B30(v54, v55 + *(v53 + 40));
      v56 = *v51;
      v57 = v51[1];
      v58 = v51[2];
      v59 = v51[3];
      v60 = v51[4];
      v61 = v51[5];
      v62 = v64;
      *v64 = v56;
      v62[1] = v57;
      v62[2] = v58;
      v62[3] = v59;
      v62[4] = v60;
      v62[5] = v61;
      sub_22DC71AC8(v55, v62 + *(v50 + 24), type metadata accessor for FaceSnapshot);
      (*(*(v50 - 8) + 56))(v62, 0, 1, v50);
    }
  }
}

uint64_t sub_22DC6DCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v6 = &v26 - v5;
  if (qword_27DA2CB18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for ReplicatorDirectoryResult(0);
  v8 = __swift_project_value_buffer(v7, qword_27DA2CE90);
  sub_22DC71738(v8, v6, &qword_27DA2CEF8);
  v9 = sub_22DCB5A8C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_22D9CA164(v6, &qword_27DA2CEF8);
    v11 = *(v7 + 20);
    v12 = *(v8 + v11);
    if (v12)
    {
      v13 = *(v8 + v11);
    }

    else
    {
      sub_22DC717A0();
      v13 = swift_allocError();
      *v15 = 3;
    }

    swift_willThrow();
    v16 = v12;
    if (qword_27DA2CB30 != -1)
    {
      swift_once();
    }

    v17 = sub_22DCB5FDC();
    __swift_project_value_buffer(v17, qword_27DA37678);
    v18 = v13;
    v19 = sub_22DCB5FBC();
    v20 = sub_22DCB63CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v13;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_22D9C5000, v19, v20, "Path failed %@", v21, 0xCu);
      sub_22D9CA164(v22, &qword_27DA2D450);
      MEMORY[0x2318DAAC0](v22, -1, -1);
      MEMORY[0x2318DAAC0](v21, -1, -1);
    }

    else
    {
    }

    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(a1, v6, v9);
    v14 = 0;
  }

  return (*(v10 + 56))(a1, v14, 1, v9);
}

uint64_t sub_22DC6DFFC(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v23 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58);
  v8 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v7, v9, v10);
  v13 = &v21 - v12;
  v22 = *(v8 + 16);
  v22(&v21 - v12, a1, v7, v11);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  v21 = *(v8 + 32);
  v21(v15 + ((v14 + 16) & ~v14), v13, v7);
  sub_22DCB62DC();
  v16 = sub_22DCB62BC();
  v17 = v23;
  (*(*(v16 - 8) + 56))(v23, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  (v22)(v13, a1, v7);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  v21(v19 + ((v14 + 40) & ~v14), v13, v7);
  sub_22DC95460(0, 0, v17, &unk_22DCEA558, v19);
}

uint64_t sub_22DC6E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[18] = type metadata accessor for FaceSnapshot(0);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for FaceSnapshot.CachedFile(0);
  v5[21] = swift_task_alloc();
  v6 = sub_22DCB5A8C();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  type metadata accessor for ReplicatedGallerySnapshot(0);
  v5[29] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF60);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF68);
  v5[34] = v8;
  v5[35] = *(v8 - 8);
  v5[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF70);
  v5[37] = v9;
  v5[38] = *(v9 - 8);
  v5[39] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF78);
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v11 = type metadata accessor for GallerySnapshot();
  v5[43] = v11;
  v5[44] = *(v11 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC6E664, 0, 0);
}

uint64_t sub_22DC6E664()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    if (qword_27DA2CB30 != -1)
    {
      swift_once();
    }

    v1 = sub_22DCB5FDC();
    __swift_project_value_buffer(v1, qword_27DA37678);
    v2 = sub_22DCB5FBC();
    v3 = sub_22DCB63CC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_8;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No snapshots to send, issue getting current snapshots";
    goto LABEL_7;
  }

  v8 = sub_22DC6D230();

  if (qword_27DA2CB30 != -1)
  {
    swift_once();
  }

  v9 = sub_22DCB5FDC();
  *(v0 + 384) = __swift_project_value_buffer(v9, qword_27DA37678);

  v10 = sub_22DCB5FBC();
  v11 = sub_22DCB63DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8[2];

    _os_log_impl(&dword_22D9C5000, v10, v11, "sending %ld snapshot(s) to listener…", v12, 0xCu);
    MEMORY[0x2318DAAC0](v12, -1, -1);
  }

  else
  {
  }

  v13 = v8[2];
  if (v13)
  {
    v14 = *(v0 + 352);
    v15 = v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = *(v14 + 72);
    v17 = (*(v0 + 328) + 8);
    do
    {
      v18 = *(v0 + 336);
      v19 = *(v0 + 320);
      sub_22DC71584(v15, *(v0 + 376), type metadata accessor for GallerySnapshot);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58);
      sub_22DCB62EC();
      (*v17)(v18, v19);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    *(v0 + 392) = sub_22DC6D180();
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 272);

    sub_22DCB5E1C();
    sub_22DCB631C();
    (*(v21 + 8))(v20, v22);
    *(v0 + 416) = *MEMORY[0x277D46678];
    *(v0 + 420) = *MEMORY[0x277D46680];
    *(v0 + 400) = 0;
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_22DC6EBEC;
    v24 = *(v0 + 296);

    return MEMORY[0x2822003E8](v0 + 120, 0, 0, v24);
  }

  v2 = sub_22DCB5FBC();
  v3 = sub_22DCB63CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No updates to send, issue getting the store";
LABEL_7:
    _os_log_impl(&dword_22D9C5000, v2, v3, v5, v4, 2u);
    MEMORY[0x2318DAAC0](v4, -1, -1);
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58);
  sub_22DCB62FC();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22DC6EBEC()
{

  return MEMORY[0x2822009F8](sub_22DC6ECE8, 0, 0);
}

uint64_t sub_22DC6ECE8()
{
  v1 = *(v0 + 120);
  if (v1)
  {

    v2 = sub_22DCB5FBC();
    v3 = sub_22DCB63DC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      _os_log_impl(&dword_22D9C5000, v2, v3, "%ld update(s) from store…", v4, 0xCu);
      MEMORY[0x2318DAAC0](v4, -1, -1);
    }

    else
    {
    }

    v5 = *(v1 + 16);
    v6 = swift_beginAccess();
    v10 = *(v0 + 400);
    v122 = v5;
    if (v5)
    {
      v11 = 0;
      v121 = v1;
      do
      {
        if (v11 >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x2822003E8](v6, v7, v8, v9);
        }

        v18 = *(v0 + 248);
        v19 = *(v18 + 16);
        v19(*(v0 + 264), v1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, *(v0 + 240));
        if (!swift_weakLoadStrong())
        {

          v87 = sub_22DCB5FBC();
          v88 = sub_22DCB63CC();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            v90 = "Update not sent, self appears to be nil";
            goto LABEL_43;
          }

LABEL_44:
          v92 = *(v0 + 304);
          v91 = *(v0 + 312);
          v93 = *(v0 + 296);
          v94 = *(v0 + 264);
          v95 = *(v0 + 240);
          v96 = *(v0 + 248);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58);
          sub_22DCB62FC();

          (*(v96 + 8))(v94, v95);
          (*(v92 + 8))(v91, v93);
          goto LABEL_45;
        }

        if (sub_22DCB635C())
        {

          v87 = sub_22DCB5FBC();
          v88 = sub_22DCB63CC();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            *v89 = 0;
            v90 = "Update not sent, task cancelled";
LABEL_43:
            _os_log_impl(&dword_22D9C5000, v87, v88, v90, v89, 2u);
            MEMORY[0x2318DAAC0](v89, -1, -1);
          }

          goto LABEL_44;
        }

        v20 = *(v0 + 416);
        v21 = *(v0 + 256);
        v22 = *(v0 + 240);
        v23 = *(v0 + 248);
        v19(v21, *(v0 + 264), v22);
        v24 = (*(v23 + 88))(v21, v22);
        if (v24 == v20)
        {
          (*(*(v0 + 248) + 96))(*(v0 + 256), *(v0 + 240));

          v25 = sub_22DCB5FBC();
          v26 = sub_22DCB63DC();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_22D9C5000, v25, v26, "Delete update…", v27, 2u);
            MEMORY[0x2318DAAC0](v27, -1, -1);
          }

          v13 = *(v0 + 256);
          v12 = *(v0 + 264);
          v14 = *(v0 + 240);
          v15 = *(v0 + 248);

          (*(v15 + 8))(v12, v14);
          v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF88) + 48);
          v17 = sub_22DCB5F2C();
          v6 = (*(*(v17 - 8) + 8))(v13 + v16, v17);
        }

        else
        {
          if (v24 == *(v0 + 420))
          {
            v28 = *(v0 + 256);
            v29 = *(v0 + 232);
            (*(*(v0 + 248) + 96))(v28, *(v0 + 240));
            sub_22DC71AC8(v28, v29, type metadata accessor for ReplicatedGallerySnapshot);
            if (qword_27DA2CB10 != -1)
            {
              swift_once();
            }

            v30 = *(v0 + 216);
            v32 = *(v0 + 176);
            v31 = *(v0 + 184);
            v33 = type metadata accessor for ReplicatorDirectoryResult(0);
            v34 = __swift_project_value_buffer(v33, qword_27DA2CE78);
            sub_22DC71738(v34, v30, &qword_27DA2CEF8);
            v116 = *(v31 + 48);
            if (v116(v30, 1, v32) == 1)
            {
              sub_22D9CA164(*(v0 + 216), &qword_27DA2CEF8);
              v35 = *(v34 + *(v33 + 20));
              if (v35)
              {
                swift_willThrow();
                v36 = v35;
              }

              else
              {
                sub_22DC717A0();
                v35 = swift_allocError();
                *v48 = 3;
                swift_willThrow();
              }

              goto LABEL_26;
            }

            v40 = *(v0 + 232);
            (*(*(v0 + 184) + 32))(*(v0 + 200), *(v0 + 216), *(v0 + 176));
            v42 = *v40;
            v41 = v40[1];
            v43 = v40[2];
            v44 = v40[3];
            *(v0 + 16) = v42;
            *(v0 + 24) = v41;
            *(v0 + 32) = v43;
            *(v0 + 40) = v44;

            sub_22DCB5E2C();
            v35 = v10;
            v45 = *(v0 + 200);
            v46 = *(v0 + 176);
            v47 = *(v0 + 184);

            (*(v47 + 8))(v45, v46);
            if (v35)
            {
LABEL_26:
              v49 = v35;
              v50 = sub_22DCB5FBC();
              v51 = sub_22DCB63CC();

              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                v53 = swift_slowAlloc();
                *v52 = 138412290;
                v54 = v35;
                v55 = _swift_stdlib_bridgeErrorToNSError();
                *(v52 + 4) = v55;
                *v53 = v55;
                _os_log_impl(&dword_22D9C5000, v50, v51, "URL caches directory failed %@", v52, 0xCu);
                sub_22D9CA164(v53, &qword_27DA2D450);
                MEMORY[0x2318DAAC0](v53, -1, -1);
                MEMORY[0x2318DAAC0](v52, -1, -1);
              }

              else
              {
              }

              (*(*(v0 + 184) + 56))(*(v0 + 224), 1, 1, *(v0 + 176));
            }

            v115 = *(v0 + 256);
            v56 = *(v0 + 224);
            v57 = *(v0 + 208);
            v58 = *(v0 + 176);
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF80);
            v60 = v59[12];
            v118 = v59[20];
            v119 = v59[16];
            sub_22DC71738(v56, v57, &qword_27DA2CEF8);
            v120 = v60;
            if (v116(v57, 1, v58) == 1)
            {
              sub_22D9CA164(*(v0 + 208), &qword_27DA2CEF8);
              v61 = sub_22DCB5FBC();
              v62 = sub_22DCB63DC();
              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                *v63 = 0;
                _os_log_impl(&dword_22D9C5000, v61, v62, "Entry is URL - skipping…", v63, 2u);
                MEMORY[0x2318DAAC0](v63, -1, -1);
              }

              v64 = *(v0 + 264);
              v65 = *(v0 + 240);
              v66 = *(v0 + 248);
              v68 = *(v0 + 224);
              v67 = *(v0 + 232);

              sub_22D9CA164(v68, &qword_27DA2CEF8);
              sub_22DC715EC(v67, type metadata accessor for ReplicatedGallerySnapshot);
              (*(v66 + 8))(v64, v65);
              v69 = sub_22DCB5B3C();
              (*(*(v69 - 8) + 8))(v115 + v118, v69);
              sub_22D9CA164(v115 + v119, &qword_27DA2CEF8);
              v70 = sub_22DCB5F2C();
              v6 = (*(*(v70 - 8) + 8))(v115 + v120, v70);
            }

            else
            {
              v71 = *(v0 + 368);
              v104 = *(v0 + 360);
              v106 = *(v0 + 336);
              v107 = *(v0 + 328);
              v108 = *(v0 + 320);
              v112 = *(v0 + 264);
              v113 = *(v0 + 344);
              v110 = *(v0 + 248);
              v111 = *(v0 + 240);
              v72 = *(v0 + 232);
              v114 = v72;
              v109 = *(v0 + 224);
              v73 = *(v0 + 192);
              v74 = *(v0 + 168);
              v75 = *(v0 + 176);
              v105 = v74;
              v99 = *(v0 + 160);
              v117 = *(v0 + 152);
              v76 = *(v0 + 144);
              v102 = v75;
              v103 = *(v0 + 184);
              (*(v103 + 32))(v73, *(v0 + 208), v75);
              v101 = v73;
              v77 = sub_22DCB5A4C();
              NTKMarkFileAtURLAsPurgeable(v77, 0);

              v78 = v72 + *(v113 + 24);
              sub_22DC71584(v78 + *(v76 + 40), v74, type metadata accessor for FaceSnapshot.CachedFile);
              (*(v103 + 24))(v74 + *(v99 + 20), v73, v75);
              sub_22DC71584(v78, v117, type metadata accessor for FaceSnapshot);
              sub_22DC71A64(v74, v117 + *(v76 + 40));
              v80 = *v72;
              v79 = v72[1];
              v81 = v72[3];
              v100 = v114[2];
              v83 = v114[4];
              v82 = v114[5];
              sub_22DC71584(v117, v71 + *(v113 + 24), type metadata accessor for FaceSnapshot);
              *v71 = v80;
              v71[1] = v79;
              v71[2] = v100;
              v71[3] = v81;
              v71[4] = v83;
              v71[5] = v82;
              sub_22DC71584(v71, v104, type metadata accessor for GallerySnapshot);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58);
              sub_22DCB62EC();
              (*(v107 + 8))(v106, v108);
              sub_22DC715EC(v71, type metadata accessor for GallerySnapshot);
              (*(v103 + 8))(v101, v102);
              sub_22D9CA164(v109, &qword_27DA2CEF8);
              sub_22DC715EC(v114, type metadata accessor for ReplicatedGallerySnapshot);
              (*(v110 + 8))(v112, v111);
              sub_22DC715EC(v117, type metadata accessor for FaceSnapshot);
              sub_22DC715EC(v105, type metadata accessor for FaceSnapshot.CachedFile);
              v84 = sub_22DCB5B3C();
              (*(*(v84 - 8) + 8))(v115 + v118, v84);
              sub_22D9CA164(v115 + v119, &qword_27DA2CEF8);
              v85 = sub_22DCB5F2C();
              v6 = (*(*(v85 - 8) + 8))(v115 + v120, v85);
            }

            v10 = 0;
            goto LABEL_9;
          }

          v37 = *(v0 + 256);
          v38 = *(v0 + 240);
          v39 = *(*(v0 + 248) + 8);
          v39(*(v0 + 264), v38);
          v6 = v39(v37, v38);
        }

LABEL_9:
        v1 = v121;
        ++v11;
      }

      while (v122 != v11);
    }

    *(v0 + 400) = v10;
    v86 = swift_task_alloc();
    *(v0 + 408) = v86;
    *v86 = v0;
    v86[1] = sub_22DC6EBEC;
    v9 = *(v0 + 296);
    v6 = v0 + 120;
    v7 = 0;
    v8 = 0;

    return MEMORY[0x2822003E8](v6, v7, v8, v9);
  }

  else
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

LABEL_45:

    v97 = *(v0 + 8);

    return v97();
  }
}

uint64_t sub_22DC6FAF0()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](0);
  return sub_22DCB68EC();
}

uint64_t sub_22DC6FB34()
{
  sub_22DCB68AC();
  MEMORY[0x2318D7C70](0);
  return sub_22DCB68EC();
}

uint64_t sub_22DC6FB74()
{
  v1[4] = v0;
  v1[5] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC0);
  v1[6] = swift_task_alloc();
  v2 = sub_22DCB5B3C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_22DCB5F5C();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_22DCB5EAC();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = sub_22DCB5EEC();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEC8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DC6FE10, 0, 0);
}

uint64_t sub_22DC6FE10()
{
  v42 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock((v3 + 48));
  sub_22DC7076C((v3 + 16), &v41);
  os_unfair_lock_unlock((v3 + 48));
  v5 = v41;
  v0[24] = v41;

  v34 = v5;
  v6 = sub_22DCB5E7C();
  v7 = v6;
  v39 = *(v6 + 16);
  if (v39)
  {
    v8 = 0;
    v9 = v0[19];
    v10 = v0[15];
    v37 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v36 = *MEMORY[0x277D46728];
    v35 = (v10 + 104);
    v11 = (v10 + 8);
    v38 = v9;
    v12 = (v9 + 8);
    while (v8 < *(v7 + 16))
    {
      v13 = v0[17];
      v14 = v0[16];
      v15 = v0[14];
      (*(v38 + 16))(v0[21], v37 + *(v38 + 72) * v8, v0[18]);
      sub_22DCB5EBC();
      (*v35)(v14, v36, v15);
      sub_22D9CA4B8(&qword_27DA2CED0, MEMORY[0x277D46738]);
      sub_22DCB61CC();
      sub_22DCB61CC();
      v16 = *v11;
      (*v11)(v14, v15);
      v16(v13, v15);
      if (v0[2] == v0[3] && (sub_22DCB5EDC() & 1) != 0)
      {
        v17 = v0[23];
        v18 = v0[21];
        v20 = v0[18];
        v19 = v0[19];

        (*(v19 + 32))(v17, v18, v20);
        v21 = 0;
        goto LABEL_9;
      }

      ++v8;
      (*v12)(v0[21], v0[18]);
      if (v39 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    return MEMORY[0x2822008A0]();
  }

LABEL_8:

  v21 = 1;
LABEL_9:
  v23 = v0[22];
  v22 = v0[23];
  v25 = v0[18];
  v24 = v0[19];
  (*(v24 + 56))(v22, v21, 1, v25);
  sub_22DC71738(v22, v23, &qword_27DA2CEC8);
  if ((*(v24 + 48))(v23, 1, v25) != 1)
  {
    v40 = v0[13];
    v30 = v0[7];
    v29 = v0[8];
    v31 = v0[6];
    (*(v0[19] + 32))(v0[20], v0[22], v0[18]);
    sub_22DCB5E6C();
    sub_22DCB5ECC();
    (*(v29 + 56))(v31, 1, 1, v30);
    sub_22DCB5B2C();
    sub_22DCB5F4C();
    v32 = swift_task_alloc();
    v0[25] = v32;
    *(v32 + 16) = v34;
    *(v32 + 24) = v40;
    v33 = swift_task_alloc();
    v0[26] = v33;
    *v33 = v0;
    v33[1] = sub_22DC703A8;

    return MEMORY[0x2822008A0]();
  }

  v26 = v0[23];
  sub_22D9CA164(v0[22], &qword_27DA2CEC8);
  sub_22DC70788();
  swift_allocError();
  swift_willThrow();

  sub_22D9CA164(v26, &qword_27DA2CEC8);

  v27 = v0[1];

  return v27();
}

uint64_t sub_22DC703A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_22DC70624;
  }

  else
  {
    v2 = sub_22DC704DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22DC704DC()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v3 + 8))(v2, v4);
  sub_22D9CA164(v1, &qword_27DA2CEC8);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22DC70624()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];

  (*(v3 + 8))(v2, v4);
  sub_22D9CA164(v1, &qword_27DA2CEC8);
  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8();
}

unint64_t sub_22DC70788()
{
  result = qword_27DA2CED8;
  if (!qword_27DA2CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CED8);
  }

  return result;
}

uint64_t sub_22DC707DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
  v3 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v4, v5);
  v8 = v12 - v7;
  (*(v3 + 16))(v12 - v7, a1, v2, v6);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v8, v2);
  sub_22DCB5E4C();
}

uint64_t sub_22DC7095C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEE0);
  MEMORY[0x28223BE20](v2, v3, v4);
  v6 = (v8 - v5);
  sub_22DC71738(a1, v8 - v5, &qword_27DA2CEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8[1] = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    return sub_22DCB626C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);
    sub_22DCB627C();
    return sub_22D9CA164(v6, &qword_27DA2CEE0);
  }
}

uint64_t sub_22DC70A7C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D4F0);

  return sub_22DC7095C(a1);
}

char *sub_22DC70AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF8);
  MEMORY[0x28223BE20](v2 - 8, v3, v4);
  v6 = v26 - v5;
  v7 = sub_22DCB5A8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15);
  v17 = v26 - v16;
  if (qword_27DA2CB20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for ReplicatorDirectoryResult(0);
  v19 = __swift_project_value_buffer(v18, qword_27DA2CEA8);
  sub_22DC71738(v19, v6, &qword_27DA2CEF8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22D9CA164(v6, &qword_27DA2CEF8);
    v20 = *(v19 + *(v18 + 20));
    if (!v20)
    {
      sub_22DC717A0();
      swift_allocError();
      *v23 = 3;
    }

    swift_willThrow();
    v24 = v20;
  }

  else
  {
    (*(v8 + 32))(v17, v6, v7);
    (*(v8 + 16))(v12, v17, v7);
    v21 = sub_22DC68450(0xD000000000000028, 0x800000022DD0FDB0, v12, a1);
    if (!v21)
    {
      v21 = sub_22DC68450(0xD000000000000028, 0x800000022DD0FDB0, v12, a1);
      if (!v21)
      {
        v21 = sub_22DC68450(0xD000000000000028, 0x800000022DD0FDB0, v12, a1);
      }
    }

    v6 = v21;
    v22 = *(v8 + 8);
    v22(v12, v7);
    v22(v17, v7);
  }

  return v6;
}

unint64_t sub_22DC70DEC()
{
  result = qword_27DA2CEE8;
  if (!qword_27DA2CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CEE8);
  }

  return result;
}

uint64_t sub_22DC70E40(void *a1)
{
  v2 = *a1;
  v3 = sub_22DCB5DFC();
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v6 = sub_22DCB5FAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DCB5F9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22DCB5F8C();
  v21 = MEMORY[0x28223BE20](v18 - 8, v19, v20);
  v26 = MEMORY[0x277D466F0];
  v27 = MEMORY[0x277D466F8];
  v28 = MEMORY[0x277D466E8];
  v29 = MEMORY[0x277D46690];
  v30 = MEMORY[0x277D466B8];
  v31 = MEMORY[0x277D466D0];
  v25 = v2;
  v24 = a1;
  (*(v13 + 104))(v17, *MEMORY[0x277D46898], v12, v21);
  (*(v7 + 104))(v11, *MEMORY[0x277D468F8], v6);

  sub_22DCB5DEC();
  sub_22DCB5F7C();
  memset(v23, 0, sizeof(v23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF30);
  swift_allocObject();
  return sub_22DCB5E0C();
}

uint64_t sub_22DC71184(void *a1)
{
  v2 = *a1;
  v3 = sub_22DCB5DFC();
  MEMORY[0x28223BE20](v3 - 8, v4, v5);
  v6 = sub_22DCB5FAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22DCB5F9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22DCB5F8C();
  v21 = MEMORY[0x28223BE20](v18 - 8, v19, v20);
  v26 = MEMORY[0x277D466F0];
  v27 = MEMORY[0x277D466F8];
  v28 = MEMORY[0x277D466E8];
  v29 = MEMORY[0x277D46690];
  v30 = MEMORY[0x277D466B8];
  v31 = MEMORY[0x277D466D0];
  v25 = v2;
  v24 = a1;
  (*(v13 + 104))(v17, *MEMORY[0x277D46898], v12, v21);
  (*(v7 + 104))(v11, *MEMORY[0x277D468F8], v6);

  sub_22DCB5DEC();
  sub_22DCB5F7C();
  memset(v23, 0, sizeof(v23));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CEF0);
  swift_allocObject();
  return sub_22DCB5E0C();
}

uint64_t sub_22DC714C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22DC71584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC715EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DC7164C()
{
  result = qword_27DA2CF28;
  if (!qword_27DA2CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA2CF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CF28);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22DC71738(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22DC717A0()
{
  result = qword_27DA2CF48;
  if (!qword_27DA2CF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CF48);
  }

  return result;
}

uint64_t sub_22DC717F4(uint64_t a1)
{
  v3 = *(sub_22DCB5A8C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22DC686FC(a1, v5, (v1 + v4), v6);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_22DC718F8()
{
  result = qword_27DA2CF50;
  if (!qword_27DA2CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2CF50);
  }

  return result;
}

uint64_t sub_22DC71960(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF58) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D9CB0D8;

  return sub_22DC6E29C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_22DC71A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceSnapshot.CachedFile(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DC71AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DC71B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FaceSnapshot.CachedFile(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_18Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22DC71D54(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2CF98) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22DC65BFC;

  return sub_22DC6B94C(a1, v6, v7, v8, v1 + v5);
}

uint64_t getEnumTagSinglePayload for URLCopyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for URLCopyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_22DC71FD0()
{
  sub_22DC72054();
  if (v0 <= 0x3F)
  {
    sub_22DC720AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22DC72054()
{
  if (!qword_27DA2CFF0)
  {
    sub_22DCB5A8C();
    v0 = sub_22DCB64AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA2CFF0);
    }
  }
}

void sub_22DC720AC()
{
  if (!qword_27DA2CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA2D820);
    v0 = sub_22DCB64AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA2CFF8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_60Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_61Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_22DC722A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22DC7250C()
{
  result = qword_27DA2D038;
  if (!qword_27DA2D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D038);
  }

  return result;
}

unint64_t sub_22DC72564()
{
  result = qword_27DA2D040;
  if (!qword_27DA2D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D040);
  }

  return result;
}

unint64_t sub_22DC725BC()
{
  result = qword_27DA2D048;
  if (!qword_27DA2D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D048);
  }

  return result;
}

unint64_t sub_22DC72610()
{
  result = qword_27DA2D058;
  if (!qword_27DA2D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D058);
  }

  return result;
}

unint64_t sub_22DC72664()
{
  result = qword_27DA2D080;
  if (!qword_27DA2D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairedDeviceIdentifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PairedDeviceIdentifier(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22DC727A8()
{
  result = qword_27DA2D0A0;
  if (!qword_27DA2D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0A0);
  }

  return result;
}

unint64_t sub_22DC72800()
{
  result = qword_27DA2D0A8;
  if (!qword_27DA2D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0A8);
  }

  return result;
}

unint64_t sub_22DC72858()
{
  result = qword_27DA2D0B0;
  if (!qword_27DA2D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0B0);
  }

  return result;
}

unint64_t sub_22DC728B0()
{
  result = qword_27DA2D0B8;
  if (!qword_27DA2D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0B8);
  }

  return result;
}

unint64_t sub_22DC72908()
{
  result = qword_27DA2D0C0;
  if (!qword_27DA2D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0C0);
  }

  return result;
}

unint64_t sub_22DC72960()
{
  result = qword_27DA2D0C8;
  if (!qword_27DA2D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0C8);
  }

  return result;
}

uint64_t sub_22DC729F8()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA37660);
  __swift_project_value_buffer(v0, qword_27DA37660);
  return sub_22DCB5FCC();
}

uint64_t sub_22DC72A78()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA37678);
  __swift_project_value_buffer(v0, qword_27DA37678);
  return sub_22DCB5FCC();
}

uint64_t sub_22DC72AF8()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_27DA37690);
  __swift_project_value_buffer(v0, qword_27DA37690);
  return sub_22DCB5FCC();
}

uint64_t sub_22DC72B78()
{
  v0 = sub_22DCB5FDC();
  __swift_allocate_value_buffer(v0, qword_280C11198);
  __swift_project_value_buffer(v0, qword_280C11198);
  return sub_22DCB5FCC();
}

uint64_t static LibrarySnapshotListener.client.getter()
{
  if (qword_27DA2CB70 != -1)
  {
    swift_once();
  }

  v0 = qword_27DA2D400;
  v1 = type metadata accessor for ClientService();
  v14[3] = v1;
  v14[4] = &off_28410FBD0;
  v14[0] = v0;
  type metadata accessor for LibrarySnapshotListener();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  v5 = MEMORY[0x28223BE20](v3, v3, v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  v9 = *v7;
  v12 = v1;
  v13 = &off_28410FBD0;
  *&v11 = v9;

  swift_defaultActor_initialize();
  sub_22DC72E80(&v11, v2 + 112);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v2;
}

uint64_t LibrarySnapshotListener.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t LibrarySnapshotListener.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_22DC72E80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_22DC72ED4()
{
  result = [objc_allocWithZone(type metadata accessor for NTKControlComplicationProvider()) init];
  qword_27DA2D0D0 = result;
  return result;
}

id static NTKControlComplicationProvider.shared.getter()
{
  if (qword_27DA2CB48 != -1)
  {
    swift_once();
  }

  v1 = qword_27DA2D0D0;

  return v1;
}

id sub_22DC72FBC()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() visible];
  [v1 setIncludeRemote_];
  v2 = [objc_allocWithZone(MEMORY[0x277CFA3C0]) initWithWidgetsPredicate:0 controlsPredicate:v1];
  v3 = [objc_allocWithZone(MEMORY[0x277CFA3B8]) initWithOptions_];
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR___NTKControlComplicationProvider_widgetExtensionProvider] = v3;
  v8.receiver = v4;
  v8.super_class = ObjectType;
  v5 = v3;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

Swift::String_optional __swiftcall NTKControlComplicationProvider.localizedAppName(for:)(NTKControlComplication *a1)
{
  v2 = [*(v1 + OBJC_IVAR___NTKControlComplicationProvider_widgetExtensionProvider) extensions];
  sub_22DC6600C(0, &qword_27DA2D0E0);
  sub_22DC733F4();
  v3 = sub_22DCB636C();

  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22DCB64FC();
    v4 = sub_22DCB638C();
    v3 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    v9 = v36;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v3 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v19 = v18;
        sub_22DC6600C(0, &qword_27DA2D0F0);
        v20 = v19;
        v21 = [v19 identity];
        v22 = [(NTKControlComplication *)a1 identity];
        v23 = [(CHSControlIdentity *)v22 extensionIdentity];

        v24 = sub_22DCB648C();
        if (v24)
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v3 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_22DCB650C())
        {
          swift_dynamicCast();
          v18 = v31;
          v16 = v8;
          v17 = v9;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      sub_22DC7345C();

      v25 = [v20 containerBundleLocalizedDisplayName];
      v26 = sub_22DCB612C();
      v28 = v27;

      v5 = v28;
      v4 = v26;
    }

    else
    {
LABEL_19:
      sub_22DC7345C();

      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

unint64_t sub_22DC733F4()
{
  result = qword_27DA2D0E8;
  if (!qword_27DA2D0E8)
  {
    sub_22DC6600C(255, &qword_27DA2D0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA2D0E8);
  }

  return result;
}

id NTKControlComplicationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22DC735D0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22DC73670;

  return sub_22DC85368();
}