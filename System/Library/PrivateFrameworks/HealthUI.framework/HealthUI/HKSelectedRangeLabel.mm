@interface HKSelectedRangeLabel
+ (id)_addChevron:(id)a3 font:(id)a4;
+ (id)_attributedMultiplePrefixStringForSelectedRangeData:(id)a3 attributedString:(id)a4 font:(id)a5 foregroundColor:(id)a6;
+ (id)_attributedStringForSelectedRangeData:(id)a3 font:(id)a4 foregroundColor:(id)a5 prefixColor:(id)a6 prefersImageAffixes:(BOOL)a7 embedded:(BOOL)a8;
+ (id)_stringForSelectedRangeData:(id)a3 embedded:(BOOL)a4;
+ (id)attributedStringForSelectedRangeData:(id)a3 font:(id)a4 foregroundColor:(id)a5 prefixColor:(id)a6 prefersImageAffixes:(BOOL)a7 embedded:(BOOL)a8;
+ (id)standardPrefixColorForSelectedRangeData:(id)a3 defaultColor:(id)a4;
- (CGSize)intrinsicContentSize;
- (HKSelectedRangeLabel)init;
- (UIEdgeInsets)padding;
- (void)drawTextInRect:(CGRect)a3;
- (void)setSelectedRangeData:(id)a3;
@end

@implementation HKSelectedRangeLabel

- (HKSelectedRangeLabel)init
{
  v4.receiver = self;
  v4.super_class = HKSelectedRangeLabel;
  result = [(HKSelectedRangeLabel *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    *&result->_padding.top = *MEMORY[0x1E69DDCE0];
    *&result->_padding.bottom = v3;
  }

  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  top = self->_padding.top;
  left = self->_padding.left;
  v5 = a3.size.width - (left + self->_padding.right);
  v6 = a3.size.height - (top + self->_padding.bottom);
  v7.receiver = self;
  v7.super_class = HKSelectedRangeLabel;
  [(HKSelectedRangeLabel *)&v7 drawTextInRect:a3.origin.x + left, a3.origin.y + top, v5, v6];
}

- (CGSize)intrinsicContentSize
{
  v7.receiver = self;
  v7.super_class = HKSelectedRangeLabel;
  [(HKSelectedRangeLabel *)&v7 intrinsicContentSize];
  v4 = v3 + self->_padding.left + self->_padding.right;
  v6 = v5 + self->_padding.top + self->_padding.bottom;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)setSelectedRangeData:(id)a3
{
  v4 = a3;
  v5 = [(HKSelectedRangeLabel *)self textColor];
  v9 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:v4 defaultColor:v5];

  v6 = [(HKSelectedRangeLabel *)self font];
  v7 = [(HKSelectedRangeLabel *)self textColor];
  v8 = +[HKSelectedRangeLabel attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:](HKSelectedRangeLabel, "attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:", v4, v6, v7, v9, [v4 prefersImageAffixes], 0);

  [(HKSelectedRangeLabel *)self setAttributedText:v8];
}

+ (id)attributedStringForSelectedRangeData:(id)a3 font:(id)a4 foregroundColor:(id)a5 prefixColor:(id)a6 prefersImageAffixes:(BOOL)a7 embedded:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [a1 _attributedStringForSelectedRangeData:v14 font:v15 foregroundColor:v16 prefixColor:a6 prefersImageAffixes:v9 embedded:v8];
  v18 = v17;
  if (v9 && v17)
  {
    v19 = [a1 _attributedMultiplePrefixStringForSelectedRangeData:v14 attributedString:v17 font:v15 foregroundColor:v16];

    v18 = v19;
  }

  return v18;
}

