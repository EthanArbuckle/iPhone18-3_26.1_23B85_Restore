@interface FIFormattingManager
+ (id)localizedShortCadenceUnitStringForActivityType:(unint64_t)type;
+ (id)localizedShortPowerUnitString;
+ (id)percentStringWithNumber:(id)number;
+ (id)stringWithNumber:(id)number decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode;
+ (unint64_t)defaultPrecisionForDistanceUnit:(unint64_t)unit;
+ (unint64_t)sectionTypeForMetricType:(unint64_t)type;
- (BOOL)_workoutSupportsDistanceMetricForGoalDisplay:(id)display;
- (FIFormattingManager)init;
- (FIFormattingManager)initWithUnitManager:(id)manager;
- (double)caloriesForEnergyBurnedInUserUnit:(double)unit;
- (double)energyBurnedInUserUnitForCalories:(double)calories;
- (double)roundedDailyMoveGoal:(double)goal activityMoveMode:(int64_t)mode;
- (double)roundedDailyMoveGoalForCalories:(double)calories;
- (double)speedPerHourWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type;
- (id)_energyBurnedUnitStringForUnit:(id)unit useShortString:(BOOL)string;
- (id)_localizedEnergyDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type activityTypeString:(id)string;
- (id)_localizedKeyMetricCyclingStringWithWorkout:(id)workout withUnitStyle:(unint64_t)style;
- (id)_localizedKeyMetricDistanceStringForWorkout:(id)workout withUnitStyle:(unint64_t)style;
- (id)_localizedKeyMetricDurationStringWithWorkout:(id)workout;
- (id)_localizedKeyMetricEnergyBurnedStringForWorkout:(id)workout withUnitStyle:(unint64_t)style;
- (id)_localizedOpenGoalKeyMetricStringForWorkout:(id)workout withUnitStyle:(unint64_t)style;
- (id)_localizedStringWithDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit unitStyle:(int64_t)style decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode;
- (id)_localizedTimeDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type activityTypeString:(id)string;
- (id)_localizedTimeValueForWorkout:(id)workout;
- (id)_stringByReplacingThirdsIfNeeded:(id)needed distanceInMeters:(double)meters distanceUnit:(unint64_t)unit roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode;
- (id)applyTextCase:(unint64_t)case toString:(id)string;
- (id)decimalSeparator;
- (id)finalLocalizedKeyForKey:(id)key multiline:(BOOL)multiline;
- (id)localizationKeyForDistanceBaseKey:(id)key distanceType:(unint64_t)type;
- (id)localizationKeyForEnergyBaseKey:(id)key;
- (id)localizationKeyForMoveBaseKey:(id)key activityMoveMode:(int64_t)mode;
- (id)localizationKeyForMoveMinutesBaseKey:(id)key;
- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType;
- (id)localizedCompactNaturalScaleStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style usedUnit:(unint64_t *)unit;
- (id)localizedDistanceByStrokeStyle:(id)style isPoolSwim:(BOOL)swim;
- (id)localizedDistinguishingCadenceUnitStringWithMetricType:(unint64_t)type;
- (id)localizedDistinguishingPowerStringWithMetricType:(unint64_t)type;
- (id)localizedDistinguishingPowerUnitStringWithMetricType:(unint64_t)type;
- (id)localizedGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType;
- (id)localizedGoalUnitForWorkout:(id)workout;
- (id)localizedGoalValueForWorkout:(id)workout;
- (id)localizedHeartRateUnitString;
- (id)localizedInSessionDescriptionForElevation:(unint64_t)elevation;
- (id)localizedInSessionDescriptionForGroundElevation:(unint64_t)elevation;
- (id)localizedKeyMetricStringForWorkout:(id)workout unitStyle:(unint64_t)style;
- (id)localizedLongActiveEnergyUnitStringWithTextCase:(unint64_t)case;
- (id)localizedLongActiveHoursUnitString;
- (id)localizedLongActiveHoursUnitStringForValue:(unint64_t)value;
- (id)localizedLongBriskMinutesUnitString;
- (id)localizedLongBriskMinutesUnitStringForValue:(unint64_t)value;
- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)case;
- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)case value:(unint64_t)value;
- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)mode;
- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)mode value:(unint64_t)value;
- (id)localizedLongUnitStringForDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit textCase:(unint64_t)case;
- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)case;
- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)case value:(unint64_t)value;
- (id)localizedNaturalScaleStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style usedUnit:(unint64_t *)unit decimalTrimmingMode:(unint64_t)mode;
- (id)localizedPaceAndUnitStringForSpeed:(double)speed activityType:(id)type;
- (id)localizedPaceAndUnitWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type unitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode;
- (id)localizedPaceStringWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format unitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode distanceType:(unint64_t)type zeroShowsDashes:(BOOL)dashes;
- (id)localizedPaceUnitStringWithDistanceType:(unint64_t)type distanceUnit:(unint64_t)unit unitStyle:(int64_t)style;
- (id)localizedPaceValueForSplit:(id)split activityType:(id)type;
- (id)localizedPowerUnitStringForPower:(double)power;
- (id)localizedShareTextWithWorkout:(id)workout shareValue:(id)value;
- (id)localizedShortActiveEnergyUnitString;
- (id)localizedShortActiveHoursUnitString;
- (id)localizedShortBriskMinutesUnitString;
- (id)localizedShortTypeDistinguishingUnitStringForEnergyType:(unint64_t)type workoutSectionType:(unint64_t)sectionType multiline:(BOOL)multiline;
- (id)localizedShortTypeDistinguishingUnitStringForPowerType:(unint64_t)type unitString:(id)string;
- (id)localizedShortUnitStringForDistanceType:(unint64_t)type;
- (id)localizedShortUnitStringForDistanceUnit:(unint64_t)unit textCase:(unint64_t)case;
- (id)localizedSpeedUnitString;
- (id)localizedSpeedUnitStringForActivityType:(id)type;
- (id)localizedSpeedUnitStringForDistanceType:(unint64_t)type unitStyle:(unint64_t)style;
- (id)localizedSpeedUnitStringForDistanceUnit:(unint64_t)unit unitStyle:(unint64_t)style;
- (id)localizedStringForMetricType:(unint64_t)type paceFormat:(int64_t)format;
- (id)localizedStringWithActiveHours:(id)hours;
- (id)localizedStringWithBeatsPerMinute:(double)minute requirePositiveValue:(BOOL)value;
- (id)localizedStringWithBriskMinutes:(id)minutes;
- (id)localizedStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type distanceUnit:(unint64_t)unit unitStyle:(unint64_t)style roundingMode:(unint64_t)mode;
- (id)localizedStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style roundingMode:(unint64_t)mode;
- (id)localizedStringWithDistanceInMeters:(double)meters distanceUnit:(unint64_t)unit unitStyle:(unint64_t)style decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode;
- (id)localizedStringWithEnergy:(id)energy energyType:(unint64_t)type unitStyle:(unint64_t)style;
- (id)localizedStringWithEnergyInCalories:(double)calories energyType:(unint64_t)type unitStyle:(unint64_t)style;
- (id)localizedStringWithMoveMinutes:(id)minutes;
- (id)localizedStringWithMoveMinutes:(id)minutes unitStyle:(unint64_t)style;
- (id)localizedStringWithMoveQuantity:(id)quantity activityMoveMode:(int64_t)mode;
- (id)localizedStringWithMoveQuantity:(id)quantity unitStyle:(unint64_t)style activityMoveMode:(int64_t)mode;
- (id)localizedStringWithPersonHeight:(id)height unitStyle:(int64_t)style;
- (id)localizedStrokeCountStringWithCount:(int64_t)count overDistance:(id)distance paceFormat:(int64_t)format;
- (id)localizedSwimmingPaceStringWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format;
- (id)localizedTitleForSplit:(id)split unit:(id)unit lapIndex:(int64_t)index useShortFormat:(BOOL)format;
- (id)localizedUnitStringForDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit unitStyle:(unint64_t)style;
- (id)stringWithDuration:(double)duration durationFormat:(unint64_t)format;
- (unint64_t)_effectiveGoalTypeForWorkout:(id)workout;
- (unint64_t)decimalPrecisionForPaceFormat:(int64_t)format;
- (unint64_t)naturalScaleUnitForDistanceInMeters:(double)meters distanceType:(unint64_t)type;
- (unint64_t)userDistanceUnitForSwimmingLapLength;
@end

@implementation FIFormattingManager

- (id)localizedShortActiveEnergyUnitString
{
  userActiveEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v4 = [(FIFormattingManager *)self _energyBurnedUnitStringForUnit:userActiveEnergyBurnedUnit useShortString:1];

  return v4;
}

- (FIFormattingManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [[FIUnitManager alloc] initWithHealthStore:v3];
  v5 = [(FIFormattingManager *)self initWithUnitManager:v4];

  return v5;
}

- (FIFormattingManager)initWithUnitManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = FIFormattingManager;
  v6 = [(FIFormattingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitManager, manager);
  }

  return v7;
}

