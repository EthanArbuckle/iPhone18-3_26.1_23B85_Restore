@interface HKAxisLabel
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation HKAxisLabel

- (id)description
{
  labelType = [(HKAxisLabel *)self labelType];
  if (labelType > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E81BA4B0[labelType];
  }

  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = HKAxisLabel;
  v6 = [(HKAxisLabel *)&v11 description];
  text = [(HKAxisLabel *)self text];
  location = [(HKAxisLabel *)self location];
  v9 = [v5 stringWithFormat:@"%@ text=%@ location=%@ type=%@", v6, text, location, v4];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(HKAxisLabel *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    if (self == equalCopy)
    {
      v9 = 1;
    }

    else
    {
      location = [(HKAxisLabel *)self location];
      location2 = [(HKAxisLabel *)equalCopy location];
      if (HKUIObjectsAreEqual(location, location2))
      {
        text = [(HKAxisLabel *)self text];
        text2 = [(HKAxisLabel *)equalCopy text];
        v9 = HKUIObjectsAreEqual(text, text2);
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
  location = [(HKAxisLabel *)self location];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  text = [(HKAxisLabel *)self text];
  v6 = [text hash];
  if (isKindOfClass)
  {
    location2 = [(HKAxisLabel *)self location];
    v8 = [location2 hash];
  }

  else
  {
    v9 = MEMORY[0x1E696B098];
    location2 = [(HKAxisLabel *)self location];
    v10 = [v9 valueWithPointer:location2];
    v8 = [v10 hash];
  }

  return v8 ^ v6;
}

@end