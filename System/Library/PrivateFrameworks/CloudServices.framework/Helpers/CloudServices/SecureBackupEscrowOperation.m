@interface SecureBackupEscrowOperation
- (BOOL)isEqual:(id)a3;
- (BOOL)isStaleWithcontext:(id)a3;
- (SecureBackupEscrowOperation)initWithCoder:(id)a3;
- (SecureBackupEscrowOperation)initWithEvent:(id)a3 parentActivity:(id)a4 context:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)updatedOperationWithAdditionalEvent:(id)a3 parentActivity:(id)a4 context:(id)a5;
- (id)updatedOperationWithParentActivity:(id)a3 context:(id)a4;
- (unint64_t)newStateWithContext:(id)a3 parentActivity:(id)a4;
- (void)_updateWithEvent:(id)a3 parentActivity:(id)a4 context:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SecureBackupEscrowOperation

- (SecureBackupEscrowOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = SecureBackupEscrowOperation;
  v5 = [(SecureBackupEscrowOperation *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v6)
    {
      v7 = objc_opt_self();

      id = v5->_id;
      v5->_id = v7;

      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityLabel"];
      if (v6)
      {
        v9 = objc_opt_self();

        activityLabel = v5->_activityLabel;
        v5->_activityLabel = v9;

        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
        v6 = v11;
        if (v11)
        {
          v12 = [(SecureBackupEscrowOperation *)v11 intValue];

          v5->_type = v12;
          v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
          v6 = v13;
          if (v13)
          {
            v14 = [(SecureBackupEscrowOperation *)v13 intValue];

            v5->_state = v14;
            v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
            v16 = objc_opt_self();

            error = v5->_error;
            v5->_error = v16;

            v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTimestamp"];
            v19 = objc_opt_self();

            startTimestamp = v5->_startTimestamp;
            v5->_startTimestamp = v19;

            v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTimestamp"];
            v22 = objc_opt_self();

            endTimestamp = v5->_endTimestamp;
            v5->_endTimestamp = v22;

            v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"finalCheckTimestamp"];
            v25 = objc_opt_self();

            finalCheckTimestamp = v5->_finalCheckTimestamp;
            v5->_finalCheckTimestamp = v25;

            v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
            v28 = objc_opt_self();

            recordId = v5->_recordId;
            v5->_recordId = v28;

            v6 = v5;
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
  id = self->_id;
  v7 = a3;
  [v7 encodeObject:id forKey:@"id"];
  [v7 encodeObject:self->_activityLabel forKey:@"activityLabel"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_type];
  [v7 encodeObject:v5 forKey:@"type"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_state];
  [v7 encodeObject:v6 forKey:@"state"];

  [v7 encodeObject:self->_error forKey:@"error"];
  [v7 encodeObject:self->_startTimestamp forKey:@"startTimestamp"];
  [v7 encodeObject:self->_endTimestamp forKey:@"endTimestamp"];
  [v7 encodeObject:self->_finalCheckTimestamp forKey:@"finalCheckTimestamp"];
  [v7 encodeObject:self->_recordId forKey:@"recordId"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SecureBackupEscrowOperation *)self id];
  v7 = [v6 copyWithZone:a3];
  [v5 setId:v7];

  v8 = [(SecureBackupEscrowOperation *)self activityLabel];
  v9 = [v8 copyWithZone:a3];
  [v5 setActivityLabel:v9];

  [v5 setType:{-[SecureBackupEscrowOperation type](self, "type")}];
  [v5 setState:{-[SecureBackupEscrowOperation state](self, "state")}];
  v10 = [(SecureBackupEscrowOperation *)self error];
  v11 = [v10 copyWithZone:a3];
  [v5 setError:v11];

  v12 = [(SecureBackupEscrowOperation *)self startTimestamp];
  v13 = [v12 copyWithZone:a3];
  [v5 setStartTimestamp:v13];

  v14 = [(SecureBackupEscrowOperation *)self endTimestamp];
  v15 = [v14 copyWithZone:a3];
  [v5 setEndTimestamp:v15];

  v16 = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
  v17 = [v16 copyWithZone:a3];
  [v5 setFinalCheckTimestamp:v17];

  v18 = [(SecureBackupEscrowOperation *)self recordId];
  [v5 setRecordId:v18];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SecureBackupEscrowOperation *)self id];
    v7 = [v5 id];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(SecureBackupEscrowOperation *)self id];
      v10 = [v5 id];

      if (v9 != v10)
      {
        goto LABEL_23;
      }
    }

    v11 = [(SecureBackupEscrowOperation *)self activityLabel];
    v12 = [v5 activityLabel];
    if ([v11 isEqual:v12])
    {
    }

    else
    {
      v13 = [(SecureBackupEscrowOperation *)self activityLabel];
      v14 = [v5 activityLabel];

      if (v13 != v14)
      {
        goto LABEL_23;
      }
    }

    v15 = [(SecureBackupEscrowOperation *)self type];
    if (v15 != [v5 type])
    {
      goto LABEL_23;
    }

    v16 = [(SecureBackupEscrowOperation *)self state];
    if (v16 != [v5 state])
    {
      goto LABEL_23;
    }

    v17 = [(SecureBackupEscrowOperation *)self error];
    v18 = [v5 error];
    if ([v17 isEqual:v18])
    {
    }

    else
    {
      v19 = [(SecureBackupEscrowOperation *)self error];
      v20 = [v5 error];

      if (v19 != v20)
      {
        goto LABEL_23;
      }
    }

    v21 = [(SecureBackupEscrowOperation *)self startTimestamp];
    v22 = [v5 startTimestamp];
    if ([v21 isEqual:v22])
    {
    }

    else
    {
      v23 = [(SecureBackupEscrowOperation *)self startTimestamp];
      v24 = [v5 startTimestamp];

      if (v23 != v24)
      {
        goto LABEL_23;
      }
    }

    v25 = [(SecureBackupEscrowOperation *)self endTimestamp];
    v26 = [v5 endTimestamp];
    if ([v25 isEqual:v26])
    {
    }

    else
    {
      v27 = [(SecureBackupEscrowOperation *)self endTimestamp];
      v28 = [v5 endTimestamp];

      if (v27 != v28)
      {
        goto LABEL_23;
      }
    }

    v29 = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
    v30 = [v5 finalCheckTimestamp];
    if ([v29 isEqual:v30])
    {

      goto LABEL_26;
    }

    v31 = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
    v32 = [v5 finalCheckTimestamp];

    if (v31 == v32)
    {
LABEL_26:
      v34 = [(SecureBackupEscrowOperation *)self recordId];
      v35 = [v5 recordId];
      if ([v34 isEqual:v35])
      {

        v8 = 1;
      }

      else
      {
        v36 = [(SecureBackupEscrowOperation *)self recordId];
        v37 = [v5 recordId];
        v8 = v36 == v37;
      }

      goto LABEL_24;
    }

