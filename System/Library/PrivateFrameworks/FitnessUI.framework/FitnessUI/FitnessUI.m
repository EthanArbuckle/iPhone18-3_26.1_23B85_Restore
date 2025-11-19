uint64_t FIUICurrentLanguageRequiresTallScript()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = _FIUILocalesRequiringTallScript();
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v9 + 1) + 8 * i) languageCode];
        v6 = [v0 languageCode];
        v7 = [v5 isEqualToString:v6];

        if (v7)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

id _FIUILocalesRequiringTallScript()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"th"];
  v6[0] = v0;
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"vi"];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"hi"];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"ar"];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

double FIUIIconSize(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 > 4)
  {
    if ((a2 - 7) < 2)
    {
      v9 = FIUIStaticWorkoutIconImage(v3, a2);
      [v9 size];
      v8 = v10;

      goto LABEL_17;
    }

    v5 = 42.0;
    v6 = 56.0;
    if (a2 != 6)
    {
      v6 = 24.0;
    }

    v7 = a2 == 5;
    goto LABEL_10;
  }

  if (a2 <= 2)
  {
    v5 = 26.0;
    v6 = 28.0;
    if (a2 != 2)
    {
      v6 = 24.0;
    }

    v7 = a2 == 1;
LABEL_10:
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v8 = 31.0;
  }

  else
  {
    v8 = 35.0;
  }

LABEL_17:

  return v8;
}

id FIUIStaticWorkoutIconImage(void *a1, uint64_t a2)
{
  v3 = FIUIStaticScalableWorkoutIconImageWithPadding(a1, a2 != 7);
  v4 = FIUISizeForIconSize(a2);
  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v4, v5}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FIUIStaticWorkoutIconImage_block_invoke;
  v11[3] = &unk_1E878C4E8;
  v12 = v3;
  v13 = v4;
  v14 = v6;
  v8 = v3;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

__CFString *_activityTypePrefix(void *a1)
{
  v1 = a1;
  v2 = [v1 effectiveTypeIdentifier];
  v3 = @"elliptical";
  switch(v2)
  {
    case 1:
      v3 = @"american_football";
      goto LABEL_79;
    case 2:
      v3 = @"archery";
      goto LABEL_79;
    case 3:
      v3 = @"australian_rules_football";
      goto LABEL_79;
    case 4:
      v3 = @"badminton";
      goto LABEL_79;
    case 5:
      v3 = @"baseball";
      goto LABEL_79;
    case 6:
      v3 = @"basketball";
      goto LABEL_79;
    case 7:
      v3 = @"bowling";
      goto LABEL_79;
    case 8:
      v3 = @"boxing";
      goto LABEL_79;
    case 9:
      v3 = @"climbing";
      goto LABEL_79;
    case 10:
      v3 = @"cricket";
      goto LABEL_79;
    case 11:
      v3 = @"cross_training";
      goto LABEL_79;
    case 12:
      v3 = @"curling";
      goto LABEL_79;
    case 13:
      v5 = [v1 isIndoor];
      v6 = @"outdoorcycle";
      v7 = @"indoorcycle";
      goto LABEL_76;
    case 14:
    case 15:
    case 77:
      v3 = @"dance";
      goto LABEL_79;
    case 16:
      goto LABEL_79;
    case 17:
      v3 = @"equestrian_sports";
      goto LABEL_79;
    case 18:
      v3 = @"fencing";
      goto LABEL_79;
    case 19:
      v3 = @"fishing";
      goto LABEL_79;
    case 20:
      v3 = @"func_strength_training";
      goto LABEL_79;
    case 21:
      v3 = @"golf";
      goto LABEL_79;
    case 22:
      v3 = @"gymnastics";
      goto LABEL_79;
    case 23:
      v3 = @"handball";
      goto LABEL_79;
    case 24:
      v3 = @"hiking";
      goto LABEL_79;
    case 25:
      v5 = [v1 isIndoor];
      v6 = @"outdoor_hockey";
      v7 = @"indoor_hockey";
      goto LABEL_76;
    case 26:
      v3 = @"hunting";
      goto LABEL_79;
    case 27:
      v3 = @"lacrosse";
      goto LABEL_79;
    case 28:
      v3 = @"martial_arts";
      goto LABEL_79;
    case 29:
      v3 = @"mind_and_body";
      goto LABEL_79;
    case 30:
    case 73:
      v3 = @"mixed_meta_cardio_training";
      goto LABEL_79;
    case 31:
      v3 = @"paddle_sports";
      goto LABEL_79;
    case 32:
      v3 = @"play";
      goto LABEL_79;
    case 33:
      v3 = @"prep_and_recovery";
      goto LABEL_79;
    case 34:
      v3 = @"racquetball";
      goto LABEL_79;
    case 35:
      v5 = [v1 isIndoor];
      v6 = @"outdoorrow";
      v7 = @"indoorrow";
      goto LABEL_76;
    case 36:
      v3 = @"rugby";
      goto LABEL_79;
    case 37:
      v5 = [v1 isIndoor];
      v6 = @"outdoorrun";
      v7 = @"indoorrun";
      goto LABEL_76;
    case 38:
      v3 = @"sailing";
      goto LABEL_79;
    case 39:
      v5 = [v1 isIndoor];
      v6 = @"outdoor_skating";
      v7 = @"indoor_skating";
      goto LABEL_76;
    case 40:
      v3 = @"snow_sports";
      goto LABEL_79;
    case 41:
      v5 = [v1 isIndoor];
      v6 = @"outdoor_soccer";
      v7 = @"indoor_soccer";
      goto LABEL_76;
    case 42:
      v3 = @"softball";
      goto LABEL_79;
    case 43:
      v3 = @"squash";
      goto LABEL_79;
    case 44:
      v3 = @"stairstepper";
      goto LABEL_79;
    case 45:
      v3 = @"surfing";
      goto LABEL_79;
    case 46:
      v5 = [v1 hasLocationTypePool];
      v6 = @"swimopen";
      v7 = @"swimpool";
      goto LABEL_76;
    case 47:
      v3 = @"table_tennis";
      goto LABEL_79;
    case 48:
      v3 = @"tennis";
      goto LABEL_79;
    case 49:
      v3 = @"track_and_field";
      goto LABEL_79;
    case 50:
      v3 = @"trad_weight_training";
      goto LABEL_79;
    case 51:
      v3 = @"volleyball";
      goto LABEL_79;
    case 52:
      v5 = [v1 isIndoor];
      v6 = @"outdoorwalk";
      v7 = @"indoorwalk";
LABEL_76:
      if (v5)
      {
        v6 = v7;
      }

      v3 = v6;
      goto LABEL_79;
    case 53:
      v3 = @"water_fitness";
      goto LABEL_79;
    case 54:
      v3 = @"water_polo";
      goto LABEL_79;
    case 55:
      v3 = @"water_sports";
      goto LABEL_79;
    case 56:
      v3 = @"wrestling";
      goto LABEL_79;
    case 57:
      v3 = @"yoga";
      goto LABEL_79;
    case 58:
      v3 = @"barre";
      goto LABEL_79;
    case 59:
      v3 = @"core_training";
      goto LABEL_79;
    case 60:
      v3 = @"cross_country_skiing";
      goto LABEL_79;
    case 61:
      v3 = @"downhill_skiing";
      goto LABEL_79;
    case 62:
      v3 = @"flexibility";
      goto LABEL_79;
    case 63:
      v3 = @"hiit";
      goto LABEL_79;
    case 64:
      v3 = @"jump_rope";
      goto LABEL_79;
    case 65:
      v3 = @"kickboxing";
      goto LABEL_79;
    case 66:
      v3 = @"pilates";
      goto LABEL_79;
    case 67:
      v3 = @"snowboarding";
      goto LABEL_79;
    case 68:
      v3 = @"stairs";
      goto LABEL_79;
    case 69:
      v3 = @"step_training";
      goto LABEL_79;
    case 70:
      v3 = @"wheelchairwalk";
      goto LABEL_79;
    case 71:
      v3 = @"wheelchairrun";
      goto LABEL_79;
    case 72:
      v3 = @"tai_chi";
      goto LABEL_79;
    case 74:
      v3 = @"hand_cycling";
      goto LABEL_79;
    case 75:
      v3 = @"disc_sports";
      goto LABEL_79;
    case 76:
      v3 = @"fitness_gaming";
      goto LABEL_79;
    case 78:
      v3 = @"social_dance";
      goto LABEL_79;
    case 79:
      v3 = @"pickleball";
      goto LABEL_79;
    case 80:
      v3 = @"cooldown";
      goto LABEL_79;
    case 81:
      goto LABEL_5;
    case 82:
      v3 = @"swimbikerun";
      goto LABEL_79;
    case 83:
      goto LABEL_7;
    case 84:
      v3 = @"underwater_diving";
      goto LABEL_79;
    default:
      if (v2 != 3000)
      {
LABEL_5:
        _HKInitializeLogging();
        v4 = *MEMORY[0x1E696B9A8];
        if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_FAULT))
        {
          _activityTypePrefix_cold_1(v4, v1);
        }
      }

LABEL_7:
      v3 = @"other";
LABEL_79:

      return v3;
  }
}

id _fitnessUIBundle()
{
  if (_fitnessUIBundle_onceToken != -1)
  {
    _fitnessUIBundle_cold_1();
  }

  v1 = _fitnessUIBundle_bundle;

  return v1;
}

uint64_t ___fitnessUIBundle_block_invoke()
{
  _fitnessUIBundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void FIUIFlipViewRightToLeftIfNeeded(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v13 = a1;
  [v13 frame];
  v14 = v9;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  FIUIFlipFrameRightToLeftIfNeeded(&v14, a2, a3, a4, a5);
  [v13 setFrame:{v14, v15, v16, v17}];
}

void FIUIFlipFrameRightToLeftIfNeeded(CGFloat *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    Width = CGRectGetWidth(v15);
    v16.origin.x = v10;
    v16.origin.y = v11;
    v16.size.width = v12;
    v16.size.height = v13;
    *a1 = Width - CGRectGetMaxX(v16);
    a1[1] = v11;
    a1[2] = v12;
    a1[3] = v13;
  }
}

uint64_t _SortMetricBySortIndex(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = [v3 numberWithInteger:{_SortIndexForMetricType(objc_msgSend(a1, "integerValue"))}];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 integerValue];

  v8 = [v6 numberWithInteger:_SortIndexForMetricType(v7)];
  v9 = [v5 compare:v8];

  return v9;
}

uint64_t FIUIDistanceTypeForActivityType(void *a1)
{
  v1 = [a1 workoutActivityType];
  v2 = FIDistanceTypeForActivityType();

  return v2;
}

uint64_t FIUISpriteSheetNumberOfFrames(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    *a1 = 10;
  }

  v5 = [v3 identifier];
  if (v5 > 58)
  {
    if (v5 <= 69)
    {
      if (v5 <= 62)
      {
        if (v5 == 59)
        {
          v6 = 76;
          goto LABEL_50;
        }

        if (v5 == 60)
        {
          v6 = 47;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (v5 == 63)
      {
        v6 = 17;
        goto LABEL_50;
      }

      if (v5 != 65)
      {
        if (v5 == 66)
        {
          v6 = 102;
          goto LABEL_50;
        }

        goto LABEL_49;
      }

LABEL_28:
      v6 = 31;
      goto LABEL_50;
    }

    if (v5 > 71)
    {
      switch(v5)
      {
        case 'H':
          v6 = 224;
          goto LABEL_50;
        case 'M':
          v6 = 35;
          goto LABEL_50;
        case 'P':
          v6 = 251;
          goto LABEL_50;
      }

      goto LABEL_49;
    }

    if (v5 != 70)
    {
      v6 = 29;
      goto LABEL_50;
    }

LABEL_37:
    v6 = 38;
    goto LABEL_50;
  }

  if (v5 <= 36)
  {
    if (v5 > 19)
    {
      switch(v5)
      {
        case 20:
          v6 = 151;
          goto LABEL_50;
        case 24:
          v6 = 48;
          goto LABEL_50;
        case 35:
          v6 = 73;
          goto LABEL_50;
      }

LABEL_49:
      v6 = 0;
      goto LABEL_50;
    }

    if (v5 != 13)
    {
      if (v5 != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_28;
    }

    goto LABEL_37;
  }

  if (v5 <= 45)
  {
    if (v5 == 37)
    {
      v6 = 19;
      goto LABEL_50;
    }

    if (v5 == 44)
    {
      v6 = 30;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v5 == 46)
  {
    v6 = 90;
    goto LABEL_50;
  }

  if (v5 != 52)
  {
    if (v5 == 57)
    {
      v6 = 158;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if ([v4 isIndoor])
  {
    v6 = 32;
  }

  else
  {
    v6 = 64;
  }

LABEL_50:

  return v6;
}

id FIUISpriteSheetWorkoutIconImage(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = _activityTypePrefix(a1);
  if ((a3 - 1) > 7)
  {
    v5 = @"_480";
  }

  else
  {
    v5 = off_1E878C508[a3 - 1];
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v4, v5];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = _fitnessUIBundle();
  v9 = [v7 imageNamed:v6 inBundle:v8];

  return v9;
}

id FIUIComputeFontToFit(void *a1, void *a2, double a3, double a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = [v7 fontDescriptor];
  [v7 pointSize];
  v11 = v10;
  v12 = v7;
  [v12 pointSize];
  v13 = v12;
  if (v14 > a4)
  {
    v15 = *MEMORY[0x1E69DB648];
    v16 = v12;
    while (1)
    {
      v22 = v15;
      v23[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      [v8 sizeWithAttributes:v17];
      v19 = v18;

      if (v19 <= a3)
      {
        break;
      }

      v11 = round(v11 * 0.9);
      v13 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:v11];

      [v13 pointSize];
      v16 = v13;
      if (v20 <= a4)
      {
        goto LABEL_7;
      }
    }

    v13 = v16;
  }

LABEL_7:

  return v13;
}

double FIUIDeviceScale()
{
  if (FIUIDeviceScale_onceToken != -1)
  {
    FIUIDeviceScale_cold_1();
  }

  return *&FIUIDeviceScale___scale;
}

void __FIUIDeviceScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  FIUIDeviceScale___scale = v0;
}

double FIUILeftOffsetForFontAndString(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v4 length] < 1)
  {
    x = 0.0;
  }

  else
  {
    CTFontGetGlyphsForCharacters(v3, [v4 cStringUsingEncoding:4], &glyphs, 1);
    CTFontGetBoundingRectsForGlyphs(v3, kCTFontOrientationDefault, &glyphs, &boundingRects, 1);
    x = boundingRects.origin.x;
  }

  return x;
}

uint64_t FIUIUsesIndicDigits()
{
  if (FIUIUsesIndicDigits_onceToken != -1)
  {
    FIUIUsesIndicDigits_cold_1();
  }

  return __usesIndicDigits;
}

void FIUIReloadUsesIndicDigits()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getIntlUtilityClass_softClass;
  v9 = getIntlUtilityClass_softClass;
  if (!getIntlUtilityClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getIntlUtilityClass_block_invoke;
    v5[3] = &unk_1E878C3B8;
    v5[4] = &v6;
    __getIntlUtilityClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 localeIdentifier];
  v4 = [v0 numberingSystemForLocaleID:v3];
  __usesIndicDigits = [v4 isEqualToString:@"latn"] ^ 1;
}

void sub_1E5D14694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _TypeLabel()
{
  if (_TypeLabel_onceToken != -1)
  {
    _TypeLabel_cold_1();
  }

  v1 = _TypeLabel___typeLabel;

  return v1;
}

id _LabelFont()
{
  if (_LabelFont_onceToken != -1)
  {
    _LabelFont_cold_1();
  }

  v1 = _LabelFont_font;

  return v1;
}

id NLSessionFormatDetailLabel(void *a1, void *a2, void *a3, void *a4, void *a5, int a6, int a7)
{
  v11 = MEMORY[0x1E696AEC0];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = FIUIBundle();
  v18 = [v17 localizedStringForKey:@"SUMMARY_DETAIL_SUFFIX" value:&stru_1F5F88F90 table:@"Localizable"];
  v19 = [v11 stringWithFormat:v18, v16, v15];

  v20 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v19];
  v21 = [v19 rangeOfString:v16];
  v23 = v22;

  v24 = [v19 rangeOfString:v15];
  v26 = v25;

  v27 = *MEMORY[0x1E69DB648];
  [v20 addAttribute:*MEMORY[0x1E69DB648] value:v14 range:{v21, v23}];

  [v20 addAttribute:v27 value:v13 range:{v24, v26}];
  [v20 addAttribute:*MEMORY[0x1E69DB650] value:v12 range:{0, objc_msgSend(v20, "length")}];

  if (a6 && a7)
  {
    [v20 addAttribute:*MEMORY[0x1E69DB778] value:&unk_1F5F9B220 range:{v21, v23}];
  }

  return v20;
}

void __FIUIOnePixel_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  *&FIUIOnePixel_onePixel = 1.0 / v0;
}

void __FIUIOnePixel_block_invoke_0()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  *&FIUIOnePixel_onePixel_0 = 1.0 / v0;
}

void sub_1E5D16CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1E5D16E04()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5D16E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D16E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5D16FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5D170DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A490);
  sub_1E5D5CC08(&qword_1ED06A4D0, &qword_1ED06A490);
  sub_1E5D5CC08(&qword_1ED06A4D8, &qword_1ED06A4C8);
  swift_getOpaqueTypeConformance2();
  sub_1E5D5BEF8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5D17280()
{
  v1 = type metadata accessor for QuantityChart();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E5DA8AFC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E5DA897C();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E5D1741C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5D174E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5D17638()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5D17680(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5D176A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E5D176C8()
{
  sub_1E5DA8E3C();
  sub_1E5DA8E5C();
  sub_1E5DA8B3C();
  sub_1E5DA8DBC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5D177C8()
{
  MEMORY[0x1E693E9C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5D17800()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D17850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1E5D17974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1E5D17A94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A960);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A908);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A950);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A938);
  sub_1E5D5CC08(&qword_1ED06A940, &qword_1ED06A900);
  sub_1E5D5CC08(&qword_1ED06A948, &qword_1ED06A938);
  swift_getOpaqueTypeConformance2();
  sub_1E5D7147C(&qword_1ED06A958, &qword_1ED06A950);
  swift_getOpaqueTypeConformance2();
  sub_1E5D5CC08(&qword_1ED06A4D8, &qword_1ED06A4C8);
  swift_getOpaqueTypeConformance2();
  sub_1E5D7147C(&qword_1ED06A4E8, &qword_1ED06A4E0);
  swift_getOpaqueTypeConformance2();
  sub_1E5D717D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5D17DD0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D17E18()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5D17E50()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5D17E88()
{
  v1 = sub_1E5DA94CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1E5D17F78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D17FB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1E5D18044()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D1808C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5D180C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5D180FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5D18144()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1E5D18184()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D181C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5D18208(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5DA854C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E5D18274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5DA854C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E5D182E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D1831C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E5D1835C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1E5D18394()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E5D183CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t FIUICurrentLanguageNeedsExtendedLineSpacing()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 preferredLocalizations];

  if ([v1 count])
  {
    v2 = [v1 firstObject];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [&unk_1F5F9B178 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(&unk_1F5F9B178);
          }

          if ([v2 hasPrefix:*(*(&v9 + 1) + 8 * v6)])
          {
            v7 = 1;
            goto LABEL_12;
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [&unk_1F5F9B178 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_12:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t FIUICurrentLanguageSupportsTightLineSpacing()
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (FIUICurrentLanguageRequiresTallScript())
  {
    return 0;
  }

  v1 = [MEMORY[0x1E695DF58] currentLocale];
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"tr"];
  v18[0] = v2;
  v0 = 1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) languageCode];
        v10 = [v1 languageCode];
        v11 = [v9 isEqualToString:v10];

        if (v11)
        {
          v0 = 0;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    v0 = 1;
  }

LABEL_13:

  return v0;
}

void sub_1E5D18D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FIUIOrderedWeekdays()
{
  v0 = [MEMORY[0x1E695DEE8] currentCalendar];
  v1 = [v0 firstWeekday];
  v2 = v1 - 1;

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v1 - 1 < (v1 + 6))
  {
    v4 = 7;
    do
    {
      v5 = [&unk_1F5F9B190 objectAtIndexedSubscript:v2 % 7];
      [v3 addObject:v5];

      ++v2;
      --v4;
    }

    while (v4);
  }

  return v3;
}

