@interface IDSCTPNRValidationMechanism
+ (id)RCSTokenMechanismWithContext:(id)a3;
+ (id)SMSLessMechanism;
+ (id)SMSMechanismWithContext:(id)a3;
+ (id)mechanismStringForMechanism:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (IDSCTPNRValidationMechanism)initWithType:(int64_t)a3 context:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSCTPNRValidationMechanism

+ (id)SMSMechanismWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:1 context:v4];

  return v5;
}

+ (id)SMSLessMechanism
{
  v2 = [[a1 alloc] initWithType:2 context:0];

  return v2;
}

+ (id)RCSTokenMechanismWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:3 context:v4];

  return v5;
}

+ (id)mechanismStringForMechanism:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77E2238[a3 - 1];
  }
}

- (IDSCTPNRValidationMechanism)initWithType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = IDSCTPNRValidationMechanism;
  v7 = [(IDSCTPNRValidationMechanism *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    context = v8->_context;
    v8->_context = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSCTPNRValidationMechanism *)self type];
    v7 = [v5 type];
    v8 = [(IDSCTPNRValidationMechanism *)self context];
    v9 = [v5 context];
    if (v8 == v9)
    {
      v12 = 1;
    }

    else
    {
      v10 = [(IDSCTPNRValidationMechanism *)self context];
      v11 = [v5 context];
      v12 = [v10 isEqual:v11];
    }

    v13 = (v6 == v7) & v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(IDSCTPNRValidationMechanism *)self context];
  v4 = [v3 hash];
  v5 = [(IDSCTPNRValidationMechanism *)self type];

  return v5 ^ v4;
}

- (id)description
{
  v3 = [(IDSCTPNRValidationMechanism *)self type];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E77E2250[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(IDSCTPNRValidationMechanism *)self context];
  v7 = [v5 stringWithFormat:@"IDSCTPRNValidationMechanism { Type: %@, Context: %@ }", v4, v6];

  return v7;
}

@end