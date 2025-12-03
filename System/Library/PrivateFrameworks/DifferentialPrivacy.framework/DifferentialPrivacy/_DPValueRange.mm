@interface _DPValueRange
+ (id)rangeWithMin:(id)min max:(id)max;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToValueRange:(id)range;
- (_DPValueRange)initWithMin:(id)min max:(id)max;
- (id)description;
- (unint64_t)hash;
@end

@implementation _DPValueRange

- (_DPValueRange)initWithMin:(id)min max:(id)max
{
  minCopy = min;
  maxCopy = max;
  if ([minCopy compare:maxCopy] == 1)
  {
    selfCopy = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _DPValueRange;
    v10 = [(_DPValueRange *)&v20 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_minPossible, min);
      objc_storeStrong(&v11->_maxPossible, max);
      [minCopy doubleValue];
      v13 = v12;
      [maxCopy doubleValue];
      if (v14 >= 0.0)
      {
        v15 = MEMORY[0x277CCABB0];
        if (v13 <= 0.0)
        {
          v16 = v14 + fabs(v13);
        }

        else
        {
          v16 = v14 - v13;
        }
      }

      else
      {
        v15 = MEMORY[0x277CCABB0];
        v16 = fabs(v13) - fabs(v14);
      }

      v17 = [v15 numberWithDouble:v16];
      range = v11->_range;
      v11->_range = v17;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)rangeWithMin:(id)min max:(id)max
{
  maxCopy = max;
  minCopy = min;
  v8 = [[self alloc] initWithMin:minCopy max:maxCopy];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { min=%@  max=%@ ; range=%@ }", v5, self->_minPossible, self->_maxPossible, self->_range];;

  return v6;
}

- (BOOL)isEqualToValueRange:(id)range
{
  if (!range)
  {
    return 0;
  }

  rangeCopy = range;
  maxPossible = [(_DPValueRange *)self maxPossible];
  maxPossible2 = [rangeCopy maxPossible];
  v7 = [maxPossible isEqual:maxPossible2];

  minPossible = [(_DPValueRange *)self minPossible];
  minPossible2 = [rangeCopy minPossible];
  v10 = [minPossible isEqual:minPossible2];

  range = [(_DPValueRange *)self range];
  range2 = [rangeCopy range];

  LOBYTE(rangeCopy) = [range isEqual:range2];
  return v7 & v10 & rangeCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPValueRange *)self isEqualToValueRange:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  maxPossible = [(_DPValueRange *)self maxPossible];
  unsignedIntegerValue = [maxPossible unsignedIntegerValue];
  minPossible = [(_DPValueRange *)self minPossible];
  v6 = [minPossible unsignedIntegerValue] ^ unsignedIntegerValue;
  range = [(_DPValueRange *)self range];
  unsignedIntegerValue2 = [range unsignedIntegerValue];

  return v6 ^ unsignedIntegerValue2;
}

@end