id FIUIMindfulnessLocalizedWeekdaySelection(uint64_t a1, void *a2, char a3)
{
  v41[7] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1 == 1)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_MONDAY";
    goto LABEL_19;
  }

  if (!a1)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_NEVER";
LABEL_19:
    v9 = [v6 localizedStringForKey:v8 value:&stru_1F5F88F90 table:@"Localizable"];

    goto LABEL_20;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_TUESDAY";
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_WEDNESDAY";
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFF7) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_THURSDAY";
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFEFLL) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_FRIDAY";
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFDFLL) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_SATURDAY";
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFFFFFFFFFFFBFLL) == 0)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_SUNDAY";
    goto LABEL_19;
  }

  if (a1 == 127)
  {
    v6 = FIUIBundle();
    v7 = v6;
    v8 = @"MINFULNESS_SELECTION_EVERY_DAY";
    goto LABEL_19;
  }

  if (FIMindfulnessWeekdayDaySelectionForCalendar() == a1)
  {
    v11 = FIUIBundle();
    if (a3)
    {
      v12 = @"MINFULNESS_SELECTION_EVERY_WEEKDAYS";
    }

    else
    {
      v12 = @"MINFULNESS_SELECTION_WEEKDAYS";
    }

LABEL_45:
    v9 = [v11 localizedStringForKey:v12 value:&stru_1F5F88F90 table:@"Localizable"];

    goto LABEL_20;
  }

  if (FIMindfulnessWeekendDaySelectionForCalendar() == a1)
  {
    v11 = FIUIBundle();
    if (a3)
    {
      v12 = @"MINFULNESS_SELECTION_EVERY_WEEKENDS";
    }

    else
    {
      v12 = @"MINFULNESS_SELECTION_WEEKENDS";
    }

    goto LABEL_45;
  }

  v31 = v5;
  v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v40[0] = &unk_1F5F9B2C8;
  v40[1] = &unk_1F5F9B2E0;
  v41[0] = &unk_1F5F9B370;
  v41[1] = &unk_1F5F9B388;
  v40[2] = &unk_1F5F9B2F8;
  v40[3] = &unk_1F5F9B310;
  v41[2] = &unk_1F5F9B3A0;
  v41[3] = &unk_1F5F9B3B8;
  v40[4] = &unk_1F5F9B328;
  v40[5] = &unk_1F5F9B340;
  v41[4] = &unk_1F5F9B3D0;
  v41[5] = &unk_1F5F9B3E8;
  v40[6] = &unk_1F5F9B358;
  v41[6] = &unk_1F5F9B400;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:7];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = FIUIOrderedWeekdays();
  v15 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    v32 = v14;
    v33 = v13;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [*(*(&v35 + 1) + 8 * i) unsignedIntegerValue];
        if ((v19 & a1) != 0)
        {
          v20 = v19;
          if ([v13 length])
          {
            [v13 appendString:@" "];
          }

          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
          v22 = [v14 objectForKeyedSubscript:v21];
          v23 = [v22 unsignedIntegerValue];
          v24 = &stru_1F5F88F90;
          if ((v23 - 8) >= 0xFFFFFFFFFFFFFFF9)
          {
            v25 = v23;
            v26 = objc_alloc_init(MEMORY[0x1E696AB78]);
            [v26 setFormattingContext:2];
            [v26 shortStandaloneWeekdaySymbols];
            v27 = v16;
            v28 = a1;
            v30 = v29 = v17;
            v24 = [v30 objectAtIndexedSubscript:v25 - 1];

            v17 = v29;
            a1 = v28;
            v16 = v27;

            v14 = v32;
            v13 = v33;
          }

          [v13 appendString:v24];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
  }

  v9 = [v13 copy];
  v5 = v31;
LABEL_20:

  return v9;
}

__CFString *FIMindfulnessLocalizedDay(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    v3 = &stru_1F5F88F90;
  }

  else
  {
    v1 = off_1E878BDE0[a1 - 1];
    v2 = FIUIBundle();
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F5F88F90 table:@"Localizable"];
  }

  return v3;
}

id KeyForWorkoutActivityType(void *a1)
{
  v1 = a1;
  if ([v1 identifier] == 46)
  {
    v2 = [v1 metadata];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BB58]];
    v4 = [v3 integerValue];

    if (v4 == 2)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [v1 identifier];
      v7 = @".OWS";
      goto LABEL_9;
    }

    if (v4 == 1)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [v1 identifier];
      v7 = @".PS";
LABEL_9:
      [v5 stringWithFormat:@"%lu%@", v6, v7];
      goto LABEL_10;
    }
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v1 identifier];
  v10 = [v1 isIndoor];
  v11 = &stru_1F5F88F90;
  if (v10)
  {
    v11 = @".indoor";
  }

  [v8 stringWithFormat:@"%lu%@", v9, v11];
  v12 = LABEL_10:;

  return v12;
}

uint64_t _SortIndexForMetricType(uint64_t a1)
{
  if ((a1 - 1) > 0x23)
  {
    return -1;
  }

  else
  {
    return qword_1E5DB1740[a1 - 1];
  }
}

void __FIUIDividerViewRoundedCornerImage_block_invoke()
{
  v6 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, 3.5, 1.5}];
  v0 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 3.5, 1.5, 0.75}];
  v1 = [MEMORY[0x1E69DC888] colorWithWhite:0.2 alpha:1.0];
  v8.width = 3.5;
  v8.height = 1.5;
  UIGraphicsBeginImageContextWithOptions(v8, 1, 0.0);
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setFill];

  [v6 fill];
  [v1 setFill];
  [v0 fill];
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [v3 resizableImageWithCapInsets:1 resizingMode:{0.0, 1.5, 0.0, 1.5}];
  v5 = FIUIDividerViewRoundedCornerImage_image;
  FIUIDividerViewRoundedCornerImage_image = v4;
}

id FIUIHeightDisplayString(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v5 = FIUIBundle();
    v6 = [v5 localizedStringForKey:@"HEIGHT_NOT_SET" value:&stru_1F5F88F90 table:@"Localizable"];
    goto LABEL_5;
  }

  if (_IsMetricLocale())
  {
    v2 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
    [v1 doubleValueForUnit:v2];
    v4 = round(v3);

    v5 = _HeightFormatterMediumStyle();
    v6 = [v5 stringFromValue:9 unit:v4];
LABEL_5:
    v7 = v6;

    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E696C510] meterUnit];
  [v1 doubleValueForUnit:v8];
  v10 = v9;

  v11 = _HeightFormatterImperialShortStyle___heightFormatter;
  if (!_HeightFormatterImperialShortStyle___heightFormatter)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696ACF8]);
    v13 = _HeightFormatterImperialShortStyle___heightFormatter;
    _HeightFormatterImperialShortStyle___heightFormatter = v12;

    [_HeightFormatterImperialShortStyle___heightFormatter setForPersonHeightUse:1];
    [_HeightFormatterImperialShortStyle___heightFormatter setUnitStyle:1];
    v14 = [_HeightFormatterImperialShortStyle___heightFormatter numberFormatter];
    [v14 setMaximumFractionDigits:0];

    v11 = _HeightFormatterImperialShortStyle___heightFormatter;
  }

  v7 = [v11 stringFromMeters:v10];
LABEL_9:

  return v7;
}

uint64_t _IsMetricLocale()
{
  v0 = _HeightFormatterMediumStyle();
  v1 = [v0 numberFormatter];
  v2 = [v1 locale];

  v3 = [v2 objectForKey:*MEMORY[0x1E695DA08]];
  v4 = [v3 BOOLValue];

  return v4;
}

id _HeightFormatterMediumStyle()
{
  v0 = _HeightFormatterMediumStyle___heightFormatter;
  if (!_HeightFormatterMediumStyle___heightFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696ACF8]);
    v2 = _HeightFormatterMediumStyle___heightFormatter;
    _HeightFormatterMediumStyle___heightFormatter = v1;

    [_HeightFormatterMediumStyle___heightFormatter setForPersonHeightUse:1];
    [_HeightFormatterMediumStyle___heightFormatter setUnitStyle:2];
    v0 = _HeightFormatterMediumStyle___heightFormatter;
  }

  return v0;
}

id FIUIWeightDisplayString(void *a1)
{
  if (a1)
  {
    v1 = round(_WeightInLocaleUnit(a1));
    v2 = _MassFormatter();
    [v2 stringFromValue:_LocaleWeightMassFormatterUnit() unit:v1];
  }

  else
  {
    v2 = FIUIBundle();
    [v2 localizedStringForKey:@"WEIGHT_NOT_SET" value:&stru_1F5F88F90 table:@"Localizable"];
  }
  v3 = ;

  return v3;
}

double _WeightInLocaleUnit(void *a1)
{
  v1 = MEMORY[0x1E696C510];
  v2 = a1;
  v3 = [v1 unitFromMassFormatterUnit:_LocaleWeightMassFormatterUnit()];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

id _MassFormatter()
{
  v0 = _MassFormatter___massFormatter;
  if (!_MassFormatter___massFormatter)
  {
    v1 = objc_alloc_init(MEMORY[0x1E696AD20]);
    v2 = _MassFormatter___massFormatter;
    _MassFormatter___massFormatter = v1;

    [_MassFormatter___massFormatter setForPersonMassUse:1];
    v0 = _MassFormatter___massFormatter;
  }

  return v0;
}

uint64_t _LocaleWeightMassFormatterUnit()
{
  v3 = 11;
  v0 = _MassFormatter();
  v1 = [v0 unitStringFromKilograms:&v3 usedUnit:2.0];

  return v3;
}

id FIUIWheelchairUseDisplayString(unint64_t a1)
{
  if (a1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v1 = off_1E878BE90[a1];
    v2 = FIUIBundle();
    v3 = [v2 localizedStringForKey:v1 value:&stru_1F5F88F90 table:@"Localizable"];
  }

  return v3;
}

id FIUIDateOfBirthDisplayString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (FIUIDateOfBirthDisplayString_onceToken == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [FIUIDateOfBirthDisplayString___birthdayDateFormatter stringFromDate:v2];
      goto LABEL_6;
    }
  }

  else
  {
    FIUIDateOfBirthDisplayString_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v4 = FIUIBundle();
  v3 = [v4 localizedStringForKey:@"BIRTHDATE_NOT_SET" value:&stru_1F5F88F90 table:@"Localizable"];

LABEL_6:

  return v3;
}

uint64_t __FIUIDateOfBirthDisplayString_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = FIUIDateOfBirthDisplayString___birthdayDateFormatter;
  FIUIDateOfBirthDisplayString___birthdayDateFormatter = v0;

  [FIUIDateOfBirthDisplayString___birthdayDateFormatter setTimeStyle:0];
  v2 = FIUIDateOfBirthDisplayString___birthdayDateFormatter;

  return [v2 setDateStyle:2];
}

id FIUIBiologicalSexDisplayString(uint64_t a1)
{
  v2 = FIUIBundle();
  v3 = v2;
  if ((a1 - 1) > 2)
  {
    v4 = @"BIOLOGICAL_SEX_NOT_SET";
  }

  else
  {
    v4 = off_1E878BEA8[a1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_1F5F88F90 table:@"Localizable"];

  return v5;
}

void _changeSeparatorLineColors(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 frame];
  if (v3 < 1.0 && v2 > 1.0)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
    [v1 setBackgroundColor:v5];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [v1 subviews];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _changeSeparatorLineColors(*(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_1E5D1BD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _PickerStyledAttributedString(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AAB0];
  v2 = a1;
  v3 = [v1 alloc];
  v8 = *MEMORY[0x1E69DB650];
  v4 = [MEMORY[0x1E69DC888] grayColor];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 initWithString:v2 attributes:v5];

  return v6;
}

double _RoundedMinWeightInLocaleUnit()
{
  v0 = MEMORY[0x1E696C348];
  v1 = [MEMORY[0x1E696C510] poundUnit];
  v2 = [v0 quantityWithUnit:v1 doubleValue:1.0];

  v3 = round(_WeightInLocaleUnit(v2));
  return v3;
}

id _AvgWeightQuantity()
{
  v0 = MEMORY[0x1E696C348];
  v1 = [MEMORY[0x1E696C510] poundUnit];
  v2 = [v0 quantityWithUnit:v1 doubleValue:159.0];

  return v2;
}

double FIUISubpixelAlignedCenter(double a1, double a2)
{
  v2 = a2 * 0.5;
  UIRoundToViewScale();
  return v2 + v3;
}

id _PositionAnimation(void *a1, double a2, float a3)
{
  v5 = MEMORY[0x1E6979390];
  v6 = a1;
  v7 = [v5 animation];
  [v7 setValues:v6];

  [v7 setKeyPath:@"position"];
  [v7 setCalculationMode:*MEMORY[0x1E69795A0]];
  [v7 setDuration:a2];
  *&v8 = a3;
  [v7 setRepeatCount:v8];

  return v7;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

float _InterpolateWithKeyFrames(void *a1, void *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v7 >= [v5 count] - 1)
    {
      break;
    }

    ++v7;
    v9 = [v5 objectAtIndexedSubscript:v8 + 1];
    [v9 floatValue];
    v11 = v10;

    if (v11 > a3 || v8 == [v5 count] - 2)
    {
      v12 = [v5 objectAtIndexedSubscript:v8];
      [v12 floatValue];
      v14 = v13;

      v15 = [v6 objectAtIndexedSubscript:v8];
      [v15 floatValue];
      v17 = v16;
      v18 = [v6 objectAtIndexedSubscript:v7];
      [v18 floatValue];
      v20 = v17 + ((a3 - v14) / (v11 - v14)) * (v19 - v17);

      goto LABEL_7;
    }
  }

  v20 = 0.0;
LABEL_7:

  return v20;
}

uint64_t ___defaultMetalDevice_block_invoke()
{
  _defaultMetalDevice_metalDevice = MTLCreateSystemDefaultDevice();

  return MEMORY[0x1EEE66BB8]();
}

id FIUIStandardFitnessDefaultActivityTypes()
{
  v0 = FIStandardFitnessDefaultActivityTypes();
  v1 = [v0 hk_map:&__block_literal_global_304];

  return v1;
}

FIUIWorkoutActivityType *__FIUIStandardFitnessDefaultActivityTypes_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

id FIUIFitnessJuniorDefaultActivityTypes()
{
  v0 = FIFitnessJuniorDefaultActivityTypes();
  v1 = [v0 hk_map:&__block_literal_global_306];

  return v1;
}

FIUIWorkoutActivityType *__FIUIFitnessJuniorDefaultActivityTypes_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FIUIWorkoutActivityType alloc] initWithWorkoutActivityType:v2];

  return v3;
}

__CFString *FIUILastFourCharactersOfUUID(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 UUIDString];
    v3 = [v1 UUIDString];

    v4 = [v2 substringFromIndex:{objc_msgSend(v3, "length") - 4}];
  }

  else
  {
    v4 = @"NULL";
  }

  return v4;
}

double _FIUICalculateBMR(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (a3 == 2)
  {
    v11 = a1 != 2;
    v12 = FICMotionConditionForWheelchairUse();
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v13 = getCMCalorieUserInfoClass_softClass;
    v33 = getCMCalorieUserInfoClass_softClass;
    if (!getCMCalorieUserInfoClass_softClass)
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getCMCalorieUserInfoClass_block_invoke;
      v28 = &unk_1E878C3B8;
      v29 = &v30;
      __getCMCalorieUserInfoClass_block_invoke(&v25);
      v13 = v31[3];
    }

    v14 = v13;
    _Block_object_dispose(&v30, 8);
    v15 = [[v13 alloc] initWithAge:v11 gender:v12 height:a2 weight:a6 / 100.0 condition:a4];
    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v16 = getCMNatalimeterClass_softClass;
    v33 = getCMNatalimeterClass_softClass;
    if (!getCMNatalimeterClass_softClass)
    {
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __getCMNatalimeterClass_block_invoke;
      v28 = &unk_1E878C3B8;
      v29 = &v30;
      __getCMNatalimeterClass_block_invoke(&v25);
      v16 = v31[3];
    }

    v17 = v16;
    _Block_object_dispose(&v30, 8);
    v18 = [v16 computeRestingCaloriesAtRate:0 user:v15 duration:86400.0];
    [v18 doubleValue];
    v20 = v19 / 1000.0;
  }

  else
  {
    v20 = 0.0;
    if (a4 > 0.0)
    {
      if (a5 > 0.0 && a5 < a4)
      {
        v20 = (a4 - a5) * 4.04 + a5 * 25.8;
      }

      else if (a6 > 0.0 && a2 >= 1)
      {
        if (a1 == 2)
        {
          v22 = a4 * 13.7 + 66.0 + a6 * 5.0;
          v23 = -6.8;
        }

        else
        {
          v22 = a4 * 9.6 + 655.0 + a6 * 1.8;
          v23 = -4.7;
        }

        v20 = v22 + a2 * v23;
      }
    }
  }

  return v20 * a7;
}

