@interface ULConfidenceReason
- (BOOL)isEqual:(id)a3;
- (ULConfidenceReason)initWithCoder:(id)a3;
- (ULConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULConfidenceReason

- (ULConfidenceReason)initWithConfidenceReasonEnum:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ULConfidenceReason;
  v4 = [(ULConfidenceReason *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ULConfidenceReason *)v4 setConfidenceReasonEnum:a3];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  confidenceReasonEnum = self->_confidenceReasonEnum;

  return [v4 initWithConfidenceReasonEnum:confidenceReasonEnum];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  confidenceReasonEnum = self->_confidenceReasonEnum;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:confidenceReasonEnum];
  [v5 encodeObject:v6 forKey:@"confidenceReasonEnum"];
}

- (ULConfidenceReason)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULConfidenceReason;
  v5 = [(ULConfidenceReason *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confidenceReasonEnum"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULConfidenceReason *)v6 unsignedIntegerValue];

      v5->_confidenceReasonEnum = v8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULConfidenceReason *)self confidenceReasonEnum];
    v7 = [v5 confidenceReasonEnum];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end