@interface RTFetchFingerprintsOptions
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOptions:(id)a3;
- (RTFetchFingerprintsOptions)init;
- (RTFetchFingerprintsOptions)initWithCoder:(id)a3;
- (RTFetchFingerprintsOptions)initWithDateInterval:(id)a3 settledState:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTFetchFingerprintsOptions

- (RTFetchFingerprintsOptions)init
{
  v3 = objc_alloc(MEMORY[0x1E696AB80]);
  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v6 = [v3 initWithStartDate:v4 endDate:v5];

  v7 = [(RTFetchFingerprintsOptions *)self initWithDateInterval:v6 settledState:2];
  return v7;
}

- (RTFetchFingerprintsOptions)initWithDateInterval:(id)a3 settledState:(unint64_t)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = RTFetchFingerprintsOptions;
  v7 = [(RTFetchFingerprintsOptions *)&v15 init];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 copy];
      dateInterval = v7->_dateInterval;
      v7->_dateInterval = v8;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E696AB80]);
      dateInterval = [MEMORY[0x1E695DF00] distantPast];
      v11 = [MEMORY[0x1E695DF00] distantFuture];
      v12 = [v10 initWithStartDate:dateInterval endDate:v11];
      v13 = v7->_dateInterval;
      v7->_dateInterval = v12;
    }

    v7->_settledState = a4;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  dateInterval = self->_dateInterval;
  settledState = self->_settledState;

  return [v4 initWithDateInterval:dateInterval settledState:settledState];
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeInteger:self->_settledState forKey:@"settledState"];
}

- (RTFetchFingerprintsOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  v6 = [v4 decodeIntegerForKey:@"settledState"];

  v7 = [(RTFetchFingerprintsOptions *)self initWithDateInterval:v5 settledState:v6];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTFetchFingerprintsOptions *)self isEqualToOptions:v5];
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
  settledState = self->_settledState;
  if (settledState == [v6 settledState])
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_settledState];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSDateInterval *)self->_dateInterval startDate];
  v5 = [(NSDateInterval *)self->_dateInterval endDate];
  v6 = [v3 stringWithFormat:@"start date, %@, end date, %@, settledState, %lu", v4, v5, self->_settledState];

  return v6;
}

@end