void sub_1E5D2877C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _FIUIUserContactFromAddressBook()
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v32 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCNContactStoreClass_block_invoke;
    v27 = &unk_1E878C3B8;
    v28 = &v29;
    __getCNContactStoreClass_block_invoke(&v24);
    v0 = v30[3];
  }

  v1 = v0;
  _Block_object_dispose(&v29, 8);
  v2 = objc_alloc_init(v0);
  v3 = [getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v4 = getCNContactNicknameKeySymbolLoc_ptr;
  v32 = getCNContactNicknameKeySymbolLoc_ptr;
  v33[0] = v3;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCNContactNicknameKeySymbolLoc_block_invoke;
    v27 = &unk_1E878C3B8;
    v28 = &v29;
    v5 = ContactsLibrary();
    v6 = dlsym(v5, "CNContactNicknameKey");
    *(v28[1] + 24) = v6;
    getCNContactNicknameKeySymbolLoc_ptr = *(v28[1] + 24);
    v4 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = *v4;
  v33[1] = v7;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v8 = getCNContactGivenNameKeySymbolLoc_ptr;
  v32 = getCNContactGivenNameKeySymbolLoc_ptr;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCNContactGivenNameKeySymbolLoc_block_invoke;
    v27 = &unk_1E878C3B8;
    v28 = &v29;
    v9 = ContactsLibrary();
    v10 = dlsym(v9, "CNContactGivenNameKey");
    *(v28[1] + 24) = v10;
    getCNContactGivenNameKeySymbolLoc_ptr = *(v28[1] + 24);
    v8 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v8)
  {
    goto LABEL_18;
  }

  v11 = *v8;
  v33[2] = v11;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v12 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  v32 = getCNContactEmailAddressesKeySymbolLoc_ptr;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCNContactEmailAddressesKeySymbolLoc_block_invoke;
    v27 = &unk_1E878C3B8;
    v28 = &v29;
    v13 = ContactsLibrary();
    v14 = dlsym(v13, "CNContactEmailAddressesKey");
    *(v28[1] + 24) = v14;
    getCNContactEmailAddressesKeySymbolLoc_ptr = *(v28[1] + 24);
    v12 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v12)
  {
    goto LABEL_18;
  }

  v15 = *v12;
  v33[3] = v15;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v16 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  v32 = getCNContactPhoneNumbersKeySymbolLoc_ptr;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr)
  {
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __getCNContactPhoneNumbersKeySymbolLoc_block_invoke;
    v27 = &unk_1E878C3B8;
    v28 = &v29;
    v17 = ContactsLibrary();
    v18 = dlsym(v17, "CNContactPhoneNumbersKey");
    *(v28[1] + 24) = v18;
    getCNContactPhoneNumbersKeySymbolLoc_ptr = *(v28[1] + 24);
    v16 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v16)
  {
LABEL_18:
    _FIUIUserContactFromAddressBook_cold_1();
    __break(1u);
  }

  v34 = *v16;
  v19 = MEMORY[0x1E695DEC8];
  v20 = v34;
  v21 = [v19 arrayWithObjects:v33 count:5];

  v22 = [v2 _ios_meContactWithKeysToFetch:v21 error:0];

  return v22;
}

void sub_1E5D28C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNContactFormatterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactFormatterClass_softClass;
  v7 = getCNContactFormatterClass_softClass;
  if (!getCNContactFormatterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactFormatterClass_block_invoke;
    v3[3] = &unk_1E878C3B8;
    v3[4] = &v4;
    __getCNContactFormatterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1E5D28D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FIUIEdgeInsetsForDesiredButtonFrame()
{
  if (FIUIEdgeInsetsForDesiredButtonFrame_onceToken != -1)
  {
    FIUIEdgeInsetsForDesiredButtonFrame_cold_1();
  }

  UIRoundToScale();
  return UIRoundToScale();
}

void __FIUIEdgeInsetsForDesiredButtonFrame_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  FIUIEdgeInsetsForDesiredButtonFrame_screenScale = v0;
}

double FIUIRoundFrameToViewScale(void *a1)
{
  v1 = a1;
  UIRoundToViewScale();
  v3 = v2;
  UIRoundToViewScale();
  UIRoundToViewScale();
  UIRoundToViewScale();

  return v3;
}

id FIUICopyUserFirstNameFromAddressBook()
{
  v0 = _FIUIUserContactFromAddressBook();
  v1 = [v0 nickname];
  if (![v1 length])
  {
    v2 = [v0 givenName];

    v1 = v2;
  }

  return v1;
}

id FIUICopyUserFullNameFromAddressBook()
{
  v0 = _FIUIUserContactFromAddressBook();
  v1 = [getCNContactFormatterClass() stringFromContact:v0 style:0];
  if (![v1 length])
  {
    v2 = [v0 nickname];

    v1 = v2;
  }

  return v1;
}

id FIUICopyUserIdentifierFromAddressBook()
{
  v0 = _FIUIUserContactFromAddressBook();
  v1 = [v0 givenName];
  if (![v1 length])
  {
    v2 = [v0 emailAddresses];
    v3 = [v2 firstObject];

    v4 = [v3 value];

    v1 = v4;
  }

  if (![v1 length])
  {
    v5 = [v0 phoneNumbers];
    v6 = [v5 firstObject];

    v7 = [v6 value];
    v8 = [v7 stringValue];

    v1 = v8;
  }

  return v1;
}

uint64_t FIUIIsHeartRateEnabled()
{
  if ([MEMORY[0x1E69DC668] isRunningInStoreDemoMode])
  {
    return 1;
  }

  v1 = *MEMORY[0x1E696C8E0];
  v2 = *MEMORY[0x1E696C8E8];

  return MEMORY[0x1EEE04820](v1, v2, 1);
}

uint64_t FIUIDeviceSupportsAutoPlay()
{
  if (_FIBoolForPerGizmoDomainAndKey())
  {
    return 1;
  }

  v1 = FIGetActivePairedDevice();
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"66DE554B-3959-40C7-88B1-81E8481E3B84"];
  v3 = [v1 supportsCapability:v2];

  return v3;
}

void FIUISetIsPowerSavingModeEnabled(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"EnablePowerSavingMode";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  _FIWriteBoolsToPerGizmoDomain();
}

uint64_t FIUIIsWorkoutExtendedModeSupported()
{
  v0 = FIGetActivePairedDevice();
  v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"C26AD300-9198-11EC-8BC2-0800200C9A66"];
  v2 = [v0 supportsCapability:v1];

  LOBYTE(v1) = v2 | _FIBoolForPerGizmoDomainAndKey();
  return v1 & 1;
}

void FIUISetWorkoutExtendedModeEnabled(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v3 = @"WorkoutExtendedModeEnabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  _FIWriteBoolsToPerGizmoDomain();
}

void FIUIClearWorkoutPowerMode()
{
  v2[2] = *MEMORY[0x1E69E9840];
  v1[0] = @"EnablePowerSavingMode";
  v1[1] = @"WorkoutExtendedModeEnabled";
  v2[0] = MEMORY[0x1E695E110];
  v2[1] = MEMORY[0x1E695E110];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:2];
  _FIWriteBoolsToPerGizmoDomain();
}

uint64_t FIUIIsWorkoutVoiceFeedbackEnabled()
{
  if (_os_feature_enabled_impl())
  {
    v0 = [MEMORY[0x1E698D1C0] sharedPreferences];
    v1 = [v0 nanoAssistantEnabled];

    if (!v1)
    {
      return 0;
    }
  }

  v2 = *MEMORY[0x1E699CA20];

  return MEMORY[0x1EEE04810](v2, @"NLVoiceFeedbackEnabled", 1);
}

BOOL FIUIWorkoutSiriAnnounceEnabledExists()
{
  v0 = _FINumberForPerGizmoDomainAndKey();
  v1 = v0 != 0;

  return v1;
}

uint64_t FIUIDeviceSupportsNavigation()
{
  if (_FIBoolForPerGizmoDomainAndKey())
  {
    return 1;
  }

  v1 = FIGetActivePairedDevice();
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"CB81F0AE-3F2F-4D57-8C90-F0D1A4ADD373"];
  v3 = [v1 supportsCapability:v2];

  return v3;
}

id FIUIDeepBreathingReminderFrequencyOptions()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:{3600, &unk_1F5F9B4F0}];
  v6[1] = v0;
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:10800];
  v6[2] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:18000];
  v6[3] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:25200];
  v6[4] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];

  return v4;
}

void FIUIUserHasExistingSampleOfTypesPassingFilter(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    FIUIUserHasExistingSampleOfTypesPassingFilter_cold_1();
  }

  v11 = v10;
  v12 = [v8 hk_map:&__block_literal_global_546];
  v13 = objc_alloc(MEMORY[0x1E696C3C8]);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __FIUIUserHasExistingSampleOfTypesPassingFilter_block_invoke_2;
  v20 = &unk_1E878C2A8;
  v21 = v9;
  v22 = v11;
  v14 = v11;
  v15 = v9;
  v16 = [v13 initWithQueryDescriptors:v12 limit:1 resultsHandler:&v17];
  [v7 executeQuery:{v16, v17, v18, v19, v20}];
}

void __FIUIUserHasExistingSampleOfTypesPassingFilter_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = [a3 hk_filter:v6];
  [v8 count];
  (*(*(a1 + 40) + 16))();
}

void FIUIUserHasExistingMoveGoal(void *a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696C2E0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 calorieGoal];
  v9[0] = v6;
  v7 = [MEMORY[0x1E696C2E0] moveMinuteGoal];
  v9[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  FIUIUserHasExistingSampleOfTypesPassingFilter(v5, v8, &__block_literal_global_552, v4);
}

void FIUIUserHasExistingExerciseAndStandGoals(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696C2E0] exerciseGoal];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __FIUIUserHasExistingExerciseAndStandGoals_block_invoke;
  v9[3] = &unk_1E878C2F0;
  v10 = v3;
  v11 = v4;
  v7 = v3;
  v8 = v4;
  FIUIUserHasExistingSampleOfTypesPassingFilter(v7, v6, &__block_literal_global_552, v9);
}

void __FIUIUserHasExistingExerciseAndStandGoals_block_invoke(uint64_t a1, char a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696C2E0] standGoal];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    FIUIUserHasExistingSampleOfTypesPassingFilter(v3, v5, &__block_literal_global_552, *(a1 + 40));
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void FIUIUserHasExistingPreKincaidMoveGoal(void *a1, void *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696C2E0];
  v4 = a2;
  v5 = a1;
  v6 = [v3 calorieGoal];
  v15[0] = v6;
  v7 = [MEMORY[0x1E696C2E0] moveMinuteGoal];
  v15[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  v13 = 0uLL;
  v14 = 0;
  HKNSOperatingSystemVersionFromString();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __FIUIUserHasExistingPreKincaidMoveGoal_block_invoke;
  aBlock[3] = &__block_descriptor_56_e18_B16__0__HKSample_8l;
  v11 = 0uLL;
  v12 = 0;
  v9 = _Block_copy(aBlock);
  FIUIUserHasExistingSampleOfTypesPassingFilter(v5, v8, v9, v4);
}

BOOL __FIUIUserHasExistingPreKincaidMoveGoal_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sourceRevision];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = HKNSOperatingSystemVersionCompare() == -1;

  return v4;
}

id FIUIHealthStoreForDevice(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696C1C0]);
  if (!FIIsDeviceSatellitePaired())
  {
    goto LABEL_12;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [objc_alloc(MEMORY[0x1E696C340]) initWithHealthStore:v2];
  v5 = [v1 pairingID];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __FIUIHealthStoreForDevice_block_invoke;
  v17 = &unk_1E878C338;
  v19 = &v20;
  v6 = v3;
  v18 = v6;
  [v4 fetchProfileIdentifierForNRDeviceUUID:v5 completion:&v14];

  v7 = dispatch_time(0, 20000000000);
  v8 = dispatch_semaphore_wait(v6, v7);
  if (v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
    {
      FIUIHealthStoreForDevice_cold_1(v9);
    }
  }

  else if (v21[5])
  {
    v10 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    [v10 setProfileIdentifier:{v21[5], v14, v15, v16, v17}];
    [v10 resume];

    v2 = v10;
  }

  else
  {
    _HKInitializeLogging();
    v11 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
    {
      FIUIHealthStoreForDevice_cold_2(v11);
    }

    v2 = 0;
  }

  _Block_object_dispose(&v20, 8);
  if (v8)
  {
    v12 = 0;
  }

  else
  {
LABEL_12:
    v2 = v2;
    v12 = v2;
  }

  return v12;
}

void sub_1E5D2A3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FIUIHealthStoreForDevice_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_ERROR))
    {
      __FIUIHealthStoreForDevice_block_invoke_cold_1(v6, v7);
    }
  }

  else if (!v5)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E5D0F000, v8, OS_LOG_TYPE_DEFAULT, "Profile identifier for satellite paired watch is nil with no error.  Guardian health cloud sharing disabled.", v12, 2u);
    }
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

id FIUIApplicationIconForBundleIDAndVariant(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
  v4 = [v3 iconDataForVariant:a2];
  if (v4 && (v5 = LICreateIconFromCachedBitmap()) != 0)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v8 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v8 scale];
    v9 = [v7 initWithCGImage:v6 scale:0 orientation:?];

    CGImageRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id FIUICircularImage(void *a1, CGFloat a2)
{
  v3 = a1;
  v8.width = a2;
  v8.height = a2;
  UIGraphicsBeginImageContextWithOptions(v8, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v3 setFill];

  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = a2;
  v9.size.height = a2;
  CGContextFillEllipseInRect(CurrentContext, v9);
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v5;
}

id FIUICircularGradientImage(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a3, a3}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FIUICircularGradientImage_block_invoke;
  v12[3] = &unk_1E878C360;
  v15 = a3;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 imageWithActions:v12];

  return v10;
}

void __FIUICircularGradientImage_block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = [a2 CGContext];
  CGContextBeginPath(v4);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v3;
  v12.size.height = v3;
  CGContextAddEllipseInRect(v4, v12);
  CGContextClosePath(v4);
  CGContextClip(v4);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9[0] = [*(a1 + 32) CGColor];
  v9[1] = [*(a1 + 40) CGColor];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = CGGradientCreateWithColors(DeviceRGB, v6, 0);
  v11.x = *(a1 + 48);
  v8 = v11.x * 0.5 * 0.363970234;
  v10.y = v11.x * 0.5 + v8;
  v11.y = v11.x * 0.5 - v8;
  v10.x = 0.0;
  CGContextDrawLinearGradient(v4, v7, v10, v11, 0);
  CGGradientRelease(v7);
  CGColorSpaceRelease(DeviceRGB);
}

id FIUICircularWorkoutGradientImageWithGoal(uint64_t a1, double a2)
{
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.109803922 blue:0.00784313725 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.145098039 green:0.196078431 blue:0.0666666667 alpha:1.0];
  if (a1 == 3)
  {
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.290196078 green:0.0196078431 blue:0.0941176471 alpha:1.0];

    v7 = MEMORY[0x1E69DC888];
    v10 = 0.254901961;
    v11 = 1.0;
    v8 = 0.0196078431;
    v9 = 0.0823529412;
  }

  else
  {
    if (a1 == 2)
    {
      v6 = [MEMORY[0x1E69DC888] colorWithRed:0.145098039 green:0.133333333 blue:0.0196078431 alpha:1.0];

      v7 = MEMORY[0x1E69DC888];
      v10 = 0.223529412;
      v8 = 0.2;
      v9 = 0.031372549;
    }

    else
    {
      if (a1 != 1)
      {
        goto LABEL_9;
      }

      v6 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.105882353 blue:0.141176471 alpha:1.0];

      v7 = MEMORY[0x1E69DC888];
      v8 = 0.17254902;
      v9 = 0.22745098;
      v10 = 0.0;
    }

    v11 = 1.0;
  }

  v12 = [v7 colorWithRed:v10 green:v8 blue:v9 alpha:v11];
  v4 = v6;

  v5 = v12;
LABEL_9:
  v13 = FIUICircularGradientImage(v4, v5, a2);

  return v13;
}

id FIUIColorForCurrentContrastMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x1E69DC888]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FIUIColorForCurrentContrastMode_block_invoke;
  v10[3] = &unk_1E878C390;
  v11 = v4;
  v12 = v3;
  v6 = v3;
  v7 = v4;
  v8 = [v5 initWithDynamicProvider:v10];

  return v8;
}

id __FIUIColorForCurrentContrastMode_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessibilityContrast];
  v4 = 40;
  if (v3 == 1)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

uint64_t FIUIWorkoutSupportsDistanceMetricForGoalDisplay(void *a1)
{
  v1 = a1;
  if ([v1 workoutActivityType] == 82 || objc_msgSend(v1, "workoutActivityType") == 21)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 supportsMetric:1];
  }

  return v2;
}

uint64_t FIUIEffectiveGoalTypeForWorkout(void *a1)
{
  v1 = a1;
  v2 = [v1 sourceRevision];
  v3 = [v2 source];
  if ([v3 _isAppleWatch])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 sourceRevision];
    v6 = [v5 source];
    v4 = [v6 _hasFirstPartyBundleID];
  }

  v7 = [v1 _goalType];
  [v1 workoutActivityType];
  v8 = _HKWorkoutDistanceTypeForActivityType();
  v9 = [v1 statisticsForType:v8];

  v10 = [v9 sumQuantity];
  v11 = [MEMORY[0x1E696C510] meterUnit];
  [v10 doubleValueForUnit:v11];
  v13 = v12;

  if (v4)
  {
    if (!v7)
    {
      if (!FIUIWorkoutSupportsDistanceMetricForGoalDisplay(v1) || v13 <= 2.22044605e-16)
      {
        v14 = [v1 totalEnergyBurned];
        v15 = v14 == 0;

        v7 = 2 * v15;
        goto LABEL_14;
      }

LABEL_10:
      v7 = 1;
    }
  }

  else
  {
    if (v13 > 2.22044605e-16)
    {
      goto LABEL_10;
    }

    [v1 duration];
    if (v16 <= 2.22044605e-16)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

LABEL_14:

  return v7;
}

void __getCMCalorieUserInfoClass_block_invoke(uint64_t a1)
{
  CoreMotionLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CMCalorieUserInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCMCalorieUserInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCMCalorieUserInfoClass_block_invoke_cold_1();
    CoreMotionLibrary();
  }
}

void CoreMotionLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreMotionLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E878C3D8;
    v3 = 0;
    CoreMotionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreMotionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMotionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCMNatalimeterClass_block_invoke(uint64_t a1)
{
  CoreMotionLibrary();
  result = objc_getClass("CMNatalimeter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCMNatalimeterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCMNatalimeterClass_block_invoke_cold_1();
    return __getCNContactStoreClass_block_invoke(v3);
  }

  return result;
}

Class __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContactStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNContactStoreClass_block_invoke_cold_1();
    return ContactsLibrary();
  }

  return result;
}

uint64_t ContactsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E878C410;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNContactFormatterClass_block_invoke_cold_1();
    return __getCNContactNicknameKeySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getIntlUtilityClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntlPreferencesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E878C428;
    v6 = 0;
    IntlPreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (IntlPreferencesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IntlUtility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIntlUtilityClass_block_invoke_cold_1();
  }

  getIntlUtilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntlPreferencesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntlPreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

id _NoDataLabel()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [v0 setFont:v1];

  [v0 setLineBreakMode:0];
  [v0 setNumberOfLines:0];

  return v0;
}

double FIUIZoneDefaultPaceForDistanceUnit(uint64_t a1)
{
  result = 330.0;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (a1 == 3)
  {
    return 540.0;
  }

  return result;
}

double FIUIZoneMinPaceForDistanceUnit(uint64_t a1)
{
  result = 180.0;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (a1 == 3)
  {
    return 300.0;
  }

  return result;
}

