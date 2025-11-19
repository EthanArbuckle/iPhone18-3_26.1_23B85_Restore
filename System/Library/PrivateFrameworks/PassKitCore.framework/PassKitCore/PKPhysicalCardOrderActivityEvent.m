@interface PKPhysicalCardOrderActivityEvent
- (BOOL)isEqual:(id)a3;
- (PKPhysicalCardOrderActivityEvent)initWithCoder:(id)a3;
- (PKPhysicalCardOrderActivityEvent)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicalCardOrderActivityEvent

- (PKPhysicalCardOrderActivityEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKPhysicalCardOrderActivityEvent;
  v5 = [(PKPhysicalCardOrderActivityEvent *)&v24 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"activity"];
    v7 = v6;
    if (v6 != @"ordered")
    {
      if (v6)
      {
        v8 = [@"ordered" isEqualToString:v6];

        if (v8)
        {
          goto LABEL_5;
        }

        v10 = v7;
        if (v10 == @"shipped" || (v11 = v10, v12 = [@"shipped" isEqualToString:v10], v11, (v12 & 1) != 0))
        {
          v9 = 2;
          goto LABEL_16;
        }

        v13 = v11;
        if (v13 == @"fixShippingAddress" || (v14 = v13, v15 = [@"fixShippingAddress" isEqualToString:v13], v14, (v15 & 1) != 0))
        {
          v9 = 3;
          goto LABEL_16;
        }

        v16 = v14;
        if (v16 == @"error" || (v17 = v16, v18 = [@"error" isEqualToString:v16], v17, v18))
        {
          v9 = 4;
          goto LABEL_16;
        }
      }

      v9 = 0;
      goto LABEL_16;
    }

LABEL_5:
    v9 = 1;
LABEL_16:

    v5->_activity = v9;
    v19 = [v4 PKDateForKey:@"timestamp"];
    date = v5->_date;
    v5->_date = v19;

    v21 = [v4 PKStringForKey:@"localizedReason"];
    localizedReason = v5->_localizedReason;
    v5->_localizedReason = v21;
  }

  return v5;
}

- (PKPhysicalCardOrderActivityEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPhysicalCardOrderActivityEvent;
  v5 = [(PKPhysicalCardOrderActivityEvent *)&v11 init];
  if (v5)
  {
    v5->_activity = [v4 decodeIntegerForKey:@"activity"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedReason"];
    localizedReason = v5->_localizedReason;
    v5->_localizedReason = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activity = self->_activity;
  v5 = a3;
  [v5 encodeInteger:activity forKey:@"activity"];
  [v5 encodeObject:self->_date forKey:@"timestamp"];
  [v5 encodeObject:self->_localizedReason forKey:@"localizedReason"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  date = self->_date;
  v6 = v4[2];
  if (date && v6)
  {
    if (([(NSDate *)date isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (date != v6)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v7 = v4[3];
  v8 = self->_localizedReason;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_13;
  }

  if (!v8 || !v9)
  {

    goto LABEL_15;
  }

  v11 = [(NSString *)v8 isEqualToString:v9];

  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_13:
  v12 = self->_activity == v4[1];
LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_date];
  [v3 safelyAddObject:self->_localizedReason];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_activity - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  activity = self->_activity;
  if (activity > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79CE948[activity];
  }

  [v3 appendFormat:@"activity: '%@'; ", v6];
  v7 = [(NSDate *)self->_date description];
  [v4 appendFormat:@"date: '%@'; ", v7];

  [v4 appendFormat:@"localizedReason: '%@'; ", self->_localizedReason];
  [v4 appendFormat:@">"];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PKPhysicalCardOrderActivityEvent allocWithZone:?];
  v5->_activity = self->_activity;
  v6 = [(NSDate *)self->_date copyWithZone:a3];
  date = v5->_date;
  v5->_date = v6;

  v8 = [(NSString *)self->_localizedReason copyWithZone:a3];
  localizedReason = v5->_localizedReason;
  v5->_localizedReason = v8;

  return v5;
}

@end