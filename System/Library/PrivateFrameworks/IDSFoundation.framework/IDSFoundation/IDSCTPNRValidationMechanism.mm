@interface IDSCTPNRValidationMechanism
+ (id)RCSTokenMechanismWithContext:(id)context;
+ (id)SMSLessMechanism;
+ (id)SMSMechanismWithContext:(id)context;
+ (id)mechanismStringForMechanism:(int64_t)mechanism;
- (BOOL)isEqual:(id)equal;
- (IDSCTPNRValidationMechanism)initWithType:(int64_t)type context:(id)context;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSCTPNRValidationMechanism

+ (id)SMSMechanismWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithType:1 context:contextCopy];

  return v5;
}

+ (id)SMSLessMechanism
{
  v2 = [[self alloc] initWithType:2 context:0];

  return v2;
}

+ (id)RCSTokenMechanismWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithType:3 context:contextCopy];

  return v5;
}

+ (id)mechanismStringForMechanism:(int64_t)mechanism
{
  if ((mechanism - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77E2238[mechanism - 1];
  }
}

- (IDSCTPNRValidationMechanism)initWithType:(int64_t)type context:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = IDSCTPNRValidationMechanism;
  v7 = [(IDSCTPNRValidationMechanism *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [contextCopy copy];
    context = v8->_context;
    v8->_context = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(IDSCTPNRValidationMechanism *)self type];
    type2 = [v5 type];
    context = [(IDSCTPNRValidationMechanism *)self context];
    context2 = [v5 context];
    if (context == context2)
    {
      v12 = 1;
    }

    else
    {
      context3 = [(IDSCTPNRValidationMechanism *)self context];
      context4 = [v5 context];
      v12 = [context3 isEqual:context4];
    }

    v13 = (type == type2) & v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  context = [(IDSCTPNRValidationMechanism *)self context];
  v4 = [context hash];
  type = [(IDSCTPNRValidationMechanism *)self type];

  return type ^ v4;
}

- (id)description
{
  type = [(IDSCTPNRValidationMechanism *)self type];
  if (type > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E77E2250[type];
  }

  v5 = MEMORY[0x1E696AEC0];
  context = [(IDSCTPNRValidationMechanism *)self context];
  v7 = [v5 stringWithFormat:@"IDSCTPRNValidationMechanism { Type: %@, Context: %@ }", v4, context];

  return v7;
}

@end