double FIUIZoneMaxPaceForDistanceUnit(uint64_t a1)
{
  result = 450.0;
  if (a1 != 2)
  {
    result = 0.0;
  }

  if (a1 == 3)
  {
    return 720.0;
  }

  return result;
}

double FIUIZoneMinPaceRangeForDistanceUnit(uint64_t a1)
{
  result = 0.0;
  if (a1 == 2)
  {
    result = 20.0;
  }

  if (a1 == 3)
  {
    return 30.0;
  }

  return result;
}

id FIUIValidActivityTypesForPaceAlarms()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [FIUIWorkoutActivityType activityTypeWithHKWorkoutActivityTypeIdentifier:37 isIndoor:0 metadata:MEMORY[0x1E695E0F8]];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

void sub_1E5D2F2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E5D2F4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FIUIWorkoutImageOnPill(void *a1, uint64_t a2, double a3)
{
  v4 = FIUIStaticWorkoutIconImage(a1, a2);
  [v4 size];
  v6 = v5 + a3 * 2.0;
  v7 = [MEMORY[0x1E69DC888] colorWithRed:0.847058824 green:1.0 blue:0.0 alpha:1.0];
  v8 = [MEMORY[0x1E69DC888] colorWithRed:0.6 green:1.0 blue:0.0 alpha:1.0];
  v9 = FIUICircularGradientImage(v7, v8, v6);
  v17.width = v6;
  v17.height = v6;
  UIGraphicsBeginImageContextWithOptions(v17, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  [v9 drawInRect:{0.0, 0.0, v6, v6}];
  [v4 size];
  v12 = v11;
  [v4 size];
  [v4 drawInRect:{a3, a3, v12, v13}];
  CGContextRestoreGState(CurrentContext);
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

id FIUIStaticScalableWorkoutIconImageWithPadding(void *a1, int a2)
{
  v3 = _activityTypePrefix(a1);
  v4 = @"NoPadding";
  if (a2)
  {
    v4 = &stru_1F5F88F90;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v3, v4];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = _fitnessUIBundle();
  v8 = [v6 imageNamed:v5 inBundle:v7];

  return v8;
}

double FIUISizeForIconSize(uint64_t a1)
{
  result = 24.0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return 31.0;
      }

      else
      {
        return 35.0;
      }
    }

    else
    {
      v2 = 28.0;
      if (a1 != 2)
      {
        v2 = 24.0;
      }

      if (a1 == 1)
      {
        return 26.0;
      }

      else
      {
        return v2;
      }
    }
  }

  if ((a1 - 6) < 2)
  {
    return 56.0;
  }

  if (a1 == 5)
  {
    return 42.0;
  }

  if (a1 == 8)
  {
    return *MEMORY[0x1E695F060];
  }

  return result;
}

__CFString *FIUIWorkoutIconSizeDescription(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"extra extra small";
  }

  else
  {
    return off_1E878C548[a1 - 1];
  }
}

id _kilocalorieUnit()
{
  if (_kilocalorieUnit_onceToken != -1)
  {
    _kilocalorieUnit_cold_1();
  }

  v1 = _kilocalorieUnit_kilocalorieUnit;

  return v1;
}

uint64_t ___kilocalorieUnit_block_invoke()
{
  _kilocalorieUnit_kilocalorieUnit = [MEMORY[0x1E696C510] kilocalorieUnit];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t FIUIDeepBreathingShouldOptimizePetalCount()
{
  if (FIUIDeepBreathingShouldOptimizePetalCount_onceToken != -1)
  {
    FIUIDeepBreathingShouldOptimizePetalCount_cold_1();
  }

  return FIUIDeepBreathingShouldOptimizePetalCount___shouldOptimize;
}

uint64_t __FIUIDeepBreathingShouldOptimizePetalCount_block_invoke()
{
  result = MGGetBoolAnswer();
  FIUIDeepBreathingShouldOptimizePetalCount___shouldOptimize = result;
  return result;
}

CFIndex FIUIDeepBreathingSelectedHapticLevel()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"HapticLevel", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 2;
  }

  return result;
}

double FIUIDeepBreathingBreathsPerMinute()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"BreathRate", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 7.0;
  }

  return result;
}

uint64_t FIUIDeepBreathingSessionMinutesDefault()
{
  *keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"DefaultSessionMinutes", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat[1]);
  v1 = CFPreferencesGetAppIntegerValue(@"UseLastDuration", @"com.apple.DeepBreathing", keyExistsAndHasValidFormat);
  if (AppIntegerValue <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = AppIntegerValue;
  }

  if (!v1)
  {
    v2 = 1;
  }

  if (keyExistsAndHasValidFormat[0])
  {
    v3 = keyExistsAndHasValidFormat[1] == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

double FIUIDeepBreathingInhaleExhaleRatio()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 0.666666667;
  }

  return result;
}

double FIUIDeepBreathingInhaleBreathFraction()
{
  keyExistsAndHasValidFormat = 0;
  result = 1.0 - 1.0 / (CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) + 1.0);
  if (!keyExistsAndHasValidFormat)
  {
    return 0.4;
  }

  return result;
}

double FIUIDeepBreathingInhaleDuration(double a1)
{
  keyExistsAndHasValidFormat = 0;
  v1 = 60.0 / a1;
  v2 = 1.0 - 1.0 / (CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) + 1.0);
  if (!keyExistsAndHasValidFormat)
  {
    v2 = 0.4;
  }

  return v1 * v2;
}

double FIUIDeepBreathingExhaleDuration(double a1)
{
  keyExistsAndHasValidFormat = 0;
  v1 = 60.0 / a1;
  v2 = 1.0 / (CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) + 1.0) + -1.0 + 1.0;
  if (!keyExistsAndHasValidFormat)
  {
    v2 = 0.6;
  }

  return v1 * v2;
}

double FIUIDeepBreathingOnRampInhaleDuration()
{
  keyExistsAndHasValidFormat = 0;
  result = (1.0 - 1.0 / (CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) + 1.0)) * 5.0;
  if (!keyExistsAndHasValidFormat)
  {
    return 2.0;
  }

  return result;
}

double FIUIDeepBreathingOnRampExhaleDuration()
{
  keyExistsAndHasValidFormat = 0;
  result = (1.0 / (CFPreferencesGetAppIntegerValue(@"InhaleExhaleRatio", @"com.apple.DeepBreathing", &keyExistsAndHasValidFormat) + 1.0) + -1.0 + 1.0) * 5.0;
  if (!keyExistsAndHasValidFormat)
  {
    return 3.0;
  }

  return result;
}

double FIUIDeepBreathingPetalCenter(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v5 = 6.28318531 / a3 * a1;
  v6 = -v5;
  if (!a2)
  {
    v6 = v5;
  }

  return __sincos_stret(v6 + a5).__sinval * a4;
}

id _FIUIImageForPetalColor(uint64_t a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6979380] layer];
  [v2 setFrame:{0.0, 0.0, 750.0, 20.0}];
  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  v3 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        v4 = [MEMORY[0x1E69DC888] colorWithRed:0.203921569 green:0.22745098 blue:0.670588235 alpha:1.0];
        v12 = MEMORY[0x1E69DC888];
        v14 = 0.482352941;
        v15 = 0.0431372549;
        v13 = 0.0;
        goto LABEL_20;
      }

      v4 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.980392157 blue:0.0 alpha:1.0];
      v12 = MEMORY[0x1E69DC888];
      v14 = 0.819607843;
      v13 = 0.305882353;
    }

    else
    {
      if (!a1)
      {
        v4 = [MEMORY[0x1E69DC888] colorWithRed:0.254901961 green:0.631372549 blue:0.690196078 alpha:1.0];
        v12 = MEMORY[0x1E69DC888];
        v14 = 0.411764706;
        v13 = 0.850980392;
        v15 = 0.62745098;
        goto LABEL_20;
      }

      v4 = 0;
      if (a1 != 1)
      {
        goto LABEL_23;
      }

      v4 = [MEMORY[0x1E69DC888] colorWithRed:0.729411765 green:0.0 blue:1.0 alpha:1.0];
      v12 = MEMORY[0x1E69DC888];
      v13 = 0.619607843;
      v14 = 1.0;
    }

    v15 = 0.0;
    goto LABEL_20;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      v16 = [MEMORY[0x1E6989B18] energyColors];
      v4 = [v16 gradientDarkColor];

      v17 = [MEMORY[0x1E6989B18] energyColors];
LABEL_22:
      v20 = v17;
      v3 = [v17 gradientLightColor];

      goto LABEL_23;
    }

    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.00392156863 green:0.392156863 blue:0.031372549 alpha:1.0];
    v12 = MEMORY[0x1E69DC888];
    v13 = 0.658823529;
    v15 = 0.333333333;
    v14 = 1.0;
LABEL_20:
    v3 = [v12 colorWithRed:v14 green:v13 blue:v15 alpha:1.0];
    goto LABEL_23;
  }

  if (a1 == 6)
  {
    v18 = [MEMORY[0x1E6989B18] briskColors];
    v4 = [v18 gradientDarkColor];

    v17 = [MEMORY[0x1E6989B18] briskColors];
    goto LABEL_22;
  }

  if (a1 == 7)
  {
    v19 = [MEMORY[0x1E6989B18] sedentaryColors];
    v4 = [v19 gradientDarkColor];

    v17 = [MEMORY[0x1E6989B18] sedentaryColors];
    goto LABEL_22;
  }

  v4 = 0;
  if (a1 == 8)
  {
    v4 = [MEMORY[0x1E69DC888] redColor];
    v3 = [MEMORY[0x1E69DC888] purpleColor];
    v5 = [MEMORY[0x1E69DC888] redColor];
    v32[0] = [v5 CGColor];
    v6 = [MEMORY[0x1E69DC888] orangeColor];
    v32[1] = [v6 CGColor];
    v7 = [MEMORY[0x1E69DC888] yellowColor];
    v32[2] = [v7 CGColor];
    v8 = [MEMORY[0x1E69DC888] greenColor];
    v32[3] = [v8 CGColor];
    v9 = [MEMORY[0x1E69DC888] blueColor];
    v32[4] = [v9 CGColor];
    v10 = [MEMORY[0x1E69DC888] purpleColor];
    v32[5] = [v10 CGColor];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];
    [v2 setColors:v11];

    [v2 setLocations:&unk_1F5F9B250];
    goto LABEL_24;
  }

LABEL_23:
  [v2 setLocations:&unk_1F5F9B238];
  v33[0] = [v4 CGColor];
  v33[1] = [v3 CGColor];
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  [v2 setColors:v21];

LABEL_24:
  v22 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v22 setScale:1.0];
  [v22 setOpaque:1];
  [v22 setPreferredRange:-1];
  v23 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v2 frame];
  v26 = [v23 initWithSize:v22 format:{v24, v25}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = ___FIUIImageForPetalColor_block_invoke;
  v30[3] = &unk_1E878C5A0;
  v31 = v2;
  v27 = v2;
  v28 = [v26 imageWithActions:v30];

  return v28;
}

id FIUIDeepBreathingGradientImageDataForPetalColor(uint64_t a1)
{
  v1 = _FIUIImageForPetalColor(a1);
  v2 = UIImagePNGRepresentation(v1);

  return v2;
}

id GetFormatAndHourFieldRangesFor_ha(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = MEMORY[0x1E696AB78];
  v6 = a1;
  v7 = [v5 dateFormatFromTemplate:@"ha" options:0 locale:v6];
  v8 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"h" options:0 locale:v6];
  v9 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"a" options:0 locale:v6];

  v10 = _GetModifiedFormatFromFormat(v7);
  v11 = _GetModifiedFormatFromFormat(v8);
  v12 = _GetModifiedFormatFromFormat(v9);
  v13 = [v10 rangeOfString:v11];
  *a2 = v13;
  a2[1] = v14;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v10 rangeOfString:@"h"];
    *a2 = v15;
    a2[1] = v16;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a2 = [v10 rangeOfString:@"hh"];
      a2[1] = v17;
    }
  }

  v18 = [v10 rangeOfString:v12];
  *a3 = v18;
  a3[1] = v19;
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = [v10 rangeOfString:@"a"];
    a3[1] = v20;
  }

  return v7;
}

id _GetModifiedFormatFromFormat(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] stringWithCapacity:10];
  [v2 insertString:v1 atIndex:0];
  v3 = [v2 length];
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 & 0x7FFFFFFF;
    do
    {
      v7 = [v2 characterAtIndex:v4];
      if (v7 == 39)
      {
        v5 ^= 1u;
      }

      else if ((v7 - 65) <= 0x39 && (v5 & 1) != 0 && (v7 - 97) <= 0xFFFFFFF9)
      {
        v10 = v7 - 8257;
        v5 = 1;
        v8 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
        [v2 replaceCharactersInRange:v4 withString:{1, v8}];
      }

      ++v4;
    }

    while (v6 != v4);
  }

  return v2;
}

id GetFormatAndDateFieldRangesFor_yMMMMd(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = MEMORY[0x1E696AB78];
  v8 = a1;
  v9 = [v7 dateFormatFromTemplate:@"yMMMMd" options:0 locale:v8];
  v10 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"y" options:0 locale:v8];
  v11 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMMM" options:0 locale:v8];
  v12 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"d" options:0 locale:v8];

  v41 = v9;
  v13 = _GetModifiedFormatFromFormat(v9);
  v39 = v10;
  v14 = _GetModifiedFormatFromFormat(v10);
  v15 = _GetModifiedFormatFromFormat(v11);
  v16 = _GetModifiedFormatFromFormat(v12);
  v17 = [v13 rangeOfString:v14];
  *a2 = v17;
  a2[1] = v18;
  if (v17 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v13 rangeOfString:{@"yyyy", v39}];
    *a2 = v19;
    a2[1] = v20;
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [v13 rangeOfString:@"yy"];
      *a2 = v21;
      a2[1] = v22;
      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        *a2 = [v13 rangeOfString:@"y"];
        a2[1] = v23;
      }
    }
  }

  v24 = [v13 rangeOfString:{v15, v39}];
  *a3 = v24;
  a3[1] = v25;
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [v15 length];
    if ([v15 replaceOccurrencesOfString:@"MMMM" withString:@"LLLL" options:0 range:{0, v26}] || objc_msgSend(v15, "replaceOccurrencesOfString:withString:options:range:", @"LLLL", @"MMMM", 0, 0, v26))
    {
      v27 = [v13 rangeOfString:v15];
      *a3 = v27;
      a3[1] = v28;
    }

    else
    {
      v27 = *a3;
    }

    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [v13 rangeOfString:@"MMMM"];
      *a3 = v29;
      a3[1] = v30;
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = [v13 rangeOfString:@"LLLL"];
        *a3 = v31;
        a3[1] = v32;
        if (v31 == 0x7FFFFFFFFFFFFFFFLL)
        {
          *a3 = [v13 rangeOfString:@"M月"];
          a3[1] = v33;
        }
      }
    }
  }

  v34 = [v13 rangeOfString:v16];
  *a4 = v34;
  a4[1] = v35;
  if (v34 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = [v13 rangeOfString:@"dd"];
    a4[1] = v36;
    if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *a4 = [v13 rangeOfString:@"d"];
      a4[1] = v37;
    }
  }

  return v41;
}

uint64_t FIUIPaceFormatForWorkoutActivityType(void *a1)
{
  v1 = [a1 workoutActivityType];
  v2 = FIPaceFormatForWorkoutActivityType();

  return v2;
}

uint64_t HKWorkoutMetricTypeAccessibilityLocalizedName(uint64_t a1)
{
  v2 = FIIsWorkoutTypePedestrianActivity();

  return MEMORY[0x1EEE047F0](a1, v2);
}

__CFString *FIUIHKWorkoutGoalTypeDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INVALID_IDENTIFIER(%lu)", a1];
  }

  else
  {
    v2 = off_1E878C6C0[a1];
  }

  return v2;
}

uint64_t FIUISelectedPaceMetricType()
{
  if (FIUIShowAveragePace())
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

id _KeyValueStringFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v3 = [v1 allKeys];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_429];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = ___KeyValueStringFromDictionary_block_invoke_2;
  v12 = &unk_1E878C6A0;
  v13 = v2;
  v14 = v1;
  v5 = v1;
  v6 = v2;
  [v4 enumerateObjectsUsingBlock:&v9];

  v7 = [v6 componentsJoinedByString:{@" ", v9, v10, v11, v12}];

  return v7;
}

void sub_1E5D36320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id FUArraySmallestValue(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v4 || [*(*(&v10 + 1) + 8 * i) compare:v4] == -1)
        {
          v8 = v7;

          v4 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id FUArrayLargestValue(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (!v4 || [*(*(&v10 + 1) + 8 * i) compare:v4] == 1)
        {
          v8 = v7;

          v4 = v8;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _Font()
{
  if (_Font_onceToken != -1)
  {
    _Font_cold_1();
  }

  v1 = _Font_font;

  return v1;
}

void sub_1E5D3D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a71);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3DCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3DE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3E9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3EB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E5D3EE5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1E5D40010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

double FIUIChartRelativePosition(double a1, double a2, double a3)
{
  v3 = a3 - a2;
  if (v3 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return (a1 - a2) / v3;
  }
}

double FIUIChartRelativePositionForYPlaneValue(double a1, double a2, double a3)
{
  v3 = a2 - a3;
  if (v3 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return (a1 - a3) / v3;
  }
}

double FIUIChartAbsolutePositionForYPlaneValue(void *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = a1;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetHeight(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetMinY(v15);
  UIRoundToViewScale();
  v12 = v11;

  return v12;
}

double FIUIChartRelativePositionForXPlaneValue(double a1, double a2, double a3)
{
  v3 = a3 - a2;
  if (v3 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return (a1 - a2) / v3;
  }
}

double FIUIChartAbsolutePositionForXPlaneValue(void *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = a1;
  v14.origin.x = a3;
  v14.origin.y = a4;
  v14.size.width = a5;
  v14.size.height = a6;
  CGRectGetWidth(v14);
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  CGRectGetMinX(v15);
  UIRoundToViewScale();
  v12 = v11;

  return v12;
}

uint64_t _FIUICPTimeFormatIs24HourMode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = get_CPTimeFormatIs24HourModeSymbolLoc_ptr;
  v8 = get_CPTimeFormatIs24HourModeSymbolLoc_ptr;
  if (!get_CPTimeFormatIs24HourModeSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __get_CPTimeFormatIs24HourModeSymbolLoc_block_invoke;
    v4[3] = &unk_1E878C3B8;
    v4[4] = &v5;
    __get_CPTimeFormatIs24HourModeSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    _FIUIUserContactFromAddressBook_cold_1();
    v3 = v2;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

BOOL _ZeroDateComponents(void *a1)
{
  v1 = a1;
  v2 = (![v1 second] || objc_msgSend(v1, "second") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "minute") || objc_msgSend(v1, "minute") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "hour") || objc_msgSend(v1, "hour") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "day") || objc_msgSend(v1, "day") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "weekOfYear") || objc_msgSend(v1, "weekOfYear") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "month") || objc_msgSend(v1, "month") == 0x7FFFFFFFFFFFFFFFLL) && (!objc_msgSend(v1, "year") || objc_msgSend(v1, "year") == 0x7FFFFFFFFFFFFFFFLL);

  return v2;
}

