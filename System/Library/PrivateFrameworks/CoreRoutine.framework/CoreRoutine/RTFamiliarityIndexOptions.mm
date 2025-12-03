@interface RTFamiliarityIndexOptions
- (BOOL)isEqual:(id)equal;
- (RTFamiliarityIndexOptions)initWithCoder:(id)coder;
- (RTFamiliarityIndexOptions)initWithDateInterval:(id)interval lookbackInterval:(double)lookbackInterval spatialGranularity:(unint64_t)granularity referenceLocation:(id)location referenceLocationSummary:(BOOL)summary distance:(double)distance;
- (RTFamiliarityIndexOptions)initWithDateInterval:(id)interval spatialGranularity:(unint64_t)granularity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTFamiliarityIndexOptions

- (RTFamiliarityIndexOptions)initWithDateInterval:(id)interval spatialGranularity:(unint64_t)granularity
{
  intervalCopy = interval;
  v15.receiver = self;
  v15.super_class = RTFamiliarityIndexOptions;
  v7 = [(RTFamiliarityIndexOptions *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (intervalCopy)
    {
      v7->_lookbackInterval = 4838400.0;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      intervalCopy = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:distantPast endDate:distantFuture];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:distantPast];
      v8->_lookbackInterval = v12 + 604800.0;
    }

    objc_storeStrong(&v8->_dateInterval, intervalCopy);
    referenceLocation = v8->_referenceLocation;
    v8->_spatialGranularity = granularity;
    v8->_referenceLocation = 0;

    v8->_referenceLocationSummary = 0;
    v8->_distance = 0.0;
  }

  return v8;
}

- (RTFamiliarityIndexOptions)initWithDateInterval:(id)interval lookbackInterval:(double)lookbackInterval spatialGranularity:(unint64_t)granularity referenceLocation:(id)location referenceLocationSummary:(BOOL)summary distance:(double)distance
{
  intervalCopy = interval;
  locationCopy = location;
  v23.receiver = self;
  v23.super_class = RTFamiliarityIndexOptions;
  v16 = [(RTFamiliarityIndexOptions *)&v23 init];
  v17 = v16;
  if (v16)
  {
    if (intervalCopy)
    {
      v16->_lookbackInterval = lookbackInterval;
    }

    else
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      intervalCopy = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:distantPast endDate:distantFuture];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:distantPast];
      v17->_lookbackInterval = v21 + 604800.0;
    }

    objc_storeStrong(&v17->_dateInterval, intervalCopy);
    v17->_spatialGranularity = granularity;
    objc_storeStrong(&v17->_referenceLocation, location);
    v17->_referenceLocationSummary = summary;
    v17->_distance = distance;
  }

  return v17;
}

- (RTFamiliarityIndexOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"dateInterval"];
  [coderCopy decodeDoubleForKey:@"lookbackInterval"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"spatialGranularity"];
  v9 = v8;
  v10 = [coderCopy decodeObjectForKey:@"referenceLocation"];
  v11 = [coderCopy decodeBoolForKey:@"referenceLocationSummary"];
  [coderCopy decodeDoubleForKey:@"distance"];
  v13 = v12;

  v14 = [(RTFamiliarityIndexOptions *)self initWithDateInterval:v5 lookbackInterval:v9 spatialGranularity:v10 referenceLocation:v11 referenceLocationSummary:v7 distance:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"dateInterval"];
  [coderCopy encodeDouble:@"lookbackInterval" forKey:self->_lookbackInterval];
  [coderCopy encodeDouble:@"spatialGranularity" forKey:self->_spatialGranularity];
  [coderCopy encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [coderCopy encodeBool:self->_referenceLocationSummary forKey:@"referenceLocationSummary"];
  [coderCopy encodeDouble:@"distance" forKey:self->_distance];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    dateInterval = [(RTFamiliarityIndexOptions *)self dateInterval];
    dateInterval2 = [(RTFamiliarityIndexOptions *)v6 dateInterval];
    if ([dateInterval isEqualToDateInterval:dateInterval2] && (-[RTFamiliarityIndexOptions lookbackInterval](self, "lookbackInterval"), v10 = v9, -[RTFamiliarityIndexOptions lookbackInterval](v6, "lookbackInterval"), v10 == v11) && (v12 = -[RTFamiliarityIndexOptions spatialGranularity](self, "spatialGranularity"), v12 == -[RTFamiliarityIndexOptions spatialGranularity](v6, "spatialGranularity")))
    {
      referenceLocation = [(RTFamiliarityIndexOptions *)self referenceLocation];
      referenceLocation2 = [(RTFamiliarityIndexOptions *)v6 referenceLocation];
      if (referenceLocation == referenceLocation2 && (v15 = [(RTFamiliarityIndexOptions *)self referenceLocationSummary], v15 == [(RTFamiliarityIndexOptions *)v6 referenceLocationSummary]))
      {
        [(RTFamiliarityIndexOptions *)self distance];
        v19 = v18;
        [(RTFamiliarityIndexOptions *)v6 distance];
        v16 = v19 == v20;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTFamiliarityIndexOptions alloc];
  dateInterval = self->_dateInterval;
  lookbackInterval = self->_lookbackInterval;
  spatialGranularity = self->_spatialGranularity;
  referenceLocation = self->_referenceLocation;
  referenceLocationSummary = self->_referenceLocationSummary;
  distance = self->_distance;

  return [(RTFamiliarityIndexOptions *)v4 initWithDateInterval:dateInterval lookbackInterval:spatialGranularity spatialGranularity:referenceLocation referenceLocation:referenceLocationSummary referenceLocationSummary:lookbackInterval distance:distance];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  dateInterval = [(RTFamiliarityIndexOptions *)self dateInterval];
  [(RTFamiliarityIndexOptions *)self lookbackInterval];
  v6 = v5;
  spatialGranularity = [(RTFamiliarityIndexOptions *)self spatialGranularity];
  referenceLocation = [(RTFamiliarityIndexOptions *)self referenceLocation];
  referenceLocationSummary = [(RTFamiliarityIndexOptions *)self referenceLocationSummary];
  [(RTFamiliarityIndexOptions *)self distance];
  v11 = [v3 stringWithFormat:@"dateInterval, %@, lookbackInterval, %.2f, spatialGranularity, %lu, referenceLocation, %@, referenceLocationSummary, %d, distance, %.2f", dateInterval, v6, spatialGranularity, referenceLocation, referenceLocationSummary, v10];

  return v11;
}

@end