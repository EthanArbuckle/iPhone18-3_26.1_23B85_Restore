@interface HMIConfidence
- (BOOL)isEqual:(id)a3;
- (HMIConfidence)initWithCoder:(id)a3;
- (HMIConfidence)initWithValue:(double)a3 levelThresholds:(id)a4;
- (id)shortDescription;
- (int64_t)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMIConfidence

- (HMIConfidence)initWithValue:(double)a3 levelThresholds:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMIConfidence;
  v8 = [(HMIConfidence *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = a3;
    objc_storeStrong(&v8->_levelThresholds, a4);
  }

  return v9;
}

- (int64_t)level
{
  [(HMIConfidence *)self value];
  v4 = v3;
  v5 = [(HMIConfidence *)self levelThresholds];
  v6 = [v5 objectAtIndexedSubscript:1];
  [v6 doubleValue];
  v8 = v7;

  if (v4 >= v8)
  {
    return 2;
  }

  [(HMIConfidence *)self value];
  v10 = v9;
  v11 = [(HMIConfidence *)self levelThresholds];
  v12 = [v11 objectAtIndexedSubscript:0];
  [v12 doubleValue];
  v14 = v10 >= v13;

  return v14;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  value = self->_value;
  v4 = [(HMIConfidence *)self level];
  v5 = @"Low";
  if (v4 == 1)
  {
    v5 = @"Medium";
  }

  if (v4 == 2)
  {
    v6 = @"High";
  }

  else
  {
    v6 = v5;
  }

  return [v2 stringWithFormat:@"%.2f[%c]", *&value, -[__CFString characterAtIndex:](v6, "characterAtIndex:", 0)];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(HMIConfidence *)self value];
      v7 = v6;
      [(HMIConfidence *)v5 value];
      v9 = v8;
      v10 = [(HMIConfidence *)self levelThresholds];
      v11 = [(HMIConfidence *)v5 levelThresholds];

      v12 = HMFEqualObjects();
      if (v7 == v9)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  [(HMIConfidence *)self value];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  *v3.i64 = floor(v2 + 0.5);
  v5 = (v2 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v6), v4, v3).i64[0];
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

- (HMIConfidence)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NSStringFromSelector(sel_value);
  [v4 decodeDoubleForKey:v5];
  v7 = v6;

  v8 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = NSStringFromSelector(sel_levelThresholds);
  v12 = [v4 decodeObjectOfClasses:v10 forKey:v11];

  v13 = [[HMIConfidence alloc] initWithValue:v12 levelThresholds:v7];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(HMIConfidence *)self value];
  v6 = v5;
  v7 = NSStringFromSelector(sel_value);
  [v4 encodeDouble:v7 forKey:v6];

  v9 = [(HMIConfidence *)self levelThresholds];
  v8 = NSStringFromSelector(sel_levelThresholds);
  [v4 encodeObject:v9 forKey:v8];
}

@end