@interface FIFormattingManager
+ (id)localizedShortCadenceUnitStringForActivityType:(unint64_t)a3;
+ (id)localizedShortPowerUnitString;
+ (id)percentStringWithNumber:(id)a3;
+ (id)stringWithNumber:(id)a3 decimalPrecision:(unint64_t)a4 roundingMode:(unint64_t)a5 decimalTrimmingMode:(unint64_t)a6;
+ (unint64_t)defaultPrecisionForDistanceUnit:(unint64_t)a3;
+ (unint64_t)sectionTypeForMetricType:(unint64_t)a3;
- (BOOL)_workoutSupportsDistanceMetricForGoalDisplay:(id)a3;
- (FIFormattingManager)init;
- (FIFormattingManager)initWithUnitManager:(id)a3;
- (double)caloriesForEnergyBurnedInUserUnit:(double)a3;
- (double)energyBurnedInUserUnitForCalories:(double)a3;
- (double)roundedDailyMoveGoal:(double)a3 activityMoveMode:(int64_t)a4;
- (double)roundedDailyMoveGoalForCalories:(double)a3;
- (double)speedPerHourWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 distanceType:(unint64_t)a6;
- (id)_energyBurnedUnitStringForUnit:(id)a3 useShortString:(BOOL)a4;
- (id)_localizedEnergyDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5 activityTypeString:(id)a6;
- (id)_localizedKeyMetricCyclingStringWithWorkout:(id)a3 withUnitStyle:(unint64_t)a4;
- (id)_localizedKeyMetricDistanceStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4;
- (id)_localizedKeyMetricDurationStringWithWorkout:(id)a3;
- (id)_localizedKeyMetricEnergyBurnedStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4;
- (id)_localizedOpenGoalKeyMetricStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4;
- (id)_localizedStringWithDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 unitStyle:(int64_t)a5 decimalPrecision:(unint64_t)a6 roundingMode:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8;
- (id)_localizedTimeDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5 activityTypeString:(id)a6;
- (id)_localizedTimeValueForWorkout:(id)a3;
- (id)_stringByReplacingThirdsIfNeeded:(id)a3 distanceInMeters:(double)a4 distanceUnit:(unint64_t)a5 roundingMode:(unint64_t)a6 decimalTrimmingMode:(unint64_t)a7;
- (id)applyTextCase:(unint64_t)a3 toString:(id)a4;
- (id)decimalSeparator;
- (id)finalLocalizedKeyForKey:(id)a3 multiline:(BOOL)a4;
- (id)localizationKeyForDistanceBaseKey:(id)a3 distanceType:(unint64_t)a4;
- (id)localizationKeyForEnergyBaseKey:(id)a3;
- (id)localizationKeyForMoveBaseKey:(id)a3 activityMoveMode:(int64_t)a4;
- (id)localizationKeyForMoveMinutesBaseKey:(id)a3;
- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5;
- (id)localizedCompactNaturalScaleStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 usedUnit:(unint64_t *)a6;
- (id)localizedDistanceByStrokeStyle:(id)a3 isPoolSwim:(BOOL)a4;
- (id)localizedDistinguishingCadenceUnitStringWithMetricType:(unint64_t)a3;
- (id)localizedDistinguishingPowerStringWithMetricType:(unint64_t)a3;
- (id)localizedDistinguishingPowerUnitStringWithMetricType:(unint64_t)a3;
- (id)localizedGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5;
- (id)localizedGoalUnitForWorkout:(id)a3;
- (id)localizedGoalValueForWorkout:(id)a3;
- (id)localizedHeartRateUnitString;
- (id)localizedInSessionDescriptionForElevation:(unint64_t)a3;
- (id)localizedInSessionDescriptionForGroundElevation:(unint64_t)a3;
- (id)localizedKeyMetricStringForWorkout:(id)a3 unitStyle:(unint64_t)a4;
- (id)localizedLongActiveEnergyUnitStringWithTextCase:(unint64_t)a3;
- (id)localizedLongActiveHoursUnitString;
- (id)localizedLongActiveHoursUnitStringForValue:(unint64_t)a3;
- (id)localizedLongBriskMinutesUnitString;
- (id)localizedLongBriskMinutesUnitStringForValue:(unint64_t)a3;
- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)a3;
- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)a3 value:(unint64_t)a4;
- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)a3;
- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)a3 value:(unint64_t)a4;
- (id)localizedLongUnitStringForDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 textCase:(unint64_t)a5;
- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)a3;
- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)a3 value:(unint64_t)a4;
- (id)localizedNaturalScaleStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 usedUnit:(unint64_t *)a6 decimalTrimmingMode:(unint64_t)a7;
- (id)localizedPaceAndUnitStringForSpeed:(double)a3 activityType:(id)a4;
- (id)localizedPaceAndUnitWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 distanceType:(unint64_t)a6 unitStyle:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8;
- (id)localizedPaceStringWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 unitStyle:(unint64_t)a6 decimalTrimmingMode:(unint64_t)a7 distanceType:(unint64_t)a8 zeroShowsDashes:(BOOL)a9;
- (id)localizedPaceUnitStringWithDistanceType:(unint64_t)a3 distanceUnit:(unint64_t)a4 unitStyle:(int64_t)a5;
- (id)localizedPaceValueForSplit:(id)a3 activityType:(id)a4;
- (id)localizedPowerUnitStringForPower:(double)a3;
- (id)localizedShareTextWithWorkout:(id)a3 shareValue:(id)a4;
- (id)localizedShortActiveEnergyUnitString;
- (id)localizedShortActiveHoursUnitString;
- (id)localizedShortBriskMinutesUnitString;
- (id)localizedShortTypeDistinguishingUnitStringForEnergyType:(unint64_t)a3 workoutSectionType:(unint64_t)a4 multiline:(BOOL)a5;
- (id)localizedShortTypeDistinguishingUnitStringForPowerType:(unint64_t)a3 unitString:(id)a4;
- (id)localizedShortUnitStringForDistanceType:(unint64_t)a3;
- (id)localizedShortUnitStringForDistanceUnit:(unint64_t)a3 textCase:(unint64_t)a4;
- (id)localizedSpeedUnitString;
- (id)localizedSpeedUnitStringForActivityType:(id)a3;
- (id)localizedSpeedUnitStringForDistanceType:(unint64_t)a3 unitStyle:(unint64_t)a4;
- (id)localizedSpeedUnitStringForDistanceUnit:(unint64_t)a3 unitStyle:(unint64_t)a4;
- (id)localizedStringForMetricType:(unint64_t)a3 paceFormat:(int64_t)a4;
- (id)localizedStringWithActiveHours:(id)a3;
- (id)localizedStringWithBeatsPerMinute:(double)a3 requirePositiveValue:(BOOL)a4;
- (id)localizedStringWithBriskMinutes:(id)a3;
- (id)localizedStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 distanceUnit:(unint64_t)a5 unitStyle:(unint64_t)a6 roundingMode:(unint64_t)a7;
- (id)localizedStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 roundingMode:(unint64_t)a6;
- (id)localizedStringWithDistanceInMeters:(double)a3 distanceUnit:(unint64_t)a4 unitStyle:(unint64_t)a5 decimalPrecision:(unint64_t)a6 roundingMode:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8;
- (id)localizedStringWithEnergy:(id)a3 energyType:(unint64_t)a4 unitStyle:(unint64_t)a5;
- (id)localizedStringWithEnergyInCalories:(double)a3 energyType:(unint64_t)a4 unitStyle:(unint64_t)a5;
- (id)localizedStringWithMoveMinutes:(id)a3;
- (id)localizedStringWithMoveMinutes:(id)a3 unitStyle:(unint64_t)a4;
- (id)localizedStringWithMoveQuantity:(id)a3 activityMoveMode:(int64_t)a4;
- (id)localizedStringWithMoveQuantity:(id)a3 unitStyle:(unint64_t)a4 activityMoveMode:(int64_t)a5;
- (id)localizedStringWithPersonHeight:(id)a3 unitStyle:(int64_t)a4;
- (id)localizedStrokeCountStringWithCount:(int64_t)a3 overDistance:(id)a4 paceFormat:(int64_t)a5;
- (id)localizedSwimmingPaceStringWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5;
- (id)localizedTitleForSplit:(id)a3 unit:(id)a4 lapIndex:(int64_t)a5 useShortFormat:(BOOL)a6;
- (id)localizedUnitStringForDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 unitStyle:(unint64_t)a5;
- (id)stringWithDuration:(double)a3 durationFormat:(unint64_t)a4;
- (unint64_t)_effectiveGoalTypeForWorkout:(id)a3;
- (unint64_t)decimalPrecisionForPaceFormat:(int64_t)a3;
- (unint64_t)naturalScaleUnitForDistanceInMeters:(double)a3 distanceType:(unint64_t)a4;
- (unint64_t)userDistanceUnitForSwimmingLapLength;
@end