+ (id)_attributedStringForSelectedRangeData:(id)a3 font:(id)a4 foregroundColor:(id)a5 prefixColor:(id)a6 prefersImageAffixes:(BOOL)a7 embedded:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v37[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v36[0] = *MEMORY[0x1E69DB650];
  v18 = [v14 titleColorOverride];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  v36[1] = *MEMORY[0x1E69DB648];
  v37[0] = v20;
  v37[1] = v15;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

  if (v9)
  {
    v22 = [_WDSelectedRangeIcon iconForData:v14 foregroundColor:v17 compatibleWithFont:v15];
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 _stringForSelectedRangeData:v14 embedded:v8];
  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23 attributes:v21];
    v25 = v24;
    if (v22 && v24)
    {
      v26 = objc_alloc(MEMORY[0x1E696AAB0]);
      [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v27 = v34 = v16;
      [v27 localizedStringForKey:@"BLOOD_PRESSURE_SYMBOL_SPACE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v28 = v33 = v17;
      v29 = [v26 initWithString:v28 attributes:v21];

      v16 = v34;
      v35[0] = v22;
      v35[1] = v29;
      v35[2] = v25;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
      v31 = HKUIJoinAttributedStringsForLocale(v30);

      v17 = v33;
      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0;
  }

  if (!v22)
  {
    goto LABEL_15;
  }

  v31 = v22;
LABEL_14:

  v25 = v31;
LABEL_15:

  return v25;
}

+ (id)_addChevron:(id)a3 font:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    v8 = @"date_chevron_left";
  }

  else
  {
    v8 = @"date_chevron_right";
  }

  v9 = [MEMORY[0x1E69DCAB8] imageNamed:v8 inBundle:v7 compatibleWithTraitCollection:0];
  v10 = [v9 imageWithRenderingMode:2];

  v11 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v11 setImage:v10];
  [v10 size];
  if (v12 != 0.0)
  {
    [v10 size];
    [v10 size];
  }

  [v6 capHeight];
  [v11 bounds];
  v14 = v13;
  [v11 bounds];
  [v11 setBounds:v14];
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v11];
  v19[0] = v5;
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17 = HKUIJoinAttributedStringsForLocale(v16);

  return v17;
}

+ (id)_attributedMultiplePrefixStringForSelectedRangeData:(id)a3 attributedString:(id)a4 font:(id)a5 foregroundColor:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v34 = a5;
  v12 = a6;
  if ([v10 dataType] == 5 && (objc_msgSend(v10, "statisticsType") == 3 || objc_msgSend(v10, "statisticsType") == 5))
  {
    v29 = v11;
    v30 = v10;
    v13 = [v11 mutableCopy];
    v14 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v14 setDataType:3];
    v15 = [[HKSelectedRangeData alloc] initWithStatisticsType:0];
    [(HKSelectedRangeData *)v15 setDataType:4];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v15;
    v28 = v14;
    v40[0] = v14;
    v40[1] = v15;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v33 = v13;
    v35 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v35)
    {
      v32 = *v37;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v18 = [a1 standardPrefixColorForSelectedRangeData:v17 defaultColor:v12];
          v19 = [a1 _attributedStringForSelectedRangeData:v17 font:v34 foregroundColor:v12 prefixColor:v18 prefersImageAffixes:1 embedded:1];
          v20 = [a1 _attributedStringForSelectedRangeData:v17 font:v34 foregroundColor:v12 prefixColor:v18 prefersImageAffixes:0 embedded:1];
          v21 = [v13 mutableString];
          v22 = [v20 string];
          v23 = [v21 rangeOfString:v22];
          v25 = v24;

          v13 = v33;
          if (v25)
          {
            [v33 replaceCharactersInRange:v23 withAttributedString:{v25, v19}];
          }
        }

        v35 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v35);
    }

    v11 = v29;
    v10 = v30;
  }

  else
  {
    v33 = v11;
  }

  return v33;
}

+ (id)_stringForSelectedRangeData:(id)a3 embedded:(BOOL)a4
{
  v4 = a4;
  v51[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 titleOverride];

  if (v6)
  {
    v7 = [v5 titleOverride];
    goto LABEL_33;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"LEFT_AVERAGE_HEARING";
LABEL_15:
    v11 = @"HealthUI-Localizable";
LABEL_29:
    v12 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:v11];
    v13 = [v12 localizedUppercaseString];
LABEL_30:
    v7 = v13;
LABEL_31:

    goto LABEL_32;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 8)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"RIGHT_AVERAGE_HEARING";
    goto LABEL_15;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 9)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"IN_BED_AVERAGE";
    goto LABEL_15;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 10)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"ASLEEP_AVERAGE";
    goto LABEL_15;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 24)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_AWAKE";
