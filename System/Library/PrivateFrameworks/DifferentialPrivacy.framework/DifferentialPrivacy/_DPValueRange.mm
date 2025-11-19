@interface _DPValueRange
+ (id)rangeWithMin:(id)a3 max:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToValueRange:(id)a3;
- (_DPValueRange)initWithMin:(id)a3 max:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation _DPValueRange

- (_DPValueRange)initWithMin:(id)a3 max:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 compare:v8] == 1)
  {
    v9 = 0;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _DPValueRange;
    v10 = [(_DPValueRange *)&v20 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_minPossible, a3);
      objc_storeStrong(&v11->_maxPossible, a4);
      [v7 doubleValue];
      v13 = v12;
      [v8 doubleValue];
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
    v9 = self;
  }

  return v9;
}

+ (id)rangeWithMin:(id)a3 max:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMin:v7 max:v6];

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

- (BOOL)isEqualToValueRange:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(_DPValueRange *)self maxPossible];
  v6 = [v4 maxPossible];
  v7 = [v5 isEqual:v6];

  v8 = [(_DPValueRange *)self minPossible];
  v9 = [v4 minPossible];
  v10 = [v8 isEqual:v9];

  v11 = [(_DPValueRange *)self range];
  v12 = [v4 range];

  LOBYTE(v4) = [v11 isEqual:v12];
  return v7 & v10 & v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_DPValueRange *)self isEqualToValueRange:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(_DPValueRange *)self maxPossible];
  v4 = [v3 unsignedIntegerValue];
  v5 = [(_DPValueRange *)self minPossible];
  v6 = [v5 unsignedIntegerValue] ^ v4;
  v7 = [(_DPValueRange *)self range];
  v8 = [v7 unsignedIntegerValue];

  return v6 ^ v8;
}

@end