+ (id)stringWithNumber:(id)number decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode
{
  numberCopy = number;
  os_unfair_lock_lock(&__formatterLock);
  v10 = _NumberFormatterForDecimalPrecision(precision, mode, trimmingMode);
  v11 = [v10 stringFromNumber:numberCopy];

  os_unfair_lock_unlock(&__formatterLock);

  return v11;
}

+ (id)percentStringWithNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock(&__formatterLock);
  if (_PercentNumberFormatter_onceToken != -1)
  {
    +[FIFormattingManager percentStringWithNumber:];
  }

  v4 = [_PercentNumberFormatter___formatter stringFromNumber:numberCopy];

  os_unfair_lock_unlock(&__formatterLock);

  return v4;
}

- (id)decimalSeparator
{
  os_unfair_lock_lock(&__formatterLock);
  v2 = _DoubleFractionNumberFormatter(2);
  decimalSeparator = [v2 decimalSeparator];

  os_unfair_lock_unlock(&__formatterLock);

  return decimalSeparator;
}

- (id)applyTextCase:(unint64_t)case toString:(id)string
{
  stringCopy = string;
  v7 = stringCopy;
  if (case > 1)
  {
    if (case == 2)
    {
      localizedLowercaseString = [stringCopy localizedLowercaseString];
    }

    else
    {
      if (case != 3)
      {
        goto LABEL_11;
      }

      localizedLowercaseString = [stringCopy localizedCapitalizedString];
    }
  }

  else if (case)
  {
    if (case != 1)
    {
      goto LABEL_11;
    }

    localizedLowercaseString = [stringCopy localizedUppercaseString];
  }

  else
  {
    localizedLowercaseString = stringCopy;
  }

  v4 = localizedLowercaseString;
LABEL_11:

  return v4;
}

- (id)localizationKeyForMoveBaseKey:(id)key activityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self localizationKeyForMoveMinutesBaseKey:key];
  }

  else
  {
    [(FIFormattingManager *)self localizationKeyForEnergyBaseKey:key];
  }
  v4 = ;

  return v4;
}

- (id)localizationKeyForMoveMinutesBaseKey:(id)key
{
  v3 = MEMORY[0x277CCDAB0];
  keyCopy = key;
  minuteUnit = [v3 minuteUnit];
  v6 = _FILocalizationKeyForUnit(keyCopy, minuteUnit);

  return v6;
}

- (id)localizationKeyForEnergyBaseKey:(id)key
{
  unitManager = self->_unitManager;
  keyCopy = key;
  userActiveEnergyBurnedUnit = [(FIUnitManager *)unitManager userActiveEnergyBurnedUnit];
  v6 = _FILocalizationKeyForUnit(keyCopy, userActiveEnergyBurnedUnit);

  return v6;
}

- (id)localizationKeyForDistanceBaseKey:(id)key distanceType:(unint64_t)type
{
  unitManager = self->_unitManager;
  keyCopy = key;
  v7 = [(FIUnitManager *)unitManager userDistanceHKUnitForDistanceType:type];
  v8 = _FILocalizationKeyForUnit(keyCopy, v7);

  return v8;
}

- (id)stringWithDuration:(double)duration durationFormat:(unint64_t)format
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*&duration & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    durationCopy = 0.0;
  }

  else
  {
    durationCopy = duration;
  }

  v6 = objc_alloc_init(MEMORY[0x277CCA958]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [currentCalendar setLocale:currentLocale];

  [v6 setCalendar:currentCalendar];
  [v6 setUnitsStyle:0];
  v9 = 0;
  if (format <= 3)
  {
    switch(format)
    {
      case 1uLL:
        os_unfair_lock_lock(&__formatterLock);
        v16 = _IntegerNumberFormatter(2);
        v17 = _ZeroPaddedIntegerNumberFormatter();
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(durationCopy / 60.0)];
        v19 = [v16 stringFromNumber:v18];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(durationCopy - (60 * (durationCopy / 60.0)))];
        v21 = [v17 stringFromNumber:v20];

        os_unfair_lock_unlock(&__formatterLock);
        v22 = MEMORY[0x277CCACA8];
        v23 = FIFitnessUIBundle();
        v24 = [v23 localizedStringForKey:@"PACE_FORMATTING" value:&stru_285E60370 table:@"Localizable"];
        v9 = [v22 localizedStringWithFormat:v24, v19, v21];

        goto LABEL_16;
      case 2uLL:
        [v6 setZeroFormattingBehavior:0];
        v12 = v6;
        v13 = 224;
        break;
      case 3uLL:
        [v6 setZeroFormattingBehavior:0x10000];
        v12 = v6;
        v13 = 192;
        break;
      default:
        goto LABEL_16;
    }

LABEL_21:
    [v12 setAllowedUnits:v13];
    goto LABEL_22;
  }

  if (format <= 5)
  {
    if (format != 4)
    {
      [v6 setZeroFormattingBehavior:1];
      [v6 setAllowedUnits:96];
      [v6 setUnitsStyle:1];
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:durationCopy];
      unsignedIntegerValue = [v10 unsignedIntegerValue];

      v9 = [v6 stringFromTimeInterval:(60 * (unsignedIntegerValue / 0x3C))];
LABEL_16:
      os_unfair_lock_lock(&__formatterLock);
      goto LABEL_42;
    }

    [v6 setZeroFormattingBehavior:0];
    v12 = v6;
    v13 = 96;
    goto LABEL_21;
  }

  if (format == 6)
  {
    [v6 setZeroFormattingBehavior:1];
    [v6 setAllowedUnits:224];
    v14 = v6;
    v15 = 4;
  }

  else
  {
    if (format != 7)
    {
      goto LABEL_16;
    }

    [v6 setZeroFormattingBehavior:1];
    [v6 setAllowedUnits:224];
    v14 = v6;
    v15 = 5;
  }

  [v14 setUnitsStyle:v15];
LABEL_22:
  v9 = [v6 stringFromTimeInterval:durationCopy];
  os_unfair_lock_lock(&__formatterLock);
  if (format == 3)
  {
    if (!_DurationSeparator___durationSeparator)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCA958]);
      [v25 setUnitsStyle:0];
      v26 = [v25 stringFromTimeInterval:100.0];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v27 = [&unk_285E6B0B8 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(&unk_285E6B0B8);
            }

            v31 = *(*(&v38 + 1) + 8 * i);
            if ([v26 containsString:v31])
            {
              objc_storeStrong(&_DurationSeparator___durationSeparator, v31);
              goto LABEL_34;
            }
          }

          v28 = [&unk_285E6B0B8 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_34:
      if (!_DurationSeparator___durationSeparator)
      {
        _DurationSeparator___durationSeparator = @":";
      }
    }

    if ([v9 rangeOfString:?] == 1)
    {
      v32 = _ZeroPaddedIntegerNumberFormatter();
      paddingCharacter = [v32 paddingCharacter];
      v34 = [paddingCharacter stringByAppendingString:v9];

      v9 = v34;
    }

    if (durationCopy <= -1.0 && durationCopy > -60.0)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"-00:%02d", -durationCopy];

      v9 = v35;
    }
  }

LABEL_42:
  os_unfair_lock_unlock(&__formatterLock);

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (unint64_t)defaultPrecisionForDistanceUnit:(unint64_t)unit
{
  if (unit - 1 > 4)
  {
    return 3;
  }

  else
  {
    return qword_24B3AF198[unit - 1];
  }
}

- (id)localizedStringWithDistanceInMeters:(double)meters distanceUnit:(unint64_t)unit unitStyle:(unint64_t)style decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode
{
  [(FIUnitManager *)self->_unitManager distanceInDistanceUnit:meters forDistanceInMeters:?];
  v15 = v14;
  v16 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      selfCopy3 = self;
      unitCopy3 = unit;
      v19 = 2;
    }

    else
    {
      if (style != 3)
      {
        goto LABEL_11;
      }

      selfCopy3 = self;
      unitCopy3 = unit;
      v19 = 3;
    }
  }

  else
  {
    if (!style)
    {
      v20 = objc_opt_class();
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v16 = [v20 stringWithNumber:v21 decimalPrecision:precision roundingMode:mode decimalTrimmingMode:trimmingMode];

      goto LABEL_11;
    }

    if (style != 1)
    {
      goto LABEL_11;
    }

    selfCopy3 = self;
    unitCopy3 = unit;
    v19 = 1;
  }

  v16 = [(FIFormattingManager *)selfCopy3 _localizedStringWithDistanceUnit:unitCopy3 distanceInUnit:v19 unitStyle:precision decimalPrecision:mode roundingMode:trimmingMode decimalTrimmingMode:?];
LABEL_11:

  return v16;
}

