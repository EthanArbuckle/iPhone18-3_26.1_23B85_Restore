@interface HKSelectedRangeLabel
+ (id)_addChevron:(id)chevron font:(id)font;
+ (id)_attributedMultiplePrefixStringForSelectedRangeData:(id)data attributedString:(id)string font:(id)font foregroundColor:(id)color;
+ (id)_attributedStringForSelectedRangeData:(id)data font:(id)font foregroundColor:(id)color prefixColor:(id)prefixColor prefersImageAffixes:(BOOL)affixes embedded:(BOOL)embedded;
+ (id)_stringForSelectedRangeData:(id)data embedded:(BOOL)embedded;
+ (id)attributedStringForSelectedRangeData:(id)data font:(id)font foregroundColor:(id)color prefixColor:(id)prefixColor prefersImageAffixes:(BOOL)affixes embedded:(BOOL)embedded;
+ (id)standardPrefixColorForSelectedRangeData:(id)data defaultColor:(id)color;
- (CGSize)intrinsicContentSize;
- (HKSelectedRangeLabel)init;
- (UIEdgeInsets)padding;
- (void)drawTextInRect:(CGRect)rect;
- (void)setSelectedRangeData:(id)data;
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

- (void)drawTextInRect:(CGRect)rect
{
  top = self->_padding.top;
  left = self->_padding.left;
  v5 = rect.size.width - (left + self->_padding.right);
  v6 = rect.size.height - (top + self->_padding.bottom);
  v7.receiver = self;
  v7.super_class = HKSelectedRangeLabel;
  [(HKSelectedRangeLabel *)&v7 drawTextInRect:rect.origin.x + left, rect.origin.y + top, v5, v6];
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

- (void)setSelectedRangeData:(id)data
{
  dataCopy = data;
  textColor = [(HKSelectedRangeLabel *)self textColor];
  v9 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:dataCopy defaultColor:textColor];

  font = [(HKSelectedRangeLabel *)self font];
  textColor2 = [(HKSelectedRangeLabel *)self textColor];
  v8 = +[HKSelectedRangeLabel attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:](HKSelectedRangeLabel, "attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:", dataCopy, font, textColor2, v9, [dataCopy prefersImageAffixes], 0);

  [(HKSelectedRangeLabel *)self setAttributedText:v8];
}

+ (id)attributedStringForSelectedRangeData:(id)data font:(id)font foregroundColor:(id)color prefixColor:(id)prefixColor prefersImageAffixes:(BOOL)affixes embedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  affixesCopy = affixes;
  dataCopy = data;
  fontCopy = font;
  colorCopy = color;
  v17 = [self _attributedStringForSelectedRangeData:dataCopy font:fontCopy foregroundColor:colorCopy prefixColor:prefixColor prefersImageAffixes:affixesCopy embedded:embeddedCopy];
  v18 = v17;
  if (affixesCopy && v17)
  {
    v19 = [self _attributedMultiplePrefixStringForSelectedRangeData:dataCopy attributedString:v17 font:fontCopy foregroundColor:colorCopy];

    v18 = v19;
  }

  return v18;
}