@implementation FIFormattingManager

- (id)localizedShortActiveEnergyUnitString
{
  v3 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v4 = [(FIFormattingManager *)self _energyBurnedUnitStringForUnit:v3 useShortString:1];

  return v4;
}

- (FIFormattingManager)init
{
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = [[FIUnitManager alloc] initWithHealthStore:v3];
  v5 = [(FIFormattingManager *)self initWithUnitManager:v4];

  return v5;
}

- (FIFormattingManager)initWithUnitManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FIFormattingManager;
  v6 = [(FIFormattingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_unitManager, a3);
  }

  return v7;
}

+ (id)stringWithNumber:(id)a3 decimalPrecision:(unint64_t)a4 roundingMode:(unint64_t)a5 decimalTrimmingMode:(unint64_t)a6
{
  v9 = a3;
  os_unfair_lock_lock(&__formatterLock);
  v10 = _NumberFormatterForDecimalPrecision(a4, a5, a6);
  v11 = [v10 stringFromNumber:v9];

  os_unfair_lock_unlock(&__formatterLock);

  return v11;
}

+ (id)percentStringWithNumber:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&__formatterLock);
  if (_PercentNumberFormatter_onceToken != -1)
  {
    +[FIFormattingManager percentStringWithNumber:];
  }

  v4 = [_PercentNumberFormatter___formatter stringFromNumber:v3];

  os_unfair_lock_unlock(&__formatterLock);

  return v4;
}

- (id)decimalSeparator
{
  os_unfair_lock_lock(&__formatterLock);
  v2 = _DoubleFractionNumberFormatter(2);
  v3 = [v2 decimalSeparator];

  os_unfair_lock_unlock(&__formatterLock);

  return v3;
}

- (id)applyTextCase:(unint64_t)a3 toString:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [v6 localizedLowercaseString];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      v8 = [v6 localizedCapitalizedString];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v8 = [v6 localizedUppercaseString];
  }

  else
  {
    v8 = v6;
  }

  v4 = v8;
LABEL_11:

  return v4;
}

- (id)localizationKeyForMoveBaseKey:(id)a3 activityMoveMode:(int64_t)a4
{
  if (a4 == 2)
  {
    [(FIFormattingManager *)self localizationKeyForMoveMinutesBaseKey:a3];
  }

  else
  {
    [(FIFormattingManager *)self localizationKeyForEnergyBaseKey:a3];
  }
  v4 = ;

  return v4;
}

- (id)localizationKeyForMoveMinutesBaseKey:(id)a3
{
  v3 = MEMORY[0x277CCDAB0];
  v4 = a3;
  v5 = [v3 minuteUnit];
  v6 = _FILocalizationKeyForUnit(v4, v5);

  return v6;
}

- (id)localizationKeyForEnergyBaseKey:(id)a3
{
  unitManager = self->_unitManager;
  v4 = a3;
  v5 = [(FIUnitManager *)unitManager userActiveEnergyBurnedUnit];
  v6 = _FILocalizationKeyForUnit(v4, v5);

  return v6;
}

- (id)localizationKeyForDistanceBaseKey:(id)a3 distanceType:(unint64_t)a4
{
  unitManager = self->_unitManager;
  v6 = a3;
  v7 = [(FIUnitManager *)unitManager userDistanceHKUnitForDistanceType:a4];
  v8 = _FILocalizationKeyForUnit(v6, v7);

  return v8;
}

- (id)stringWithDuration:(double)a3 durationFormat:(unint64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a3;
  }

  v6 = objc_alloc_init(MEMORY[0x277CCA958]);
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  [v7 setLocale:v8];

  [v6 setCalendar:v7];
  [v6 setUnitsStyle:0];
  v9 = 0;
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 1uLL:
        os_unfair_lock_lock(&__formatterLock);
        v16 = _IntegerNumberFormatter(2);
        v17 = _ZeroPaddedIntegerNumberFormatter();
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v5 / 60.0)];
        v19 = [v16 stringFromNumber:v18];

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v5 - (60 * (v5 / 60.0)))];
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

  if (a4 <= 5)
  {
    if (a4 != 4)
    {
      [v6 setZeroFormattingBehavior:1];
      [v6 setAllowedUnits:96];
      [v6 setUnitsStyle:1];
      v10 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
      v11 = [v10 unsignedIntegerValue];

      v9 = [v6 stringFromTimeInterval:(60 * (v11 / 0x3C))];
LABEL_16:
      os_unfair_lock_lock(&__formatterLock);
      goto LABEL_42;
    }

    [v6 setZeroFormattingBehavior:0];
    v12 = v6;
    v13 = 96;
    goto LABEL_21;
  }

  if (a4 == 6)
  {
    [v6 setZeroFormattingBehavior:1];
    [v6 setAllowedUnits:224];
    v14 = v6;
    v15 = 4;
  }

  else
  {
    if (a4 != 7)
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
  v9 = [v6 stringFromTimeInterval:v5];
  os_unfair_lock_lock(&__formatterLock);
  if (a4 == 3)
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
      v33 = [v32 paddingCharacter];
      v34 = [v33 stringByAppendingString:v9];

      v9 = v34;
    }

    if (v5 <= -1.0 && v5 > -60.0)
    {
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"-00:%02d", -v5];

      v9 = v35;
    }
  }

LABEL_42:
  os_unfair_lock_unlock(&__formatterLock);

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (unint64_t)defaultPrecisionForDistanceUnit:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 3;
  }

  else
  {
    return qword_24B3AF198[a3 - 1];
  }
}

- (id)localizedStringWithDistanceInMeters:(double)a3 distanceUnit:(unint64_t)a4 unitStyle:(unint64_t)a5 decimalPrecision:(unint64_t)a6 roundingMode:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8
{
  [(FIUnitManager *)self->_unitManager distanceInDistanceUnit:a3 forDistanceInMeters:?];
  v15 = v14;
  v16 = 0;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v17 = self;
      v18 = a4;
      v19 = 2;
    }

    else
    {
      if (a5 != 3)
      {
        goto LABEL_11;
      }

      v17 = self;
      v18 = a4;
      v19 = 3;
    }
  }

  else
  {
    if (!a5)
    {
      v20 = objc_opt_class();
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v16 = [v20 stringWithNumber:v21 decimalPrecision:a6 roundingMode:a7 decimalTrimmingMode:a8];

      goto LABEL_11;
    }

    if (a5 != 1)
    {
      goto LABEL_11;
    }

    v17 = self;
    v18 = a4;
    v19 = 1;
  }

  v16 = [(FIFormattingManager *)v17 _localizedStringWithDistanceUnit:v18 distanceInUnit:v19 unitStyle:a6 decimalPrecision:a7 roundingMode:a8 decimalTrimmingMode:?];
LABEL_11:

  return v16;
}