uint64_t __AppSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *NLWorkoutSplitStorageTypeString(uint64_t a1)
{
  v1 = @"NLWorkoutSplitsTypeNone";
  if (a1 == 1)
  {
    v1 = @"NLWorkoutSplitsTypeDistance";
  }

  if (a1 == 2)
  {
    return @"NLWorkoutSplitsTypeTime";
  }

  else
  {
    return v1;
  }
}

id _FIUIOutdoorRunningAveragePaceSettings()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 4];
  v7[0] = v0;
  v8[0] = MEMORY[0x1E695E110];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 8];
  v7[1] = v1;
  v8[1] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5[0] = @"EnabledMetrics";
  v5[1] = @"MetricSettingOverrides";
  v6[0] = &unk_1F5F9B268;
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id _FIUIMigratedPaceSettingForActivityIfNeeded(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:v3];
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B9A8];
  v6 = os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Not migrating pace settings for activity key %{public}@ - user setting exists", &v10, 0xCu);
    }

    v7 = v4;
  }

  else
  {
    if (v6)
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1E5D0F000, v5, OS_LOG_TYPE_DEFAULT, "[NanoHealthDataMigrator] Migrating pace settings for activity key %{public}@", &v10, 0xCu);
    }

    v7 = _FIUIOutdoorRunningAveragePaceSettings();
  }

  v8 = v7;

  return v8;
}

id _FIUIMigratedPaceSettings(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 mutableCopy];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 37];
  v18[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = _FIUIMigratedPaceSettingForActivityIfNeeded(v1, v10);
        if (v11)
        {
          [v2 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v2;
}

double FIUICalculateBMR(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v11 = MEMORY[0x1E696C510];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = [v11 gramUnitWithMetricPrefix:9];
  [v15 doubleValueForUnit:v16];
  v18 = v17;

  v19 = [MEMORY[0x1E696C510] gramUnitWithMetricPrefix:9];
  [v14 doubleValueForUnit:v19];
  v21 = v20;

  v22 = [MEMORY[0x1E696C510] meterUnitWithMetricPrefix:5];
  [v13 doubleValueForUnit:v22];
  v24 = v23;

  v25 = FIAgeInYearsForDateOfBirth();

  return _FIUICalculateBMR(a1, v25, a6, v18, v21, v24, 1.0);
}

id FIUIActivityLevelsForBMR(void *a1, double a2)
{
  v3 = MEMORY[0x1E696C608];
  v4 = a1;
  v5 = [v3 sharedBehavior];
  v6 = FIUIActivityLevelsForBMRAndIsStandalonePhoneFitnessMode([v5 isStandalonePhoneFitnessMode], v4, a2);

  return v6;
}

id FIUIActivityLevelsForBMRAndIsStandalonePhoneFitnessMode(int a1, void *a2, double a3)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = a3 * 0.2;
  v4 = a3 * 0.375;
  v5 = a3 * 0.55;
  v6 = a3 <= 0.0;
  v7 = 300.0;
  if (!v6)
  {
    v7 = v3;
  }

  v8 = 600.0;
  if (!v6)
  {
    v8 = v4;
  }

  v9 = 900.0;
  if (!v6)
  {
    v9 = v5;
  }

  if (a1)
  {
    v10 = v7 * 0.4;
  }

  else
  {
    v10 = v7;
  }

  if (a1)
  {
    v11 = v8 * 0.4;
  }

  else
  {
    v11 = v8;
  }

  if (a1)
  {
    v12 = v9 * 0.4;
  }

  else
  {
    v12 = v9;
  }

  v13 = a2;
  [v13 roundedDailyMoveGoalForCalories:v10];
  v15 = _QuantityWithCalories(v14);
  [v13 roundedDailyMoveGoalForCalories:{v11, v15}];
  v17 = _QuantityWithCalories(v16);
  v23[1] = v17;
  [v13 roundedDailyMoveGoalForCalories:v12];
  v19 = v18;

  v20 = _QuantityWithCalories(v19);
  v23[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];

  return v21;
}

id _QuantityWithCalories(double a1)
{
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:a1];

  return v4;
}

id FIUIActivityLevelsForFitnessJr(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = MEMORY[0x1E696C608];
  v12 = a1;
  v13 = [v11 sharedBehavior];
  v14 = FIUIActivityLevelsForFitnessJrAndIsStandalonePhoneFitnessMode([v13 isStandalonePhoneFitnessMode], v12, a2, a3, a4, a5, a6);

  return v14;
}

id FIUIActivityLevelsForFitnessJrAndIsStandalonePhoneFitnessMode(int a1, void *a2, double a3, double a4, double a5, double a6, double a7)
{
  v41[3] = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E6963490];
  v14 = a2;
  v15 = [[v13 alloc] initWithAge:a3 gender:a7 height:a6 weight:a5 condition:a4];
  v40 = 0;
  v16 = [MEMORY[0x1E69634A0] recommendedMoveMinutesForLevel:0 userInfo:v15 error:&v40];
  v17 = v40;
  v18 = v16;
  v39 = v17;
  v19 = [MEMORY[0x1E69634A0] recommendedMoveMinutesForLevel:1 userInfo:v15 error:&v39];
  v20 = v39;

  v21 = v19;
  v38 = v20;
  v22 = [MEMORY[0x1E69634A0] recommendedMoveMinutesForLevel:2 userInfo:v15 error:&v38];
  v23 = v38;

  v24 = v18 * 0.4;
  v25 = v21 * 0.4;
  if (a1)
  {
    v26 = v18 * 0.4;
  }

  else
  {
    v26 = v18;
  }

  if (a1)
  {
    v27 = v21 * 0.4;
  }

  else
  {
    v27 = v21;
  }

  if (a1)
  {
    v28 = v22 * 0.4;
  }

  else
  {
    v28 = v22;
  }

  [v14 roundedDailyMoveGoalForMoveMinutes:{v26, v22, v24, v25, v22 * 0.4}];
  v30 = _QuantityWithMoveMinutes(v29);
  v41[0] = v30;
  [v14 roundedDailyMoveGoalForMoveMinutes:v27];
  v32 = _QuantityWithMoveMinutes(v31);
  v41[1] = v32;
  [v14 roundedDailyMoveGoalForMoveMinutes:v28];
  v34 = v33;

  v35 = _QuantityWithMoveMinutes(v34);
  v41[2] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];

  return v36;
}

id _QuantityWithMoveMinutes(unint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696C348];
  v3 = [MEMORY[0x1E696C510] minuteUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:v1];

  return v4;
}

double FIUIMininumMoveGoalInUserUnit(void *a1)
{
  v1 = [a1 userActiveEnergyBurnedUnit];
  v2 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v3 = [v1 isEqual:v2];

  result = 20.0;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

double FIUIMaximumMoveGoalInUserUnit(void *a1)
{
  v1 = [a1 userActiveEnergyBurnedUnit];
  v2 = [MEMORY[0x1E696C510] kilocalorieUnit];
  v3 = v1 == v2;

  return dbl_1E5DB2020[v3];
}

double FIUIMoveGoalValueIncrementInUserUnit(void *a1)
{
  v1 = [a1 userActiveEnergyBurnedUnit];
  v2 = [MEMORY[0x1E696C510] kilocalorieUnit];

  result = 20.0;
  if (v1 == v2)
  {
    return 10.0;
  }

  return result;
}

id _FIUIComputeAttributesToFitStrings(void *a1, void *a2, char a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v47 = a1;
  v16 = a2;
  [v16 pointSize];
  v18 = v17;
  if (a3)
  {
    v19 = 1.79769313e308;
    v20 = 3;
    v21 = a9;
  }

  else
  {
    [v16 lineHeight];
    v19 = v22;
    v20 = 0;
    v21 = 1.79769313e308;
  }

  v23 = 0;
  v48 = *MEMORY[0x1E69DB648];
  v49 = *MEMORY[0x1E69DB660];
  v24 = 0.0;
  v44 = a7;
LABEL_5:
  v25 = v24 - a7;
  do
  {
    v26 = v23;
    v57[0] = v48;
    v27 = [v16 fu_fontWithSize:v18];
    v57[1] = v49;
    v58[0] = v27;
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    v58[1] = v28;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v47;
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (!v30)
    {
      v39 = v29;
      goto LABEL_29;
    }

    v31 = v30;
    v32 = v16;
    v33 = *v51;
    v34 = 1;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v29);
        }

        [*(*(&v50 + 1) + 8 * i) boundingRectWithSize:v20 options:v23 attributes:0 context:{v21, v19}];
        if (ceil(v37) <= a10)
        {
          v38 = 1;
        }

        else
        {
          v38 = a3 ^ 1;
        }

        if (a3)
        {
          v34 &= v38;
        }

        else if (ceil(v36) > a9)
        {
          v34 = 0;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v31);

    if (v34)
    {
      v16 = v32;
      goto LABEL_30;
    }

    v16 = v32;
    if (v25 >= a6)
    {
      v24 = v25;
      a7 = v44;
      goto LABEL_5;
    }

    v18 = v18 * a8;
  }

  while (v18 >= a5);
  if (!a4)
  {
    goto LABEL_30;
  }

  v54[0] = v48;
  v39 = [v32 fu_fontWithSize:a5];
  v54[1] = v49;
  v55[0] = v39;
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
  v55[1] = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:2];

  v23 = v41;
LABEL_29:

LABEL_30:

  return v23;
}

double _FUFractionOfSampleInInterval(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AB80];
  v5 = a1;
  v6 = [v4 alloc];
  v7 = [v5 startDate];
  v8 = [v5 endDate];

  v9 = [v6 initWithStartDate:v7 endDate:v8];
  [v9 duration];
  v11 = 0.0;
  if (fabs(v10) >= 2.22044605e-16)
  {
    v12 = [v9 intersectionWithDateInterval:v3];
    [v12 duration];
    v14 = v13;
    [v9 duration];
    v11 = v14 / v15;
  }

  return v11;
}

id FUInterpolateQuantitySamplesOverDateIntervals(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v19 = v3;
  if ([v3 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v3 firstObject];
    v7 = [v6 quantity];
    v8 = [v7 _unit];

    if ([v4 count])
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x1E696C348] quantityWithUnit:v8 doubleValue:0.0];
        [v5 addObject:v10];

        ++v9;
      }

      while (v9 < [v4 count]);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v19;
    v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v26[0] = 0;
          v26[1] = v26;
          v26[2] = 0x2020000000;
          v26[3] = 0;
          v15 = [v14 quantity];
          [v15 doubleValueForUnit:v8];
          v17 = v16;

          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __FUInterpolateQuantitySamplesOverDateIntervals_block_invoke;
          v21[3] = &unk_1E878CBB0;
          v21[4] = v14;
          v24 = v26;
          v22 = v5;
          v25 = v17;
          v23 = v8;
          [v4 enumerateObjectsUsingBlock:v21];

          _Block_object_dispose(v26, 8);
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void sub_1E5D4BC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FUInterpolateQuantitySamplesOverDateIntervals_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = _FUFractionOfSampleInInterval(*(a1 + 32), a2);
  *(*(*(a1 + 56) + 8) + 24) = v7 + *(*(*(a1 + 56) + 8) + 24);
  if (v7 > 0.0)
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    v9 = [MEMORY[0x1E696C348] quantityWithUnit:*(a1 + 48) doubleValue:v7 * *(a1 + 64)];
    v10 = [v8 _quantityByAddingQuantity:v9];

    [*(a1 + 40) setObject:v10 atIndexedSubscript:a3];
  }

  if (*(*(*(a1 + 56) + 8) + 24) > 1.0)
  {
    *a4 = 1;
  }
}

void FIUIStateMachineSetDiagnosticAndErrorHandler(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __FIUIStateMachineSetDiagnosticAndErrorHandler_block_invoke;
  v15[3] = &unk_1E878CC68;
  v7 = v6;
  v17 = v7;
  v8 = v5;
  v16 = v8;
  v9 = a1;
  [v9 setDiagnosticHandler:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __FIUIStateMachineSetDiagnosticAndErrorHandler_block_invoke_293;
  v12[3] = &unk_1E878CC90;
  v13 = v8;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  [v9 setErrorHandler:v12];
}

void __FIUIStateMachineSetDiagnosticAndErrorHandler_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  _HKInitializeLogging();
  v10 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v7 label];
    v13 = (*(*(a1 + 40) + 16))();
    v14 = [v8 label];
    v15 = [v9 label];
    v16 = *(a1 + 32);
    v17 = 138413314;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_1E5D0F000, v11, OS_LOG_TYPE_DEFAULT, "%@: %@ ! %@ -> %@ %@", &v17, 0x34u);
  }
}

void __FIUIStateMachineSetDiagnosticAndErrorHandler_block_invoke_293(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v5 label];
    v10 = (*(*(a1 + 40) + 16))();
    v11 = [v6 label];
    v12 = *(a1 + 32);
    v13 = 138413058;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_1E5D0F000, v8, OS_LOG_TYPE_DEFAULT, "%@: Invalid event %@ for state %@ %@", &v13, 0x2Au);
  }
}

id FIUIStateMachineLabel(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = FIUILastFourCharactersOfUUID(a2);
  v6 = [v3 stringWithFormat:@"%@_%@", v4, v5];

  return v6;
}

__CFString *NLWorkoutTargetZoneTypeString(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E878CD18[a1];
  }
}

__CFString *NLWorkoutTargetZoneMasterTypeString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E878CDD0[a1];
  }
}

__CFString *NLWorkoutTargetZoneStateString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E878CDF0[a1];
  }
}

void sub_1E5D52100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1E5D55DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1E5D55EDC(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3E8);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E5D55EDC((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1E5D55EDC(char *a1, int64_t a2, char a3)
{
  result = sub_1E5D55EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E5D55EFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_1E5D55FFC(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_1E5DA853C();
  v74 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3D0);
  v6 = (MEMORY[0x1EEE9AC00])();
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v56 - v8;
  v9 = sub_1E5DA83DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v56 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - v20;
  v62 = sub_1E5DA854C();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DA852C();
  sub_1E5DA83CC();
  v72 = v21;
  v78 = v23;
  v24 = v10;
  sub_1E5DA84BC();
  v25 = *(v10 + 8);
  v79 = v9;
  v68 = v25;
  v69 = v10 + 8;
  result = v25(v19, v9);
  v27 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v28 = *(a1 + 16);
  if (v28)
  {
    v58 = v13;
    v29 = 0;
    v76 = *MEMORY[0x1E6969A88];
    v30 = v74++;
    v75 = (v30 + 13);
    v73 = (v24 + 48);
    v65 = v5;
    v66 = (v24 + 32);
    v31 = a1 + 40;
    v64 = v16;
    v71 = v28;
    v57 = a1 + 40;
    while (1)
    {
      v60 = v27;
      v32 = (v31 + 16 * v29);
      v33 = v29;
      while (1)
      {
        if (v33 >= v28)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_20;
        }

        if ((*v32 & 1) == 0)
        {
          break;
        }

LABEL_5:
        ++v33;
        v32 += 2;
        if (v34 == v28)
        {
          v27 = v60;
          goto LABEL_18;
        }
      }

      v35 = *(v32 - 1);
      v36 = *v75;
      result = (*v75)(v5, v76, v3);
      if ((v33 * 30) >> 64 != (30 * v33) >> 63)
      {
        goto LABEL_21;
      }

      v37 = v77;
      sub_1E5DA850C();
      v38 = *v74;
      (*v74)(v5, v3);
      v39 = *v73;
      if ((*v73)(v37, 1, v79) == 1)
      {
        goto LABEL_4;
      }

      v70 = v33 + 1;
      v40 = v79;
      v41 = v64;
      v63 = *v66;
      v63(v64, v77, v79);
      v36(v5, v76, v3);
      v42 = v67;
      v43 = v41;
      sub_1E5DA850C();
      v44 = v5;
      v45 = v40;
      v46 = v42;
      v47 = v3;
      v38(v44, v3);
      if (v39(v46, 1, v40) == 1)
      {
        break;
      }

      v48 = v58;
      v63(v58, v46, v40);
      v49 = objc_allocWithZone(MEMORY[0x1E696C5D8]);
      v50 = sub_1E5DA83AC();
      v51 = sub_1E5DA83AC();
      v52 = [v49 initWithStartDate:v50 endDate:v51];

      v53 = [objc_opt_self() quantityWithUnit:v59 doubleValue:v35];
      [v52 setQuantityValue_];

      v54 = v68;
      v68(v48, v45);
      v55 = v54(v43, v45);
      MEMORY[0x1E693CF00](v55);
      v29 = v70;
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E5DA924C();
      }

      result = sub_1E5DA925C();
      v27 = v80;
      v28 = v71;
      v3 = v47;
      v5 = v65;
      v31 = v57;
      if (v29 == v71)
      {
        goto LABEL_18;
      }
    }

    v68(v43, v40);
    v37 = v46;
    v5 = v65;
    v34 = v70;
LABEL_4:
    result = sub_1E5D56DB0(v37);
    v28 = v71;
    goto LABEL_5;
  }

LABEL_18:
  v68(v72, v79);
  (*(v61 + 8))(v78, v62);
  return v27;
}

