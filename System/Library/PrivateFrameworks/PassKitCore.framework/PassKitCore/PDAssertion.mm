@interface PDAssertion
- (PDAssertion)initWithType:(unint64_t)type identifier:(id)identifier reason:(id)reason;
- (id)description;
@end

@implementation PDAssertion

- (PDAssertion)initWithType:(unint64_t)type identifier:(id)identifier reason:(id)reason
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v17.receiver = self;
  v17.super_class = PDAssertion;
  v10 = [(PDAssertion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v14;

    v11->_invalidateWhenBackgrounded = 1;
    v11->_createdAt = CFAbsoluteTimeGetCurrent();
  }

  return v11;
}

- (id)description
{
  type = self->_type;
  if (type > 9)
  {
    v3 = @"unknown";
  }

  else
  {
    v3 = off_1E79E2630[type];
  }

  if (self->_invalidateWhenBackgrounded)
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<PDAssertion: Type: %@, Identifier: %@, Reason: %@, invalidateWhenBackgrounded: %@, ageInSeconds: %f>", v3, self->_identifier, self->_reason, v4, CFAbsoluteTimeGetCurrent() - self->_createdAt];
}

@end