- (id)_stringByReplacingThirdsIfNeeded:(id)a3 distanceInMeters:(double)a4 distanceUnit:(unint64_t)a5 roundingMode:(unint64_t)a6 decimalTrimmingMode:(unint64_t)a7
{
  v13 = a3;
  v14 = v13;
  v15 = a4 / 0.9144;
  if (a5 != 4)
  {
    v15 = a4;
  }

  v16 = v15 - floor(v15);
  if (fabs(v16 + -0.333333333) >= 0.01)
  {
    v18 = v13;
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

  LODWORD(v7) = vcvtmd_s64_f64(v15);
  v19 = MEMORY[0x277CCACA8];
  v20 = FIFitnessUIBundle();
  v21 = [v20 localizedStringForKey:v17 value:&stru_285E60370 table:@"Localizable"];
  v22 = [v19 stringWithFormat:v21, v7];

  v23 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", a5, 0, [objc_opt_class() defaultPrecisionForDistanceUnit:a5], a6, a7, a4);
  v18 = [v14 stringByReplacingOccurrencesOfString:v23 withString:v22];

LABEL_8:

  return v18;
}

- (id)localizedStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 roundingMode:(unint64_t)a6
{
  v11 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:?];

  return [(FIFormattingManager *)self localizedStringWithDistanceInMeters:a4 distanceType:v11 distanceUnit:a5 unitStyle:a6 roundingMode:a3];
}

- (id)localizedStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 distanceUnit:(unint64_t)a5 unitStyle:(unint64_t)a6 roundingMode:(unint64_t)a7
{
  v12 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", a5, a6, [objc_opt_class() defaultPrecisionForDistanceUnit:a5], a7, 1, a3);
  if (a4 == 3)
  {
    v13 = [(FIFormattingManager *)self _stringByReplacingThirdsIfNeeded:v12 distanceInMeters:a5 distanceUnit:a7 roundingMode:1 decimalTrimmingMode:a3];

    v12 = v13;
  }

  return v12;
}

- (id)localizedCompactNaturalScaleStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 usedUnit:(unint64_t *)a6
{
  v6 = [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:a4 distanceType:a5 unitStyle:a6 usedUnit:a3];
  v7 = [v6 stringByReplacingOccurrencesOfString:@" " withString:&stru_285E60370];

  return v7;
}

- (id)localizedNaturalScaleStringWithDistanceInMeters:(double)a3 distanceType:(unint64_t)a4 unitStyle:(unint64_t)a5 usedUnit:(unint64_t *)a6 decimalTrimmingMode:(unint64_t)a7
{
  v13 = [FIFormattingManager naturalScaleUnitForDistanceInMeters:"naturalScaleUnitForDistanceInMeters:distanceType:" distanceType:?];
  v14 = [objc_opt_class() defaultPrecisionForDistanceUnit:v13];
  if (a6)
  {
    *a6 = v13;
  }

  v15 = [(FIFormattingManager *)self localizedStringWithDistanceInMeters:v13 distanceUnit:a5 unitStyle:v14 decimalPrecision:2 roundingMode:a7 decimalTrimmingMode:a3];
  if (a4 == 3)
  {
    v16 = [(FIFormattingManager *)self _stringByReplacingThirdsIfNeeded:v15 distanceInMeters:v13 distanceUnit:2 roundingMode:a7 decimalTrimmingMode:a3];

    v15 = v16;
  }

  return v15;
}

- (unint64_t)naturalScaleUnitForDistanceInMeters:(double)a3 distanceType:(unint64_t)a4
{
  v7 = naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit;
  if (naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit && v7 == [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:a4])
  {
    v8 = naturalScaleUnitForDistanceInMeters_distanceType____cutoffDistanceInMeters;
  }

  else
  {
    naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:a4];
    IsMetric = FIDistanceUnitIsMetric(naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit);
    v10 = 0.1;
    if (IsMetric)
    {
      v10 = 1.0;
    }

    [(FIUnitManager *)self->_unitManager distanceInMetersForDistanceInUserUnit:a4 distanceType:v10];
    naturalScaleUnitForDistanceInMeters_distanceType____cutoffDistanceInMeters = v8;
  }

  result = naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit;
  if (*&v8 > a3)
  {
    switch(naturalScaleUnitForDistanceInMeters_distanceType____userDistanceUnit)
    {
      case 5:
        goto LABEL_11;
      case 4:
        return result;
      case 3:
LABEL_11:
        if (a4 == 4)
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

- (id)_localizedStringWithDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 unitStyle:(int64_t)a5 decimalPrecision:(unint64_t)a6 roundingMode:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8
{
  os_unfair_lock_lock(&__formatterLock);
  v14 = _LengthFormatter(a6, a5, a7, a8);
  v15 = v14;
  if (a3 - 1 > 4)
  {
    v16 = 14;
  }

  else
  {
    v16 = qword_24B3AF1C0[a3 - 1];
  }

  v17 = [v14 stringFromValue:v16 unit:a4];
  os_unfair_lock_unlock(&__formatterLock);

  return v17;
}

- (id)localizedShortUnitStringForDistanceUnit:(unint64_t)a3 textCase:(unint64_t)a4
{
  os_unfair_lock_lock(&__formatterLock);
  v7 = _LengthFormatter(1, 2, 2, 1);
  v8 = v7;
  if (a3 - 1 > 4)
  {
    v9 = 14;
  }

  else
  {
    v9 = qword_24B3AF1C0[a3 - 1];
  }

  v10 = [v7 unitStringFromValue:v9 unit:100.0];
  os_unfair_lock_unlock(&__formatterLock);
  v11 = [(FIFormattingManager *)self applyTextCase:a4 toString:v10];

  return v11;
}

- (id)localizedShortUnitStringForDistanceType:(unint64_t)a3
{
  v4 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:a3];

  return [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:v4];
}

- (id)localizedLongUnitStringForDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 textCase:(unint64_t)a5
{
  os_unfair_lock_lock(&__formatterLock);
  v9 = _LengthFormatter(1, 3, 2, 1);
  v10 = v9;
  if (a3 - 1 > 4)
  {
    v11 = 14;
  }

  else
  {
    v11 = qword_24B3AF1C0[a3 - 1];
  }

  v12 = [v9 unitStringFromValue:v11 unit:a4];
  os_unfair_lock_unlock(&__formatterLock);
  v13 = [(FIFormattingManager *)self applyTextCase:a5 toString:v12];

  return v13;
}

- (id)localizedUnitStringForDistanceUnit:(unint64_t)a3 distanceInUnit:(double)a4 unitStyle:(unint64_t)a5
{
  if (a5 - 1 >= 2)
  {
    if (a5 == 3)
    {
      v5 = [(FIFormattingManager *)self localizedLongUnitStringForDistanceUnit:a3 distanceInUnit:a4];
    }

    else
    {
      v5 = &stru_285E60370;
    }
  }

  else
  {
    v5 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:a3, a4];
  }

  return v5;
}