- (id)_stringByReplacingThirdsIfNeeded:(id)needed distanceInMeters:(double)meters distanceUnit:(unint64_t)unit roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode
{
  neededCopy = needed;
  v14 = neededCopy;
  metersCopy = meters / 0.9144;
  if (unit != 4)
  {
    metersCopy = meters;
  }

  v16 = metersCopy - floor(metersCopy);
  if (fabs(v16 + -0.333333333) >= 0.01)
  {
    v18 = neededCopy;
    if (fabs(v16 + -0.666666667) >= 0.01)
    {
      goto LABEL_8;
    }

    v17 = @"%d⅔";
  }

  else
  {
    v17 = @"%d⅓";
  }

  LODWORD(v7) = vcvtmd_s64_f64(metersCopy);
  v19 = MEMORY[0x277CCACA8];
  v20 = FIFitnessUIBundle();
  v21 = [v20 localizedStringForKey:v17 value:&stru_285E60370 table:@"Localizable"];
  v22 = [v19 stringWithFormat:v21, v7];

  v23 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", unit, 0, [objc_opt_class() defaultPrecisionForDistanceUnit:unit], mode, trimmingMode, meters);
  v18 = [v14 stringByReplacingOccurrencesOfString:v23 withString:v22];

LABEL_8:

  return v18;
}

- (id)localizedStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style roundingMode:(unint64_t)mode
{
  v11 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:?];

  return [(FIFormattingManager *)self localizedStringWithDistanceInMeters:type distanceType:v11 distanceUnit:style unitStyle:mode roundingMode:meters];
}

- (id)localizedStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type distanceUnit:(unint64_t)unit unitStyle:(unint64_t)style roundingMode:(unint64_t)mode
{
  v12 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", unit, style, [objc_opt_class() defaultPrecisionForDistanceUnit:unit], mode, 1, meters);
  if (type == 3)
  {
    v13 = [(FIFormattingManager *)self _stringByReplacingThirdsIfNeeded:v12 distanceInMeters:unit distanceUnit:mode roundingMode:1 decimalTrimmingMode:meters];

    v12 = v13;
  }

  return v12;
}

- (id)localizedCompactNaturalScaleStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style usedUnit:(unint64_t *)unit
{
  v6 = [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:type distanceType:style unitStyle:unit usedUnit:meters];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_285E60370];

  return v7;
}

- (id)localizedNaturalScaleStringWithDistanceInMeters:(double)meters distanceType:(unint64_t)type unitStyle:(unint64_t)style usedUnit:(unint64_t *)unit decimalTrimmingMode:(unint64_t)mode
{
  v13 = [FIFormattingManager naturalScaleUnitForDistanceInMeters:"naturalScaleUnitForDistanceInMeters:distanceType:" distanceType:?];
  v14 = [objc_opt_class() defaultPrecisionForDistanceUnit:v13];
  if (unit)
  {
    *unit = v13;
  }

  v15 = [(FIFormattingManager *)self localizedStringWithDistanceInMeters:v13 distanceUnit:style unitStyle:v14 decimalPrecision:2 roundingMode:mode decimalTrimmingMode:meters];
  if (type == 3)
  {
    v16 = [(FIFormattingManager *)self _stringByReplacingThirdsIfNeeded:v15 distanceInMeters:v13 distanceUnit:2 roundingMode:mode decimalTrimmingMode:meters];

    v15 = v16;
  }

  return v15;
}

- (unint64_t)naturalScaleUnitForDistanceInMeters:(double)meters distanceType:(unint64_t)type
{
  v7 = naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit;
  if (naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit && v7 == [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:type])
  {
    v8 = naturalScaleUnitForDistanceInMeters_distanceType____cutoffDistanceInMeters;
  }

  else
  {
    naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:type];
    IsMetric = FIDistanceUnitIsMetric(naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit);
    v10 = 0.1;
    if (IsMetric)
    {
      v10 = 1.0;
    }

    [(FIUnitManager *)self->_unitManager distanceInMetersForDistanceInUserUnit:type distanceType:v10];
    naturalScaleUnitForDistanceInMeters_distanceType____cutoffDistanceInMeters = v8;
  }

  result = naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit;
  if (*&v8 > meters)
  {
    switch(naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit)
    {
      case 5:
        goto LABEL_11;
      case 4:
        return result;
      case 3:
LABEL_11:
        if (type == 4)
        {
          return 4;
        }

        else
        {
          return 5;
        }

      default:
        return 1;
    }
  }

  return result;
}

- (id)_localizedStringWithDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit unitStyle:(int64_t)style decimalPrecision:(unint64_t)precision roundingMode:(unint64_t)mode decimalTrimmingMode:(unint64_t)trimmingMode
{
  os_unfair_lock_lock(&__formatterLock);
  v14 = _LengthFormatter(precision, style, mode, trimmingMode);
  v15 = v14;
  if (unit - 1 > 4)
  {
    v16 = 14;
  }

  else
  {
    v16 = qword_24B3AF1C0[unit - 1];
  }

  v17 = [v14 stringFromValue:v16 unit:inUnit];
  os_unfair_lock_unlock(&__formatterLock);

  return v17;
}

- (id)localizedShortUnitStringForDistanceUnit:(unint64_t)unit textCase:(unint64_t)case
{
  os_unfair_lock_lock(&__formatterLock);
  v7 = _LengthFormatter(1, 2, 2, 1);
  v8 = v7;
  if (unit - 1 > 4)
  {
    v9 = 14;
  }

  else
  {
    v9 = qword_24B3AF1C0[unit - 1];
  }

  v10 = [v7 unitStringFromValue:v9 unit:100.0];
  os_unfair_lock_unlock(&__formatterLock);
  v11 = [(FIFormattingManager *)self applyTextCase:case toString:v10];

  return v11;
}

- (id)localizedShortUnitStringForDistanceType:(unint64_t)type
{
  v4 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:type];

  return [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:v4];
}

- (id)localizedLongUnitStringForDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit textCase:(unint64_t)case
{
  os_unfair_lock_lock(&__formatterLock);
  v9 = _LengthFormatter(1, 3, 2, 1);
  v10 = v9;
  if (unit - 1 > 4)
  {
    v11 = 14;
  }

  else
  {
    v11 = qword_24B3AF1C0[unit - 1];
  }

  v12 = [v9 unitStringFromValue:v11 unit:inUnit];
  os_unfair_lock_unlock(&__formatterLock);
  v13 = [(FIFormattingManager *)self applyTextCase:case toString:v12];

  return v13;
}

- (id)localizedUnitStringForDistanceUnit:(unint64_t)unit distanceInUnit:(double)inUnit unitStyle:(unint64_t)style
{
  if (style - 1 >= 2)
  {
    if (style == 3)
    {
      inUnit = [(FIFormattingManager *)self localizedLongUnitStringForDistanceUnit:unit distanceInUnit:inUnit];
    }

    else
    {
      inUnit = &stru_285E60370;
    }
  }

  else
  {
    inUnit = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:unit, inUnit];
  }

  return inUnit;
}

- (id)localizedPaceStringWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format unitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode distanceType:(unint64_t)type zeroShowsDashes:(BOOL)dashes
{
  dashesCopy = dashes;
  distanceCopy = distance;
  v17 = [(FIFormattingManager *)self decimalPrecisionForPaceFormat:format];
  if (format == 4)
  {
    v18 = v17;
    [(FIFormattingManager *)self speedPerHourWithDistance:distanceCopy overDuration:4 paceFormat:type distanceType:duration];
    v20 = v19;

    v21 = objc_opt_class();
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    v23 = [v21 stringWithNumber:v22 decimalPrecision:v18 roundingMode:2 decimalTrimmingMode:mode];
  }

  else
  {
    [(FIUnitManager *)self->_unitManager paceWithDistance:distanceCopy overDuration:format paceFormat:type distanceType:duration];
    v25 = v24;

    if (v25 != 0.0 || !dashesCopy)
    {
      if (style == 3)
      {
        v27 = 6;
      }

      else
      {
        v27 = 1;
      }

      v23 = [(FIFormattingManager *)self stringWithDuration:v27 durationFormat:v25];
    }

    else
    {
      v28 = FIFitnessUIBundle();
      v23 = [v28 localizedStringForKey:@"PACE_NOVALUE" value:&stru_285E60370 table:@"Localizable"];
    }
  }

  return v23;
}