+ (id)_attributedStringForSelectedRangeData:(id)data font:(id)font foregroundColor:(id)color prefixColor:(id)prefixColor prefersImageAffixes:(BOOL)affixes embedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  affixesCopy = affixes;
  v37[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  fontCopy = font;
  colorCopy = color;
  prefixColorCopy = prefixColor;
  v36[0] = *MEMORY[0x1E69DB650];
  titleColorOverride = [dataCopy titleColorOverride];
  v19 = titleColorOverride;
  if (titleColorOverride)
  {
    v20 = titleColorOverride;
  }

  else
  {
    v20 = colorCopy;
  }

  v36[1] = *MEMORY[0x1E69DB648];
  v37[0] = v20;
  v37[1] = fontCopy;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

  if (affixesCopy)
  {
    v22 = [_WDSelectedRangeIcon iconForData:dataCopy foregroundColor:prefixColorCopy compatibleWithFont:fontCopy];
  }

  else
  {
    v22 = 0;
  }

  v23 = [self _stringForSelectedRangeData:dataCopy embedded:embeddedCopy];
  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v23 attributes:v21];
    v25 = v24;
    if (v22 && v24)
    {
      v26 = objc_alloc(MEMORY[0x1E696AAB0]);
      [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v27 = v34 = colorCopy;
      [v27 localizedStringForKey:@"BLOOD_PRESSURE_SYMBOL_SPACE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      v28 = v33 = prefixColorCopy;
      v29 = [v26 initWithString:v28 attributes:v21];

      colorCopy = v34;
      v35[0] = v22;
      v35[1] = v29;
      v35[2] = v25;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
      v31 = HKUIJoinAttributedStringsForLocale(v30);

      prefixColorCopy = v33;
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

+ (id)_addChevron:(id)chevron font:(id)font
{
  v19[2] = *MEMORY[0x1E69E9840];
  chevronCopy = chevron;
  fontCopy = font;
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

  [fontCopy capHeight];
  [v11 bounds];
  v14 = v13;
  [v11 bounds];
  [v11 setBounds:v14];
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v11];
  v19[0] = chevronCopy;
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17 = HKUIJoinAttributedStringsForLocale(v16);

  return v17;
}

+ (id)_attributedMultiplePrefixStringForSelectedRangeData:(id)data attributedString:(id)string font:(id)font foregroundColor:(id)color
{
  v42 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  stringCopy = string;
  fontCopy = font;
  colorCopy = color;
  if ([dataCopy dataType] == 5 && (objc_msgSend(dataCopy, "statisticsType") == 3 || objc_msgSend(dataCopy, "statisticsType") == 5))
  {
    v29 = stringCopy;
    v30 = dataCopy;
    v13 = [stringCopy mutableCopy];
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
          v18 = [self standardPrefixColorForSelectedRangeData:v17 defaultColor:colorCopy];
          v19 = [self _attributedStringForSelectedRangeData:v17 font:fontCopy foregroundColor:colorCopy prefixColor:v18 prefersImageAffixes:1 embedded:1];
          v20 = [self _attributedStringForSelectedRangeData:v17 font:fontCopy foregroundColor:colorCopy prefixColor:v18 prefersImageAffixes:0 embedded:1];
          mutableString = [v13 mutableString];
          string = [v20 string];
          v23 = [mutableString rangeOfString:string];
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

    stringCopy = v29;
    dataCopy = v30;
  }

  else
  {
    v33 = stringCopy;
  }

  return v33;
}

+ (id)_stringForSelectedRangeData:(id)data embedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  v51[3] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  titleOverride = [dataCopy titleOverride];

  if (titleOverride)
  {
    titleOverride2 = [dataCopy titleOverride];
    goto LABEL_33;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"LEFT_AVERAGE_HEARING";
LABEL_15:
    v11 = @"HealthUI-Localizable";
LABEL_29:
    localizedUppercaseString2 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:v11];
    localizedUppercaseString = [localizedUppercaseString2 localizedUppercaseString];
LABEL_30:
    titleOverride2 = localizedUppercaseString;
LABEL_31:

    goto LABEL_32;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 8)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"RIGHT_AVERAGE_HEARING";
    goto LABEL_15;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 9)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"IN_BED_AVERAGE";
    goto LABEL_15;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 10)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"ASLEEP_AVERAGE";
    goto LABEL_15;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 24)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_AWAKE";
