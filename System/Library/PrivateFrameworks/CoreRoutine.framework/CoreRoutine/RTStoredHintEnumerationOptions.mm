@interface RTStoredHintEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTStoredHintEnumerationOptions)initWithCoder:(id)a3;
- (RTStoredHintEnumerationOptions)initWithReferenceLocation:(id)a3 sourceFilter:(id)a4 ascending:(BOOL)a5 distance:(id)a6 dateInterval:(id)a7 limit:(unint64_t)a8 batchSize:(unint64_t)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredHintEnumerationOptions

- (RTStoredHintEnumerationOptions)initWithReferenceLocation:(id)a3 sourceFilter:(id)a4 ascending:(BOOL)a5 distance:(id)a6 dateInterval:(id)a7 limit:(unint64_t)a8 batchSize:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  if ([v17 integerValue])
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_7:

    v18 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (!v18)
  {
    v18 = &unk_1F3DE3B58;
  }

LABEL_8:
  v23.receiver = self;
  v23.super_class = RTStoredHintEnumerationOptions;
  v20 = [(RTStoredHintEnumerationOptions *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_ascending = a5;
    objc_storeStrong(&v20->_referenceLocation, a3);
    objc_storeStrong(&v21->_sourceFilter, v17);
    objc_storeStrong(&v21->_distance, v18);
    objc_storeStrong(&v21->_dateInterval, a7);
    v21->_limit = a8;
    v21->_batchSize = a9;
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_ascending];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDateInterval *)self->_dateInterval hash];
  v8 = v7 ^ [(NSNumber *)self->_distance hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_limit];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RTLocation *)self->_referenceLocation hash];
  v12 = v11 ^ [(NSNumber *)self->_sourceFilter hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v23 = [(RTStoredHintEnumerationOptions *)self ascending];
      v22 = [(RTStoredHintEnumerationOptions *)v5 ascending];
      v21 = [(RTStoredHintEnumerationOptions *)self batchSize];
      v20 = [(RTStoredHintEnumerationOptions *)v5 batchSize];
      v6 = [(RTStoredHintEnumerationOptions *)self dateInterval];
      v7 = [(RTStoredHintEnumerationOptions *)v5 dateInterval];
      v19 = [v6 isEqualToDateInterval:v7];

      v8 = [(RTStoredHintEnumerationOptions *)self distance];
      v9 = [(RTStoredHintEnumerationOptions *)v5 distance];

      v10 = [(RTStoredHintEnumerationOptions *)self limit];
      v11 = [(RTStoredHintEnumerationOptions *)v5 limit];
      v12 = [(RTStoredHintEnumerationOptions *)self referenceLocation];
      v13 = [(RTStoredHintEnumerationOptions *)v5 referenceLocation];
      v14 = [v12 isEqualToLocation:v13];

      v15 = [(RTStoredHintEnumerationOptions *)self sourceFilter];
      v16 = [(RTStoredHintEnumerationOptions *)v5 sourceFilter];

      v17 = 0;
      if (v23 == v22 && v21 == v20 && v19 && v8 == v9 && v10 == v11)
      {
        if (v15 == v16)
        {
          v17 = v14;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  ascending = self->_ascending;
  v5 = a3;
  [v5 encodeBool:ascending forKey:@"ascending"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
  [v5 encodeObject:self->_dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_distance forKey:@"distance"];
  [v5 encodeInteger:self->_limit forKey:@"limit"];
  [v5 encodeObject:self->_referenceLocation forKey:@"referenceLocation"];
  [v5 encodeObject:self->_sourceFilter forKey:@"sourceFilter"];
}

- (RTStoredHintEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"ascending"];
  v6 = [v4 decodeIntegerForKey:@"batchSize"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distance"];
  v9 = [v4 decodeIntegerForKey:@"limit"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceLocation"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceFilter"];

  v12 = [(RTStoredHintEnumerationOptions *)self initWithReferenceLocation:v10 sourceFilter:v11 ascending:v5 distance:v8 dateInterval:v7 limit:v9 batchSize:v6];
  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  sourceFilter = self->_sourceFilter;
  if (self->_ascending)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  distance = self->_distance;
  v7 = [(NSDateInterval *)self->_dateInterval startDate];
  v8 = [v7 stringFromDate];
  v9 = [(NSDateInterval *)self->_dateInterval endDate];
  v10 = [v9 stringFromDate];
  v11 = [v3 stringWithFormat:@"ascending, %@, sourceFilter, %@, distance, %@, startDate, %@, endDate, %@, limit, %ld", v5, sourceFilter, distance, v8, v10, self->_limit];

  return v11;
}

@end