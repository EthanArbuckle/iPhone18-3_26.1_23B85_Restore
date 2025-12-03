@interface ULLocationType
- (BOOL)isEqual:(id)equal;
- (ULLocationType)initWithCoder:(id)coder;
- (ULLocationType)initWithLocationTypeEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULLocationType

- (ULLocationType)initWithLocationTypeEnum:(unint64_t)enum
{
  v7.receiver = self;
  v7.super_class = ULLocationType;
  v4 = [(ULLocationType *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULLocationType *)v4 setLocationType:enum];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  locationType = self->_locationType;

  return [v4 initWithLocationTypeEnum:locationType];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  locationType = self->_locationType;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:locationType];
  [coderCopy encodeObject:v6 forKey:@"locationType"];
}

- (ULLocationType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULLocationType;
  v5 = [(ULLocationType *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationType"];
    v7 = v6;
    if (v6)
    {
      unsignedIntValue = [(ULLocationType *)v6 unsignedIntValue];

      v5->_locationType = unsignedIntValue;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  locationType = self->_locationType;
  if (locationType > 1)
  {
    if (locationType != 2)
    {
      if (locationType == 30)
      {
        v8 = @"Other";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v8 = @"Custom";
  }

  else
  {
    if (locationType)
    {
      if (locationType == 1)
      {
        v8 = @"Work";
        goto LABEL_11;
      }

LABEL_8:
      v8 = @"Unknown";
      goto LABEL_11;
    }

    v8 = @"Home";
  }

LABEL_11:
  [v6 appendFormat:@", locationType: %@", v8];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    locationType = [(ULLocationType *)self locationType];
    locationType2 = [v5 locationType];

    v8 = locationType == locationType2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end