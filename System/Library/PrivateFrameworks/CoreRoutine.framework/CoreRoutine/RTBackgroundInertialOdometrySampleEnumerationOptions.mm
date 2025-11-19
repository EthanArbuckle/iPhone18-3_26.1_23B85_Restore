@interface RTBackgroundInertialOdometrySampleEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTBackgroundInertialOdometrySampleEnumerationOptions)init;
- (RTBackgroundInertialOdometrySampleEnumerationOptions)initWithCoder:(id)a3;
- (RTBackgroundInertialOdometrySampleEnumerationOptions)initWithDateInterval:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RTBackgroundInertialOdometrySampleEnumerationOptions

- (RTBackgroundInertialOdometrySampleEnumerationOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTBackgroundInertialOdometrySampleEnumerationOptions *)self initWithDateInterval:v6];
  return v7;
}

- (RTBackgroundInertialOdometrySampleEnumerationOptions)initWithDateInterval:(id)a3
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = RTBackgroundInertialOdometrySampleEnumerationOptions;
  v7 = [(RTBackgroundInertialOdometrySampleEnumerationOptions *)&v11 init];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x1E696AB80]);
      v3 = [MEMORY[0x1E695DF00] distantPast];
      v4 = [MEMORY[0x1E695DF00] distantFuture];
      v8 = [v9 initWithStartDate:v3 endDate:v4];
    }

    objc_storeStrong(&v7->_dateInterval, v8);
    if (!v6)
    {

      v8 = v3;
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTBackgroundInertialOdometrySampleEnumerationOptions *)self dateInterval];
  v6 = [v4 initWithDateInterval:v5];

  return v6;
}

- (RTBackgroundInertialOdometrySampleEnumerationOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];

  v6 = [(RTBackgroundInertialOdometrySampleEnumerationOptions *)self initWithDateInterval:v5];
  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTBackgroundInertialOdometrySampleEnumerationOptions *)self isEqualToOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToOptions:(id)a3
{
  v5 = a3;
  v6 = v5;
  dateInterval = self->_dateInterval;
  v8 = dateInterval;
  if (!dateInterval)
  {
    v3 = [v5 dateInterval];
    if (!v3)
    {
      v10 = 1;
LABEL_7:

      goto LABEL_8;
    }

    v8 = self->_dateInterval;
  }

  v9 = [v6 dateInterval];
  v10 = [(NSDateInterval *)v8 isEqual:v9];

  if (!dateInterval)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [v4 stringFromDate];
  v6 = [(NSDateInterval *)self->_dateInterval endDate];
  v7 = [v6 stringFromDate];
  v8 = [v3 stringWithFormat:@"start date, %@, end date, %@", v5, v7];

  return v8;
}

@end