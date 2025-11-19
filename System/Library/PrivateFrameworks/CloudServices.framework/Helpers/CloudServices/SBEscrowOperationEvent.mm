@interface SBEscrowOperationEvent
- (SBEscrowOperationEvent)initWithCoder:(id)a3;
- (SBEscrowOperationEvent)initWithOperationId:(id)a3 activityId:(id)a4 activityLabel:(id)a5 recordId:(id)a6 type:(unint64_t)a7 context:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBEscrowOperationEvent

- (SBEscrowOperationEvent)initWithOperationId:(id)a3 activityId:(id)a4 activityLabel:(id)a5 recordId:(id)a6 type:(unint64_t)a7 context:(id)a8
{
  v24 = a3;
  v23 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = SBEscrowOperationEvent;
  v18 = [(SBEscrowOperationEvent *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_type = a7;
    v20 = [v17 currentTime];
    timestamp = v19->_timestamp;
    v19->_timestamp = v20;

    objc_storeStrong(&v19->_operationId, a3);
    objc_storeStrong(&v19->_activityId, a4);
    objc_storeStrong(&v19->_activityLabel, a5);
    objc_storeStrong(&v19->_recordId, a6);
  }

  return v19;
}

- (SBEscrowOperationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBEscrowOperationEvent;
  v5 = [(SBEscrowOperationEvent *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    if (v6)
    {
      v7 = objc_opt_self();

      timestamp = v5->_timestamp;
      v5->_timestamp = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
      v6 = v9;
      if (v9)
      {
        v10 = [(SBEscrowOperationEvent *)v9 intValue];

        v5->_type = v10;
        v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationId"];
        if (v6)
        {
          v11 = objc_opt_self();

          operationId = v5->_operationId;
          v5->_operationId = v11;

          v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityLabel"];
          if (v6)
          {
            v13 = objc_opt_self();

            activityLabel = v5->_activityLabel;
            v5->_activityLabel = v13;

            v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityId"];
            if (v6)
            {
              v15 = objc_opt_self();

              activityId = v5->_activityId;
              v5->_activityId = v15;

              v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
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

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v6 = a3;
  [v6 encodeObject:timestamp forKey:@"timestamp"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_type];
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeObject:self->_operationId forKey:@"operationId"];
  [v6 encodeObject:self->_activityLabel forKey:@"activityLabel"];
  [v6 encodeObject:self->_activityId forKey:@"activityId"];
  [v6 encodeObject:self->_recordId forKey:@"recordId"];
}

@end