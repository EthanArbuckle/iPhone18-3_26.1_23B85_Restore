@interface ULServiceSuspendReason
- (BOOL)isEqual:(id)a3;
- (ULServiceSuspendReason)initWithCoder:(id)a3;
- (ULServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULServiceSuspendReason

- (ULServiceSuspendReason)initWithSuspendReasonEnum:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = ULServiceSuspendReason;
  v4 = [(ULServiceSuspendReason *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(ULServiceSuspendReason *)v4 setSuspendReasonEnum:a3];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULServiceSuspendReason *)self suspendReasonEnum];

  return [v4 initWithSuspendReasonEnum:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  suspendReasonEnum = self->_suspendReasonEnum;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:suspendReasonEnum];
  [v5 encodeObject:v6 forKey:@"suspendReasonEnum"];
}

- (ULServiceSuspendReason)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ULServiceSuspendReason;
  v5 = [(ULServiceSuspendReason *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suspendReasonEnum"];
    v7 = v6;
    if (v6)
    {
      v8 = [(ULServiceSuspendReason *)v6 unsignedIntegerValue];

      v5->_suspendReasonEnum = v8;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULServiceSuspendReason *)self suspendReasonEnum];
    v7 = [v5 suspendReasonEnum];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end