@interface _HDValueRange
- (BOOL)contains:(double)contains;
- (BOOL)isEqual:(id)equal;
- (_HDValueRange)initWithMinimum:(double)minimum maximum:(double)maximum isMinimumInclusive:(BOOL)inclusive isMaximumInclusive:(BOOL)maximumInclusive;
@end

@implementation _HDValueRange

- (_HDValueRange)initWithMinimum:(double)minimum maximum:(double)maximum isMinimumInclusive:(BOOL)inclusive isMaximumInclusive:(BOOL)maximumInclusive
{
  v11.receiver = self;
  v11.super_class = _HDValueRange;
  result = [(_HDValueRange *)&v11 init];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
    result->_isMinimumInclusive = inclusive;
    result->_isMaximumInclusive = maximumInclusive;
  }

  return result;
}

- (BOOL)contains:(double)contains
{
  minimum = self->_minimum;
  if (self->_isMinimumInclusive)
  {
    if (minimum > contains)
    {
      return 0;
    }
  }

  else if (minimum >= contains)
  {
    return 0;
  }

  maximum = self->_maximum;
  if (self->_isMaximumInclusive)
  {
    return maximum >= contains;
  }

  else
  {
    return maximum > contains;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if ([(_HDValueRange *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
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