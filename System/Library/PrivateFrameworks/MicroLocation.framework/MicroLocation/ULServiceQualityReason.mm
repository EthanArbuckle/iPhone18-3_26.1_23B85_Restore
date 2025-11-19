@interface ULServiceQualityReason
- (BOOL)isEqual:(id)a3;
- (ULServiceQualityReason)initWithCoder:(id)a3;
- (ULServiceQualityReason)initWithQualityReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULServiceQualityReason

- (ULServiceQualityReason)initWithQualityReasonEnum:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ULServiceQualityReason;
  v4 = [(ULServiceQualityReason *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULServiceQualityReason *)v4 setQualityReasonEnum:a3];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  qualityReasonEnum = self->_qualityReasonEnum;

  return [v4 initWithQualityReasonEnum:qualityReasonEnum];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  qualityReasonEnum = self->_qualityReasonEnum;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:qualityReasonEnum];
  [v5 encodeObject:v6 forKey:@"qualityReasonEnum"];
}

- (ULServiceQualityReason)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULServiceQualityReason;
  v5 = [(ULServiceQualityReason *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"qualityReasonEnum"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULServiceQualityReason *)v6 unsignedIntegerValue];

      v5->_qualityReasonEnum = v8;
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

  v7 = ULServiceQualityReasonToString(self->_qualityReasonEnum);
  [v6 appendFormat:@", qualityReasonEnum: %@", v7];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULServiceQualityReason *)self qualityReasonEnum];
    v7 = [v5 qualityReasonEnum];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end