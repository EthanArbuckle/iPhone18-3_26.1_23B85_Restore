@interface ULServiceSuspendReason
- (BOOL)isEqual:(id)equal;
- (ULServiceSuspendReason)initWithCoder:(id)coder;
- (ULServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULServiceSuspendReason

- (ULServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)enum
{
  v8.receiver = self;
  v8.super_class = ULServiceSuspendReason;
  v4 = [(ULServiceSuspendReason *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(ULServiceSuspendReason *)v4 setSuspendReasonEnum:enum];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  suspendReasonEnum = [(ULServiceSuspendReason *)self suspendReasonEnum];

  return [v4 initWithSuspendReasonEnum:suspendReasonEnum];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x277CCABB0];
  suspendReasonEnum = self->_suspendReasonEnum;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:suspendReasonEnum];
  [coderCopy encodeObject:v6 forKey:@"suspendReasonEnum"];
}

- (ULServiceSuspendReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ULServiceSuspendReason;
  v5 = [(ULServiceSuspendReason *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suspendReasonEnum"];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [(ULServiceSuspendReason *)v6 unsignedIntegerValue];

      v5->_suspendReasonEnum = unsignedIntegerValue;
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

  v7 = ULServiceSuspendReasonToString(self->_suspendReasonEnum);
  [v6 appendFormat:@", suspendReasonEnum: %@", v7];

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
    suspendReasonEnum = [(ULServiceSuspendReason *)self suspendReasonEnum];
    suspendReasonEnum2 = [v5 suspendReasonEnum];

    v8 = suspendReasonEnum == suspendReasonEnum2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end