- (id)localizedPaceAndUnitWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type unitStyle:(unint64_t)style decimalTrimmingMode:(unint64_t)mode
{
  distanceCopy = distance;
  v16 = [(FIFormattingManager *)self localizedPaceStringWithDistance:distanceCopy overDuration:format paceFormat:style unitStyle:mode decimalTrimmingMode:type distanceType:duration];
  v17 = [(FIUnitManager *)self->_unitManager paceDistanceUnitForDistanceType:type];
  if ((format - 1) < 3)
  {
    if (style > 1)
    {
      if (style != 2)
      {
        if (style != 3)
        {
          goto LABEL_21;
        }

        v24 = [(FIFormattingManager *)self localizedPaceUnitStringWithDistanceType:type distanceUnit:v17 unitStyle:3];
        v25 = MEMORY[0x277CCACA8];
        v26 = FIFitnessUIBundle();
        v27 = [v26 localizedStringForKey:@"PACE_PER_UNIT" value:&stru_285E60370 table:@"Localizable"];
        v8 = [v25 stringWithFormat:v27, v16, v24];

        goto LABEL_20;
      }

      selfCopy2 = self;
      typeCopy2 = type;
      v20 = v17;
      v21 = 2;
      goto LABEL_17;
    }

    if (style)
    {
      if (style != 1)
      {
        goto LABEL_21;
      }

      selfCopy2 = self;
      typeCopy2 = type;
      v20 = v17;
      v21 = 1;
LABEL_17:
      v28 = [(FIFormattingManager *)selfCopy2 localizedPaceUnitStringWithDistanceType:typeCopy2 distanceUnit:v20 unitStyle:v21];
LABEL_19:
      v24 = v28;
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v16, v28];
LABEL_20:

      goto LABEL_21;
    }

LABEL_12:
    v8 = v16;
    goto LABEL_21;
  }

  if (format != 4)
  {
    goto LABEL_21;
  }

  [(FIFormattingManager *)self speedPerHourWithDistance:distanceCopy overDuration:4 paceFormat:type distanceType:duration];
  v23 = v22;
  if (mode == 2)
  {
    v23 = trunc(v22 * 10.0) / 10.0;
  }

  if (style - 1 < 2)
  {
    v28 = [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v17 unitStyle:style];
    goto LABEL_19;
  }

  if (style != 3)
  {
    if (style)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  IsMetric = FIDistanceUnitIsMetric(v17);
  v31 = @"SPOKEN_SPEED_IMPERIAL";
  if (IsMetric)
  {
    v31 = @"SPOKEN_SPEED_METRIC";
  }

  v32 = MEMORY[0x277CCACA8];
  v33 = v31;
  v34 = FIFitnessUIBundle();
  v35 = [v34 localizedStringForKey:v33 value:&stru_285E60370 table:@"Localizable"];

  v8 = [v32 stringWithFormat:v35, *&v23];

LABEL_21:

  return v8;
}

- (unint64_t)decimalPrecisionForPaceFormat:(int64_t)format
{
  if ((format - 1) < 3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)localizedPaceAndUnitStringForSpeed:(double)speed activityType:(id)type
{
  v6 = FIDistanceTypeForActivityType(type);
  v7 = FIPaceFormatForDistanceType(v6);
  v8 = MEMORY[0x277CCD7E8];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  v10 = [v8 quantityWithUnit:meterUnit doubleValue:speed];
  v11 = [(FIFormattingManager *)self localizedPaceStringWithDistance:v10 overDuration:v7 paceFormat:v6 distanceType:1.0];

  unitManager = [(FIFormattingManager *)self unitManager];
  v13 = [unitManager paceDistanceUnitForDistanceType:v6];

  v14 = [(FIFormattingManager *)self localizedPaceUnitStringWithDistanceType:v6 distanceUnit:v13];
  localizedUppercaseString = [v14 localizedUppercaseString];

  v16 = MEMORY[0x277CCACA8];
  v17 = FIFitnessUIBundle();
  v18 = [v17 localizedStringForKey:@"PACE_FORMAT" value:&stru_285E60370 table:@"Localizable"];
  v19 = [v16 stringWithFormat:v18, v11, localizedUppercaseString];

  return v19;
}

- (double)speedPerHourWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format distanceType:(unint64_t)type
{
  unitManager = self->_unitManager;
  distanceCopy = distance;
  v10 = FIHKUnitForDistanceUnit([(FIUnitManager *)unitManager paceDistanceUnitForDistanceType:type]);
  [distanceCopy doubleValueForUnit:v10];
  v12 = v11;

  return v12 / (duration / 3600.0);
}

- (id)localizedSwimmingPaceStringWithDistance:(id)distance overDuration:(double)duration paceFormat:(int64_t)format
{
  distanceCopy = distance;
  unitManager = [(FIFormattingManager *)self unitManager];
  v10 = [unitManager userDistanceHKUnitForDistanceType:3];

  [distanceCopy doubleValueForUnit:v10];
  v12 = v11;

  if (v12 > 2.22044605e-16 && duration / v12 * format <= 3600.0)
  {
    v14 = [(FIFormattingManager *)self stringWithDuration:1 durationFormat:?];
  }

  else
  {
    v13 = FIFitnessUIBundle();
    v14 = [v13 localizedStringForKey:@"PACE_NOVALUE" value:&stru_285E60370 table:@"Localizable"];
  }

  return v14;
}

- (id)localizedStrokeCountStringWithCount:(int64_t)count overDistance:(id)distance paceFormat:(int64_t)format
{
  distanceCopy = distance;
  unitManager = [(FIFormattingManager *)self unitManager];
  v10 = [unitManager userDistanceHKUnitForDistanceType:3];

  [distanceCopy doubleValueForUnit:v10];
  v12 = v11;

  if (v12 > 2.22044605e-16)
  {
    count = llround(count / v12 * format);
  }

  v13 = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v15 = [v13 stringWithNumber:v14 decimalPrecision:1];

  return v15;
}

+ (id)localizedShortCadenceUnitStringForActivityType:(unint64_t)type
{
  v3 = FIIsWorkoutTypePedestrianActivity(type);
  v4 = FIFitnessUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"SPM_SHORT_UNIT";
  }

  else
  {
    v6 = @"RPM_SHORT_UNIT";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_285E60370 table:@"Localizable"];

  return v7;
}

+ (id)localizedShortPowerUnitString
{
  v2 = FIFitnessUIBundle();
  v3 = [v2 localizedStringForKey:@"WATTS_SHORT_UNIT" value:&stru_285E60370 table:@"Localizable"];

  return v3;
}

- (id)localizedPowerUnitStringForPower:(double)power
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"POWER_SHORT_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 localizedStringWithFormat:v6, *&power];

  return v7;
}

- (id)localizedShortTypeDistinguishingUnitStringForPowerType:(unint64_t)type unitString:(id)string
{
  stringCopy = string;
  stringCopy = stringCopy;
  if (type == 12)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = FIFitnessUIBundle();
    v9 = [v8 localizedStringForKey:@"AVERAGE_POWER_DISTINGUISHING_SHORT" value:&stru_285E60370 table:@"Localizable"];
    stringCopy = [v7 stringWithFormat:v9, stringCopy];
  }

  return stringCopy;
}

- (id)localizedSpeedUnitString
{
  v3 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:13 isIndoor:0];
  v4 = [(FIFormattingManager *)self localizedSpeedUnitStringForActivityType:v3];

  return v4;
}

- (id)localizedSpeedUnitStringForDistanceType:(unint64_t)type unitStyle:(unint64_t)style
{
  unitManager = [(FIFormattingManager *)self unitManager];
  v8 = [unitManager paceDistanceUnitForDistanceType:type];

  return [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v8 unitStyle:style];
}

- (id)localizedSpeedUnitStringForActivityType:(id)type
{
  v4 = FIDistanceTypeForActivityType(type);
  unitManager = [(FIFormattingManager *)self unitManager];
  v6 = [unitManager userDistanceUnitForDistanceType:v4];

  return [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v6 unitStyle:1];
}

- (id)localizedSpeedUnitStringForDistanceUnit:(unint64_t)unit unitStyle:(unint64_t)style
{
  IsMetric = FIDistanceUnitIsMetric(unit);
  v5 = FIFitnessUIBundle();
  v6 = v5;
  if (IsMetric)
  {
    v7 = @"KPH_SHORT";
  }

  else
  {
    v7 = @"MPH_SHORT";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285E60370 table:@"Localizable"];

  return v8;
}

- (id)localizedPaceUnitStringWithDistanceType:(unint64_t)type distanceUnit:(unint64_t)unit unitStyle:(int64_t)style
{
  v8 = FIPaceFormatForDistanceType(type);
  v9 = FINumberOfUnitsInPaceForPaceFormat(v8);
  v10 = v9;
  if ((style - 1) >= 2)
  {
    if (style == 3)
    {
      v11 = [(FIFormattingManager *)self localizedLongUnitStringForDistanceUnit:unit distanceInUnit:v9];
      v12 = @"PACE_MANY_UNIT_FORMAT_LONG";
    }

    else
    {
      v12 = 0;
      v11 = &stru_285E60370;
    }
  }

  else
  {
    v11 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:unit];
    v12 = @"PACE_MANY_UNIT_FORMAT";
  }

  if (v10 >= 2)
  {
    v13 = objc_opt_class();
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:FINumberOfUnitsInPaceForPaceFormat(v8)];
    v15 = [v13 stringWithNumber:v14 decimalPrecision:1];

    v16 = MEMORY[0x277CCACA8];
    v17 = FIFitnessUIBundle();
    v18 = [v17 localizedStringForKey:v12 value:&stru_285E60370 table:@"Localizable"];
    v19 = [v16 localizedStringWithFormat:v18, v15, v11];

    v11 = v19;
  }

  return v11;
}

- (id)finalLocalizedKeyForKey:(id)key multiline:(BOOL)multiline
{
  multilineCopy = multiline;
  keyCopy = key;
  v6 = keyCopy;
  if (multilineCopy)
  {
    v7 = keyCopy;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", keyCopy, @"_ONE_LINE"];
  }

  v8 = v7;

  return v8;
}