uint64_t sub_1E5D566B4(uint64_t a1)
{
  v44 = sub_1E5DA853C();
  v2 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1E5DA83DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = sub_1E5DA854C();
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DA852C();
  sub_1E5DA83CC();
  v45 = v18;
  v46 = v15;
  sub_1E5DA84BC();
  v19 = v7;
  v37 = *(v8 + 8);
  v38 = v8 + 8;
  result = v37(v13, v7);
  v47 = MEMORY[0x1E69E7CC0];
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v41 = a1 + 32;
    v40 = *MEMORY[0x1E6969A58];
    v39 = (v2 + 104);
    v23 = (v2 + 8);
    v24 = (v8 + 48);
    v36 = (v8 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v25 = v43;
    while (1)
    {
      v26 = v22;
      while (1)
      {
        if (v26 >= v21)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v22 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_23;
        }

        v27 = *(v41 + 8 * v26);
        v28 = v44;
        (*v39)(v25, v40, v44);
        v29 = v19;
        sub_1E5DA850C();
        (*v23)(v25, v28);
        if ((*v24)(v6, 1, v19) == 1)
        {
          result = sub_1E5D56DB0(v6);
          goto LABEL_5;
        }

        (*v36)(v42, v6, v19);
        sub_1E5DA836C();
        if (v27 == 1.0)
        {
          v31 = 0;
        }

        else
        {
          if (v27 != 2.0)
          {
            result = v37(v42, v19);
            goto LABEL_5;
          }

          v31 = 1;
        }

        v32 = [objc_allocWithZone(MEMORY[0x1E696C5F0]) initWithTimeStamp:v31 state:v30];
        v19 = v29;
        result = v37(v42, v29);
        if (v32)
        {
          break;
        }

LABEL_5:
        ++v26;
        if (v22 == v21)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x1E693CF00](result);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E5DA924C();
      }

      result = sub_1E5DA925C();
      v35 = v47;
      v19 = v29;
      if (v22 == v21)
      {
        goto LABEL_21;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v37(v46, v19);
  (*(v33 + 8))(v45, v34);
  return v35;
}

id sub_1E5D56BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E5D55DB8(a1);
  v6 = objc_opt_self();
  v7 = [v6 kilocalorieUnit];
  sub_1E5D55FFC(v5, v7);

  v8 = sub_1E5D55DB8(a2);
  v9 = [v6 minuteUnit];
  sub_1E5D55FFC(v8, v9);

  sub_1E5D566B4(a3);
  v10 = [objc_allocWithZone(MEMORY[0x1E696C5E8]) init];
  sub_1E5D56E18(0, &qword_1ED06A3D8);
  v11 = sub_1E5DA922C();

  [v10 setActiveEnergyResults_];

  v12 = sub_1E5DA922C();

  [v10 setAppleExerciseTimeResults_];

  sub_1E5D56E18(0, &qword_1ED06A3E0);
  v13 = sub_1E5DA922C();

  [v10 setAppleStandHourResults_];

  return v10;
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

uint64_t sub_1E5D56DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5D56E18(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1E5D56E64()
{
  sub_1E5DA8D7C();
  v0 = sub_1E5DA8D8C();

  qword_1ED06D458 = v0;
  return result;
}

uint64_t *sub_1E5D56EA8()
{
  if (qword_1ED06AE90 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D458;
}

uint64_t sub_1E5D56EF8()
{
  if (qword_1ED06AE90 != -1)
  {
    swift_once();
  }
}

uint64_t *sub_1E5D56F78()
{
  if (qword_1ED06AE98 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D460;
}

double sub_1E5D56FC8()
{
  if (qword_1ED06AE98 != -1)
  {
    swift_once();
  }

  return *&qword_1ED06D460;
}

id UILabel.adjustFontForDynamicType(_:)(char a1)
{
  [v1 setAdjustsFontForContentSizeCategory_];

  return v3;
}

id UILabel.text(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1E5DA911C();
  }

  else
  {
    v2 = 0;
  }

  [v4 setText_];

  return v4;
}

id UILabel.textColor(_:)(uint64_t a1)
{
  [v1 setTextColor_];

  return v3;
}

id UILabel.font(_:)(uint64_t a1)
{
  [v1 setFont_];

  return v3;
}

id UILabel.wordWrapping(numberOfLines:)(uint64_t a1)
{
  [v1 setLineBreakMode_];
  [v4 setNumberOfLines_];

  return v4;
}

id UILabel.textAlignment(_:)(uint64_t a1)
{
  [v1 setTextAlignment_];

  return v3;
}

id UILabel.tightening()()
{
  [v0 setAllowsDefaultTighteningForTruncation_];

  return v2;
}

id UILabel.adjustingFontToFitWidth()()
{
  [v0 setAdjustsFontSizeToFitWidth_];

  return v2;
}

id sub_1E5D572E0(uint64_t a1)
{
  [v1 setBaselineAdjustment_];

  return v3;
}

id UILabel.numberOfLines(_:)(uint64_t a1)
{
  [v1 setNumberOfLines_];

  return v3;
}

id UILabel.accessibilityHint(_:)()
{
  v0 = sub_1E5DA911C();
  [v2 setAccessibilityHint_];

  return v2;
}

id UIImageView.image(_:)(uint64_t a1)
{
  [v1 setImage_];

  return v3;
}

id UIImageView.dynamicType()()
{
  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory_];

  return v2;
}

id UIImageView.contentMode(_:)(uint64_t a1)
{
  [v1 setContentMode_];

  return v3;
}

id UIImageView.preferredSymbolConfiguration(_:)(uint64_t a1)
{
  [v1 setPreferredSymbolConfiguration_];

  return v3;
}

id sub_1E5D57504(void *a1, SEL *a2)
{
  v3 = [a1 CGColor];
  [v5 *a2];

  return v5;
}

id CAShapeLayer.lineWidth(_:)()
{
  [v0 setLineWidth_];

  return v2;
}

id CAShapeLayer.lineDashPattern(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E5DA947C();
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1E5DA945C();
      sub_1E5DA948C();
      sub_1E5DA949C();
      sub_1E5DA946C();
      --v1;
    }

    while (v1);
  }

  sub_1E5D576D4();
  v5 = sub_1E5DA922C();

  [v7 setLineDashPattern_];

  return v7;
}

unint64_t sub_1E5D576D4()
{
  result = qword_1ED06A3F8;
  if (!qword_1ED06A3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED06A3F8);
  }

  return result;
}

uint64_t sub_1E5D57784()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1E5D577FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E5D57894(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 184))(v5, sub_1E5D5797C);
  }

  return result;
}

uint64_t sub_1E5D5797C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_1E5D579D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 176))();

  v4[5] = OBJC_IVAR____TtC9FitnessUI28FIUIWheelchairStatusProvider___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1E5D57B70();
  sub_1E5DA859C();

  v4[7] = sub_1E5D57728();
  return sub_1E5D57ADC;
}

void sub_1E5D57ADC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E5DA858C();

  free(v1);
}

unint64_t sub_1E5D57B70()
{
  result = qword_1ED06A400;
  if (!qword_1ED06A400)
  {
    type metadata accessor for FIUIWheelchairStatusProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A400);
  }

  return result;
}

uint64_t type metadata accessor for FIUIWheelchairStatusProvider()
{
  result = qword_1ED7FFA30;
  if (!qword_1ED7FFA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E5D57C14(void *a1)
{
  swift_allocObject();
  v2 = sub_1E5D58ED8(a1);

  return v2;
}

id sub_1E5D57C5C(void *a1)
{
  v2 = sub_1E5D58ED8(a1);

  return v2;
}

uint64_t sub_1E5D57C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1E5DA929C();
  *(v4 + 48) = sub_1E5DA928C();
  v6 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D57D28, v6, v5);
}

uint64_t sub_1E5D57D28()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 18))([Strong[4] isWheelchairUser]);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5D57DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5D59274(a3, v25 - v10);
  v12 = sub_1E5DA92BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5D592E4(v11);
  }

  else
  {
    sub_1E5DA92AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E5DA927C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E5DA918C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E5D592E4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5D592E4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5D580A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5D59274(a3, v25 - v10);
  v12 = sub_1E5DA92BC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5D592E4(v11);
  }

  else
  {
    sub_1E5DA92AC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E5DA927C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E5DA918C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A470);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1E5D592E4(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5D592E4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A470);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5D5837C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1E5DA929C();
  *(v4 + 24) = sub_1E5DA928C();
  v6 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D58414, v6, v5);
}

uint64_t sub_1E5D58414()
{
  v1 = *(v0 + 16);

  [*(v1 + 32) registerObserver_];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5D58488()
{
  [*(v0 + 32) removeObserver_];

  v1 = OBJC_IVAR____TtC9FitnessUI28FIUIWheelchairStatusProvider___observationRegistrar;
  v2 = sub_1E5DA85BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E5D5850C()
{
  [*(v0 + 32) removeObserver_];

  v1 = OBJC_IVAR____TtC9FitnessUI28FIUIWheelchairStatusProvider___observationRegistrar;
  v2 = sub_1E5DA85BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1E5D585CC(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1E5DA92BC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1E5DA929C();

  v8 = sub_1E5DA928C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v7;
  *(v9 + 40) = a2;

  sub_1E5D580A8(0, 0, v5, &unk_1E5DB2168, v9);
}

uint64_t sub_1E5D5872C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  sub_1E5DA929C();
  *(v5 + 56) = sub_1E5DA928C();
  v7 = sub_1E5DA927C();

  return MEMORY[0x1EEE6DFA0](sub_1E5D587C8, v7, v6);
}

uint64_t sub_1E5D587C8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 144))(*(v0 + 64));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5D58AE0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5D58BD8;

  return v6(a1);
}

uint64_t sub_1E5D58BD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5D58CD0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E5D58DC4;

  return v5(v2 + 32);
}

uint64_t sub_1E5D58DC4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_1E5D58ED8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  *(v2 + 16) = 0;
  sub_1E5DA85AC();
  *(v2 + 24) = a1;
  result = [objc_allocWithZone(MEMORY[0x1E696C678]) initWithHealthStore_];
  if (result)
  {
    *(v2 + 32) = result;
    v8 = sub_1E5DA92BC();
    v9 = *(*(v8 - 8) + 56);
    v9(v6, 1, 1, v8);
    v10 = swift_allocObject();
    swift_weakInit();
    sub_1E5DA929C();

    v11 = sub_1E5DA928C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;

    sub_1E5D57DE8(0, 0, v6, &unk_1E5DB2228, v12);

    v9(v6, 1, 1, v8);

    v14 = sub_1E5DA928C();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v13;
    v15[4] = v2;
    sub_1E5D57DE8(0, 0, v6, &unk_1E5DB2238, v15);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5D59110(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5D597F0;

  return sub_1E5D5872C(a1, v6, v7, v4, v5);
}

uint64_t sub_1E5D591C8()
{
  result = sub_1E5DA85BC();
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

uint64_t sub_1E5D59274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D592E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5D5934C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5D597F0;

  return sub_1E5D58CD0(a1, v4);
}

uint64_t sub_1E5D59404(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5D594BC;

  return sub_1E5D58CD0(a1, v4);
}

uint64_t sub_1E5D594BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E5D595B0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5D594BC;

  return sub_1E5D57C90(v3, v4, v5, v2);
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1E5D59690()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5D597F0;

  return sub_1E5D5837C(v3, v4, v5, v2);
}

uint64_t sub_1E5D59724(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5D597F0;

  return sub_1E5D58AE0(a1, v4);
}

uint64_t static MathUtils.fequal(value1:value2:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  sub_1E5DA953C();
  sub_1E5DA95EC();
  v12 = *(v6 + 8);
  v12(v9, a3);
  swift_getAssociatedConformanceWitness();
  sub_1E5DA95DC();
  sub_1E5DA95BC();
  v13 = sub_1E5DA90FC();
  v12(v9, a3);
  v12(v11, a3);
  return v13 & 1;
}

uint64_t static MathUtils.fgreater(value1:value2:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  sub_1E5DA953C();
  swift_getAssociatedConformanceWitness();
  sub_1E5DA95DC();
  sub_1E5DA95BC();
  v12 = sub_1E5DA90EC();
  v13 = *(v6 + 8);
  v13(v9, a3);
  v13(v11, a3);
  return v12 & 1;
}

uint64_t static MathUtils.fless(value1:value2:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  sub_1E5DA953C();
  swift_getAssociatedConformanceWitness();
  sub_1E5DA95DC();
  sub_1E5DA95BC();
  v12 = sub_1E5DA90EC();
  v13 = *(v6 + 8);
  v13(v9, a3);
  v13(v11, a3);
  return v12 & 1;
}

uint64_t static MathUtils.clip(value:minValue:maxValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DA960C();
  sub_1E5DA95FC();
  return (*(v5 + 8))(v7, a4);
}

uint64_t static MathUtils.saturate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a3;
  v15[2] = a4;
  v16 = a1;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v12);
  swift_getAssociatedConformanceWitness();
  sub_1E5DA95DC();
  sub_1E5DA95BC();
  sub_1E5DA95DC();
  sub_1E5DA95BC();
  static MathUtils.clip(value:minValue:maxValue:)(v16, v10, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  return (v13)(v10, a2);
}

uint64_t static MathUtils.interpolated(from:to:fraction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1E5DA953C();
  sub_1E5DA92FC();
  v11 = *(v5 + 8);
  v11(v8, a4);
  sub_1E5DA952C();
  return (v11)(v10, a4);
}

uint64_t static MathUtils.percent(value:from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v21[6] = a6;
  v21[7] = a2;
  v21[3] = a1;
  v9 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = *(*(*(*(v6 + 16) + 16) + 8) + 8);
  v21[5] = a3;
  v21[2] = v18;
  sub_1E5DA953C();
  v21[1] = swift_getAssociatedConformanceWitness();
  sub_1E5DA95DC();
  v21[4] = v9;
  sub_1E5DA95BC();
  LOBYTE(v6) = sub_1E5DA910C();
  v19 = *(v12 + 8);
  v19(v15, a4);
  v19(v17, a4);
  if (v6)
  {
    sub_1E5DA95DC();
    return sub_1E5DA95BC();
  }

  else
  {
    sub_1E5DA953C();
    sub_1E5DA953C();
    sub_1E5DA90BC();
    v19(v15, a4);
    return (v19)(v17, a4);
  }
}

uint64_t static MathUtils.pythagorean(side1:side2:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1E5DA92FC();
  sub_1E5DA92FC();
  sub_1E5DA952C();
  v13 = *(v4 + 8);
  v13(v7, a3);
  v13(v10, a3);
  sub_1E5DA90AC();
  return (v13)(v12, a3);
}

uint64_t getEnumTagSinglePayload for UIGeometryConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UIGeometryConstants(_WORD *result, int a2, int a3)
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

uint64_t sub_1E5D5A8A0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5D5A924(uint64_t a1)
{
  v2 = sub_1E5DA897C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5DA89DC();
}

uint64_t sub_1E5D5A9EC()
{
  type metadata accessor for QuantityChart();
}

uint64_t type metadata accessor for QuantityChart()
{
  result = qword_1ED06B050;
  if (!qword_1ED06B050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5D5AA6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A488);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A498);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v32 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4A0);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v12 = &v32 - v11;
  v39 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4A8);
  sub_1E5D5B1D0();
  sub_1E5DA87BC();
  v38 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4C8);
  v14 = sub_1E5D5CC08(&qword_1ED06A4D0, &qword_1ED06A490);
  v15 = sub_1E5D5CC08(&qword_1ED06A4D8, &qword_1ED06A4C8);
  sub_1E5DA8C7C();
  (*(v6 + 8))(v8, v5);
  v16 = *(v2 + *(type metadata accessor for QuantityChart() + 24));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v16 + 40);
    v19 = v17 - 1;
    if (v19)
    {
      v20 = (v16 + 64);
      do
      {
        v21 = *v20;
        v20 += 3;
        v22 = v21;
        if (v18 < v21)
        {
          v18 = v22;
        }

        --v19;
      }

      while (v19);
    }

    v23 = fmax(v18, 1.0) * 1.3;
  }

  else
  {
    v23 = 1.3;
  }

  v44 = 0;
  v45 = v23;
  v24 = sub_1E5DA886C();
  v25 = v36;
  (*(*(v24 - 8) + 56))(v36, 1, 1, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4E0);
  v40 = v5;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1E5D5BEF8();
  v29 = v34;
  sub_1E5DA8CAC();
  sub_1E5D5BF74(v25);
  (*(v32 + 8))(v10, v29);
  v40 = v29;
  v41 = v26;
  v42 = OpaqueTypeConformance2;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_1E5DA8C8C();
  return (*(v33 + 8))(v12, v30);
}

uint64_t sub_1E5D5AF54(uint64_t a1)
{
  v2 = type metadata accessor for QuantityChart();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v17 = *(a1 + *(MEMORY[0x1EEE9AC00](v2 - 8) + 32));
  sub_1E5D5CAC0(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1E5D5CB24(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A530);
  sub_1E5D5CC08(&qword_1ED06A538, &qword_1ED06A528);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4B8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C0);
  v13 = sub_1E5DA883C();
  v14 = MEMORY[0x1E697E3F0];
  v15 = MEMORY[0x1E695B2B8];
  v16 = MEMORY[0x1E697E3E0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v8;
  v14 = OpaqueTypeConformance2;
  v10 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1E5D5CC50();
  return sub_1E5DA8E6C();
}

unint64_t sub_1E5D5B1D0()
{
  result = qword_1ED06A4B0;
  if (!qword_1ED06A4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4C0);
    sub_1E5DA883C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A4B0);
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

uint64_t sub_1E5D5B360@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v42 = a2;
  v52 = a3;
  v40 = sub_1E5DA8AFC();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E5DA897C();
  *&v43 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A548);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v49 = sub_1E5DA883C();
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4C0);
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v45 = &v35 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A4B8);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v35 - v16;
  v17 = *a1;
  v18 = a1[1];
  v37 = *(a1 + 16);
  v36 = *(a1 + 17);
  sub_1E5DA8ACC();
  v60 = v17;
  sub_1E5DA872C();

  sub_1E5DA8ACC();
  v60 = 0;
  sub_1E5DA872C();

  sub_1E5DA8ACC();
  v60 = v18;
  sub_1E5DA872C();

  sub_1E5DA882C();
  type metadata accessor for QuantityChart();
  sub_1E5D5C79C(&qword_1ED06A480, MEMORY[0x1E697EA58], v9);
  sub_1E5D5CCA4(&qword_1ED06A550);
  v19 = v41;
  sub_1E5DA93EC();
  sub_1E5D5CCA4(&qword_1ED06A558);
  v20 = sub_1E5DA910C();
  v21 = *(v43 + 8);
  v21(v19, v5);
  v21(v9, v5);
  if (v20)
  {
    v22 = v38;
    sub_1E5D5C79C(&qword_1ED06A478, MEMORY[0x1E697F610], v38);
    if (v36)
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    sub_1E5D7CAB0(v23 | v37, &v57);
    v24 = v57;
    v43 = v59;
    v42 = v58;
    (*(v39 + 8))(v22, v40);
  }

  else
  {
    if (qword_1ED06AFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = xmmword_1ED06D468;
    v43 = unk_1ED06D480;
    v42 = *(&xmmword_1ED06D468 + 8);
  }

  v60 = v24;
  v61 = v42;
  v62 = v43;
  v25 = MEMORY[0x1E697E3F0];
  v26 = MEMORY[0x1E695B2B8];
  v27 = MEMORY[0x1E697E3E0];
  v28 = v45;
  v29 = v49;
  sub_1E5DA86CC();

  (*(v44 + 8))(v14, v29);
  sub_1E5D68950(4.5);
  sub_1E5DA88EC();
  v53 = v29;
  v54 = v25;
  v55 = v26;
  v56 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v46;
  v32 = v51;
  sub_1E5DA86EC();
  sub_1E5D5CCE8(&v60);
  (*(v47 + 8))(v28, v32);
  v53 = v32;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = v50;
  sub_1E5DA86DC();
  return (*(v48 + 8))(v31, v33);
}

__int128 *sub_1E5D5BBC4()
{
  if (qword_1ED06AFB0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED06D468;
}

uint64_t sub_1E5D5BC14()
{
  v0 = sub_1E5DA875C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E5DA870C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A520);
  v2 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v2);
  v4 = 0;
  v5 = result - 32;
  if (result < 32)
  {
    v5 = result - 25;
  }

  v2[2] = 25;
  v2[3] = 2 * (v5 >> 3);
  v6 = 4;
  while (1)
  {
    if (v4 == 24)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }
    }

    v2[v6] = v4;
    if (v6 == 28)
    {
      break;
    }

    ++v6;
    v8 = v4 == 24;
    v4 = v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = v2[2];
  if (!v9)
  {
LABEL_17:

    sub_1E5DA86FC();
    sub_1E5DA874C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A518);
    sub_1E5DA86BC();
    swift_getOpaqueTypeConformance2();
    return sub_1E5DA884C();
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1E5D5C99C(0, v9, 0);
  v10 = 4;
  while (1)
  {
    v11 = v2[v10];
    v12 = 3600 * v11;
    if ((v11 * 3600) >> 64 != (3600 * v11) >> 63)
    {
      break;
    }

    v14 = *(v15 + 16);
    v13 = *(v15 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1E5D5C99C((v13 > 1), v14 + 1, 1);
    }

    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = v12;
    ++v10;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1E5D5BEF8()
{
  result = qword_1ED06A4E8;
  if (!qword_1ED06A4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED06A4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A4E8);
  }

  return result;
}

