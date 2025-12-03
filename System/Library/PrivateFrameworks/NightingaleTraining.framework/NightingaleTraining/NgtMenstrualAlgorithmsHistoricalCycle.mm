@interface NgtMenstrualAlgorithmsHistoricalCycle
- (NgtMenstrualAlgorithmsHistoricalCycle)init;
- (NgtMenstrualAlgorithmsHistoricalCycle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NgtMenstrualAlgorithmsHistoricalCycle

- (NgtMenstrualAlgorithmsHistoricalCycle)init
{
  v7.receiver = self;
  v7.super_class = NgtMenstrualAlgorithmsHistoricalCycle;
  v2 = [(NgtMenstrualAlgorithmsHistoricalCycle *)&v7 init];
  v3 = v2;
  if (v2)
  {
    phases = v2->_phases;
    v2->_phases = MEMORY[0x277CBEBF8];

    v5 = v3;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fertilityStartJulianDay = self->_fertilityStartJulianDay;
  v5 = NSStringFromSelector(sel_fertilityStartJulianDay);
  [coderCopy encodeObject:fertilityStartJulianDay forKey:v5];

  fertilityEndJulianDay = self->_fertilityEndJulianDay;
  v7 = NSStringFromSelector(sel_fertilityEndJulianDay);
  [coderCopy encodeObject:fertilityEndJulianDay forKey:v7];

  julianDayOfMenstruationStart = self->_julianDayOfMenstruationStart;
  v9 = NSStringFromSelector(sel_julianDayOfMenstruationStart);
  [coderCopy encodeInt32:julianDayOfMenstruationStart forKey:v9];

  julianDayOfMenstruationEnd = self->_julianDayOfMenstruationEnd;
  v11 = NSStringFromSelector(sel_julianDayOfMenstruationEnd);
  [coderCopy encodeInt32:julianDayOfMenstruationEnd forKey:v11];

  isDeterminant = self->_isDeterminant;
  v13 = NSStringFromSelector(sel_isDeterminant);
  [coderCopy encodeBool:isDeterminant forKey:v13];

  predictionPrimarySource = self->_predictionPrimarySource;
  v15 = NSStringFromSelector(sel_predictionPrimarySource);
  [coderCopy encodeInt32:predictionPrimarySource forKey:v15];

  phases = self->_phases;
  v17 = NSStringFromSelector(sel_phases);
  [coderCopy encodeObject:phases forKey:v17];

  dailyEligibleWristTemperatureCount = self->_dailyEligibleWristTemperatureCount;
  v19 = NSStringFromSelector(sel_dailyEligibleWristTemperatureCount);
  [coderCopy encodeInteger:dailyEligibleWristTemperatureCount forKey:v19];

  ovulationConfirmationFailure = self->_ovulationConfirmationFailure;
  v21 = NSStringFromSelector(sel_ovulationConfirmationFailure);
  [coderCopy encodeInt32:ovulationConfirmationFailure forKey:v21];
}

- (NgtMenstrualAlgorithmsHistoricalCycle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NgtMenstrualAlgorithmsHistoricalCycle *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_fertilityStartJulianDay);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    fertilityStartJulianDay = v5->_fertilityStartJulianDay;
    v5->_fertilityStartJulianDay = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_fertilityEndJulianDay);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    fertilityEndJulianDay = v5->_fertilityEndJulianDay;
    v5->_fertilityEndJulianDay = v12;

    v14 = NSStringFromSelector(sel_julianDayOfMenstruationStart);
    v5->_julianDayOfMenstruationStart = [coderCopy decodeInt32ForKey:v14];

    v15 = NSStringFromSelector(sel_julianDayOfMenstruationEnd);
    v5->_julianDayOfMenstruationEnd = [coderCopy decodeInt32ForKey:v15];

    v16 = NSStringFromSelector(sel_isDeterminant);
    v5->_isDeterminant = [coderCopy decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_predictionPrimarySource);
    v5->_predictionPrimarySource = [coderCopy decodeInt32ForKey:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_phases);
    v20 = [coderCopy decodeArrayOfObjectsOfClass:v18 forKey:v19];
    phases = v5->_phases;
    v5->_phases = v20;

    v22 = NSStringFromSelector(sel_dailyEligibleWristTemperatureCount);
    v5->_dailyEligibleWristTemperatureCount = [coderCopy decodeIntegerForKey:v22];

    v23 = NSStringFromSelector(sel_ovulationConfirmationFailure);
    v5->_ovulationConfirmationFailure = [coderCopy decodeInt32ForKey:v23];

    v24 = v5;
  }

  return v5;
}

@end