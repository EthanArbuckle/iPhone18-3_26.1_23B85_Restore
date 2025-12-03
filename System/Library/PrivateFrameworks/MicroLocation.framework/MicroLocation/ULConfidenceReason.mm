@interface ULConfidenceReason
- (BOOL)isEqual:(id)equal;
- (ULConfidenceReason)initWithCoder:(id)coder;
- (ULConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULConfidenceReason

- (ULConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)enum
{
  v7.receiver = self;
  v7.super_class = ULConfidenceReason;
  v4 = [(ULConfidenceReason *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULConfidenceReason *)v4 setConfidenceReasonEnum:enum];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  confidenceReasonEnum = self->_confidenceReasonEnum;

  return [v4 initWithConfidenceReasonEnum:confidenceReasonEnum];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  confidenceReasonEnum = self->_confidenceReasonEnum;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:confidenceReasonEnum];
  [coderCopy encodeObject:v6 forKey:@"confidenceReasonEnum"];
}

- (ULConfidenceReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULConfidenceReason;
  v5 = [(ULConfidenceReason *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidenceReasonEnum"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [(ULConfidenceReason *)v6 unsignedIntegerValue];

      v5->_confidenceReasonEnum = unsignedIntegerValue;
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

  v7 = ULConfidenceReasonToString(self->_confidenceReasonEnum);
  [v6 appendFormat:@", confidenceReasonEnum: %@", v7];

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
    confidenceReasonEnum = [(ULConfidenceReason *)self confidenceReasonEnum];
    confidenceReasonEnum2 = [v5 confidenceReasonEnum];

    v8 = confidenceReasonEnum == confidenceReasonEnum2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end