- (id)localizedPaceStringWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 unitStyle:(unint64_t)a6 decimalTrimmingMode:(unint64_t)a7 distanceType:(unint64_t)a8 zeroShowsDashes:(BOOL)a9
{
  v9 = a9;
  v16 = a3;
  v17 = [(FIFormattingManager *)self decimalPrecisionForPaceFormat:a5];
  if (a5 == 4)
  {
    v18 = v17;
    [(FIFormattingManager *)self speedPerHourWithDistance:v16 overDuration:4 paceFormat:a8 distanceType:a4];
    v20 = v19;

    v21 = objc_opt_class();
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
    v23 = [v21 stringWithNumber:v22 decimalPrecision:v18 roundingMode:2 decimalTrimmingMode:a7];
  }

  else
  {
    [(FIUnitManager *)self->_unitManager paceWithDistance:v16 overDuration:a5 paceFormat:a8 distanceType:a4];
    v25 = v24;

    if (v25 != 0.0 || !v9)
    {
      if (a6 == 3)
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

- (id)localizedPaceAndUnitWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 distanceType:(unint64_t)a6 unitStyle:(unint64_t)a7 decimalTrimmingMode:(unint64_t)a8
{
  v15 = a3;
  v16 = [(FIFormattingManager *)self localizedPaceStringWithDistance:v15 overDuration:a5 paceFormat:a7 unitStyle:a8 decimalTrimmingMode:a6 distanceType:a4];
  v17 = [(FIUnitManager *)self->_unitManager paceDistanceUnitForDistanceType:a6];
  if ((a5 - 1) < 3)
  {
    if (a7 > 1)
    {
      if (a7 != 2)
      {
        if (a7 != 3)
        {
          goto LABEL_21;
        }

        v24 = [(FIFormattingManager *)self localizedPaceUnitStringWithDistanceType:a6 distanceUnit:v17 unitStyle:3];
        v25 = MEMORY[0x277CCACA8];
        v26 = FIFitnessUIBundle();
        v27 = [v26 localizedStringForKey:@"PACE_PER_UNIT" value:&stru_285E60370 table:@"Localizable"];
        v8 = [v25 stringWithFormat:v27, v16, v24];

        goto LABEL_20;
      }

      v18 = self;
      v19 = a6;
      v20 = v17;
      v21 = 2;
      goto LABEL_17;
    }

    if (a7)
    {
      if (a7 != 1)
      {
        goto LABEL_21;
      }

      v18 = self;
      v19 = a6;
      v20 = v17;
      v21 = 1;
LABEL_17:
      v28 = [(FIFormattingManager *)v18 localizedPaceUnitStringWithDistanceType:v19 distanceUnit:v20 unitStyle:v21];
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

  if (a5 != 4)
  {
    goto LABEL_21;
  }

  [(FIFormattingManager *)self speedPerHourWithDistance:v15 overDuration:4 paceFormat:a6 distanceType:a4];
  v23 = v22;
  if (a8 == 2)
  {
    v23 = trunc(v22 * 10.0) / 10.0;
  }

  if (a7 - 1 < 2)
  {
    v28 = [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v17 unitStyle:a7];
    goto LABEL_19;
  }

  if (a7 != 3)
  {
    if (a7)
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

- (unint64_t)decimalPrecisionForPaceFormat:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)localizedPaceAndUnitStringForSpeed:(double)a3 activityType:(id)a4
{
  v6 = FIDistanceTypeForActivityType(a4);
  v7 = FIPaceFormatForDistanceType(v6);
  v8 = MEMORY[0x277CCD7E8];
  v9 = [MEMORY[0x277CCDAB0] meterUnit];
  v10 = [v8 quantityWithUnit:v9 doubleValue:a3];
  v11 = [(FIFormattingManager *)self localizedPaceStringWithDistance:v10 overDuration:v7 paceFormat:v6 distanceType:1.0];

  v12 = [(FIFormattingManager *)self unitManager];
  v13 = [v12 paceDistanceUnitForDistanceType:v6];

  v14 = [(FIFormattingManager *)self localizedPaceUnitStringWithDistanceType:v6 distanceUnit:v13];
  v15 = [v14 localizedUppercaseString];

  v16 = MEMORY[0x277CCACA8];
  v17 = FIFitnessUIBundle();
  v18 = [v17 localizedStringForKey:@"PACE_FORMAT" value:&stru_285E60370 table:@"Localizable"];
  v19 = [v16 stringWithFormat:v18, v11, v15];

  return v19;
}

- (double)speedPerHourWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5 distanceType:(unint64_t)a6
{
  unitManager = self->_unitManager;
  v9 = a3;
  v10 = FIHKUnitForDistanceUnit([(FIUnitManager *)unitManager paceDistanceUnitForDistanceType:a6]);
  [v9 doubleValueForUnit:v10];
  v12 = v11;

  return v12 / (a4 / 3600.0);
}

- (id)localizedSwimmingPaceStringWithDistance:(id)a3 overDuration:(double)a4 paceFormat:(int64_t)a5
{
  v8 = a3;
  v9 = [(FIFormattingManager *)self unitManager];
  v10 = [v9 userDistanceHKUnitForDistanceType:3];

  [v8 doubleValueForUnit:v10];
  v12 = v11;

  if (v12 > 2.22044605e-16 && a4 / v12 * a5 <= 3600.0)
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

- (id)localizedStrokeCountStringWithCount:(int64_t)a3 overDistance:(id)a4 paceFormat:(int64_t)a5
{
  v8 = a4;
  v9 = [(FIFormattingManager *)self unitManager];
  v10 = [v9 userDistanceHKUnitForDistanceType:3];

  [v8 doubleValueForUnit:v10];
  v12 = v11;

  if (v12 > 2.22044605e-16)
  {
    a3 = llround(a3 / v12 * a5);
  }

  v13 = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v15 = [v13 stringWithNumber:v14 decimalPrecision:1];

  return v15;
}

+ (id)localizedShortCadenceUnitStringForActivityType:(unint64_t)a3
{
  v3 = FIIsWorkoutTypePedestrianActivity(a3);
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

- (id)localizedPowerUnitStringForPower:(double)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"POWER_SHORT_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 localizedStringWithFormat:v6, *&a3];

  return v7;
}

- (id)localizedShortTypeDistinguishingUnitStringForPowerType:(unint64_t)a3 unitString:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 12)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = FIFitnessUIBundle();
    v9 = [v8 localizedStringForKey:@"AVERAGE_POWER_DISTINGUISHING_SHORT" value:&stru_285E60370 table:@"Localizable"];
    v6 = [v7 stringWithFormat:v9, v5];
  }

  return v6;
}

- (id)localizedSpeedUnitString
{
  v3 = [[FIWorkoutActivityType alloc] initWithActivityTypeIdentifier:13 isIndoor:0];
  v4 = [(FIFormattingManager *)self localizedSpeedUnitStringForActivityType:v3];

  return v4;
}

- (id)localizedSpeedUnitStringForDistanceType:(unint64_t)a3 unitStyle:(unint64_t)a4
{
  v7 = [(FIFormattingManager *)self unitManager];
  v8 = [v7 paceDistanceUnitForDistanceType:a3];

  return [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v8 unitStyle:a4];
}

- (id)localizedSpeedUnitStringForActivityType:(id)a3
{
  v4 = FIDistanceTypeForActivityType(a3);
  v5 = [(FIFormattingManager *)self unitManager];
  v6 = [v5 userDistanceUnitForDistanceType:v4];

  return [(FIFormattingManager *)self localizedSpeedUnitStringForDistanceUnit:v6 unitStyle:1];
}

- (id)localizedSpeedUnitStringForDistanceUnit:(unint64_t)a3 unitStyle:(unint64_t)a4
{
  IsMetric = FIDistanceUnitIsMetric(a3);
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

- (id)localizedPaceUnitStringWithDistanceType:(unint64_t)a3 distanceUnit:(unint64_t)a4 unitStyle:(int64_t)a5
{
  v8 = FIPaceFormatForDistanceType(a3);
  v9 = FINumberOfUnitsInPaceForPaceFormat(v8);
  v10 = v9;
  if ((a5 - 1) >= 2)
  {
    if (a5 == 3)
    {
      v11 = [(FIFormattingManager *)self localizedLongUnitStringForDistanceUnit:a4 distanceInUnit:v9];
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
    v11 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:a4];
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

- (id)finalLocalizedKeyForKey:(id)a3 multiline:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, @"_ONE_LINE"];
  }

  v8 = v7;

  return v8;
}

- (id)localizedDistinguishingCadenceUnitStringWithMetricType:(unint64_t)a3
{
  v4 = [objc_opt_class() localizedShortCadenceUnitStringForActivityType:37];
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = v6;
  if (a3 == 16)
  {
    v8 = @"AVERAGE_CADENCE_DISTINGUISHING_LONG";
  }

  else
  {
    v8 = @"CURRENT_CADENCE_DISTINGUISHING_LONG";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_285E60370 table:@"Localizable"];
  v10 = [v5 stringWithFormat:v9, v4];

  v11 = [v10 localizedUppercaseString];

  return v11;
}

- (id)localizedDistinguishingPowerUnitStringWithMetricType:(unint64_t)a3
{
  v4 = [objc_opt_class() localizedShortPowerUnitString];
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = v6;
  if (a3 == 12)
  {
    v8 = @"AVERAGE_POWER_DISTINGUISHING_LONG";
  }

  else
  {
    v8 = @"CURRENT_POWER_DISTINGUISHING_LONG";
  }

  v9 = [v6 localizedStringForKey:v8 value:&stru_285E60370 table:@"Localizable"];
  v10 = [v5 stringWithFormat:v9, v4];

  v11 = [v10 localizedUppercaseString];

  return v11;
}

- (id)localizedDistinguishingPowerStringWithMetricType:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = v5;
  if (a3 == 12)
  {
    v7 = @"AVERAGE_POWER_DISTINGUISHING_LONG";
  }

  else
  {
    v7 = @"CURRENT_POWER_DISTINGUISHING_LONG";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_285E60370 table:@"Localizable"];
  v9 = [v4 stringWithFormat:v8, @"Power"];

  v10 = [v9 localizedUppercaseString];

  return v10;
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

- (id)localizedStringWithPersonHeight:(id)a3 unitStyle:(int64_t)a4
{
  v5 = a3;
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

  [_LengthFormatterForPersonHeight___formatter setUnitStyle:a4];
  v10 = MEMORY[0x277CCDAB0];
  v11 = _LengthFormatterForPersonHeight___formatter;
  v12 = [v10 meterUnit];
  [v5 doubleValueForUnit:v12];
  v14 = v13;

  v15 = [v11 stringFromMeters:v14];

  os_unfair_lock_unlock(&__formatterLock);

  return v15;
}

- (double)roundedDailyMoveGoal:(double)a3 activityMoveMode:(int64_t)a4
{
  if (a4 == 2)
  {
    [(FIFormattingManager *)self roundedDailyMoveGoalForMoveMinutes:a3];
  }

  else
  {
    [(FIFormattingManager *)self roundedDailyMoveGoalForCalories:a3];
  }

  return result;
}

- (double)roundedDailyMoveGoalForCalories:(double)a3
{
  v4 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  IsCalorieUnit = FIHKUnitIsCalorieUnit(v4);

  if (IsCalorieUnit)
  {
    return round(a3 / 10.0) * 10.0;
  }

  v7 = [MEMORY[0x277CCDAB0] jouleUnitWithMetricPrefix:9];
  v8 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v8 _valueByConvertingValue:v7 toUnit:a3];
  v10 = v9;

  v11 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v7 _valueByConvertingValue:v11 toUnit:round(v10 / 20.0) * 20.0];
  v13 = v12;

  return v13;
}

- (double)energyBurnedInUserUnitForCalories:(double)a3
{
  v4 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v5 _valueByConvertingValue:v4 toUnit:a3];
  v7 = v6;

  return v7;
}

- (double)caloriesForEnergyBurnedInUserUnit:(double)a3
{
  v4 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v5 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v4 _valueByConvertingValue:v5 toUnit:a3];
  v7 = v6;

  return v7;
}

