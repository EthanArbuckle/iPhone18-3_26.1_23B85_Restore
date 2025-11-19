@interface RTFamiliarityIndexOptions
- (BOOL)isEqual:(id)a3;
- (RTFamiliarityIndexOptions)initWithCoder:(id)a3;
- (RTFamiliarityIndexOptions)initWithDateInterval:(id)a3 lookbackInterval:(double)a4 spatialGranularity:(unint64_t)a5 referenceLocation:(id)a6 referenceLocationSummary:(BOOL)a7 distance:(double)a8;
- (RTFamiliarityIndexOptions)initWithDateInterval:(id)a3 spatialGranularity:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTFamiliarityIndexOptions

- (RTFamiliarityIndexOptions)initWithDateInterval:(id)a3 spatialGranularity:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = RTFamiliarityIndexOptions;
  v7 = [(RTFamiliarityIndexOptions *)&v15 init];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v7->_lookbackInterval = 4838400.0;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF00] distantPast];
      v10 = [MEMORY[0x1E695DF00] distantFuture];
      v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:v9];
      v8->_lookbackInterval = v12 + 604800.0;
    }

    objc_storeStrong(&v8->_dateInterval, v6);
    referenceLocation = v8->_referenceLocation;
    v8->_spatialGranularity = a4;
    v8->_referenceLocation = 0;

    v8->_referenceLocationSummary = 0;
    v8->_distance = 0.0;
  }

  return v8;
}

- (RTFamiliarityIndexOptions)initWithDateInterval:(id)a3 lookbackInterval:(double)a4 spatialGranularity:(unint64_t)a5 referenceLocation:(id)a6 referenceLocationSummary:(BOOL)a7 distance:(double)a8
{
  v14 = a3;
  v15 = a6;
  v23.receiver = self;
  v23.super_class = RTFamiliarityIndexOptions;
  v16 = [(RTFamiliarityIndexOptions *)&v23 init];
  v17 = v16;
  if (v16)
  {
    if (v14)
    {
      v16->_lookbackInterval = a4;
    }

    else
    {
      v18 = [MEMORY[0x1E695DF00] distantPast];
      v19 = [MEMORY[0x1E695DF00] distantFuture];
      v14 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v18 endDate:v19];
      v20 = [MEMORY[0x1E695DF00] date];
      [v20 timeIntervalSinceDate:v18];
      v17->_lookbackInterval = v21 + 604800.0;
    }

    objc_storeStrong(&v17->_dateInterval, v14);
    v17->_spatialGranularity = a5;
    objc_storeStrong(&v17->_referenceLocation, a6);
    v17->_referenceLocationSummary = a7;
    v17->_distance = a8;
  }

  return v17;
}

- (RTFamiliarityIndexOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"dateInterval"];
  [v4 decodeDoubleForKey:@"lookbackInterval"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"spatialGranularity"];
  v9 = v8;
  v10 = [v4 decodeObjectForKey:@"referenceLocation"];
  v11 = [v4 decodeBoolForKey:@"referenceLocationSummary"];
  [v4 decodeDoubleForKey:@"distance"];
  v13 = v12;

  v14 = [(RTFamiliarityIndexOptions *)self initWithDateInterval:v5 lookbackInterval:v9 spatialGranularity:v10 referenceLocation:v11 referenceLocationSummary:v7 distance:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeDouble:@"lookbackInterval" forKey:self->_lookbackInterval];
  [v5 encodeDouble:@"spatialGranularity" forKey:self->_spatialGranularity];
  [v5 encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [v5 encodeBool:self->_referenceLocationSummary forKey:@"referenceLocationSummary"];
  [v5 encodeDouble:@"distance" forKey:self->_distance];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v16 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTFamiliarityIndexOptions *)self dateInterval];
    v8 = [(RTFamiliarityIndexOptions *)v6 dateInterval];
    if ([v7 isEqualToDateInterval:v8] && (-[RTFamiliarityIndexOptions lookbackInterval](self, "lookbackInterval"), v10 = v9, -[RTFamiliarityIndexOptions lookbackInterval](v6, "lookbackInterval"), v10 == v11) && (v12 = -[RTFamiliarityIndexOptions spatialGranularity](self, "spatialGranularity"), v12 == -[RTFamiliarityIndexOptions spatialGranularity](v6, "spatialGranularity")))
    {
      v13 = [(RTFamiliarityIndexOptions *)self referenceLocation];
      v14 = [(RTFamiliarityIndexOptions *)v6 referenceLocation];
      if (v13 == v14 && (v15 = [(RTFamiliarityIndexOptions *)self referenceLocationSummary], v15 == [(RTFamiliarityIndexOptions *)v6 referenceLocationSummary]))
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

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(RTFamiliarityIndexOptions *)self dateInterval];
  [(RTFamiliarityIndexOptions *)self lookbackInterval];
  v6 = v5;
  v7 = [(RTFamiliarityIndexOptions *)self spatialGranularity];
  v8 = [(RTFamiliarityIndexOptions *)self referenceLocation];
  v9 = [(RTFamiliarityIndexOptions *)self referenceLocationSummary];
  [(RTFamiliarityIndexOptions *)self distance];
  v11 = [v3 stringWithFormat:@"dateInterval, %@, lookbackInterval, %.2f, spatialGranularity, %lu, referenceLocation, %@, referenceLocationSummary, %d, distance, %.2f", v4, v6, v7, v8, v9, v10];

  return v11;
}

@end