uint64_t sub_1E5D5BF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5D5BFDC()
{
  v0 = sub_1E5DA875C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1E5DA870C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1E5DA86FC();
  sub_1E5DA874C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A518);
  sub_1E5DA86BC();
  swift_getOpaqueTypeConformance2();
  return sub_1E5DA884C();
}

uint64_t sub_1E5D5C160()
{
  v0 = sub_1E5DA86BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5D56F78();
  sub_1E5DA88EC();
  v9 = v6;
  v10 = v7;
  v11 = v8;
  sub_1E5DA86AC();
  v5[1] = *sub_1E5D56EA8();
  sub_1E5DA87CC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E5D5C2A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A478);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for QuantityChart();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A480);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

double sub_1E5D5C37C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A510);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E5DB2290;
  *(v0 + 32) = sub_1E5DA8D6C();
  sub_1E5DA8E9C();
  sub_1E5DA8EAC();
  MEMORY[0x1E693CB60](v0);
  sub_1E5DA890C();
  result = *&v2;
  xmmword_1ED06D468 = v2;
  unk_1ED06D478 = v3;
  qword_1ED06D488 = v4;
  return result;
}

uint64_t sub_1E5D5C43C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED06AFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = xmmword_1ED06D468;
  *(a1 + 8) = *(&xmmword_1ED06D468 + 8);
  *(a1 + 24) = unk_1ED06D480;
}

