@interface HAMenstrualAlgorithmsHistoricalCycle
- (HAMenstrualAlgorithmsHistoricalCycle)init;
- (HAMenstrualAlgorithmsHistoricalCycle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HAMenstrualAlgorithmsHistoricalCycle

- (HAMenstrualAlgorithmsHistoricalCycle)init
{
  v7.receiver = self;
  v7.super_class = HAMenstrualAlgorithmsHistoricalCycle;
  v2 = [(HAMenstrualAlgorithmsHistoricalCycle *)&v7 init];
  v3 = v2;
  if (v2)
  {
    phases = v2->_phases;
    v2->_phases = MEMORY[0x277CBEBF8];

    v5 = v3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  fertilityStartJulianDay = self->_fertilityStartJulianDay;
  v5 = NSStringFromSelector(sel_fertilityStartJulianDay);
  [v22 encodeObject:fertilityStartJulianDay forKey:v5];

  fertilityEndJulianDay = self->_fertilityEndJulianDay;
  v7 = NSStringFromSelector(sel_fertilityEndJulianDay);
  [v22 encodeObject:fertilityEndJulianDay forKey:v7];

  julianDayOfMenstruationStart = self->_julianDayOfMenstruationStart;
  v9 = NSStringFromSelector(sel_julianDayOfMenstruationStart);
  [v22 encodeInt32:julianDayOfMenstruationStart forKey:v9];

  julianDayOfMenstruationEnd = self->_julianDayOfMenstruationEnd;
  v11 = NSStringFromSelector(sel_julianDayOfMenstruationEnd);
  [v22 encodeInt32:julianDayOfMenstruationEnd forKey:v11];

  isDeterminant = self->_isDeterminant;
  v13 = NSStringFromSelector(sel_isDeterminant);
  [v22 encodeBool:isDeterminant forKey:v13];

  predictionPrimarySource = self->_predictionPrimarySource;
  v15 = NSStringFromSelector(sel_predictionPrimarySource);
  [v22 encodeInt32:predictionPrimarySource forKey:v15];

  phases = self->_phases;
  v17 = NSStringFromSelector(sel_phases);
  [v22 encodeObject:phases forKey:v17];

  dailyEligibleWristTemperatureCount = self->_dailyEligibleWristTemperatureCount;
  v19 = NSStringFromSelector(sel_dailyEligibleWristTemperatureCount);
  [v22 encodeInteger:dailyEligibleWristTemperatureCount forKey:v19];

  ovulationConfirmationFailure = self->_ovulationConfirmationFailure;
  v21 = NSStringFromSelector(sel_ovulationConfirmationFailure);
  [v22 encodeInt32:ovulationConfirmationFailure forKey:v21];
}

- (HAMenstrualAlgorithmsHistoricalCycle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAMenstrualAlgorithmsHistoricalCycle *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_fertilityStartJulianDay);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    fertilityStartJulianDay = v5->_fertilityStartJulianDay;
    v5->_fertilityStartJulianDay = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_fertilityEndJulianDay);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    fertilityEndJulianDay = v5->_fertilityEndJulianDay;
    v5->_fertilityEndJulianDay = v12;

    v14 = NSStringFromSelector(sel_julianDayOfMenstruationStart);
    v5->_julianDayOfMenstruationStart = [v4 decodeInt32ForKey:v14];

    v15 = NSStringFromSelector(sel_julianDayOfMenstruationEnd);
    v5->_julianDayOfMenstruationEnd = [v4 decodeInt32ForKey:v15];

    v16 = NSStringFromSelector(sel_isDeterminant);
    v5->_isDeterminant = [v4 decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_predictionPrimarySource);
    v5->_predictionPrimarySource = [v4 decodeInt32ForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_phases);
    v20 = [v4 decodeArrayOfObjectsOfClass:v18 forKey:v19];
    phases = v5->_phases;
    v5->_phases = v20;

    v22 = NSStringFromSelector(sel_dailyEligibleWristTemperatureCount);
    v5->_dailyEligibleWristTemperatureCount = [v4 decodeIntegerForKey:v22];

    v23 = NSStringFromSelector(sel_ovulationConfirmationFailure);
    v5->_ovulationConfirmationFailure = [v4 decodeInt32ForKey:v23];

    v24 = v5;
  }

  return v5;
}

@end