@interface HKAxisLabel
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKAxisLabel

- (id)description
{
  v3 = [(HKAxisLabel *)self labelType];
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E81BA4B0[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = HKAxisLabel;
  v6 = [(HKAxisLabel *)&v11 description];
  v7 = [(HKAxisLabel *)self text];
  v8 = [(HKAxisLabel *)self location];
  v9 = [v5 stringWithFormat:@"%@ text=%@ location=%@ type=%@", v6, v7, v8, v4];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(HKAxisLabel *)v4 isMemberOfClass:objc_opt_class()])
  {
    if (self == v4)
    {
      v9 = 1;
    }

    else
    {
      v5 = [(HKAxisLabel *)self location];
      v6 = [(HKAxisLabel *)v4 location];
      if (HKUIObjectsAreEqual(v5, v6))
      {
        v7 = [(HKAxisLabel *)self text];
        v8 = [(HKAxisLabel *)v4 text];
        v9 = HKUIObjectsAreEqual(v7, v8);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HKAxisLabel *)self location];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(HKAxisLabel *)self text];
  v6 = [v5 hash];
  if (isKindOfClass)
  {
    v7 = [(HKAxisLabel *)self location];
    v8 = [v7 hash];
  }

  else
  {
    v9 = MEMORY[0x1E696B098];
    v7 = [(HKAxisLabel *)self location];
    v10 = [v9 valueWithPointer:v7];
    v8 = [v10 hash];
  }

  return v8 ^ v6;
}

@end