- (id)localizedStringWithMoveQuantity:(id)a3 activityMoveMode:(int64_t)a4
{
  if (a4 == 2)
  {
    [(FIFormattingManager *)self localizedStringWithMoveMinutes:a3];
  }

  else
  {
    [(FIFormattingManager *)self localizedStringWithActiveEnergy:a3];
  }
  v4 = ;

  return v4;
}

- (id)localizedStringWithMoveMinutes:(id)a3
{
  v3 = MEMORY[0x277CCDAB0];
  v4 = a3;
  v5 = [v3 minuteUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithMoveMinutes:(id)a3 unitStyle:(unint64_t)a4
{
  v5 = MEMORY[0x277CCDAB0];
  v6 = a3;
  v7 = [v5 minuteUnit];
  v8 = _HKWorkoutFlooredValueForQuantity();

  if (a4 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = off_2790050F0[a4];
  }

  v10 = v8;
  v11 = MEMORY[0x277CCACA8];
  v12 = FIFitnessUIBundle();
  v13 = [v12 localizedStringForKey:v9 value:&stru_285E60370 table:@"Localizable-tinker"];
  v14 = [v11 localizedStringWithFormat:v13, v10];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld %@", v10, v14];

  return v15;
}

- (id)localizedStringWithBriskMinutes:(id)a3
{
  v3 = MEMORY[0x277CCDAB0];
  v4 = a3;
  v5 = [v3 minuteUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithActiveHours:(id)a3
{
  v3 = MEMORY[0x277CCDAB0];
  v4 = a3;
  v5 = [v3 countUnit];
  v6 = _HKWorkoutFlooredValueForQuantity();

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  v9 = [v7 stringWithNumber:v8 decimalPrecision:1];

  return v9;
}

- (id)localizedStringWithMoveQuantity:(id)a3 unitStyle:(unint64_t)a4 activityMoveMode:(int64_t)a5
{
  if (a5 == 2)
  {
    [(FIFormattingManager *)self localizedStringWithMoveMinutes:a3 unitStyle:a4];
  }

  else
  {
    [(FIFormattingManager *)self localizedStringWithActiveEnergy:a3 unitStyle:a4];
  }
  v5 = ;

  return v5;
}

- (id)localizedStringWithEnergy:(id)a3 energyType:(unint64_t)a4 unitStyle:(unint64_t)a5
{
  v8 = a3;
  switch(a4)
  {
    case 3uLL:
      goto LABEL_4;
    case 2uLL:
      v9 = [(FIUnitManager *)self->_unitManager userBasalEnergyBurnedUnit];
      goto LABEL_6;
    case 1uLL:
LABEL_4:
      v9 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
LABEL_6:
      v10 = v9;
      goto LABEL_8;
  }

  v10 = 0;
LABEL_8:
  v11 = _HKWorkoutFlooredValueForQuantity();
  v12 = [MEMORY[0x277CCDAB0] energyFormatterUnitFromUnit:v10];
  v13 = 0;
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      os_unfair_lock_lock(&__formatterLock);
      v16 = _EnergyFormatter(v10);
      v14 = v16;
      v17 = 2;
    }

    else
    {
      if (a5 != 3)
      {
        goto LABEL_20;
      }

      os_unfair_lock_lock(&__formatterLock);
      v16 = _EnergyFormatter(v10);
      v14 = v16;
      v17 = 3;
    }

    [v16 setUnitStyle:v17];
    v13 = [v14 stringFromValue:v12 unit:v11];
    goto LABEL_18;
  }

  if (a5)
  {
    if (a5 != 1)
    {
      goto LABEL_20;
    }

    os_unfair_lock_lock(&__formatterLock);
    v14 = _EnergyFormatter(v10);
    [v14 setUnitStyle:1];
    v15 = [v14 stringFromValue:v12 unit:v11];
    v13 = [v15 localizedLowercaseString];

LABEL_18:
    os_unfair_lock_unlock(&__formatterLock);
    goto LABEL_19;
  }

  v18 = objc_opt_class();
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v13 = [v18 stringWithNumber:v14 decimalPrecision:1];
LABEL_19:

LABEL_20:

  return v13;
}

- (id)localizedStringWithEnergyInCalories:(double)a3 energyType:(unint64_t)a4 unitStyle:(unint64_t)a5
{
  v9 = MEMORY[0x277CCD7E8];
  v10 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  v11 = [v9 quantityWithUnit:v10 doubleValue:a3];

  v12 = [(FIFormattingManager *)self localizedStringWithEnergy:v11 energyType:a4 unitStyle:a5];

  return v12;
}

- (id)localizedShortTypeDistinguishingUnitStringForEnergyType:(unint64_t)a3 workoutSectionType:(unint64_t)a4 multiline:(BOOL)a5
{
  v6 = @"SEGMENT_";
  if (a4 != 3)
  {
    v6 = &stru_285E60370;
  }

  v7 = @"ACTIVE";
  if (a3 == 3)
  {
    v7 = @"TOTAL";
  }

  if (a5)
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

+ (unint64_t)sectionTypeForMetricType:(unint64_t)a3
{
  if (a3 - 21 >= 5)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)a3
{
  if (a3 == 2)
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

- (id)localizedLongMoveUnitStringWithActivityMoveMode:(int64_t)a3 value:(unint64_t)a4
{
  if (a3 == 2)
  {
    [(FIFormattingManager *)self localizedLongMoveMinutesUnitStringForValue:a4];
  }

  else
  {
    [(FIFormattingManager *)self localizedLongActiveEnergyUnitString:a3];
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
  v6 = [v5 localizedUppercaseString];

  return v6;
}

- (id)localizedLongBriskMinutesUnitStringForValue:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"BRISK_MINUTES_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v7 = [v4 localizedStringWithFormat:v6, a3];
  v8 = [v7 localizedUppercaseString];

  return v8;
}

- (id)localizedLongActiveHoursUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"ACTIVE_HOURS_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  v6 = [v5 localizedUppercaseString];

  return v6;
}

- (id)localizedLongActiveHoursUnitStringForValue:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"ACTIVE_HOURS_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v7 = [v4 localizedStringWithFormat:v6, a3];
  v8 = [v7 localizedUppercaseString];

  return v8;
}

- (id)localizedShortBriskMinutesUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"BRISK_MINUTES_UNIT_SHORT" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  v6 = [v5 localizedUppercaseString];

  return v6;
}

- (id)localizedShortActiveHoursUnitString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = FIFitnessUIBundle();
  v4 = [v3 localizedStringForKey:@"ACTIVE_HOURS_UNIT_SHORT" value:&stru_285E60370 table:@"Localizable-tinker"];
  v5 = [v2 localizedStringWithFormat:v4];
  v6 = [v5 localizedUppercaseString];

  return v6;
}