uint64_t sub_1E5D5C4CC(uint64_t a1)
{
  if (qword_1ED06AFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(a1 + 16);
  xmmword_1ED06D468 = *a1;
  unk_1ED06D478 = v2;
  qword_1ED06D488 = *(a1 + 32);
}

uint64_t (*sub_1E5D5C558())()
{
  if (qword_1ED06AFB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1E5D5C624()
{
  sub_1E5D5C6F8(319, &qword_1ED06A500, MEMORY[0x1E697F610]);
  if (v0 <= 0x3F)
  {
    sub_1E5D5C6F8(319, &qword_1ED7FF598, MEMORY[0x1E697EA58]);
    if (v1 <= 0x3F)
    {
      sub_1E5D5C74C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5D5C6F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5DA88CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E5D5C74C()
{
  if (!qword_1ED06A508)
  {
    v0 = sub_1E5DA926C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED06A508);
    }
  }
}

uint64_t sub_1E5D5C79C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1E5DA8A5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1E5D5CD3C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1E5DA932C();
    v17 = sub_1E5DA8B8C();
    sub_1E5DA861C();

    sub_1E5DA8A4C();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

char *sub_1E5D5C99C(char *a1, int64_t a2, char a3)
{
  result = sub_1E5D5C9BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E5D5C9BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1E5D5CAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuantityChart();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D5CB24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuantityChart();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5D5CB88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for QuantityChart() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5D5B360(a1, v6, a2);
}

uint64_t sub_1E5D5CC08(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5D5CC50()
{
  result = qword_1ED06A540;
  if (!qword_1ED06A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A540);
  }

  return result;
}

uint64_t sub_1E5D5CCA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5DA897C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5D5CD3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1E5D5CDC4(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

double UIColor.hsbaParameters.getter@<D0>(void *a1@<X8>)
{

  return sub_1E5D5CE90(&selRef_getHue_saturation_brightness_alpha_, a1);
}

double UIColor.rgbaParameters.getter@<D0>(void *a1@<X8>)
{

  return sub_1E5D5CE90(&selRef_getRed_green_blue_alpha_, a1);
}

double sub_1E5D5CE90@<D0>(SEL *a1@<X0>, void *a2@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11[0] = 0;
  v8 = 0;
  v9 = 0;
  [v2 *a1];
  v5 = v10;
  result = *v11;
  v7 = v8;
  v6 = v9;
  *a2 = v11[0];
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5D5CF24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5D5CF44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

id sub_1E5D5CFAC()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1E5D5CFE4()
{
  v0 = sub_1E5DA84AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1E5DA845C();
  v5 = sub_1E5DA844C();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  [v4 setNumberStyle_];
  result = [v4 setMinimumIntegerDigits_];
  qword_1ED06D490 = v4;
  return result;
}

uint64_t *sub_1E5D5D118()
{
  if (qword_1ED06B060 != -1)
  {
    swift_once();
  }

  return &qword_1ED06D490;
}

id sub_1E5D5D168()
{
  if (qword_1ED06B060 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED06D490;

  return v1;
}

id sub_1E5D5D1C4()
{
  if (!*v0)
  {
    goto LABEL_4;
  }

  v1 = v0;
  v2 = *v0;
  if ([v2 paused])
  {

LABEL_4:
    v3 = sub_1E5D82F88();
    v4 = sub_1E5D82FB0(v3, 0, 0);

    return v4;
  }

  if (sub_1E5D7C234())
  {
    v5 = [v2 appleMoveTime];
    v6 = [objc_opt_self() minuteUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

LABEL_9:
    if (qword_1ED06B060 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED06D490;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v17 = [v15 stringFromNumber_];

    if (v17)
    {
      v4 = sub_1E5DA915C();
    }

    else
    {

      return 0;
    }

    return v4;
  }

  result = [v1[2] unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result userActiveEnergyBurnedUnit];

    v12 = [v2 activeEnergyBurned];
    [v12 doubleValueForUnit_];
    v14 = v13;

    v8 = floor(v14);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5D5D414(SEL *a1, SEL *a2)
{
  if (!*v2)
  {
    goto LABEL_4;
  }

  v5 = *v2;
  if ([v5 paused])
  {

LABEL_4:
    v6 = sub_1E5D82F88();
    v7 = sub_1E5D82FB0(v6, 0, 0);

    return v7;
  }

  v8 = [v5 *a1];
  v9 = [objc_opt_self() *a2];
  [v8 doubleValueForUnit_];
  v11 = v10;

  if (qword_1ED06B060 != -1)
  {
    swift_once();
  }

  v12 = qword_1ED06D490;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v14 = [v12 stringFromNumber_];

  if (v14)
  {
    v7 = sub_1E5DA915C();
  }

  else
  {

    return 0;
  }

  return v7;
}

void sub_1E5D5D5D4(SEL *a1)
{
  if (*v1)
  {
    v3 = *v1;
    if ([v3 paused])
    {
      v4 = [objc_opt_self() pausedRingsColors];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 nonGradientTextColor];

        if (v6)
        {

          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }
  }

  v7 = [objc_opt_self() *a1];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 textDisplayColor];

  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1E5D5D6C8@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v65 = sub_1E5DA82EC();
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v76 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A560);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v60 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A568);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v66 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A570);
  v75 = *(v64 - 8);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = &v60 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v60 - v16;
  v17 = sub_1E5DA833C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E5D82F88();
  v21 = sub_1E5D82FB0(v20, 0, 0);
  v23 = v22;

  v24 = sub_1E5D82F88();
  sub_1E5D82FB0(v24, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E5DB2480;
  v26 = MEMORY[0x1E69E6158];
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1E5D5E0E0();
  *(v25 + 32) = 1702260589;
  *(v25 + 40) = 0xE400000000000000;
  *(v25 + 96) = v26;
  *(v25 + 104) = v27;
  *(v25 + 64) = v27;
  *(v25 + 72) = v21;
  *(v25 + 80) = v23;
  *(v25 + 136) = v26;
  *(v25 + 144) = v27;
  *(v25 + 112) = 0x6573696372657865;
  *(v25 + 120) = 0xE800000000000000;
  *(v25 + 176) = v26;
  *(v25 + 184) = v27;
  *(v25 + 152) = v21;
  *(v25 + 160) = v23;
  *(v25 + 216) = v26;
  *(v25 + 224) = v27;
  *(v25 + 192) = 0x646E617473;
  *(v25 + 200) = 0xE500000000000000;

  v28 = v65;
  v29 = v19;
  sub_1E5DA916C();
  v30 = v75;

  sub_1E5DA832C();
  sub_1E5DA82FC();
  v78 = sub_1E5DA8D5C();
  sub_1E5D5E134();
  sub_1E5DA830C();
  v78 = 1702260589;
  v79 = 0xE400000000000000;
  v31 = v64;
  v32 = sub_1E5DA84AC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v73 = v33 + 56;
  v74 = v34;
  v34(v4, 1, 1, v32);
  v35 = sub_1E5D5E188();
  v72 = sub_1E5D5E1E0();
  sub_1E5DA835C();
  v36 = v11;
  sub_1E5D5EC00(v4, &qword_1ED06A560);
  v38 = *(v30 + 48);
  v37 = v30 + 48;
  v71 = v38;
  v39 = v38(v11, 1, v31);
  v40 = v76;
  v68 = v29;
  if (v39 == 1)
  {
    sub_1E5D5EC00(v36, &qword_1ED06A568);
  }

  else
  {
    v61 = v32;
    v42 = v62;
    sub_1E5D5E234(v36, v62);
    v75 = v35;
    sub_1E5D5D1C4();
    sub_1E5DA832C();
    sub_1E5DA82FC();
    sub_1E5D5D5D4(&selRef_energyColors);
    v78 = v43;
    sub_1E5D5E2A4();
    sub_1E5DA830C();
    sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
    sub_1E5DA82DC();
    (*(v70 + 8))(v40, v28);
    v44 = v42;
    v32 = v61;
    sub_1E5D5EC00(v44, &qword_1ED06A570);
  }

  v41 = v28;
  v78 = 0x6573696372657865;
  v79 = 0xE800000000000000;
  v74(v4, 1, 1, v32);
  v45 = v66;
  sub_1E5DA835C();
  sub_1E5D5EC00(v4, &qword_1ED06A560);
  if (v71(v45, 1, v31) == 1)
  {
    v46 = &qword_1ED06A568;
    v47 = v45;
  }

  else
  {
    sub_1E5D5E234(v45, v67);
    sub_1E5D5D414(&selRef_appleExerciseTime, &selRef_minuteUnit);
    sub_1E5DA832C();
    v75 = v37;
    v48 = v31;
    v49 = v76;
    sub_1E5DA82FC();
    sub_1E5D5D5D4(&selRef_briskColors);
    v78 = v50;
    sub_1E5D5E2A4();
    sub_1E5DA830C();
    sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
    v51 = v67;
    sub_1E5DA82DC();
    v52 = v49;
    v31 = v48;
    (*(v70 + 8))(v52, v41);
    v47 = v51;
    v46 = &qword_1ED06A570;
  }

  sub_1E5D5EC00(v47, v46);
  v78 = 0x646E617473;
  v79 = 0xE500000000000000;
  v74(v4, 1, 1, v32);
  v53 = v69;
  sub_1E5DA835C();
  sub_1E5D5EC00(v4, &qword_1ED06A560);
  if (v71(v53, 1, v31) == 1)
  {
    v54 = &qword_1ED06A568;
    v55 = v53;
  }

  else
  {
    v56 = v63;
    sub_1E5D5E234(v53, v63);
    sub_1E5D5D414(&selRef_appleStandHours, &selRef_countUnit);
    sub_1E5DA832C();
    v57 = v76;
    sub_1E5DA82FC();
    sub_1E5D5D5D4(&selRef_sedentaryColors);
    v78 = v58;
    sub_1E5D5E2A4();
    sub_1E5DA830C();
    sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
    sub_1E5DA82DC();
    (*(v70 + 8))(v57, v41);
    v55 = v56;
    v54 = &qword_1ED06A570;
  }

  return sub_1E5D5EC00(v55, v54);
}

unint64_t sub_1E5D5E0E0()
{
  result = qword_1ED06A580;
  if (!qword_1ED06A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A580);
  }

  return result;
}

unint64_t sub_1E5D5E134()
{
  result = qword_1ED06A588;
  if (!qword_1ED06A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A588);
  }

  return result;
}

unint64_t sub_1E5D5E188()
{
  result = qword_1ED06A590;
  if (!qword_1ED06A590)
  {
    sub_1E5DA82EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A590);
  }

  return result;
}

unint64_t sub_1E5D5E1E0()
{
  result = qword_1ED06A598;
  if (!qword_1ED06A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A598);
  }

  return result;
}

uint64_t sub_1E5D5E234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5D5E2A4()
{
  result = qword_1ED06A5A0;
  if (!qword_1ED06A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A5A0);
  }

  return result;
}

void sub_1E5D5E2F8()
{
  if (!*v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = *v0;
  v3 = sub_1E5D7C234();
  v4 = v1[2];
  if (v3)
  {
    v5 = [v2 appleMoveTime];
    v6 = [v4 localizedStringWithMoveMinutes_];

    if (!v6)
    {
      __break(1u);
LABEL_5:
      v6 = sub_1E5D82F88();
      sub_1E5D82FB0(v6, 0, 0);
LABEL_8:

      return;
    }

LABEL_7:
    sub_1E5DA915C();

    goto LABEL_8;
  }

  v7 = [v2 activeEnergyBurned];
  v6 = [v4 localizedStringWithActiveEnergy_];

  if (v6)
  {
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1E5D5E424()
{
  if (*v0 && sub_1E5D7C234())
  {
    v1 = sub_1E5D82F88();
    v2 = sub_1E5D82FB0(v1, 0, 0);

    return v2;
  }

  else
  {
    result = [*(v0 + 16) localizedShortActiveEnergyUnitString];
    if (result)
    {
      v4 = result;
      sub_1E5DA915C();

      sub_1E5D5E1E0();
      v5 = sub_1E5DA93BC();

      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1E5D5E504(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A560);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A568);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v44 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A570);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v44 - v13;
  v15 = sub_1E5DA82EC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5DA833C();
  MEMORY[0x1EEE9AC00](v18 - 8);
  if (*v1)
  {
    v19 = *v1;
    if ([v19 paused])
    {
      v20 = sub_1E5D82F88();
      sub_1E5D82FB0(v20, 0, 0);

      sub_1E5DA832C();
      sub_1E5DA82FC();

      return;
    }
  }

  v44 = v14;
  v45 = v6;
  v46 = v8;
  v47 = v16;
  v48 = a1;
  sub_1E5D5E2F8();
  v22 = v21;
  v23 = v15;
  v25 = v24;
  v26 = sub_1E5D5E424();
  v28 = v27;
  v29 = sub_1E5D82F88();
  sub_1E5D82FB0(v29, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1E5DB2490;
  v31 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1E5D5E0E0();
  *(v30 + 32) = v22;
  *(v30 + 40) = v25;
  v33 = v23;
  *(v30 + 96) = v31;
  *(v30 + 104) = v32;
  *(v30 + 64) = v32;
  *(v30 + 72) = v26;
  *(v30 + 80) = v28;

  sub_1E5DA916C();

  sub_1E5DA832C();
  v34 = v53;
  sub_1E5DA82FC();
  v54[0] = v26;
  v54[1] = v28;
  v35 = sub_1E5DA84AC();
  v36 = v50;
  (*(*(v35 - 8) + 56))(v50, 1, 1, v35);
  sub_1E5D5E188();
  sub_1E5D5E1E0();
  v37 = v51;
  sub_1E5DA835C();
  sub_1E5D5EC00(v36, &qword_1ED06A560);

  if ((*(v49 + 48))(v37, 1, v52) == 1)
  {
    v38 = &qword_1ED06A568;
    v39 = v37;
  }

  else
  {
    v40 = v44;
    sub_1E5D5E234(v37, v44);
    v41 = v46;
    sub_1E5DA8C2C();
    v42 = sub_1E5DA8C3C();
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
    v43 = sub_1E5DA831C();
    sub_1E5D5EB3C(v41, v45);
    sub_1E5D5EBAC();
    sub_1E5DA834C();
    sub_1E5D5EC00(v41, &qword_1ED06A5B0);
    v43(v54, 0);
    v39 = v40;
    v38 = &qword_1ED06A570;
  }

  sub_1E5D5EC00(v39, v38);
  (*(v47 + 32))(v48, v34, v33);
}

uint64_t sub_1E5D5EB3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5D5EBAC()
{
  result = qword_1ED06A5B8;
  if (!qword_1ED06A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED06A5B8);
  }

  return result;
}

uint64_t sub_1E5D5EC00(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5D5EC60()
{
  v0 = sub_1E5D82F88();
  v1 = sub_1E5D82FB0(v0, 0, 0);

  return v1;
}

uint64_t sub_1E5D5ECB8()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1E5D5ECF0(uint64_t a1@<X8>)
{
  v115 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5B0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v118 = v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v117 = v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A560);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v108 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A568);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v108 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A570);
  v111 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v116 = v108 - v13;
  v14 = sub_1E5DA833C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5DA82EC();
  v113 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v123 = v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = sub_1E5D7C8F0(*v1);
  v21 = sub_1E5D82F88();
  v22 = v21;
  if (v20)
  {
    sub_1E5D82FB0(v21, 0, 0);

    sub_1E5DA832C();
    sub_1E5DA82FC();
    return;
  }

  v110 = v16;
  v114 = sub_1E5D82FB0(v21, 0, 0);
  v120 = v23;

  v24 = sub_1E5D82F88();
  v25 = sub_1E5D82FB0(v24, 0, 0);
  v27 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E5DB2480;
  v119 = v17;
  v112 = v1;
  v122 = v19;
  v109 = v12;
  v108[2] = v27;
  v108[1] = v25;
  if (v19)
  {
    v29 = v122;
    if ([v29 paused])
    {
      v30 = sub_1E5D82F88();
      v31 = sub_1E5D82FB0(v30, 0, 0);
      v33 = v32;

      v34 = MEMORY[0x1E69E6158];
      goto LABEL_8;
    }
  }

  sub_1E5D5E2F8();
  v121 = v35;
  v37 = v36;
  v38 = sub_1E5D5E424();
  v40 = v39;
  v41 = sub_1E5D82F88();
  sub_1E5D82FB0(v41, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E5DB2490;
  v34 = MEMORY[0x1E69E6158];
  *(v42 + 56) = MEMORY[0x1E69E6158];
  v43 = sub_1E5D5E0E0();
  *(v42 + 32) = v121;
  *(v42 + 40) = v37;
  *(v42 + 96) = v34;
  *(v42 + 104) = v43;
  *(v42 + 64) = v43;
  *(v42 + 72) = v38;
  *(v42 + 80) = v40;
  v31 = sub_1E5DA916C();
  v33 = v44;

LABEL_8:
  *(v28 + 56) = v34;
  v45 = sub_1E5D5E0E0();
  v121 = v45;
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  *(v28 + 96) = v34;
  *(v28 + 104) = v45;
  v46 = v114;
  *(v28 + 64) = v45;
  *(v28 + 72) = v46;
  *(v28 + 80) = v120;

  v47 = v122;
  if (v122)
  {
    v48 = v122;
    v49 = [v48 paused];
    v50 = v112;
    if (v49)
    {
      v51 = sub_1E5D82F88();
      v52 = sub_1E5D82FB0(v51, 0, 0);
      v54 = v53;

      v55 = v121;
      goto LABEL_15;
    }

    v58 = v112[2];
    v59 = [v48 appleExerciseTime];
    v60 = [v58 localizedStringWithBriskMinutes_];

    if (!v60)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v108[0] = sub_1E5DA915C();
    v57 = v61;
  }

  else
  {
    v48 = sub_1E5D82F88();
    v108[0] = sub_1E5D82FB0(v48, 0, 0);
    v57 = v56;
    v50 = v112;
  }

  v63 = v50[3];
  v62 = v50[4];

  v64 = sub_1E5D82F88();
  sub_1E5D82FB0(v64, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1E5DB2490;
  v66 = MEMORY[0x1E69E6158];
  v55 = v121;
  *(v65 + 56) = MEMORY[0x1E69E6158];
  *(v65 + 64) = v55;
  *(v65 + 32) = v108[0];
  *(v65 + 40) = v57;
  *(v65 + 96) = v66;
  *(v65 + 104) = v55;
  *(v65 + 72) = v63;
  *(v65 + 80) = v62;
  v52 = sub_1E5DA916C();
  v54 = v67;
  v34 = v66;
  v50 = v112;

  v47 = v122;
LABEL_15:
  *(v28 + 136) = v34;
  *(v28 + 144) = v55;
  *(v28 + 112) = v52;
  *(v28 + 120) = v54;
  *(v28 + 176) = v34;
  *(v28 + 184) = v55;
  v68 = v120;
  *(v28 + 152) = v114;
  *(v28 + 160) = v68;
  v69 = v119;
  if (!v47)
  {
LABEL_18:
    v70 = sub_1E5D82F88();
    v71 = sub_1E5D82FB0(v70, 0, 0);
    v73 = v72;
    goto LABEL_22;
  }

  v70 = v47;
  if ([v70 paused])
  {

    goto LABEL_18;
  }

  v74 = v50[2];
  v75 = [v70 appleStandHours];
  v76 = [v74 localizedStringWithActiveHours_];

  if (!v76)
  {
    goto LABEL_30;
  }

  v77 = sub_1E5DA915C();
  v122 = v78;

  v79 = [v70 appleStandHoursGoal];
  v80 = [v74 localizedStringWithActiveHours_];

  if (!v80)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v81 = sub_1E5DA915C();
  v83 = v82;

  v84 = sub_1E5D82F88();
  sub_1E5D82FB0(v84, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1E5DB2490;
  v86 = MEMORY[0x1E69E6158];
  v87 = v121;
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = v87;
  v88 = v122;
  *(v85 + 32) = v77;
  *(v85 + 40) = v88;
  *(v85 + 96) = v86;
  *(v85 + 104) = v87;
  *(v85 + 72) = v81;
  *(v85 + 80) = v83;
  v34 = v86;
  v71 = sub_1E5DA916C();
  v73 = v89;

  v69 = v119;
  v50 = v112;
LABEL_22:

  v90 = v121;
  *(v28 + 216) = v34;
  *(v28 + 224) = v90;
  *(v28 + 192) = v71;
  *(v28 + 200) = v73;
  sub_1E5DA916C();

  sub_1E5DA832C();
  v91 = v123;
  sub_1E5DA82FC();
  v124[8] = sub_1E5D5E424();
  v124[9] = v92;
  v93 = *(v50 + 9);
  v127 = *(v50 + 3);
  v128 = v93;
  v125 = v93;
  v126 = v127;
  sub_1E5D617E0(&v128, v124);
  sub_1E5D617E0(&v127, v124);
  v94 = 0;
  v122 = sub_1E5DA84AC();
  v95 = *(v122 - 1);
  v121 = *(v95 + 56);
  v120 = v95 + 56;
  v96 = (v111 + 48);
  v97 = v109;
  do
  {
    v107 = v124[v94 + 9];
    v124[0] = v124[v94 + 8];
    v124[1] = v107;
    v121(v8, 1, 1, v122);
    sub_1E5D5E188();
    sub_1E5D5E1E0();

    sub_1E5DA835C();
    sub_1E5D5EC00(v8, &qword_1ED06A560);

    if ((*v96)(v11, 1, v97) == 1)
    {
      v105 = v11;
      v106 = &qword_1ED06A568;
    }

    else
    {
      v98 = v116;
      sub_1E5D5E234(v11, v116);
      v99 = v11;
      v100 = v8;
      v101 = v117;
      sub_1E5DA8C2C();
      v102 = sub_1E5DA8C3C();
      (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
      sub_1E5D5CC08(&qword_1ED06A5A8, &qword_1ED06A570);
      v103 = sub_1E5DA831C();
      sub_1E5D5EB3C(v101, v118);
      sub_1E5D5EBAC();
      sub_1E5DA834C();
      v104 = v101;
      v8 = v100;
      v11 = v99;
      v69 = v119;
      sub_1E5D5EC00(v104, &qword_1ED06A5B0);
      v103(v124, 0);
      v105 = v98;
      v91 = v123;
      v106 = &qword_1ED06A570;
    }

    sub_1E5D5EC00(v105, v106);
    v94 += 2;
  }

  while (v94 != 6);
  swift_arrayDestroy();
  (*(v113 + 32))(v115, v91, v69);
}

uint64_t sub_1E5D5F9E0()
{
  v0 = sub_1E5D82F88();
  v1 = sub_1E5D82FB0(v0, 0, 0);

  return v1;
}

uint64_t sub_1E5D5FA44()
{
  v0 = sub_1E5D82F88();
  v1 = sub_1E5D82FB0(v0, 0, 0);

  return v1;
}

uint64_t sub_1E5D5FAA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E5DB2490;
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1E5D5E0E0();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 64) = v5;
  *(v1 + 72) = v3;
  *(v1 + 80) = v2;
  swift_bridgeObjectRetain_n();

  return sub_1E5DA916C();
}

void sub_1E5D5FB54()
{
  if (!*v0)
  {
    goto LABEL_4;
  }

  v1 = *v0;
  if (![v1 paused])
  {
    v6 = sub_1E5D7C234();
    v7 = *(v0 + 16);
    if (v6)
    {
      v8 = [v1 appleMoveTime];
      v9 = [v7 localizedStringWithMoveMinutes_];

      if (!v9)
      {
        __break(1u);
        goto LABEL_16;
      }

      v4 = sub_1E5DA915C();
      v5 = v10;

      v11 = [v1 appleMoveTimeGoal];
      v12 = [v7 localizedStringWithMoveMinutes_];

      if (v12)
      {
LABEL_11:
        v2 = sub_1E5DA915C();
        v3 = v17;

        goto LABEL_12;
      }

      __break(1u);
    }

    v13 = [v1 activeEnergyBurned];
    v14 = [v7 localizedStringWithActiveEnergy_];

    if (v14)
    {
      v4 = sub_1E5DA915C();
      v5 = v15;

      v16 = [v1 activeEnergyBurnedGoal];
      v12 = [v7 localizedStringWithActiveEnergy_];

      if (v12)
      {
        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_4:
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  swift_bridgeObjectRetain_n();
  v4 = v2;
  v5 = v3;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E5DB2490;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1E5D5E0E0();
  *(v18 + 32) = v4;
  *(v18 + 40) = v5;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = v2;
  *(v18 + 80) = v3;

  sub_1E5DA916C();
}

void sub_1E5D5FDE0(SEL *a1, SEL *a2, SEL *a3)
{
  if (*v3)
  {
    v7 = *v3;
    if (![v7 paused])
    {
      v12 = *(v3 + 16);
      v13 = [v7 *a1];
      v14 = [v12 *a2];

      if (v14)
      {
        v10 = sub_1E5DA915C();
        v11 = v15;

        v16 = [v7 *a3];
        v17 = [v12 *a2];

        if (v17)
        {
          v8 = sub_1E5DA915C();
          v9 = v18;

          goto LABEL_8;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  swift_bridgeObjectRetain_n();
  v10 = v8;
  v11 = v9;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E5DB2490;
  v20 = MEMORY[0x1E69E6158];
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v21 = sub_1E5D5E0E0();
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  *(v19 + 96) = v20;
  *(v19 + 104) = v21;
  *(v19 + 64) = v21;
  *(v19 + 72) = v8;
  *(v19 + 80) = v9;

  sub_1E5DA916C();
}

uint64_t sub_1E5D5FF80()
{
  v0 = sub_1E5D82F88();
  v1 = sub_1E5D82FB0(v0, 0, 0);

  return v1;
}

uint64_t sub_1E5D5FFD8()
{
  v1 = *(v0 + 72);

  return v1;
}

void sub_1E5D60008(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = sub_1E5D82F88();
  v6 = sub_1E5D82FB0(v5, 0, 0);
  v8 = v7;

  v9 = sub_1E5D82F88();
  v10 = sub_1E5D82FB0(v9, 0, 0);
  v12 = v11;

  v13 = sub_1E5D82F88();
  v14 = sub_1E5D82FB0(v13, 0, 0);
  v16 = v15;

  v17 = sub_1E5D82F88();
  v18 = sub_1E5D82FB0(v17, 0, 0);
  v20 = v19;

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v6;
  *(a4 + 32) = v8;
  *(a4 + 40) = v10;
  *(a4 + 48) = v12;
  *(a4 + 56) = v14;
  *(a4 + 64) = v16;
  *(a4 + 72) = v18;
  *(a4 + 80) = v20;
}

uint64_t sub_1E5D60150()
{
  if (*v0)
  {
    v1 = *v0;
    if ([v1 paused])
    {
      v2 = sub_1E5D82F88();
      v3 = sub_1E5D82FB0(v2, 0, 0);

      return v3;
    }

    sub_1E5D7C328();
    v6 = floor(v8 * 100.0);
    [v1 _exerciseTimeCompletionPercentage];
    v5 = floor(v9 * 100.0);
    [v1 _standHoursCompletionPercentage];
    v7 = v10 * 100.0;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v11 = floor(v7);
  v12 = sub_1E5D82F88();
  sub_1E5D82FB0(v12, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E63B0];
  *(v13 + 16) = xmmword_1E5DB24A0;
  v15 = MEMORY[0x1E69E6438];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v6;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v5;
  *(v13 + 136) = v14;
  *(v13 + 144) = v15;
  *(v13 + 112) = v11;
  v16 = sub_1E5DA912C();

  return v16;
}

id sub_1E5D60368()
{
  v1 = *v0;
  if (sub_1E5D7C92C(*v0))
  {
    if (v1)
    {
      v2 = [v1 appleMoveTime];
      v3 = [objc_opt_self() minuteUnit];
      [v2 doubleValueForUnit_];
      v5 = v4;
    }

    else
    {
      v5 = 0.0;
    }

    v12 = sub_1E5D82F88();
    sub_1E5D82FB0(v12, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E63B0];
    *(v13 + 16) = xmmword_1E5DB2290;
    v15 = MEMORY[0x1E69E6438];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = floor(v5);
    v16 = sub_1E5DA912C();

    return v16;
  }

  else
  {
    result = [v0[2] unitManager];
    if (result)
    {
      v7 = result;
      v8 = [result userActiveEnergyBurnedUnit];

      if (v1)
      {
        v9 = [v1 activeEnergyBurned];
        [v9 doubleValueForUnit_];
        v11 = v10;
      }

      else
      {
        v11 = 0.0;
      }

      v17 = floor(v11);
      sub_1E5D6096C();
      v18 = objc_opt_self();
      v19 = [v18 kilocalorieUnit];
      v20 = sub_1E5DA939C();

      if ((v20 & 1) == 0)
      {
        v21 = [v18 jouleUnitWithMetricPrefix_];
        sub_1E5DA939C();
      }

      v22 = sub_1E5D82F88();
      sub_1E5D82FB0(v22, 0, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E63B0];
      *(v23 + 16) = xmmword_1E5DB2290;
      v25 = MEMORY[0x1E69E6438];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = v17;
      v26 = sub_1E5DA912C();

      return v26;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E5D606CC()
{
  v1 = [objc_opt_self() minuteUnit];
  if (*v0)
  {
    v2 = [*v0 appleExerciseTime];
    [v2 doubleValueForUnit_];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1E5D82F88();
  sub_1E5D82FB0(v5, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1E5DB2290;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = floor(v4);
  v9 = sub_1E5DA912C();

  return v9;
}

uint64_t sub_1E5D6081C()
{
  v1 = [objc_opt_self() countUnit];
  if (*v0)
  {
    v2 = [*v0 appleStandHours];
    [v2 doubleValueForUnit_];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1E5D82F88();
  sub_1E5D82FB0(v5, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1E5DB2290;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = floor(v4);
  v9 = sub_1E5DA912C();

  return v9;
}

unint64_t sub_1E5D6096C()
{
  result = qword_1ED7FF5A0;
  if (!qword_1ED7FF5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7FF5A0);
  }

  return result;
}

uint64_t sub_1E5D609F8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v7 = *v3;
  v8 = *v3;
  if (sub_1E5D7C8F0(v7))
  {

    v9 = sub_1E5D82F88();
    v10 = sub_1E5D82FB0(v9, 0, 0);
  }

  else if (v7 && (v11 = [v8 paused], v8, (v11 & 1) != 0))
  {
    return 0;
  }

  else
  {
    v38 = a3;
    v12 = sub_1E5D82F88();
    sub_1E5D82FB0(v12, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1E5DB24A0;
    v14 = sub_1E5D82F88();
    sub_1E5D82FB0(v14, 0, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E5DB2290;
    v16 = a1();
    v18 = v17;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1E5D5E0E0();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v20 = sub_1E5DA912C();
    v22 = v21;

    *(v13 + 32) = v20;
    *(v13 + 40) = v22;
    v23 = sub_1E5D82F88();
    sub_1E5D82FB0(v23, 0, 0);

    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E5DB2290;
    v25 = a2();
    v26 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = v19;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = sub_1E5DA912C();
    v30 = v29;

    *(v13 + 48) = v28;
    *(v13 + 56) = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E5DB2290;
    v32 = v38();
    *(v31 + 56) = v26;
    *(v31 + 64) = v19;
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    v34 = sub_1E5DA912C();
    v36 = v35;

    *(v13 + 64) = v34;
    *(v13 + 72) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A5C8);
    sub_1E5D5CC08(&qword_1ED06A5D0, &qword_1ED06A5C8);
    v10 = sub_1E5DA90DC();
  }

  return v10;
}

uint64_t sub_1E5D60D94()
{
  v1 = [objc_opt_self() countUnit];
  v2 = *v0;
  if (v2)
  {
    v3 = [v2 appleStandHours];
    [v3 doubleValueForUnit_];
    v5 = v4;

    v6 = [v2 appleStandHoursGoal];
    [v6 doubleValueForUnit_];
    v8 = v7;
  }

  else
  {
    v5 = 0.0;
    v8 = 0.0;
  }

  v9 = sub_1E5D82F88();
  sub_1E5D82FB0(v9, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E5DB2490;
  v11 = MEMORY[0x1E69E63B0];
  v12 = MEMORY[0x1E69E6438];
  *(v10 + 56) = MEMORY[0x1E69E63B0];
  *(v10 + 64) = v12;
  *(v10 + 32) = floor(v5);
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = floor(v8);
  v13 = sub_1E5DA912C();

  return v13;
}

void sub_1E5D60F68()
{
  v1 = *v0;
  if (sub_1E5D7C92C(*v0))
  {
    if (!v1)
    {
      v7 = 0;
      v11 = 0.0;
      goto LABEL_11;
    }

    v2 = [v1 appleMoveTime];
    v3 = [objc_opt_self() minuteUnit];
    [v2 doubleValueForUnit_];
    v5 = v4;
    v6 = v4;

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v5 < 9.22337204e18)
      {
        v7 = v5;
        v8 = [v1 appleMoveTimeGoal];
        v9 = [objc_opt_self() minuteUnit];
        [v8 doubleValueForUnit_];
        v11 = v10;

LABEL_11:
        v22 = sub_1E5D82F88();
        sub_1E5D82FB0(v22, 0, 0);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1E5DB2490;
        v24 = MEMORY[0x1E69E65A8];
        *(v23 + 56) = MEMORY[0x1E69E6530];
        *(v23 + 64) = v24;
        v25 = MEMORY[0x1E69E63B0];
        *(v23 + 32) = v7;
        v26 = MEMORY[0x1E69E6438];
        *(v23 + 96) = v25;
        *(v23 + 104) = v26;
        *(v23 + 72) = floor(v11);
        sub_1E5DA912C();

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v12 = [v0[2] unitManager];
  if (!v12)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 userActiveEnergyBurnedUnit];

  if (v1)
  {
    v15 = [v1 activeEnergyBurned];
    [v15 doubleValueForUnit_];
    v17 = v16;

    v18 = floor(v17);
    v19 = [v1 activeEnergyBurnedGoal];
    [v19 doubleValueForUnit_];
    v21 = v20;
  }

  else
  {
    v18 = 0.0;
    v21 = 0.0;
  }

  v27 = floor(v21);
  sub_1E5D6096C();
  v28 = objc_opt_self();
  v29 = [v28 kilocalorieUnit];
  v30 = sub_1E5DA939C();

  if ((v30 & 1) == 0)
  {
    v31 = [v28 jouleUnitWithMetricPrefix_];
    sub_1E5DA939C();
  }

  v32 = sub_1E5D82F88();
  sub_1E5D82FB0(v32, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1E5DB2490;
  v34 = MEMORY[0x1E69E63B0];
  v35 = MEMORY[0x1E69E6438];
  *(v33 + 56) = MEMORY[0x1E69E63B0];
  *(v33 + 64) = v35;
  *(v33 + 32) = v18;
  *(v33 + 96) = v34;
  *(v33 + 104) = v35;
  *(v33 + 72) = v27;
  sub_1E5DA912C();
}

uint64_t sub_1E5D613C8()
{
  v1 = [objc_opt_self() minuteUnit];
  v2 = *v0;
  if (v2)
  {
    v3 = [v2 appleExerciseTime];
    [v3 doubleValueForUnit_];
    v5 = v4;

    v6 = [v2 appleExerciseTimeGoal];
    [v6 doubleValueForUnit_];
    v8 = v7;
  }

  else
  {
    v5 = 0.0;
    v8 = 0.0;
  }

  v9 = sub_1E5D82F88();
  sub_1E5D82FB0(v9, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED06A578);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E5DB2490;
  v11 = MEMORY[0x1E69E63B0];
  v12 = MEMORY[0x1E69E6438];
  *(v10 + 56) = MEMORY[0x1E69E63B0];
  *(v10 + 64) = v12;
  *(v10 + 32) = floor(v5);
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = floor(v8);
  v13 = sub_1E5DA912C();

  return v13;
}