- (id)localizedDistinguishingCadenceUnitStringWithMetricType:(unint64_t)type
{
  v4 = [objc_opt_class() localizedShortCadenceUnitStringForActivityType:37];
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = v6;
  if (type == 16)
  {
    v8 = @"AVERAGE_CADENCE_DISTINGUISHING_LONG";
  }

  else
  {
    v8 = @"CURRENT_CADENCE_DISTINGUISHING_LONG";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_285E60370 table:@"Localizable"];
  v10 = [v5 stringWithFormat:v9, v4];

  localizedUppercaseString = [v10 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedDistinguishingPowerUnitStringWithMetricType:(unint64_t)type
{
  localizedShortPowerUnitString = [objc_opt_class() localizedShortPowerUnitString];
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = v6;
  if (type == 12)
  {
    v8 = @"AVERAGE_POWER_DISTINGUISHING_LONG";
  }

  else
  {
    v8 = @"CURRENT_POWER_DISTINGUISHING_LONG";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_285E60370 table:@"Localizable"];
  v10 = [v5 stringWithFormat:v9, localizedShortPowerUnitString];

  localizedUppercaseString = [v10 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedDistinguishingPowerStringWithMetricType:(unint64_t)type
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = v5;
  if (type == 12)
  {
    v7 = @"AVERAGE_POWER_DISTINGUISHING_LONG";
  }

  else
  {
    v7 = @"CURRENT_POWER_DISTINGUISHING_LONG";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285E60370 table:@"Localizable"];
  v9 = [v4 stringWithFormat:v8, @"Power"];

  localizedUppercaseString = [v9 localizedUppercaseString];

  return localizedUppercaseString;
}

- (unint64_t)userDistanceUnitForSwimmingLapLength
{
  if (FICurrentLocaleUsesMetricSystem())
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (id)localizedStringWithPersonHeight:(id)height unitStyle:(int64_t)style
{
  heightCopy = height;
  os_unfair_lock_lock(&__formatterLock);
  v6 = _LengthFormatterForPersonHeight___formatter;
  if (!_LengthFormatterForPersonHeight___formatter)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAAE0]);
    v8 = _LengthFormatterForPersonHeight___formatter;
    _LengthFormatterForPersonHeight___formatter = v7;

    [_LengthFormatterForPersonHeight___formatter setForPersonHeightUse:1];
    v6 = _LengthFormatterForPersonHeight___formatter;
  }

  v9 = _IntegerNumberFormatter(5);
  [v6 setNumberFormatter:v9];

  [_LengthFormatterForPersonHeight___formatter setUnitStyle:style];
  v10 = MEMORY[0x277CCDAB0];
  v11 = _LengthFormatterForPersonHeight___formatter;
  meterUnit = [v10 meterUnit];
  [heightCopy doubleValueForUnit:meterUnit];
  v14 = v13;

  v15 = [v11 stringFromMeters:v14];

  os_unfair_lock_unlock(&__formatterLock);

  return v15;
}

- (double)roundedDailyMoveGoal:(double)goal activityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self roundedDailyMoveGoalForMoveMinutes:goal];
  }

  else
  {
    [(FIFormattingManager *)self roundedDailyMoveGoalForCalories:goal];
  }

  return result;
}

- (double)roundedDailyMoveGoalForCalories:(double)calories
{
  userActiveEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  IsCalorieUnit = FIHKUnitIsCalorieUnit(userActiveEnergyBurnedUnit);

  if (IsCalorieUnit)
  {
    return round(calories / 10.0) * 10.0;
  }

  v7 = [MEMORY[0x277CCDAB0] jouleUnitWithMetricPrefix:9];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [kilocalorieUnit _valueByConvertingValue:v7 toUnit:calories];
  v10 = v9;

  kilocalorieUnit2 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v7 _valueByConvertingValue:kilocalorieUnit2 toUnit:round(v10 / 20.0) * 20.0];
  v13 = v12;

  return v13;
}

- (double)energyBurnedInUserUnitForCalories:(double)calories
{
  userActiveEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [kilocalorieUnit _valueByConvertingValue:userActiveEnergyBurnedUnit toUnit:calories];
  v7 = v6;

  return v7;
}

- (double)caloriesForEnergyBurnedInUserUnit:(double)unit
{
  userActiveEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [userActiveEnergyBurnedUnit _valueByConvertingValue:kilocalorieUnit toUnit:unit];
  v7 = v6;

  return v7;
}

- (id)localizedStringWithMoveQuantity:(id)quantity activityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self localizedStringWithMoveMinutes:quantity];
  }

  else
  {
    [(FIFormattingManager *)self localizedStringWithActiveEnergy:quantity];
  }
  v4 = ;

  return v4;
}

- (id)localizedStringWithMoveMinutes:(id)minutes
{
  v3 = MEMORY[0x277CCDAB0];
  minutesCopy = minutes;
  minuteUnit = [v3 minuteUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithMoveMinutes:(id)minutes unitStyle:(unint64_t)style
{
  v5 = MEMORY[0x277CCDAB0];
  minutesCopy = minutes;
  minuteUnit = [v5 minuteUnit];
  v8 = _HKWorkoutFlooredValueForQuantity();

  if (style > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_2790050F0[style];
  }

  v10 = v8;
  v11 = MEMORY[0x277CCACA8];
  v12 = FIFitnessUIBundle();
  v13 = [v12 localizedStringForKey:v9 value:&stru_285E60370 table:@"Localizable-tinker"];
  v14 = [v11 localizedStringWithFormat:v13, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld %@", v10, v14];

  return v15;
}

- (id)localizedStringWithBriskMinutes:(id)minutes
{
  v3 = MEMORY[0x277CCDAB0];
  minutesCopy = minutes;
  minuteUnit = [v3 minuteUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithActiveHours:(id)hours
{
  v3 = MEMORY[0x277CCDAB0];
  hoursCopy = hours;
  countUnit = [v3 countUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithMoveQuantity:(id)quantity unitStyle:(unint64_t)style activityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self localizedStringWithMoveMinutes:quantity unitStyle:style];
  }

  else
  {
    [(FIFormattingManager *)self localizedStringWithActiveEnergy:quantity unitStyle:style];
  }
  v5 = ;

  return v5;
}

- (id)localizedStringWithEnergy:(id)energy energyType:(unint64_t)type unitStyle:(unint64_t)style
{
  energyCopy = energy;
  switch(type)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      userBasalEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userBasalEnergyBurnedUnit];
      goto LABEL_6;
    case 1uLL:
LABEL_4:
      userBasalEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
LABEL_6:
      v10 = userBasalEnergyBurnedUnit;
      goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  v11 = _HKWorkoutFlooredValueForQuantity();
  v12 = [MEMORY[0x277CCDAB0] energyFormatterUnitFromUnit:v10];
  localizedLowercaseString = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      os_unfair_lock_lock(&__formatterLock);
      v16 = _EnergyFormatter(v10);
      v14 = v16;
      v17 = 2;
    }

    else
    {
      if (style != 3)
      {
        goto LABEL_20;
      }

      os_unfair_lock_lock(&__formatterLock);
      v16 = _EnergyFormatter(v10);
      v14 = v16;
      v17 = 3;
    }

    [v16 setUnitStyle:v17];
    localizedLowercaseString = [v14 stringFromValue:v12 unit:v11];
    goto LABEL_18;
  }

  if (style)
  {
    if (style != 1)
    {
      goto LABEL_20;
    }

    os_unfair_lock_lock(&__formatterLock);
    v14 = _EnergyFormatter(v10);
    [v14 setUnitStyle:1];
    v15 = [v14 stringFromValue:v12 unit:v11];
    localizedLowercaseString = [v15 localizedLowercaseString];

LABEL_18:
    os_unfair_lock_unlock(&__formatterLock);
    goto LABEL_19;
  }

  v18 = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  localizedLowercaseString = [v18 stringWithNumber:v14 decimalPrecision:1];
LABEL_19:

LABEL_20:

  return localizedLowercaseString;
}

- (id)localizedStringWithEnergyInCalories:(double)calories energyType:(unint64_t)type unitStyle:(unint64_t)style
{
  v9 = MEMORY[0x277CCD7E8];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v11 = [v9 quantityWithUnit:kilocalorieUnit doubleValue:calories];

  v12 = [(FIFormattingManager *)self localizedStringWithEnergy:v11 energyType:type unitStyle:style];

  return v12;
}

- (id)localizedShortTypeDistinguishingUnitStringForEnergyType:(unint64_t)type workoutSectionType:(unint64_t)sectionType multiline:(BOOL)multiline
{
  v6 = @"SEGMENT_";
  if (sectionType != 3)
  {
    v6 = &stru_285E60370;
  }

  v7 = @"ACTIVE";
  if (type == 3)
  {
    v7 = @"TOTAL";
  }

  if (multiline)
  {
    v8 = @"%@%@_DISTINGUISHING_SHORT";
  }

  else
  {
    v8 = @"%@%@_DISTINGUISHING_SHORT_ONE_LINE";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v6, v7];
  v10 = FIFitnessUIBundle();
  v11 = [(FIFormattingManager *)self localizationKeyForEnergyBaseKey:v9];
  v12 = [v10 localizedStringForKey:v11 value:&stru_285E60370 table:@"Localizable"];

  return v12;
}

+ (unint64_t)sectionTypeForMetricType:(unint64_t)type
{
  if (type - 21 >= 5)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)mode
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self localizedLongMoveMinutesUnitString];
  }

  else
  {
    [(FIFormattingManager *)self localizedLongActiveEnergyUnitString];
  }
  v3 = ;

  return v3;
}

- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)mode value:(unint64_t)value
{
  if (mode == 2)
  {
    [(FIFormattingManager *)self localizedLongMoveMinutesUnitStringForValue:value];
  }

  else
  {
    [(FIFormattingManager *)self localizedLongActiveEnergyUnitString:mode];
  }
  v4 = ;

  return v4;
}

- (id)localizedLongBriskMinutesUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"BRISK_MINUTES_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  localizedUppercaseString = [v5 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedLongBriskMinutesUnitStringForValue:(unint64_t)value
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"BRISK_MINUTES_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  value = [v4 localizedStringWithFormat:v6, value];
  localizedUppercaseString = [value localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedLongActiveHoursUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"ACTIVE_HOURS_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  localizedUppercaseString = [v5 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedLongActiveHoursUnitStringForValue:(unint64_t)value
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"ACTIVE_HOURS_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  value = [v4 localizedStringWithFormat:v6, value];
  localizedUppercaseString = [value localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedShortBriskMinutesUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"BRISK_MINUTES_UNIT_SHORT" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  localizedUppercaseString = [v5 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedShortActiveHoursUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"ACTIVE_HOURS_UNIT_SHORT" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  localizedUppercaseString = [v5 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)localizedLongActiveEnergyUnitStringWithTextCase:(unint64_t)case
{
  userActiveEnergyBurnedUnit = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v6 = [(FIFormattingManager *)self _energyBurnedUnitStringForUnit:userActiveEnergyBurnedUnit useShortString:0];

  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_285E6B0A0];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
  v10 = [v7 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(FIFormattingManager *)self applyTextCase:case toString:v6];

    v6 = v11;
  }

  return v6;
}

- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)case
{
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = [v6 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v8 = [v5 localizedStringWithFormat:v7];

  v9 = [(FIFormattingManager *)self applyTextCase:case toString:v8];

  return v9;
}

- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)case value:(unint64_t)value
{
  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  value = [v7 localizedStringWithFormat:v9, value];

  v11 = [(FIFormattingManager *)self applyTextCase:case toString:value];

  return v11;
}

- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)case
{
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = [v6 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_MEDIUM" value:&stru_285E60370 table:@"Localizable-tinker"];
  v8 = [v5 localizedStringWithFormat:v7];

  v9 = [(FIFormattingManager *)self applyTextCase:case toString:v8];

  return v9;
}

- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)case value:(unint64_t)value
{
  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_MEDIUM" value:&stru_285E60370 table:@"Localizable-tinker"];
  value = [v7 localizedStringWithFormat:v9, value];

  v11 = [(FIFormattingManager *)self applyTextCase:case toString:value];

  return v11;
}

- (id)_energyBurnedUnitStringForUnit:(id)unit useShortString:(BOOL)string
{
  stringCopy = string;
  unitCopy = unit;
  os_unfair_lock_lock(&__formatterLock);
  v6 = _EnergyFormatter(unitCopy);
  v7 = v6;
  if (stringCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  [v6 setUnitStyle:v8];
  v9 = [MEMORY[0x277CCDAB0] energyFormatterUnitFromUnit:unitCopy];

  v10 = [v7 unitStringFromValue:v9 unit:100.0];
  os_unfair_lock_unlock(&__formatterLock);

  return v10;
}

- (id)localizedGoalValueForWorkout:(id)workout
{
  workoutCopy = workout;
  fi_activityType = [workoutCopy fi_activityType];
  v7 = [(FIFormattingManager *)self _effectiveGoalTypeForWorkout:workoutCopy];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_10;
      }

      totalDistance = [workoutCopy totalDistance];
      v9 = FIDistanceTypeForActivityType(fi_activityType);
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [totalDistance doubleValueForUnit:meterUnit];
      v3 = [(FIFormattingManager *)self localizedStringWithDistanceInMeters:v9 distanceType:0 unitStyle:?];

      goto LABEL_8;
    }

LABEL_7:
    totalDistance = [workoutCopy totalEnergyBurned];
    v3 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:totalDistance unitStyle:0];
LABEL_8:

    goto LABEL_10;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = [(FIFormattingManager *)self _localizedTimeValueForWorkout:workoutCopy];
LABEL_10:

  return v3;
}

- (id)localizedGoalUnitForWorkout:(id)workout
{
  workoutCopy = workout;
  fi_activityType = [workoutCopy fi_activityType];
  v6 = [(FIFormattingManager *)self _effectiveGoalTypeForWorkout:workoutCopy];

  if (!v6 || v6 == 3)
  {
    localizedShortActiveEnergyUnitString = [(FIFormattingManager *)self localizedShortActiveEnergyUnitString];
  }

  else if (v6 == 1)
  {
    v7 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceType:FIDistanceTypeForActivityType(fi_activityType)];
    localizedShortActiveEnergyUnitString = [v7 localizedUppercaseString];
  }

  else
  {
    localizedShortActiveEnergyUnitString = &stru_285E60370;
  }

  return localizedShortActiveEnergyUnitString;
}

- (id)_localizedTimeDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type activityTypeString:(id)string
{
  typeCopy = type;
  stringCopy = string;
  [workout duration];
  v12 = v11;
  v13 = fmod(v11, 60.0);
  if (v13 < 30.0)
  {
    v13 = -v13;
  }

  v14 = [(FIFormattingManager *)self stringWithDuration:4 durationFormat:v12 + v13];
  *value = v14;
  if (typeCopy)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = FIFitnessUIBundle();
    v17 = [v16 localizedStringForKey:@"TIME_GOAL_FORMAT" value:&stru_285E60370 table:@"Localizable"];
    stringCopy = [v15 stringWithFormat:v17, *value, stringCopy];
  }

  else
  {
    stringCopy = v14;
  }

  return stringCopy;
}

- (id)_localizedTimeValueForWorkout:(id)workout
{
  [workout duration];
  v5 = v4;
  v6 = fmod(v4, 60.0);
  if (v6 < 30.0)
  {
    v6 = -v6;
  }

  v7 = v5 + v6;

  return [(FIFormattingManager *)self stringWithDuration:4 durationFormat:v7];
}

- (id)_localizedEnergyDescriptionForWorkout:(id)workout withValue:(id *)value appendActivityType:(BOOL)type activityTypeString:(id)string
{
  typeCopy = type;
  stringCopy = string;
  totalEnergyBurned = [workout totalEnergyBurned];
  *value = [(FIFormattingManager *)self localizedStringWithActiveEnergy:totalEnergyBurned unitStyle:0];
  localizedShortActiveEnergyUnitString = [(FIFormattingManager *)self localizedShortActiveEnergyUnitString];
  v13 = MEMORY[0x277CCACA8];
  v14 = FIFitnessUIBundle();
  v15 = v14;
  if (typeCopy)
  {
    v16 = [v14 localizedStringForKey:@"ENERGY_GOAL_FORMAT" value:&stru_285E60370 table:@"Localizable"];
    [v13 stringWithFormat:v16, *value, localizedShortActiveEnergyUnitString, stringCopy];
  }

  else
  {
    v16 = [v14 localizedStringForKey:@"WORKOUT_STATISTICS_UNIT_FORMAT_NO_SPACE" value:&stru_285E60370 table:@"Localizable"];
    [v13 stringWithFormat:v16, *value, localizedShortActiveEnergyUnitString, v19];
  }
  v17 = ;

  return v17;
}

- (unint64_t)_effectiveGoalTypeForWorkout:(id)workout
{
  workoutCopy = workout;
  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  if ([source _isAppleWatch])
  {
    _hasFirstPartyBundleID = 1;
  }

  else
  {
    sourceRevision2 = [workoutCopy sourceRevision];
    source2 = [sourceRevision2 source];
    _hasFirstPartyBundleID = [source2 _hasFirstPartyBundleID];
  }

  _goalType = [workoutCopy _goalType];
  [workoutCopy workoutActivityType];
  v11 = _HKWorkoutDistanceTypeForActivityType();
  v12 = [workoutCopy statisticsForType:v11];

  sumQuantity = [v12 sumQuantity];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [sumQuantity doubleValueForUnit:meterUnit];
  v16 = v15;

  if (_hasFirstPartyBundleID)
  {
    if (!_goalType)
    {
      if (![(FIFormattingManager *)self _workoutSupportsDistanceMetricForGoalDisplay:workoutCopy]|| v16 <= 2.22044605e-16)
      {
        totalEnergyBurned = [workoutCopy totalEnergyBurned];
        v18 = totalEnergyBurned == 0;

        _goalType = 2 * v18;
        goto LABEL_14;
      }

LABEL_10:
      _goalType = 1;
    }
  }

  else
  {
    if (v16 > 2.22044605e-16)
    {
      goto LABEL_10;
    }

    [workoutCopy duration];
    if (v19 <= 2.22044605e-16)
    {
      _goalType = 3;
    }

    else
    {
      _goalType = 2;
    }
  }

LABEL_14:

  return _goalType;
}

