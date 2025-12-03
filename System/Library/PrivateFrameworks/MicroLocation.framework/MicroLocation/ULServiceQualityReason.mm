@interface ULServiceQualityReason
- (BOOL)isEqual:(id)equal;
- (ULServiceQualityReason)initWithCoder:(id)coder;
- (ULServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULServiceQualityReason

- (ULServiceQualityReason)initWithQualityReasonEnum:(unint64_t)enum
{
  v7.receiver = self;
  v7.super_class = ULServiceQualityReason;
  v4 = [(ULServiceQualityReason *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULServiceQualityReason *)v4 setQualityReasonEnum:enum];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  qualityReasonEnum = self->_qualityReasonEnum;

  return [v4 initWithQualityReasonEnum:qualityReasonEnum];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  qualityReasonEnum = self->_qualityReasonEnum;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:qualityReasonEnum];
  [coderCopy encodeObject:v6 forKey:@"qualityReasonEnum"];
}

- (ULServiceQualityReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULServiceQualityReason;
  v5 = [(ULServiceQualityReason *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"qualityReasonEnum"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [(ULServiceQualityReason *)v6 unsignedIntegerValue];

      v5->_qualityReasonEnum = unsignedIntegerValue;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    qualityReasonEnum = [(ULServiceQualityReason *)self qualityReasonEnum];
    qualityReasonEnum2 = [v5 qualityReasonEnum];

    v8 = qualityReasonEnum == qualityReasonEnum2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end