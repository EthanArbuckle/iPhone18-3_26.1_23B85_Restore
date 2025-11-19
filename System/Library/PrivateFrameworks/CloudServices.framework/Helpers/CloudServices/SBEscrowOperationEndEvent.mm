@interface SBEscrowOperationEndEvent
- (SBEscrowOperationEndEvent)initWithCoder:(id)a3;
- (SBEscrowOperationEndEvent)initWithStartEvent:(id)a3 results:(id)a4 error:(id)a5 context:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBEscrowOperationEndEvent

- (SBEscrowOperationEndEvent)initWithStartEvent:(id)a3 results:(id)a4 error:(id)a5 context:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [v11 operationId];
  v13 = [v11 activityId];
  v14 = [v11 activityLabel];
  v15 = [v11 recordId];
  v16 = [v11 type];

  v21.receiver = self;
  v21.super_class = SBEscrowOperationEndEvent;
  v17 = [(SBEscrowOperationEvent *)&v21 initWithOperationId:v12 activityId:v13 activityLabel:v14 recordId:v15 type:v16 context:v10];

  if (v17)
  {
    v18 = [v9 copy];
    error = v17->_error;
    v17->_error = v18;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBEscrowOperationEndEvent;
  v4 = a3;
  [(SBEscrowOperationEvent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (SBEscrowOperationEndEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBEscrowOperationEndEvent;
  v5 = [(SBEscrowOperationEvent *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    v7 = objc_opt_self();

    error = v5->_error;
    v5->_error = v7;

    v9 = v5;
  }

  return v5;
}

@end