LABEL_23:
    v8 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v8 = 0;
LABEL_25:

  return v8;
}

- (id)description
{
  v2 = [(SecureBackupEscrowOperation *)self id];
  v3 = [v2 UUIDString];

  return v3;
}

- (SecureBackupEscrowOperation)initWithEvent:(id)a3 parentActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = SecureBackupEscrowOperation;
  v11 = [(SecureBackupEscrowOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(SecureBackupEscrowOperation *)v11 _updateWithEvent:v8 parentActivity:v9 context:v10];
    v13 = v12;
  }

  return v12;
}

- (void)_updateWithEvent:(id)a3 parentActivity:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(SecureBackupEscrowOperation *)self id];
    if (v11)
    {
      v12 = v11;
      v13 = [(SecureBackupEscrowOperation *)self id];
      v14 = [v8 operationId];
      v15 = [v13 isEqual:v14];

      if ((v15 & 1) == 0)
      {
        v20 = CloudServicesLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10004D60C(self, v8, v20);
        }

LABEL_25:

        goto LABEL_27;
      }
    }

    v16 = [v8 operationId];
    [(SecureBackupEscrowOperation *)self setId:v16];

    v17 = [v8 activityLabel];
    [(SecureBackupEscrowOperation *)self setActivityLabel:v17];

    -[SecureBackupEscrowOperation setType:](self, "setType:", [v8 type]);
    v18 = [(SecureBackupEscrowOperation *)self recordId];
    if (v18)
    {
      [(SecureBackupEscrowOperation *)self setRecordId:v18];
    }

    else
    {
      v21 = [v8 recordId];
      [(SecureBackupEscrowOperation *)self setRecordId:v21];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v8 timestamp];
      [(SecureBackupEscrowOperation *)self setStartTimestamp:v22];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_20:
        v26 = [(SecureBackupEscrowOperation *)self endTimestamp];

        if (!v26)
        {
          [(SecureBackupEscrowOperation *)self setState:1];
          goto LABEL_27;
        }

        v27 = [(SecureBackupEscrowOperation *)self error];

        if (v27)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        [(SecureBackupEscrowOperation *)self setState:v28];
        v20 = [v10 currentTime];
        [(SecureBackupEscrowOperation *)self setFinalCheckTimestamp:v20];
        goto LABEL_25;
      }

      v23 = [(SecureBackupEscrowOperation *)self startTimestamp];
      if (v23)
      {
        [(SecureBackupEscrowOperation *)self setStartTimestamp:v23];
      }

      else
      {
        v24 = [v8 timestamp];
        [(SecureBackupEscrowOperation *)self setStartTimestamp:v24];
      }

      v25 = [v8 timestamp];
      [(SecureBackupEscrowOperation *)self setEndTimestamp:v25];

      v22 = [v8 error];
      [(SecureBackupEscrowOperation *)self setError:v22];
    }

    goto LABEL_20;
  }

  v19 = CloudServicesLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10004D6D0(v19);
  }