LABEL_28:
    v11 = @"HealthUI-Localizable-Acacia";
    goto LABEL_29;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 25)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_CORE";
    goto LABEL_28;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 26)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_DEEP";
    goto LABEL_28;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 27)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_REM";
    goto LABEL_28;
  }

  if ([v5 statisticsType] == 3 && objc_msgSend(v5, "dataType") == 5)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v16;
    v17 = @"AVERAGE_INSULIN_DELIVERY";
  }

  else
  {
    if ([v5 statisticsType] != 5 || objc_msgSend(v5, "dataType") != 5)
    {
      switch([v5 statisticsType])
      {
        case 1:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"MINIMUM_ABBREVIATED";
          goto LABEL_85;
        case 2:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"MAXIMUM_ABBREVIATED";
          goto LABEL_85;
        case 3:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"AVERAGE_NORMAL";
          goto LABEL_158;
        case 4:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"EXPOSURE_NORMAL";
          goto LABEL_85;
        case 5:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"TOTAL_ABBREVIATED";
          goto LABEL_85;
        case 6:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"INCREASE_ABBREVIATED";
          goto LABEL_85;
        case 7:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"DECREASE_ABBREVIATED";
          goto LABEL_85;
        case 8:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"DAILY_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"DAILY_AVERAGE_FULL";
          goto LABEL_158;
        case 9:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"RANGE_ABBREVIATED";
          goto LABEL_85;
        case 10:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"DURATION_ABBREVIATED";
          goto LABEL_85;
        case 11:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"MOST_RECENT_ABBREVIATED";
          goto LABEL_85;
        case 12:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"MONTHLY_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"MONTHLY_AVERAGE_FULL";
          goto LABEL_158;
        case 13:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"HOURLY_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"HOURLY_AVERAGE_FULL";
          goto LABEL_158;
        case 14:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"MINUTE_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"MINUTE_AVERAGE_FULL";
          goto LABEL_158;
        case 15:
          v22 = HKHealthKitFrameworkBundle();
          v23 = v22;
          v25 = *MEMORY[0x1E696B910];
          v24 = @"RESTING_HEART_RATE";
          goto LABEL_86;
        case 16:
          v22 = HKHealthKitFrameworkBundle();
          v23 = v22;
          v25 = *MEMORY[0x1E696B910];
          v24 = @"WALKING_HEART_RATE_AVERAGE_SHORT";
          goto LABEL_86;
        case 17:
          v22 = HKHealthKitFrameworkBundle();
          v23 = v22;
          v25 = *MEMORY[0x1E696B910];
          v24 = @"WORKOUT";
          goto LABEL_86;
        case 18:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"BREATHE";
          goto LABEL_85;
        case 19:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"SLEEP";
          goto LABEL_85;
        case 20:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"SYMPTOM_TITLE";
          goto LABEL_85;
        case 21:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v27 = [v23 localizedStringForKey:@"SCANDIUM_OVERLAY_LOW_AIR_PRESSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
          v12 = [v27 localizedUppercaseString];

          v9 = 0;
          goto LABEL_88;
        case 22:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"CARDIO_FITNESS_LEVEL_TITLE";
          goto LABEL_77;
        case 23:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"CARDIO_FITNESS_LEVEL_AVERAGE_TITLE";
LABEL_77:
          v25 = @"HealthUI-Localizable-CardioFitness";
          goto LABEL_86;
        case 24:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (v4)
          {
            v26 = @"WEEKLY_AVERAGE_ABBREVIATED";
LABEL_81:
            v9 = [v23 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          }

          else
          {
            v24 = @"WEEKLY_AVERAGE_FULL";
LABEL_158:
            v25 = @"HealthUI-Localizable";
            v22 = v23;
LABEL_86:
            v28 = [v22 localizedStringForKey:v24 value:&stru_1F42FFBE0 table:v25];
            v9 = [v28 localizedUppercaseString];
          }

          v12 = 0;
LABEL_88:

LABEL_89:
          switch([v5 dataType])
          {
            case 1:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SYSTOLIC";
              goto LABEL_135;
            case 2:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"DIASTOLIC";
              goto LABEL_135;
            case 3:
              v40 = 1;
              v30 = HKUIStringForInsulinDeliveryReasonEmbedded(1, v4);
              v39 = [v30 localizedUppercaseString];
              goto LABEL_138;
            case 4:
              v30 = HKUIStringForInsulinDeliveryReasonEmbedded(2, v4);
              v41 = [v30 localizedUppercaseString];
              goto LABEL_146;
            case 5:
              v34 = MEMORY[0x1E696AEC0];
              v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v35 = [v30 localizedStringForKey:@"INSULIN_DELIVERY_REASON_COMBINED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
              v36 = HKUIStringForInsulinDeliveryReasonEmbedded(1, 1);
              v37 = HKUIStringForInsulinDeliveryReasonEmbedded(2, 1);
              v38 = [v34 stringWithFormat:v35, v36, v37];
              v39 = [v38 localizedUppercaseString];

              v12 = v35;
              v40 = 1;
              goto LABEL_138;
            case 6:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"ACTIVE_ABBREVIATED";
              goto LABEL_135;
            case 7:
            case 33:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"LEFT_AVERAGE_HEARING_SHORT";
              goto LABEL_135;
            case 8:
            case 34:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"RIGHT_AVERAGE_HEARING_SHORT";
              goto LABEL_135;
            case 9:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"IN_BED";
              goto LABEL_135;
            case 10:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"ASLEEP";
              goto LABEL_135;
            case 11:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"MENSTRUAL_FLOW";
              goto LABEL_135;
            case 12:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"START_OF_CYCLE";
              goto LABEL_135;
            case 13:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_GOAL_CONTEXT";
              goto LABEL_126;
            case 14:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_SCHEDULE_BEDTIME";
              goto LABEL_126;
            case 15:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_SCHEDULE_WAKETIME";
              goto LABEL_126;
            case 16:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_START";
              goto LABEL_126;
            case 17:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_END";
              goto LABEL_126;
            case 18:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_IN_BED_START";
              goto LABEL_126;
            case 19:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_IN_BED_END";
LABEL_126:
              v44 = @"HealthUI-Localizable-Eucalyptus";
              goto LABEL_136;
            case 20:
            case 21:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"GLUCOSE_BELOW_RANGE";
              goto LABEL_135;
            case 22:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"GLUCOSE_IN_RANGE";
              goto LABEL_135;
            case 23:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"GLUCOSE_ABOVE_RANGE";
              goto LABEL_135;
            case 24:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_STAGES_ANNOTATION_AWAKE";
              goto LABEL_131;
            case 25:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_STAGES_ANNOTATION_CORE";
              goto LABEL_131;
            case 26:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_STAGES_ANNOTATION_DEEP";
              goto LABEL_131;
            case 27:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_STAGES_ANNOTATION_REM";
LABEL_131:
              v44 = @"HealthUI-Localizable-Acacia";
              goto LABEL_136;
            case 28:
              v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v42;
              v43 = @"DOSE_EVENT_CHART_TAKEN";
              goto LABEL_133;
            case 29:
              v42 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v42;
              v43 = @"DOSE_EVENT_CHART_SKIPPED";
LABEL_133:
              v45 = [v42 localizedStringForKey:v43 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Meds"];
              v39 = [v45 localizedUppercaseString];

              v40 = 0;
              goto LABEL_137;
            case 30:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"STATE_OF_MIND_CHART_DAILY";
              goto LABEL_122;
            case 31:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"STATE_OF_MIND_CHART_MOMENTARY";
              goto LABEL_122;
            case 32:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"STATE_OF_MIND_CHART_TOTAL_MOMENTARY";
LABEL_122:
              v44 = @"HealthUI-Localizable-Chamomile";
              goto LABEL_136;
            case 35:
              v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v32;
              v33 = @"BALANCE_CHART_BLOOD_OXYGEN";
              goto LABEL_145;
            case 36:
              v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v32;
              v33 = @"BALANCE_CHART_HEART_RATE";
              goto LABEL_145;
            case 37:
              v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v32;
              v33 = @"BALANCE_CHART_RESPIRATORY_RATE";
              goto LABEL_145;
            case 38:
              v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v32;
              v33 = @"BALANCE_CHART_TIME_ASLEEP";
              goto LABEL_145;
            case 39:
              v32 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v32;
              v33 = @"BALANCE_CHART_WRIST_TEMPERATURE";
LABEL_145:
              v41 = [v32 localizedStringForKey:v33 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Balance"];
LABEL_146:
              v39 = v41;
              v40 = 1;
              goto LABEL_138;
            case 40:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SYSTOLIC_AVG";
              goto LABEL_135;
            case 41:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"DIASTOLIC_AVG";
LABEL_135:
              v44 = @"HealthUI-Localizable";
              goto LABEL_136;
            case 42:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_SCORE_DURATION";
              goto LABEL_129;
            case 43:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_SCORE_BEDTIME_CONSISTENCY";
              goto LABEL_129;
            case 44:
              v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v30 = v29;
              v31 = @"SLEEP_SCORE_INTERRUPTIONS";
LABEL_129:
              v44 = @"HealthUI-Localizable-SleepDetails";
LABEL_136:
              v45 = [v29 localizedStringForKey:v31 value:&stru_1F42FFBE0 table:v44];
              v39 = [v45 localizedUppercaseString];

              v40 = 1;
LABEL_137:
              v12 = v45;
LABEL_138:

              v12 = v39;
              if (v9)
              {
                goto LABEL_139;
              }

              goto LABEL_148;
            default:
              v40 = 1;
              if (!v9)
              {
                goto LABEL_148;
              }

LABEL_139:
              if (v12)
              {
                if (v40)
                {
                  v51[0] = v12;
                  v46 = v51;
                  v47 = v9;
                }

                else
                {
                  v50 = v9;
                  v46 = &v50;
                  v47 = v12;
                }

                v46[1] = @" ";
                v46[2] = v47;
                v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
                v7 = HKUIJoinStringsForLocale(v48);

                goto LABEL_31;
              }

LABEL_148:
              if (v9)
              {
                v49 = v9;
              }

              else
              {
                v49 = v12;
              }

              v13 = v49;
              break;
          }

          break;
        case 25:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"LEVEL_TITLE";
          goto LABEL_85;
        case 26:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"LEVEL_RANGE_TITLE";
          goto LABEL_85;
        case 27:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"LEVEL_AVERAGE_TITLE";
          goto LABEL_85;
        case 28:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"LEVEL_MOST_FREQUENT_TITLE";
          goto LABEL_85;
        case 29:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"MAXIMUM_DEPTH";
          v25 = @"HealthUI-Localizable-Charon";
          goto LABEL_86;
        case 30:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"STATE_MOST_FREQUENT_TITLE";
LABEL_85:
          v25 = @"HealthUI-Localizable";
          goto LABEL_86;
        case 31:
          v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          v23 = v22;
          v24 = @"SLEEP_BREATHING_DISTURBANCES_LEVEL_TITLE";
          v25 = @"HealthUI-Localizable-Nebula";
          goto LABEL_86;
        default:
          v9 = 0;
          v12 = 0;
          goto LABEL_89;
      }

      goto LABEL_30;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v16;
    v17 = @"TOTAL_INSULIN_DELIVERY";
  }

  v18 = [v16 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v19 = HKUIStringForInsulinDeliveryReasonEmbedded(1, 1);
  v20 = HKUIStringForInsulinDeliveryReasonEmbedded(2, 1);
  v21 = [v15 stringWithFormat:v18, v19, v20];
  v7 = [v21 localizedUppercaseString];

LABEL_32:
LABEL_33:

  return v7;
}

+ (id)standardPrefixColorForSelectedRangeData:(id)a3 defaultColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 prefixColor];

  v8 = v6;
  if (v7)
  {
    v8 = [v5 prefixColor];
  }

  switch([v5 dataType])
  {
    case 1:
    case 20:
    case 21:
    case 22:
    case 23:
    case 40:
      v9 = [MEMORY[0x1E69DC888] labelColor];
      break;
    case 2:
    case 41:
      v9 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
      break;
    case 3:
      v9 = [MEMORY[0x1E69DC888] hk_insulinBasalKeyColor];
      break;
    case 4:
      v9 = HKHealthKeyColor();
      break;
    case 9:
      if (v7)
      {
        goto LABEL_16;
      }

      v9 = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
      break;
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      if (v7)
      {
        goto LABEL_16;
      }

      v9 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
      break;
    case 11:
    case 12:
      v9 = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      break;
    case 28:
      v9 = [MEMORY[0x1E69DC888] hk_medicationDoseEventTakenColor];
      break;
    case 29:
      v9 = [MEMORY[0x1E69DC888] hk_medicationDoseEventSkippedColor];
      break;
    default:
      goto LABEL_16;
  }

  v10 = v9;

  v8 = v10;
LABEL_16:

  return v8;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end