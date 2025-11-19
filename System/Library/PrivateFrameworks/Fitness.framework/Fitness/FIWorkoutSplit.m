@interface FIWorkoutSplit
- (FIWorkoutSplit)initWithCoder:(id)a3;
- (FIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4;
- (FIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4 dateInterval:(id)a5;
- (FIWorkoutSplit)initWithEvent:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FIWorkoutSplit

- (FIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4
{
  v9.receiver = self;
  v9.super_class = FIWorkoutSplit;
  v6 = [(FIWorkoutSplit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(FIWorkoutSplit *)v6 setDistanceInMeters:a3];
    [(FIWorkoutSplit *)v7 setDuration:a4];
    [(FIWorkoutSplit *)v7 setMeasurementSystem:1];
    [(FIWorkoutSplit *)v7 setTotalDistanceUpToThisPointInMeters:a3];
    [(FIWorkoutSplit *)v7 setIsPartialSplit:0];
    [(FIWorkoutSplit *)v7 setAveragePowerQuantityInWatts:0.0];
  }

  return v7;
}

- (FIWorkoutSplit)initWithDistance:(double)a3 duration:(double)a4 dateInterval:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = FIWorkoutSplit;
  v9 = [(FIWorkoutSplit *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FIWorkoutSplit *)v9 setDistanceInMeters:a3];
    [(FIWorkoutSplit *)v10 setDuration:a4];
    [(FIWorkoutSplit *)v10 setDateInterval:v8];
    [(FIWorkoutSplit *)v10 setMeasurementSystem:1];
    [(FIWorkoutSplit *)v10 setTotalDistanceUpToThisPointInMeters:a3];
    [(FIWorkoutSplit *)v10 setIsPartialSplit:0];
    [(FIWorkoutSplit *)v10 setAveragePowerQuantityInWatts:0.0];
  }

  return v10;
}

- (FIWorkoutSplit)initWithEvent:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FIWorkoutSplit;
  v5 = [(FIWorkoutSplit *)&v24 init];
  if (v5)
  {
    v6 = [v4 metadata];
    v7 = [v6 objectForKeyedSubscript:@"_HKPrivateMetadataSplitDistanceQuantity"];
    v8 = [MEMORY[0x277CCDAB0] meterUnit];
    [v7 doubleValueForUnit:v8];
    [(FIWorkoutSplit *)v5 setDistanceInMeters:?];

    v9 = [v4 metadata];
    v10 = [v9 objectForKeyedSubscript:@"_HKPrivateMetadataSplitActiveDurationQuantity"];
    v11 = [MEMORY[0x277CCDAB0] secondUnit];
    [v10 doubleValueForUnit:v11];
    [(FIWorkoutSplit *)v5 setDuration:?];

    v12 = [v4 dateInterval];
    [(FIWorkoutSplit *)v5 setDateInterval:v12];

    v13 = [v4 metadata];
    v14 = [v13 objectForKeyedSubscript:@"_HKPrivateMetadataSplitMeasuringSystem"];
    -[FIWorkoutSplit setMeasurementSystem:](v5, "setMeasurementSystem:", [v14 integerValue]);

    v15 = [v4 metadata];
    v16 = [v15 objectForKeyedSubscript:@"_HKPrivateMetadataTotalDistanceQuantity"];
    v17 = [MEMORY[0x277CCDAB0] meterUnit];
    [v16 doubleValueForUnit:v17];
    [(FIWorkoutSplit *)v5 setTotalDistanceUpToThisPointInMeters:?];

    v18 = [v4 metadata];
    v19 = [v18 objectForKeyedSubscript:@"_HKPrivateMetadataIsPartialSplit"];
    -[FIWorkoutSplit setIsPartialSplit:](v5, "setIsPartialSplit:", [v19 BOOLValue]);

    v20 = [v4 metadata];
    v21 = [v20 objectForKeyedSubscript:@"_HKPrivateMetadataSplitAveragePowerQuantity"];
    v22 = [MEMORY[0x277CCDAB0] wattUnit];
    [v21 doubleValueForUnit:v22];
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

- (FIWorkoutSplit)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FIWorkoutSplit;
  v5 = [(FIWorkoutSplit *)&v13 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"distance"];
    v5->_distanceInMeters = v6;
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v8;

    v5->_measurementSystem = [v4 decodeIntForKey:@"measurementSystem"];
    [v4 decodeDoubleForKey:@"totalDistance"];
    v5->_totalDistanceUpToThisPointInMeters = v10;
    v5->_isPartialSplit = [v4 decodeBoolForKey:@"isPartialSplit"];
    [v4 decodeDoubleForKey:@"averagePower"];
    v5->_averagePowerQuantityInWatts = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  distanceInMeters = self->_distanceInMeters;
  v5 = a3;
  [v5 encodeDouble:@"distance" forKey:distanceInMeters];
  [v5 encodeDouble:@"duration" forKey:self->_duration];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeInt:LODWORD(self->_measurementSystem) forKey:@"measurementSystem"];
  [v5 encodeDouble:@"totalDistance" forKey:self->_totalDistanceUpToThisPointInMeters];
  [v5 encodeBool:self->_isPartialSplit forKey:@"isPartialSplit"];
  [v5 encodeDouble:@"averagePower" forKey:self->_averagePowerQuantityInWatts];
}

@end