LABEL_27:
}

- (id)updatedOperationWithAdditionalEvent:(id)a3 parentActivity:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SecureBackupEscrowOperation *)self copy];
  [v11 _updateWithEvent:v10 parentActivity:v9 context:v8];

  return v11;
}

- (id)updatedOperationWithParentActivity:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupEscrowOperation *)self isComplete];
  v9 = [(SecureBackupEscrowOperation *)self copy];
  if ((v8 & 1) == 0)
  {
    v10 = [(SecureBackupEscrowOperation *)self newStateWithContext:v7 parentActivity:v6];
    if (sub_100003E20(v10))
    {
      v11 = [v7 currentTime];
      [(SecureBackupEscrowOperation *)self setFinalCheckTimestamp:v11];
    }

    [v9 setState:v10];
  }

  return v9;
}

- (BOOL)isStaleWithcontext:(id)a3
{
  v4 = a3;
  v5 = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
  if (v5)
  {
    v6 = [v4 currentTime];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    [v4 activityRecordRetentionInterval];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)newStateWithContext:(id)a3 parentActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SecureBackupEscrowOperation *)self isComplete];
  v9 = [(SecureBackupEscrowOperation *)self state];
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      v11 = [v6 currentBootId];
      v12 = [v7 bootId];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        v14 = [v6 currentPID];
        if (v14 == [v7 pid])
        {
          v15 = [v6 currentTime];
          v16 = [(SecureBackupEscrowOperation *)self startTimestamp];
          if (v16)
          {
            [v15 timeIntervalSinceDate:v16];
            v18 = v17;
          }

          else
          {
            v19 = [v6 currentTime];
            [v15 timeIntervalSinceDate:v19];
            v18 = v20;
          }

          [v6 operationTimeoutInterval];
          if (v18 <= v21)
          {
            v10 = [(SecureBackupEscrowOperation *)self state];
          }

          else
          {
            v10 = 6;
          }
        }

        else
        {
          v10 = 4;
        }
      }

      else
      {
        v10 = 5;
      }
    }

    else
    {
      v10 = 7;
    }
  }

  return v10;
}

@end