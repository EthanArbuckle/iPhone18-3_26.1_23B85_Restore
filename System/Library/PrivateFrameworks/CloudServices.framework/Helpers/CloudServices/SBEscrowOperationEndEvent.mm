@interface SBEscrowOperationEndEvent
- (SBEscrowOperationEndEvent)initWithCoder:(id)coder;
- (SBEscrowOperationEndEvent)initWithStartEvent:(id)event results:(id)results error:(id)error context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBEscrowOperationEndEvent

- (SBEscrowOperationEndEvent)initWithStartEvent:(id)event results:(id)results error:(id)error context:(id)context
{
  errorCopy = error;
  contextCopy = context;
  eventCopy = event;
  operationId = [eventCopy operationId];
  activityId = [eventCopy activityId];
  activityLabel = [eventCopy activityLabel];
  recordId = [eventCopy recordId];
  type = [eventCopy type];

  v21.receiver = self;
  v21.super_class = SBEscrowOperationEndEvent;
  v17 = [(SBEscrowOperationEvent *)&v21 initWithOperationId:operationId activityId:activityId activityLabel:activityLabel recordId:recordId type:type context:contextCopy];

  if (v17)
  {
    v18 = [errorCopy copy];
    error = v17->_error;
    v17->_error = v18;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SBEscrowOperationEndEvent;
  coderCopy = coder;
  [(SBEscrowOperationEvent *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_error forKey:{@"error", v5.receiver, v5.super_class}];
}

- (SBEscrowOperationEndEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = SBEscrowOperationEndEvent;
  v5 = [(SBEscrowOperationEvent *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    v7 = objc_opt_self();

    error = v5->_error;
    v5->_error = v7;

    v9 = v5;
  }

  return v5;
}

@end