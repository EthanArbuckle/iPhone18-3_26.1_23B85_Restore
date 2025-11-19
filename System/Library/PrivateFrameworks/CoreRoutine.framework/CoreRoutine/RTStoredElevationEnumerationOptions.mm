@interface RTStoredElevationEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTStoredElevationEnumerationOptions)init;
- (RTStoredElevationEnumerationOptions)initWithCoder:(id)a3;
- (RTStoredElevationEnumerationOptions)initWithDateInterval:(id)a3 batchSize:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTStoredElevationEnumerationOptions

- (RTStoredElevationEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTStoredElevationEnumerationOptions *)self initWithDateInterval:v6 batchSize:0];
  return v7;
}

- (RTStoredElevationEnumerationOptions)initWithDateInterval:(id)a3 batchSize:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RTStoredElevationEnumerationOptions;
  v8 = [(RTStoredElevationEnumerationOptions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, a3);
    v9->_batchSize = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  dateInterval = self->_dateInterval;
  batchSize = self->_batchSize;

  return [v4 initWithDateInterval:dateInterval batchSize:batchSize];
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_batchSize forKey:@"batchSize"];
}

- (RTStoredElevationEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeIntegerForKey:@"batchSize"];

  v7 = [(RTStoredElevationEnumerationOptions *)self initWithDateInterval:v5 batchSize:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTStoredElevationEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  v8 = dateInterval;
  if (dateInterval)
  {
LABEL_4:
    v9 = [v6 dateInterval];
    v10 = [(NSDateInterval *)v8 isEqual:v9];

    if (dateInterval)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = [v5 dateInterval];
  if (v3)
  {
    v8 = self->_dateInterval;
    goto LABEL_4;
  }

  v10 = 1;
LABEL_7:

LABEL_8:
  batchSize = self->_batchSize;
  if (batchSize == [v6 batchSize])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_dateInterval hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end