- (id)localizedLongActiveEnergyUnitStringWithTextCase:(unint64_t)a3
{
  v5 = [(FIUnitManager *)self->_unitManager userActiveEnergyBurnedUnit];
  v6 = [(FIFormattingManager *)self _energyBurnedUnitStringForUnit:v5 useShortString:0];

  v7 = [MEMORY[0x277CBEB98] setWithArray:&unk_285E6B0A0];
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v8 objectForKey:*MEMORY[0x277CBE6C8]];
  v10 = [v7 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(FIFormattingManager *)self applyTextCase:a3 toString:v6];

    v6 = v11;
  }

  return v6;
}

- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = [v6 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v8 = [v5 localizedStringWithFormat:v7];

  v9 = [(FIFormattingManager *)self applyTextCase:a3 toString:v8];

  return v9;
}

- (id)localizedLongMoveMinutesUnitStringWithTextCase:(unint64_t)a3 value:(unint64_t)a4
{
  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_LONG" value:&stru_285E60370 table:@"Localizable-tinker"];
  v10 = [v7 localizedStringWithFormat:v9, a4];

  v11 = [(FIFormattingManager *)self applyTextCase:a3 toString:v10];

  return v11;
}

- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = FIFitnessUIBundle();
  v7 = [v6 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_MEDIUM" value:&stru_285E60370 table:@"Localizable-tinker"];
  v8 = [v5 localizedStringWithFormat:v7];

  v9 = [(FIFormattingManager *)self applyTextCase:a3 toString:v8];

  return v9;
}

- (id)localizedMediumMoveMinutesUnitStringWithTextCase:(unint64_t)a3 value:(unint64_t)a4
{
  v7 = MEMORY[0x277CCACA8];
  v8 = FIFitnessUIBundle();
  v9 = [v8 localizedStringForKey:@"APPLE_MOVE_TIME_UNIT_MEDIUM" value:&stru_285E60370 table:@"Localizable-tinker"];
  v10 = [v7 localizedStringWithFormat:v9, a4];

  v11 = [(FIFormattingManager *)self applyTextCase:a3 toString:v10];

  return v11;
}

- (id)_energyBurnedUnitStringForUnit:(id)a3 useShortString:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  os_unfair_lock_lock(&__formatterLock);
  v6 = _EnergyFormatter(v5);
  v7 = v6;
  if (v4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  [v6 setUnitStyle:v8];
  v9 = [MEMORY[0x277CCDAB0] energyFormatterUnitFromUnit:v5];

  v10 = [v7 unitStringFromValue:v9 unit:100.0];
  os_unfair_lock_unlock(&__formatterLock);

  return v10;
}

- (id)localizedGoalValueForWorkout:(id)a3
{
  v5 = a3;
  v6 = [v5 fi_activityType];
  v7 = [(FIFormattingManager *)self _effectiveGoalTypeForWorkout:v5];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_10;
      }

      v8 = [v5 totalDistance];
      v9 = FIDistanceTypeForActivityType(v6);
      v10 = [MEMORY[0x277CCDAB0] meterUnit];
      [v8 doubleValueForUnit:v10];
      v3 = [(FIFormattingManager *)self localizedStringWithDistanceInMeters:v9 distanceType:0 unitStyle:?];

      goto LABEL_8;
    }

LABEL_7:
    v8 = [v5 totalEnergyBurned];
    v3 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:v8 unitStyle:0];
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

  v3 = [(FIFormattingManager *)self _localizedTimeValueForWorkout:v5];
LABEL_10:

  return v3;
}

- (id)localizedGoalUnitForWorkout:(id)a3
{
  v4 = a3;
  v5 = [v4 fi_activityType];
  v6 = [(FIFormattingManager *)self _effectiveGoalTypeForWorkout:v4];

  if (!v6 || v6 == 3)
  {
    v8 = [(FIFormattingManager *)self localizedShortActiveEnergyUnitString];
  }

  else if (v6 == 1)
  {
    v7 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceType:FIDistanceTypeForActivityType(v5)];
    v8 = [v7 localizedUppercaseString];
  }

  else
  {
    v8 = &stru_285E60370;
  }

  return v8;
}

- (id)_localizedTimeDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5 activityTypeString:(id)a6
{
  v6 = a5;
  v10 = a6;
  [a3 duration];
  v12 = v11;
  v13 = fmod(v11, 60.0);
  if (v13 < 30.0)
  {
    v13 = -v13;
  }

  v14 = [(FIFormattingManager *)self stringWithDuration:4 durationFormat:v12 + v13];
  *a4 = v14;
  if (v6)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = FIFitnessUIBundle();
    v17 = [v16 localizedStringForKey:@"TIME_GOAL_FORMAT" value:&stru_285E60370 table:@"Localizable"];
    v18 = [v15 stringWithFormat:v17, *a4, v10];
  }

  else
  {
    v18 = v14;
  }

  return v18;
}

- (id)_localizedTimeValueForWorkout:(id)a3
{
  [a3 duration];
  v5 = v4;
  v6 = fmod(v4, 60.0);
  if (v6 < 30.0)
  {
    v6 = -v6;
  }

  v7 = v5 + v6;

  return [(FIFormattingManager *)self stringWithDuration:4 durationFormat:v7];
}

- (id)_localizedEnergyDescriptionForWorkout:(id)a3 withValue:(id *)a4 appendActivityType:(BOOL)a5 activityTypeString:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = [a3 totalEnergyBurned];
  *a4 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:v11 unitStyle:0];
  v12 = [(FIFormattingManager *)self localizedShortActiveEnergyUnitString];
  v13 = MEMORY[0x277CCACA8];
  v14 = FIFitnessUIBundle();
  v15 = v14;
  if (v6)
  {
    v16 = [v14 localizedStringForKey:@"ENERGY_GOAL_FORMAT" value:&stru_285E60370 table:@"Localizable"];
    [v13 stringWithFormat:v16, *a4, v12, v10];
  }

  else
  {
    v16 = [v14 localizedStringForKey:@"WORKOUT_STATISTICS_UNIT_FORMAT_NO_SPACE" value:&stru_285E60370 table:@"Localizable"];
    [v13 stringWithFormat:v16, *a4, v12, v19];
  }
  v17 = ;

  return v17;
}