- (BOOL)_workoutSupportsDistanceMetricForGoalDisplay:(id)display
{
  displayCopy = display;
  if ([displayCopy workoutActivityType] == 82 || objc_msgSend(displayCopy, "workoutActivityType") == 21)
  {
    v4 = 0;
  }

  else
  {
    v4 = [displayCopy supportsWorkoutMetricType:1];
  }

  return v4;
}

- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType
{
  v5 = [(FIFormattingManager *)self localizedGoalDescriptionForGoalType:type goalValue:activityType activityType:value];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_285E60370];

  return v6;
}

- (id)localizedGoalDescriptionForGoalType:(unint64_t)type goalValue:(double)value activityType:(id)activityType
{
  activityTypeCopy = activityType;
  v9 = activityTypeCopy;
  v10 = 0;
  if (type <= 1)
  {
    if (!type)
    {
      v16 = FIFitnessUIBundle();
      v10 = [v16 localizedStringForKey:@"WORKOUT_OPEN_GOAL" value:&stru_285E60370 table:@"Localizable"];

      goto LABEL_11;
    }

    if (type != 1)
    {
      goto LABEL_11;
    }

    v11 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:FIDistanceTypeForActivityType(activityTypeCopy)];
    v12 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", v11, 2, [objc_opt_class() defaultPrecisionForDistanceUnit:v11], 6, 2, value);
    goto LABEL_10;
  }

  if (type == 2)
  {
    v12 = [(FIFormattingManager *)self stringWithDuration:7 durationFormat:value];
LABEL_10:
    v10 = v12;
    goto LABEL_11;
  }

  if (type == 3)
  {
    v13 = MEMORY[0x277CCD7E8];
    kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    v15 = [v13 quantityWithUnit:kilocalorieUnit doubleValue:value];
    v10 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:v15 unitStyle:2];
  }

LABEL_11:

  return v10;
}

- (id)localizedKeyMetricStringForWorkout:(id)workout unitStyle:(unint64_t)style
{
  workoutCopy = workout;
  _goalType = [workoutCopy _goalType];
  v8 = 0;
  if (_goalType > 1)
  {
    if (_goalType == 2)
    {
      v9 = [(FIFormattingManager *)self _localizedKeyMetricDurationStringWithWorkout:workoutCopy];
    }

    else
    {
      if (_goalType != 3)
      {
        goto LABEL_11;
      }

      v9 = [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:workoutCopy withUnitStyle:style];
    }
  }

  else if (_goalType)
  {
    if (_goalType != 1)
    {
      goto LABEL_11;
    }

    v9 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:workoutCopy withUnitStyle:style];
  }

  else
  {
    v9 = [(FIFormattingManager *)self _localizedOpenGoalKeyMetricStringForWorkout:workoutCopy withUnitStyle:style];
  }

  v8 = v9;
LABEL_11:

  return v8;
}

- (id)_localizedKeyMetricEnergyBurnedStringForWorkout:(id)workout withUnitStyle:(unint64_t)style
{
  totalEnergyBurned = [workout totalEnergyBurned];
  v7 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:totalEnergyBurned unitStyle:style];

  return v7;
}

- (id)_localizedKeyMetricDistanceStringForWorkout:(id)workout withUnitStyle:(unint64_t)style
{
  workoutCopy = workout;
  totalDistance = [workoutCopy totalDistance];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [totalDistance doubleValueForUnit:meterUnit];
  v10 = v9;
  fi_activityType = [workoutCopy fi_activityType];

  v12 = [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:FIDistanceTypeForActivityType(fi_activityType) distanceType:style unitStyle:0 usedUnit:v10];

  return v12;
}

- (id)_localizedKeyMetricDurationStringWithWorkout:(id)workout
{
  [workout duration];

  return [(FIFormattingManager *)self stringWithDuration:4 durationFormat:?];
}

- (id)_localizedKeyMetricCyclingStringWithWorkout:(id)workout withUnitStyle:(unint64_t)style
{
  workoutCopy = workout;
  totalDistance = [workoutCopy totalDistance];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [totalDistance doubleValueForUnit:meterUnit];
  v10 = v9;

  metadata = [workoutCopy metadata];
  v12 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  bOOLValue = [v12 BOOLValue];

  if ((bOOLValue & 1) != 0 || v10 <= 2.22044605e-16)
  {
    v14 = [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:workoutCopy withUnitStyle:style];
  }

  else
  {
    v14 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:workoutCopy withUnitStyle:style];
  }

  v15 = v14;

  return v15;
}

- (id)_localizedOpenGoalKeyMetricStringForWorkout:(id)workout withUnitStyle:(unint64_t)style
{
  workoutCopy = workout;
  workoutActivityType = [workoutCopy workoutActivityType];
  if (workoutActivityType > 0x34)
  {
    goto LABEL_9;
  }

  if (((1 << workoutActivityType) & 0x10402001000000) != 0)
  {
    v8 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:workoutCopy withUnitStyle:style];
    goto LABEL_4;
  }

  if (workoutActivityType != 13)
  {
LABEL_9:
    if (workoutActivityType == 3000)
    {
      [(FIFormattingManager *)self _localizedKeyMetricDurationStringWithWorkout:workoutCopy];
    }

    else
    {
      [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:workoutCopy withUnitStyle:style];
    }
    v8 = ;
    goto LABEL_4;
  }

  v8 = [(FIFormattingManager *)self _localizedKeyMetricCyclingStringWithWorkout:workoutCopy withUnitStyle:style];
LABEL_4:
  v9 = v8;

  return v9;
}

