@interface SBEscrowOperationEvent
- (SBEscrowOperationEvent)initWithCoder:(id)coder;
- (SBEscrowOperationEvent)initWithOperationId:(id)id activityId:(id)activityId activityLabel:(id)label recordId:(id)recordId type:(unint64_t)type context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBEscrowOperationEvent

- (SBEscrowOperationEvent)initWithOperationId:(id)id activityId:(id)activityId activityLabel:(id)label recordId:(id)recordId type:(unint64_t)type context:(id)context
{
  idCopy = id;
  activityIdCopy = activityId;
  labelCopy = label;
  recordIdCopy = recordId;
  contextCopy = context;
  v25.receiver = self;
  v25.super_class = SBEscrowOperationEvent;
  v18 = [(SBEscrowOperationEvent *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = type;
    currentTime = [contextCopy currentTime];
    timestamp = v19->_timestamp;
    v19->_timestamp = currentTime;

    objc_storeStrong(&v19->_operationId, id);
    objc_storeStrong(&v19->_activityId, activityId);
    objc_storeStrong(&v19->_activityLabel, label);
    objc_storeStrong(&v19->_recordId, recordId);
  }

  return v19;
}

- (SBEscrowOperationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = SBEscrowOperationEvent;
  v5 = [(SBEscrowOperationEvent *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    if (v6)
    {
      v7 = objc_opt_self();

      timestamp = v5->_timestamp;
      v5->_timestamp = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
      v6 = v9;
      if (v9)
      {
        intValue = [(SBEscrowOperationEvent *)v9 intValue];

        v5->_type = intValue;
        v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationId"];
        if (v6)
        {
          v11 = objc_opt_self();

          operationId = v5->_operationId;
          v5->_operationId = v11;

          v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityLabel"];
          if (v6)
          {
            v13 = objc_opt_self();

            activityLabel = v5->_activityLabel;
            v5->_activityLabel = v13;

            v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityId"];
            if (v6)
            {
              v15 = objc_opt_self();

              activityId = v5->_activityId;
              v5->_activityId = v15;

              v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
              v18 = objc_opt_self();

              recordId = v5->_recordId;
              v5->_recordId = v18;

              v6 = v5;
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v5 forKey:@"type"];

  [coderCopy encodeObject:self->_operationId forKey:@"operationId"];
  [coderCopy encodeObject:self->_activityLabel forKey:@"activityLabel"];
  [coderCopy encodeObject:self->_activityId forKey:@"activityId"];
  [coderCopy encodeObject:self->_recordId forKey:@"recordId"];
}

@end