- (unint64_t)_effectiveGoalTypeForWorkout:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceRevision];
  v6 = [v5 source];
  if ([v6 _isAppleWatch])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 sourceRevision];
    v9 = [v8 source];
    v7 = [v9 _hasFirstPartyBundleID];
  }

  v10 = [v4 _goalType];
  [v4 workoutActivityType];
  v11 = _HKWorkoutDistanceTypeForActivityType();
  v12 = [v4 statisticsForType:v11];

  v13 = [v12 sumQuantity];
  v14 = [MEMORY[0x277CCDAB0] meterUnit];
  [v13 doubleValueForUnit:v14];
  v16 = v15;

  if (v7)
  {
    if (!v10)
    {
      if (![(FIFormattingManager *)self _workoutSupportsDistanceMetricForGoalDisplay:v4]|| v16 <= 2.22044605e-16)
      {
        v17 = [v4 totalEnergyBurned];
        v18 = v17 == 0;

        v10 = 2 * v18;
        goto LABEL_14;
      }

LABEL_10:
      v10 = 1;
    }
  }

  else
  {
    if (v16 > 2.22044605e-16)
    {
      goto LABEL_10;
    }

    [v4 duration];
    if (v19 <= 2.22044605e-16)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

LABEL_14:

  return v10;
}

- (BOOL)_workoutSupportsDistanceMetricForGoalDisplay:(id)a3
{
  v3 = a3;
  if ([v3 workoutActivityType] == 82 || objc_msgSend(v3, "workoutActivityType") == 21)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 supportsWorkoutMetricType:1];
  }

  return v4;
}

- (id)localizedCompactGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5
{
  v5 = [(FIFormattingManager *)self localizedGoalDescriptionForGoalType:a3 goalValue:a5 activityType:a4];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_285E60370];

  return v6;
}

- (id)localizedGoalDescriptionForGoalType:(unint64_t)a3 goalValue:(double)a4 activityType:(id)a5
{
  v8 = a5;
  v9 = v8;
  v10 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v16 = FIFitnessUIBundle();
      v10 = [v16 localizedStringForKey:@"WORKOUT_OPEN_GOAL" value:&stru_285E60370 table:@"Localizable"];

      goto LABEL_11;
    }

    if (a3 != 1)
    {
      goto LABEL_11;
    }

    v11 = [(FIUnitManager *)self->_unitManager userDistanceUnitForDistanceType:FIDistanceTypeForActivityType(v8)];
    v12 = -[FIFormattingManager localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:](self, "localizedStringWithDistanceInMeters:distanceUnit:unitStyle:decimalPrecision:roundingMode:decimalTrimmingMode:", v11, 2, [objc_opt_class() defaultPrecisionForDistanceUnit:v11], 6, 2, a4);
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v12 = [(FIFormattingManager *)self stringWithDuration:7 durationFormat:a4];
LABEL_10:
    v10 = v12;
    goto LABEL_11;
  }

  if (a3 == 3)
  {
    v13 = MEMORY[0x277CCD7E8];
    v14 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    v15 = [v13 quantityWithUnit:v14 doubleValue:a4];
    v10 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:v15 unitStyle:2];
  }

LABEL_11:

  return v10;
}

- (id)localizedKeyMetricStringForWorkout:(id)a3 unitStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 _goalType];
  v8 = 0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = [(FIFormattingManager *)self _localizedKeyMetricDurationStringWithWorkout:v6];
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_11;
      }

      v9 = [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:v6 withUnitStyle:a4];
    }
  }

  else if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_11;
    }

    v9 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:v6 withUnitStyle:a4];
  }

  else
  {
    v9 = [(FIFormattingManager *)self _localizedOpenGoalKeyMetricStringForWorkout:v6 withUnitStyle:a4];
  }

  v8 = v9;
LABEL_11:

  return v8;
}

- (id)_localizedKeyMetricEnergyBurnedStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4
{
  v6 = [a3 totalEnergyBurned];
  v7 = [(FIFormattingManager *)self localizedStringWithActiveEnergy:v6 unitStyle:a4];

  return v7;
}

- (id)_localizedKeyMetricDistanceStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 totalDistance];
  v8 = [MEMORY[0x277CCDAB0] meterUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;
  v11 = [v6 fi_activityType];

  v12 = [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:FIDistanceTypeForActivityType(v11) distanceType:a4 unitStyle:0 usedUnit:v10];

  return v12;
}

- (id)_localizedKeyMetricDurationStringWithWorkout:(id)a3
{
  [a3 duration];

  return [(FIFormattingManager *)self stringWithDuration:4 durationFormat:?];
}

- (id)_localizedKeyMetricCyclingStringWithWorkout:(id)a3 withUnitStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 totalDistance];
  v8 = [MEMORY[0x277CCDAB0] meterUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;

  v11 = [v6 metadata];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v13 = [v12 BOOLValue];

  if ((v13 & 1) != 0 || v10 <= 2.22044605e-16)
  {
    v14 = [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:v6 withUnitStyle:a4];
  }

  else
  {
    v14 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:v6 withUnitStyle:a4];
  }

  v15 = v14;

  return v15;
}

- (id)_localizedOpenGoalKeyMetricStringForWorkout:(id)a3 withUnitStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 workoutActivityType];
  if (v7 > 0x34)
  {
    goto LABEL_9;
  }

  if (((1 << v7) & 0x10402001000000) != 0)
  {
    v8 = [(FIFormattingManager *)self _localizedKeyMetricDistanceStringForWorkout:v6 withUnitStyle:a4];
    goto LABEL_4;
  }

  if (v7 != 13)
  {
LABEL_9:
    if (v7 == 3000)
    {
      [(FIFormattingManager *)self _localizedKeyMetricDurationStringWithWorkout:v6];
    }

    else
    {
      [(FIFormattingManager *)self _localizedKeyMetricEnergyBurnedStringForWorkout:v6 withUnitStyle:a4];
    }
    v8 = ;
    goto LABEL_4;
  }

  v8 = [(FIFormattingManager *)self _localizedKeyMetricCyclingStringWithWorkout:v6 withUnitStyle:a4];
LABEL_4:
  v9 = v8;

  return v9;
}