- (id)localizedShareTextWithWorkout:(id)workout shareValue:(id)value
{
  workoutCopy = workout;
  valueCopy = value;
  metadata = [workoutCopy metadata];
  v8 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  bOOLValue = [v8 BOOLValue];

  workoutActivityType = [workoutCopy workoutActivityType];
  if (workoutActivityType > 58)
  {
    if (workoutActivityType <= 69)
    {
      if (workoutActivityType > 64)
      {
        if (workoutActivityType == 65)
        {
          v11 = @"WORKOUT_SHARING_KICKBOXING_%@";
          goto LABEL_47;
        }

        if (workoutActivityType == 66)
        {
          v11 = @"WORKOUT_SHARING_PILATES_%@";
          goto LABEL_47;
        }
      }

      else
      {
        if (workoutActivityType == 59)
        {
          v11 = @"WORKOUT_SHARING_CORE_TRAINING_%@";
          goto LABEL_47;
        }

        if (workoutActivityType == 63)
        {
          v11 = @"WORKOUT_SHARING_HIGH_INTENSITY_INTERVAL_TRAINING_%@";
          goto LABEL_47;
        }
      }

      goto LABEL_46;
    }

    if (workoutActivityType > 71)
    {
      switch(workoutActivityType)
      {
        case 'H':
          v11 = @"WORKOUT_SHARING_TAI_CHI_%@";
          goto LABEL_47;
        case 'M':
          v11 = @"WORKOUT_SHARING_CARDIO_DANCE_%@";
          goto LABEL_47;
        case 'P':
          v11 = @"WORKOUT_SHARING_COOLDOWN_%@";
          goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (workoutActivityType == 70)
    {
      v11 = @"WORKOUT_SHARING_WHEELCHAIR_WALK_PACE_%@";
    }

    else
    {
      v11 = @"WORKOUT_SHARING_WHEELCHAIR_RUN_PACE_%@";
    }
  }

  else
  {
    if (workoutActivityType <= 34)
    {
      if (workoutActivityType > 19)
      {
        if (workoutActivityType == 20)
        {
          v11 = @"WORKOUT_SHARING_FUNCTIONAL_STRENGTH_TRAINING_%@";
          goto LABEL_47;
        }

        if (workoutActivityType == 24)
        {
          v11 = @"WORKOUT_SHARING_HIKING_%@";
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (workoutActivityType != 13)
      {
        if (workoutActivityType == 16)
        {
          v11 = @"WORKOUT_SHARING_ELLIPTICAL_%@";
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v12 = @"WORKOUT_SHARING_OUTDOOR_CYCLING_%@";
      v13 = @"WORKOUT_SHARING_INDOOR_CYCLING_%@";
    }

    else if (workoutActivityType <= 43)
    {
      if (workoutActivityType == 35)
      {
        v11 = @"WORKOUT_SHARING_ROWING_%@";
        goto LABEL_47;
      }

      if (workoutActivityType != 37)
      {
        goto LABEL_46;
      }

      v12 = @"WORKOUT_SHARING_OUTDOOR_RUNNING_%@";
      v13 = @"WORKOUT_SHARING_INDOOR_RUNNING_%@";
    }

    else
    {
      if (workoutActivityType == 44)
      {
        v11 = @"WORKOUT_SHARING_STEPPER_%@";
        goto LABEL_47;
      }

      if (workoutActivityType != 52)
      {
        if (workoutActivityType == 57)
        {
          v11 = @"WORKOUT_SHARING_YOGA_%@";
          goto LABEL_47;
        }

LABEL_46:
        v11 = @"WORKOUT_SHARING_OTHER_%@";
        goto LABEL_47;
      }

      v12 = @"WORKOUT_SHARING_OUTDOOR_WALKING_%@";
      v13 = @"WORKOUT_SHARING_INDOOR_WALKING_%@";
    }

    if (bOOLValue)
    {
      v11 = v13;
    }

    else
    {
      v11 = v12;
    }
  }

LABEL_47:
  v14 = MEMORY[0x277CCACA8];
  v15 = FIFitnessUIBundle();
  v16 = [v15 localizedStringForKey:v11 value:&stru_285E60370 table:@"Localizable"];
  valueCopy = [v14 stringWithFormat:v16, valueCopy];

  if ([workoutCopy workoutActivityType] == 46)
  {
    fi_swimmingLocationType = [workoutCopy fi_swimmingLocationType];
    if (fi_swimmingLocationType > 2)
    {
      v21 = 0;
    }

    else
    {
      v19 = off_279005110[fi_swimmingLocationType];
      v20 = FIFitnessUIBundle();
      v21 = [v20 localizedStringForKey:v19 value:&stru_285E60370 table:@"Localizable-Ariel"];
    }

    valueCopy2 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, valueCopy];

    valueCopy = valueCopy2;
  }

  return valueCopy;
}

- (id)localizedPaceValueForSplit:(id)split activityType:(id)type
{
  v6 = MEMORY[0x277CCD7E8];
  v7 = MEMORY[0x277CCDAB0];
  typeCopy = type;
  splitCopy = split;
  meterUnit = [v7 meterUnit];
  [splitCopy distanceInMeters];
  v11 = [v6 quantityWithUnit:meterUnit doubleValue:?];

  v12 = FIPaceFormatForWorkoutActivityType(typeCopy);
  v13 = FIDistanceTypeForActivityType(typeCopy);

  [splitCopy duration];
  v15 = v14;

  v16 = [(FIFormattingManager *)self localizedPaceStringWithDistance:v11 overDuration:v12 paceFormat:v13 distanceType:v15];

  return v16;
}

- (id)localizedTitleForSplit:(id)split unit:(id)unit lapIndex:(int64_t)index useShortFormat:(BOOL)format
{
  if (format)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  unitCopy = unit;
  os_unfair_lock_lock(&__formatterLock);
  v9 = _LengthFormatter(1, v7, 2, 1);
  v10 = [MEMORY[0x277CCDAB0] lengthFormatterUnitFromUnit:unitCopy];

  v11 = [v9 unitStringFromValue:v10 unit:1.0];
  localizedCapitalizedString = [v11 localizedCapitalizedString];

  os_unfair_lock_unlock(&__formatterLock);
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:index + 1];
  v14 = [FIFormattingManager stringWithNumber:v13 decimalPrecision:1];

  v15 = MEMORY[0x277CCACA8];
  v16 = FIFitnessUIBundle();
  v17 = [v16 localizedStringForKey:@"PACE_SECTION_ORDER" value:&stru_285E60370 table:@"Localizable"];
  v18 = [v15 stringWithFormat:v17, localizedCapitalizedString, v14];

  return v18;
}

- (id)localizedStringWithBeatsPerMinute:(double)minute requirePositiveValue:(BOOL)value
{
  if (minute <= 2.22044605e-16 && value)
  {
    v5 = FIFitnessUIBundle();
    v6 = [v5 localizedStringForKey:@"HEART_RATE_NOVALUE" value:&stru_285E60370 table:@"Localizable"];
  }

  else
  {
    v7 = objc_opt_class();
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:minute];
    v6 = [v7 stringWithNumber:v5 decimalPrecision:1 roundingMode:6];
  }

  v8 = v6;

  return v8;
}

- (id)localizedHeartRateUnitString
{
  v2 = FIFitnessUIBundle();
  v3 = [v2 localizedStringForKey:@"BPM" value:&stru_285E60370 table:@"Localizable"];

  return v3;
}

- (id)localizedDistanceByStrokeStyle:(id)style isPoolSwim:(BOOL)swim
{
  swimCopy = swim;
  v36 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  allKeys = [styleCopy allKeys];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__FIFormattingManager_localizedDistanceByStrokeStyle_isPoolSwim___block_invoke;
  v33[3] = &unk_2790050D0;
  v26 = styleCopy;
  v34 = v26;
  v6 = [allKeys sortedArrayUsingComparator:v33];

  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v6;
  v27 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v27)
  {
    v23 = *v30;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v8);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v26 objectForKeyedSubscript:v10];
        v12 = FILocalizedStrokeStyleName([v10 integerValue]);
        if (swimCopy)
        {
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          [v11 doubleValueForUnit:meterUnit];
          [(FIFormattingManager *)self localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];
        }

        else
        {
          v28 = 0;
          meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
          [v11 doubleValueForUnit:meterUnit];
          [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:4 distanceType:1 unitStyle:&v28 usedUnit:?];
        }
        v14 = ;

        v15 = MEMORY[0x277CCACA8];
        v16 = FIFitnessUIBundle();
        v17 = [v16 localizedStringForKey:@"SUMMARY_SWIM_DISTANCE_FORMAT_%@_%@" value:&stru_285E60370 table:@"Localizable"];
        v18 = [v15 localizedStringWithFormat:v17, v12, v14];

        firstObject = [v8 firstObject];
        LOBYTE(v17) = [v10 isEqualToNumber:firstObject];

        if ((v17 & 1) == 0)
        {
          [v7 appendString:@"\n"];
        }

        [v7 appendString:v18];
      }

      v27 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v27);
  }

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v7];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __65__FIFormattingManager_localizedDistanceByStrokeStyle_isPoolSwim___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (id)localizedInSessionDescriptionForElevation:(unint64_t)elevation
{
  v3 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:elevation textCase:0];
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"IN_SESSION_ELEVATION_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, v3];

  return v7;
}

- (id)localizedInSessionDescriptionForGroundElevation:(unint64_t)elevation
{
  v3 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:elevation textCase:0];
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"IN_SESSION_GROUND_ELEVATION_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, v3];

  return v7;
}

- (id)localizedStringForMetricType:(unint64_t)type paceFormat:(int64_t)format
{
  v4 = &stru_285E60370;
  v5 = type - 1;
  format = @"METRIC_ROLLING_PACE";
  v7 = @"METRIC_ACTIVE_ENERGY";
  switch(v5)
  {
    case 0uLL:
      format = @"METRIC_DISTANCE";
      goto LABEL_20;
    case 1uLL:
      goto LABEL_16;
    case 2uLL:
      format = @"METRIC_DURATION";
      goto LABEL_20;
    case 3uLL:
      v8 = @"METRIC_CURRENT_PACE";
      v9 = @"METRIC_CURRENT_SPEED";
      goto LABEL_10;
    case 4uLL:
      format = @"METRIC_HEART_RATE";
      goto LABEL_20;
    case 5uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      goto LABEL_21;
    case 6uLL:
      v7 = @"METRIC_TOTAL_ENERGY";
LABEL_16:
      format = [(FIFormattingManager *)self localizationKeyForEnergyBaseKey:v7, format];
      if (!format)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    case 7uLL:
      v8 = @"METRIC_AVERAGE_PACE";
      v9 = @"METRIC_AVERAGE_SPEED";
      goto LABEL_10;
    case 8uLL:
      format = @"METRIC_LAPS";
      goto LABEL_20;
    case 9uLL:
      format = @"METRIC_ELEVATION";
      goto LABEL_20;
    case 0xDuLL:
      goto LABEL_20;
    case 0xEuLL:
      format = @"METRIC_CURRENT_CADENCE";
      goto LABEL_20;
    case 0xFuLL:
      format = @"METRIC_AVERAGE_CADENCE";
      goto LABEL_20;
    case 0x10uLL:
      format = @"METRIC_GROUND_ELEVATION";
      goto LABEL_20;
    default:
      if (@"METRIC_ACTIVE_ENERGY" != 48)
      {
        goto LABEL_21;
      }

      v8 = @"METRIC_FASTEST_PACE";
      v9 = @"METRIC_MAX_SPEED";
LABEL_10:
      if (format == 4)
      {
        format = v9;
      }

      else
      {
        format = v8;
      }

LABEL_20:
      v10 = FIFitnessUIBundle();
      v4 = [v10 localizedStringForKey:format value:&stru_285E60370 table:@"Localizable"];

LABEL_21:

      return v4;
  }
}

@end