@interface PKSearchDateResult
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKSearchDateResult)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSearchDateResult

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
}

- (PKSearchDateResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchDateResult *)self init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;
  }

  return v5;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PKSearchDateResult;
  v3 = [(PKSearchDateResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"startDate: '%@'; ", self->_startDate];
  [v4 appendFormat:@"endDate: '%@'; ", self->_endDate];
  [v4 appendFormat:@"type: '%lu'; ", self->_type];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != v4[1])
  {
    goto LABEL_10;
  }

  startDate = self->_startDate;
  v6 = v4[2];
  if (!startDate || !v6)
  {
    if (startDate == v6)
    {
      goto LABEL_6;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (([(NSDate *)startDate isEqual:?]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  endDate = self->_endDate;
  v8 = v4[3];
  if (endDate && v8)
  {
    v9 = [(NSDate *)endDate isEqual:?];
  }

  else
  {
    v9 = endDate == v8;
  }

LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

@end