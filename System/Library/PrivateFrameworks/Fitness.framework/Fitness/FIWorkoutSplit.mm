@interface FIWorkoutSplit
- (FIWorkoutSplit)initWithCoder:(id)coder;
- (FIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration;
- (FIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration dateInterval:(id)interval;
- (FIWorkoutSplit)initWithEvent:(id)event;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIWorkoutSplit

- (FIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration
{
  v9.receiver = self;
  v9.super_class = FIWorkoutSplit;
  v6 = [(FIWorkoutSplit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(FIWorkoutSplit *)v6 setDistanceInMeters:distance];
    [(FIWorkoutSplit *)v7 setDuration:duration];
    [(FIWorkoutSplit *)v7 setMeasurementSystem:1];
    [(FIWorkoutSplit *)v7 setTotalDistanceUpToThisPointInMeters:distance];
    [(FIWorkoutSplit *)v7 setIsPartialSplit:0];
    [(FIWorkoutSplit *)v7 setAveragePowerQuantityInWatts:0.0];
  }

  return v7;
}

- (FIWorkoutSplit)initWithDistance:(double)distance duration:(double)duration dateInterval:(id)interval
{
  intervalCopy = interval;
  v12.receiver = self;
  v12.super_class = FIWorkoutSplit;
  v9 = [(FIWorkoutSplit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FIWorkoutSplit *)v9 setDistanceInMeters:distance];
    [(FIWorkoutSplit *)v10 setDuration:duration];
    [(FIWorkoutSplit *)v10 setDateInterval:intervalCopy];
    [(FIWorkoutSplit *)v10 setMeasurementSystem:1];
    [(FIWorkoutSplit *)v10 setTotalDistanceUpToThisPointInMeters:distance];
    [(FIWorkoutSplit *)v10 setIsPartialSplit:0];
    [(FIWorkoutSplit *)v10 setAveragePowerQuantityInWatts:0.0];
  }

  return v10;
}

- (FIWorkoutSplit)initWithEvent:(id)event
{
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = FIWorkoutSplit;
  v5 = [(FIWorkoutSplit *)&v24 init];
  if (v5)
  {
    metadata = [eventCopy metadata];
    v7 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataSplitDistanceQuantity"];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    [v7 doubleValueForUnit:meterUnit];
    [(FIWorkoutSplit *)v5 setDistanceInMeters:?];

    metadata2 = [eventCopy metadata];
    v10 = [metadata2 objectForKeyedSubscript:@"_HKPrivateMetadataSplitActiveDurationQuantity"];
    secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
    [v10 doubleValueForUnit:secondUnit];
    [(FIWorkoutSplit *)v5 setDuration:?];

    dateInterval = [eventCopy dateInterval];
    [(FIWorkoutSplit *)v5 setDateInterval:dateInterval];

    metadata3 = [eventCopy metadata];
    v14 = [metadata3 objectForKeyedSubscript:@"_HKPrivateMetadataSplitMeasuringSystem"];
    -[FIWorkoutSplit setMeasurementSystem:](v5, "setMeasurementSystem:", [v14 integerValue]);

    metadata4 = [eventCopy metadata];
    v16 = [metadata4 objectForKeyedSubscript:@"_HKPrivateMetadataTotalDistanceQuantity"];
    meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
    [v16 doubleValueForUnit:meterUnit2];
    [(FIWorkoutSplit *)v5 setTotalDistanceUpToThisPointInMeters:?];

    metadata5 = [eventCopy metadata];
    v19 = [metadata5 objectForKeyedSubscript:@"_HKPrivateMetadataIsPartialSplit"];
    -[FIWorkoutSplit setIsPartialSplit:](v5, "setIsPartialSplit:", [v19 BOOLValue]);

    metadata6 = [eventCopy metadata];
    v21 = [metadata6 objectForKeyedSubscript:@"_HKPrivateMetadataSplitAveragePowerQuantity"];
    wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
    [v21 doubleValueForUnit:wattUnit];
    [(FIWorkoutSplit *)v5 setAveragePowerQuantityInWatts:?];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = FIWorkoutSplit;
  v4 = [(FIWorkoutSplit *)&v10 description];
  [(FIWorkoutSplit *)self distanceInMeters];
  v6 = v5;
  [(FIWorkoutSplit *)self duration];
  v8 = [v3 stringWithFormat:@"%@: distanceInMeters: %f duration: %f", v4, v6, v7];

  return v8;
}

- (FIWorkoutSplit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FIWorkoutSplit;
  v5 = [(FIWorkoutSplit *)&v13 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"distance"];
    v5->_distanceInMeters = v6;
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v8;

    v5->_measurementSystem = [coderCopy decodeIntForKey:@"measurementSystem"];
    [coderCopy decodeDoubleForKey:@"totalDistance"];
    v5->_totalDistanceUpToThisPointInMeters = v10;
    v5->_isPartialSplit = [coderCopy decodeBoolForKey:@"isPartialSplit"];
    [coderCopy decodeDoubleForKey:@"averagePower"];
    v5->_averagePowerQuantityInWatts = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  distanceInMeters = self->_distanceInMeters;
  coderCopy = coder;
  [coderCopy encodeDouble:@"distance" forKey:distanceInMeters];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [coderCopy encodeInt:LODWORD(self->_measurementSystem) forKey:@"measurementSystem"];
  [coderCopy encodeDouble:@"totalDistance" forKey:self->_totalDistanceUpToThisPointInMeters];
  [coderCopy encodeBool:self->_isPartialSplit forKey:@"isPartialSplit"];
  [coderCopy encodeDouble:@"averagePower" forKey:self->_averagePowerQuantityInWatts];
}

@end