- (id)localizedShareTextWithWorkout:(id)a3 shareValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 metadata];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v9 = [v8 BOOLValue];

  v10 = [v5 workoutActivityType];
  if (v10 > 58)
  {
    if (v10 <= 69)
    {
      if (v10 > 64)
      {
        if (v10 == 65)
        {
          v11 = @"WORKOUT_SHARING_KICKBOXING_%@";
          goto LABEL_47;
        }

        if (v10 == 66)
        {
          v11 = @"WORKOUT_SHARING_PILATES_%@";
          goto LABEL_47;
        }
      }

      else
      {
        if (v10 == 59)
        {
          v11 = @"WORKOUT_SHARING_CORE_TRAINING_%@";
          goto LABEL_47;
        }

        if (v10 == 63)
        {
          v11 = @"WORKOUT_SHARING_HIGH_INTENSITY_INTERVAL_TRAINING_%@";
          goto LABEL_47;
        }
      }

      goto LABEL_46;
    }

    if (v10 > 71)
    {
      switch(v10)
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

    if (v10 == 70)
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
    if (v10 <= 34)
    {
      if (v10 > 19)
      {
        if (v10 == 20)
        {
          v11 = @"WORKOUT_SHARING_FUNCTIONAL_STRENGTH_TRAINING_%@";
          goto LABEL_47;
        }

        if (v10 == 24)
        {
          v11 = @"WORKOUT_SHARING_HIKING_%@";
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      if (v10 != 13)
      {
        if (v10 == 16)
        {
          v11 = @"WORKOUT_SHARING_ELLIPTICAL_%@";
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v12 = @"WORKOUT_SHARING_OUTDOOR_CYCLING_%@";
      v13 = @"WORKOUT_SHARING_INDOOR_CYCLING_%@";
    }

    else if (v10 <= 43)
    {
      if (v10 == 35)
      {
        v11 = @"WORKOUT_SHARING_ROWING_%@";
        goto LABEL_47;
      }

      if (v10 != 37)
      {
        goto LABEL_46;
      }

      v12 = @"WORKOUT_SHARING_OUTDOOR_RUNNING_%@";
      v13 = @"WORKOUT_SHARING_INDOOR_RUNNING_%@";
    }

    else
    {
      if (v10 == 44)
      {
        v11 = @"WORKOUT_SHARING_STEPPER_%@";
        goto LABEL_47;
      }

      if (v10 != 52)
      {
        if (v10 == 57)
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

    if (v9)
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
  v17 = [v14 stringWithFormat:v16, v6];

  if ([v5 workoutActivityType] == 46)
  {
    v18 = [v5 fi_swimmingLocationType];
    if (v18 > 2)
    {
      v21 = 0;
    }

    else
    {
      v19 = off_279005110[v18];
      v20 = FIFitnessUIBundle();
      v21 = [v20 localizedStringForKey:v19 value:&stru_285E60370 table:@"Localizable-Ariel"];
    }

    v22 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:0, v6];

    v17 = v22;
  }

  return v17;
}

- (id)localizedPaceValueForSplit:(id)a3 activityType:(id)a4
{
  v6 = MEMORY[0x277CCD7E8];
  v7 = MEMORY[0x277CCDAB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 meterUnit];
  [v9 distanceInMeters];
  v11 = [v6 quantityWithUnit:v10 doubleValue:?];

  v12 = FIPaceFormatForWorkoutActivityType(v8);
  v13 = FIDistanceTypeForActivityType(v8);

  [v9 duration];
  v15 = v14;

  v16 = [(FIFormattingManager *)self localizedPaceStringWithDistance:v11 overDuration:v12 paceFormat:v13 distanceType:v15];

  return v16;
}

- (id)localizedTitleForSplit:(id)a3 unit:(id)a4 lapIndex:(int64_t)a5 useShortFormat:(BOOL)a6
{
  if (a6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  v8 = a4;
  os_unfair_lock_lock(&__formatterLock);
  v9 = _LengthFormatter(1, v7, 2, 1);
  v10 = [MEMORY[0x277CCDAB0] lengthFormatterUnitFromUnit:v8];

  v11 = [v9 unitStringFromValue:v10 unit:1.0];
  v12 = [v11 localizedCapitalizedString];

  os_unfair_lock_unlock(&__formatterLock);
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a5 + 1];
  v14 = [FIFormattingManager stringWithNumber:v13 decimalPrecision:1];

  v15 = MEMORY[0x277CCACA8];
  v16 = FIFitnessUIBundle();
  v17 = [v16 localizedStringForKey:@"PACE_SECTION_ORDER" value:&stru_285E60370 table:@"Localizable"];
  v18 = [v15 stringWithFormat:v17, v12, v14];

  return v18;
}

- (id)localizedStringWithBeatsPerMinute:(double)a3 requirePositiveValue:(BOOL)a4
{
  if (a3 <= 2.22044605e-16 && a4)
  {
    v5 = FIFitnessUIBundle();
    v6 = [v5 localizedStringForKey:@"HEART_RATE_NOVALUE" value:&stru_285E60370 table:@"Localizable"];
  }

  else
  {
    v7 = objc_opt_class();
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
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

- (id)localizedDistanceByStrokeStyle:(id)a3 isPoolSwim:(BOOL)a4
{
  v25 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 allKeys];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__FIFormattingManager_localizedDistanceByStrokeStyle_isPoolSwim___block_invoke;
  v33[3] = &unk_2790050D0;
  v26 = v4;
  v34 = v26;
  v6 = [v5 sortedArrayUsingComparator:v33];

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
        if (v25)
        {
          v13 = [MEMORY[0x277CCDAB0] meterUnit];
          [v11 doubleValueForUnit:v13];
          [(FIFormattingManager *)self localizedStringWithDistanceInMeters:3 distanceType:1 unitStyle:?];
        }

        else
        {
          v28 = 0;
          v13 = [MEMORY[0x277CCDAB0] meterUnit];
          [v11 doubleValueForUnit:v13];
          [(FIFormattingManager *)self localizedNaturalScaleStringWithDistanceInMeters:4 distanceType:1 unitStyle:&v28 usedUnit:?];
        }
        v14 = ;

        v15 = MEMORY[0x277CCACA8];
        v16 = FIFitnessUIBundle();
        v17 = [v16 localizedStringForKey:@"SUMMARY_SWIM_DISTANCE_FORMAT_%@_%@" value:&stru_285E60370 table:@"Localizable"];
        v18 = [v15 localizedStringWithFormat:v17, v12, v14];

        v19 = [v8 firstObject];
        LOBYTE(v17) = [v10 isEqualToNumber:v19];

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

- (id)localizedInSessionDescriptionForElevation:(unint64_t)a3
{
  v3 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:a3 textCase:0];
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"IN_SESSION_ELEVATION_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, v3];

  return v7;
}

- (id)localizedInSessionDescriptionForGroundElevation:(unint64_t)a3
{
  v3 = [(FIFormattingManager *)self localizedShortUnitStringForDistanceUnit:a3 textCase:0];
  v4 = MEMORY[0x277CCACA8];
  v5 = FIFitnessUIBundle();
  v6 = [v5 localizedStringForKey:@"IN_SESSION_GROUND_ELEVATION_DESCRIPTION" value:&stru_285E60370 table:@"Localizable"];
  v7 = [v4 stringWithFormat:v6, v3];

  return v7;
}

- (id)localizedStringForMetricType:(unint64_t)a3 paceFormat:(int64_t)a4
{
  v4 = &stru_285E60370;
  v5 = a3 - 1;
  v6 = @"METRIC_ROLLING_PACE";
  v7 = @"METRIC_ACTIVE_ENERGY";
  switch(v5)
  {
    case 0uLL:
      v6 = @"METRIC_DISTANCE";
      goto LABEL_20;
    case 1uLL:
      goto LABEL_16;
    case 2uLL:
      v6 = @"METRIC_DURATION";
      goto LABEL_20;
    case 3uLL:
      v8 = @"METRIC_CURRENT_PACE";
      v9 = @"METRIC_CURRENT_SPEED";
      goto LABEL_10;
    case 4uLL:
      v6 = @"METRIC_HEART_RATE";
      goto LABEL_20;
    case 5uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      goto LABEL_21;
    case 6uLL:
      v7 = @"METRIC_TOTAL_ENERGY";
LABEL_16:
      v6 = [(FIFormattingManager *)self localizationKeyForEnergyBaseKey:v7, a4];
      if (!v6)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    case 7uLL:
      v8 = @"METRIC_AVERAGE_PACE";
      v9 = @"METRIC_AVERAGE_SPEED";
      goto LABEL_10;
    case 8uLL:
      v6 = @"METRIC_LAPS";
      goto LABEL_20;
    case 9uLL:
      v6 = @"METRIC_ELEVATION";
      goto LABEL_20;
    case 0xDuLL:
      goto LABEL_20;
    case 0xEuLL:
      v6 = @"METRIC_CURRENT_CADENCE";
      goto LABEL_20;
    case 0xFuLL:
      v6 = @"METRIC_AVERAGE_CADENCE";
      goto LABEL_20;
    case 0x10uLL:
      v6 = @"METRIC_GROUND_ELEVATION";
      goto LABEL_20;
    default:
      if (@"METRIC_ACTIVE_ENERGY" != 48)
      {
        goto LABEL_21;
      }

      v8 = @"METRIC_FASTEST_PACE";
      v9 = @"METRIC_MAX_SPEED";
LABEL_10:
      if (a4 == 4)
      {
        v6 = v9;
      }

      else
      {
        v6 = v8;
      }

LABEL_20:
      v10 = FIFitnessUIBundle();
      v4 = [v10 localizedStringForKey:v6 value:&stru_285E60370 table:@"Localizable"];

LABEL_21:

      return v4;
  }
}

@end