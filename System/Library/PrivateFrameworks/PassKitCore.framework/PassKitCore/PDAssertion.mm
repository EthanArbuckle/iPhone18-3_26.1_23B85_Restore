@interface PDAssertion
- (PDAssertion)initWithType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5;
- (id)description;
@end

@implementation PDAssertion

- (PDAssertion)initWithType:(unint64_t)a3 identifier:(id)a4 reason:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = PDAssertion;
  v10 = [(PDAssertion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
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