@interface _HDValueRange
- (BOOL)contains:(double)a3;
- (BOOL)isEqual:(id)a3;
- (_HDValueRange)initWithMinimum:(double)a3 maximum:(double)a4 isMinimumInclusive:(BOOL)a5 isMaximumInclusive:(BOOL)a6;
@end

@implementation _HDValueRange

- (_HDValueRange)initWithMinimum:(double)a3 maximum:(double)a4 isMinimumInclusive:(BOOL)a5 isMaximumInclusive:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = _HDValueRange;
  result = [(_HDValueRange *)&v11 init];
  if (result)
  {
    result->_minimum = a3;
    result->_maximum = a4;
    result->_isMinimumInclusive = a5;
    result->_isMaximumInclusive = a6;
  }

  return result;
}

- (BOOL)contains:(double)a3
{
  minimum = self->_minimum;
  if (self->_isMinimumInclusive)
  {
    if (minimum > a3)
    {
      return 0;
    }
  }

  else if (minimum >= a3)
  {
    return 0;
  }

  maximum = self->_maximum;
  if (self->_isMaximumInclusive)
  {
    return maximum >= a3;
  }

  else
  {
    return maximum > a3;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if ([(_HDValueRange *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    minimum = self->_minimum;
    [(_HDValueRange *)v5 minimum];
    if (minimum == v7 && (maximum = self->_maximum, [(_HDValueRange *)v5 maximum], maximum == v9) && (isMinimumInclusive = self->_isMinimumInclusive, isMinimumInclusive == [(_HDValueRange *)v5 isMinimumInclusive]))
    {
      isMaximumInclusive = self->_isMaximumInclusive;
      v12 = isMaximumInclusive == [(_HDValueRange *)v5 isMaximumInclusive];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end