LABEL_28:
    v11 = @"HealthUI-Localizable-Acacia";
    goto LABEL_29;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 25)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_CORE";
    goto LABEL_28;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 26)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_DEEP";
    goto LABEL_28;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 27)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v8;
    v10 = @"SLEEP_STAGES_ANNOTATION_AVERAGE_REM";
    goto LABEL_28;
  }

  if ([dataCopy statisticsType] == 3 && objc_msgSend(dataCopy, "dataType") == 5)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v16;
    v17 = @"AVERAGE_INSULIN_DELIVERY";
  }

  else
  {
    if ([dataCopy statisticsType] != 5 || objc_msgSend(dataCopy, "dataType") != 5)
    {
      switch([dataCopy statisticsType])
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
          if (embeddedCopy)
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
          if (embeddedCopy)
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
          if (embeddedCopy)
          {
            v26 = @"MONTHLY_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"MONTHLY_AVERAGE_FULL";
          goto LABEL_158;
        case 13:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (embeddedCopy)
          {
            v26 = @"HOURLY_AVERAGE_ABBREVIATED";
            goto LABEL_81;
          }

          v24 = @"HOURLY_AVERAGE_FULL";
          goto LABEL_158;
        case 14:
          v23 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
          if (embeddedCopy)
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
          localizedUppercaseString2 = [v27 localizedUppercaseString];

          localizedUppercaseString3 = 0;
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
          if (embeddedCopy)
          {
            v26 = @"WEEKLY_AVERAGE_ABBREVIATED";
LABEL_81:
            localizedUppercaseString3 = [v23 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
          }

          else
          {
            v24 = @"WEEKLY_AVERAGE_FULL";
LABEL_158:
            v25 = @"HealthUI-Localizable";
            v22 = v23;
LABEL_86:
            v28 = [v22 localizedStringForKey:v24 value:&stru_1F42FFBE0 table:v25];
            localizedUppercaseString3 = [v28 localizedUppercaseString];
          }

          localizedUppercaseString2 = 0;
LABEL_88:

LABEL_89:
          switch([dataCopy dataType])
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
              v30 = HKUIStringForInsulinDeliveryReasonEmbedded(1, embeddedCopy);
              localizedUppercaseString4 = [v30 localizedUppercaseString];
              goto LABEL_138;
            case 4:
              v30 = HKUIStringForInsulinDeliveryReasonEmbedded(2, embeddedCopy);
              localizedUppercaseString5 = [v30 localizedUppercaseString];
              goto LABEL_146;
            case 5:
              v34 = MEMORY[0x1E696AEC0];
              v30 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
              v35 = [v30 localizedStringForKey:@"INSULIN_DELIVERY_REASON_COMBINED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
              v36 = HKUIStringForInsulinDeliveryReasonEmbedded(1, 1);
              v37 = HKUIStringForInsulinDeliveryReasonEmbedded(2, 1);
              v38 = [v34 stringWithFormat:v35, v36, v37];
              localizedUppercaseString4 = [v38 localizedUppercaseString];

              localizedUppercaseString2 = v35;
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
              localizedUppercaseString4 = [v45 localizedUppercaseString];

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
              localizedUppercaseString5 = [v32 localizedStringForKey:v33 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Balance"];
LABEL_146:
              localizedUppercaseString4 = localizedUppercaseString5;
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
              localizedUppercaseString4 = [v45 localizedUppercaseString];

              v40 = 1;
LABEL_137:
              localizedUppercaseString2 = v45;
LABEL_138:

              localizedUppercaseString2 = localizedUppercaseString4;
              if (localizedUppercaseString3)
              {
                goto LABEL_139;
              }

              goto LABEL_148;
            default:
              v40 = 1;
              if (!localizedUppercaseString3)
              {
                goto LABEL_148;
              }

LABEL_139:
              if (localizedUppercaseString2)
              {
                if (v40)
                {
                  v51[0] = localizedUppercaseString2;
                  v46 = v51;
                  v47 = localizedUppercaseString3;
                }

                else
                {
                  v50 = localizedUppercaseString3;
                  v46 = &v50;
                  v47 = localizedUppercaseString2;
                }

                v46[1] = @" ";
                v46[2] = v47;
                v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
                titleOverride2 = HKUIJoinStringsForLocale(v48);

                goto LABEL_31;
              }

LABEL_148:
              if (localizedUppercaseString3)
              {
                v49 = localizedUppercaseString3;
              }

              else
              {
                v49 = localizedUppercaseString2;
              }

              localizedUppercaseString = v49;
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
          localizedUppercaseString3 = 0;
          localizedUppercaseString2 = 0;
          goto LABEL_89;
      }

      goto LABEL_30;
    }

    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    localizedUppercaseString3 = v16;
    v17 = @"TOTAL_INSULIN_DELIVERY";
  }

  v18 = [v16 localizedStringForKey:v17 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v19 = HKUIStringForInsulinDeliveryReasonEmbedded(1, 1);
  v20 = HKUIStringForInsulinDeliveryReasonEmbedded(2, 1);
  v21 = [v15 stringWithFormat:v18, v19, v20];
  titleOverride2 = [v21 localizedUppercaseString];

LABEL_32:
LABEL_33:

  return titleOverride2;
}

+ (id)standardPrefixColorForSelectedRangeData:(id)data defaultColor:(id)color
{
  dataCopy = data;
  colorCopy = color;
  prefixColor = [dataCopy prefixColor];

  prefixColor2 = colorCopy;
  if (prefixColor)
  {
    prefixColor2 = [dataCopy prefixColor];
  }

  switch([dataCopy dataType])
  {
    case 1:
    case 20:
    case 21:
    case 22:
    case 23:
    case 40:
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      break;
    case 2:
    case 41:
      labelColor = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
      break;
    case 3:
      labelColor = [MEMORY[0x1E69DC888] hk_insulinBasalKeyColor];
      break;
    case 4:
      labelColor = HKHealthKeyColor();
      break;
    case 9:
      if (prefixColor)
      {
        goto LABEL_16;
      }

      labelColor = [MEMORY[0x1E69DC888] hk_sleepInBedColor];
      break;
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      if (prefixColor)
      {
        goto LABEL_16;
      }

      labelColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
      break;
    case 11:
    case 12:
      labelColor = [MEMORY[0x1E69DC888] hk_reproductiveHealthKeyColor];
      break;
    case 28:
      labelColor = [MEMORY[0x1E69DC888] hk_medicationDoseEventTakenColor];
      break;
    case 29:
      labelColor = [MEMORY[0x1E69DC888] hk_medicationDoseEventSkippedColor];
      break;
    default:
      goto LABEL_16;
  }

  v10 = labelColor;

  prefixColor2 = v10;
LABEL_16:

  return prefixColor2;
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