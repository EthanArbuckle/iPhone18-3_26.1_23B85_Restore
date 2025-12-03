@interface SecureBackupEscrowOperation
- (BOOL)isEqual:(id)equal;
- (BOOL)isStaleWithcontext:(id)withcontext;
- (SecureBackupEscrowOperation)initWithCoder:(id)coder;
- (SecureBackupEscrowOperation)initWithEvent:(id)event parentActivity:(id)activity context:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)updatedOperationWithAdditionalEvent:(id)event parentActivity:(id)activity context:(id)context;
- (id)updatedOperationWithParentActivity:(id)activity context:(id)context;
- (unint64_t)newStateWithContext:(id)context parentActivity:(id)activity;
- (void)_updateWithEvent:(id)event parentActivity:(id)activity context:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecureBackupEscrowOperation

- (SecureBackupEscrowOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = SecureBackupEscrowOperation;
  v5 = [(SecureBackupEscrowOperation *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    if (v6)
    {
      v7 = objc_opt_self();

      id = v5->_id;
      v5->_id = v7;

      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityLabel"];
      if (v6)
      {
        v9 = objc_opt_self();

        activityLabel = v5->_activityLabel;
        v5->_activityLabel = v9;

        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
        v6 = v11;
        if (v11)
        {
          intValue = [(SecureBackupEscrowOperation *)v11 intValue];

          v5->_type = intValue;
          v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
          v6 = v13;
          if (v13)
          {
            intValue2 = [(SecureBackupEscrowOperation *)v13 intValue];

            v5->_state = intValue2;
            v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
            v16 = objc_opt_self();

            error = v5->_error;
            v5->_error = v16;

            v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTimestamp"];
            v19 = objc_opt_self();

            startTimestamp = v5->_startTimestamp;
            v5->_startTimestamp = v19;

            v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTimestamp"];
            v22 = objc_opt_self();

            endTimestamp = v5->_endTimestamp;
            v5->_endTimestamp = v22;

            v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"finalCheckTimestamp"];
            v25 = objc_opt_self();

            finalCheckTimestamp = v5->_finalCheckTimestamp;
            v5->_finalCheckTimestamp = v25;

            v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordId"];
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

- (void)encodeWithCoder:(id)coder
{
  id = self->_id;
  coderCopy = coder;
  [coderCopy encodeObject:id forKey:@"id"];
  [coderCopy encodeObject:self->_activityLabel forKey:@"activityLabel"];
  v5 = [NSNumber numberWithUnsignedInteger:self->_type];
  [coderCopy encodeObject:v5 forKey:@"type"];

  v6 = [NSNumber numberWithUnsignedInteger:self->_state];
  [coderCopy encodeObject:v6 forKey:@"state"];

  [coderCopy encodeObject:self->_error forKey:@"error"];
  [coderCopy encodeObject:self->_startTimestamp forKey:@"startTimestamp"];
  [coderCopy encodeObject:self->_endTimestamp forKey:@"endTimestamp"];
  [coderCopy encodeObject:self->_finalCheckTimestamp forKey:@"finalCheckTimestamp"];
  [coderCopy encodeObject:self->_recordId forKey:@"recordId"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SecureBackupEscrowOperation *)self id];
  v7 = [v6 copyWithZone:zone];
  [v5 setId:v7];

  activityLabel = [(SecureBackupEscrowOperation *)self activityLabel];
  v9 = [activityLabel copyWithZone:zone];
  [v5 setActivityLabel:v9];

  [v5 setType:{-[SecureBackupEscrowOperation type](self, "type")}];
  [v5 setState:{-[SecureBackupEscrowOperation state](self, "state")}];
  error = [(SecureBackupEscrowOperation *)self error];
  v11 = [error copyWithZone:zone];
  [v5 setError:v11];

  startTimestamp = [(SecureBackupEscrowOperation *)self startTimestamp];
  v13 = [startTimestamp copyWithZone:zone];
  [v5 setStartTimestamp:v13];

  endTimestamp = [(SecureBackupEscrowOperation *)self endTimestamp];
  v15 = [endTimestamp copyWithZone:zone];
  [v5 setEndTimestamp:v15];

  finalCheckTimestamp = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
  v17 = [finalCheckTimestamp copyWithZone:zone];
  [v5 setFinalCheckTimestamp:v17];

  recordId = [(SecureBackupEscrowOperation *)self recordId];
  [v5 setRecordId:recordId];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    activityLabel = [(SecureBackupEscrowOperation *)self activityLabel];
    activityLabel2 = [v5 activityLabel];
    if ([activityLabel isEqual:activityLabel2])
    {
    }

    else
    {
      activityLabel3 = [(SecureBackupEscrowOperation *)self activityLabel];
      activityLabel4 = [v5 activityLabel];

      if (activityLabel3 != activityLabel4)
      {
        goto LABEL_23;
      }
    }

    type = [(SecureBackupEscrowOperation *)self type];
    if (type != [v5 type])
    {
      goto LABEL_23;
    }

    state = [(SecureBackupEscrowOperation *)self state];
    if (state != [v5 state])
    {
      goto LABEL_23;
    }

    error = [(SecureBackupEscrowOperation *)self error];
    error2 = [v5 error];
    if ([error isEqual:error2])
    {
    }

    else
    {
      error3 = [(SecureBackupEscrowOperation *)self error];
      error4 = [v5 error];

      if (error3 != error4)
      {
        goto LABEL_23;
      }
    }

    startTimestamp = [(SecureBackupEscrowOperation *)self startTimestamp];
    startTimestamp2 = [v5 startTimestamp];
    if ([startTimestamp isEqual:startTimestamp2])
    {
    }

    else
    {
      startTimestamp3 = [(SecureBackupEscrowOperation *)self startTimestamp];
      startTimestamp4 = [v5 startTimestamp];

      if (startTimestamp3 != startTimestamp4)
      {
        goto LABEL_23;
      }
    }

    endTimestamp = [(SecureBackupEscrowOperation *)self endTimestamp];
    endTimestamp2 = [v5 endTimestamp];
    if ([endTimestamp isEqual:endTimestamp2])
    {
    }

    else
    {
      endTimestamp3 = [(SecureBackupEscrowOperation *)self endTimestamp];
      endTimestamp4 = [v5 endTimestamp];

      if (endTimestamp3 != endTimestamp4)
      {
        goto LABEL_23;
      }
    }

    finalCheckTimestamp = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
    finalCheckTimestamp2 = [v5 finalCheckTimestamp];
    if ([finalCheckTimestamp isEqual:finalCheckTimestamp2])
    {

      goto LABEL_26;
    }

    finalCheckTimestamp3 = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
    finalCheckTimestamp4 = [v5 finalCheckTimestamp];

    if (finalCheckTimestamp3 == finalCheckTimestamp4)
    {
LABEL_26:
      recordId = [(SecureBackupEscrowOperation *)self recordId];
      recordId2 = [v5 recordId];
      if ([recordId isEqual:recordId2])
      {

        v8 = 1;
      }

      else
      {
        recordId3 = [(SecureBackupEscrowOperation *)self recordId];
        recordId4 = [v5 recordId];
        v8 = recordId3 == recordId4;
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
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (SecureBackupEscrowOperation)initWithEvent:(id)event parentActivity:(id)activity context:(id)context
{
  eventCopy = event;
  activityCopy = activity;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = SecureBackupEscrowOperation;
  v11 = [(SecureBackupEscrowOperation *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(SecureBackupEscrowOperation *)v11 _updateWithEvent:eventCopy parentActivity:activityCopy context:contextCopy];
    v13 = v12;
  }

  return v12;
}

- (void)_updateWithEvent:(id)event parentActivity:(id)activity context:(id)context
{
  eventCopy = event;
  activityCopy = activity;
  contextCopy = context;
  if (eventCopy)
  {
    v11 = [(SecureBackupEscrowOperation *)self id];
    if (v11)
    {
      v12 = v11;
      v13 = [(SecureBackupEscrowOperation *)self id];
      operationId = [eventCopy operationId];
      v15 = [v13 isEqual:operationId];

      if ((v15 & 1) == 0)
      {
        currentTime = CloudServicesLog();
        if (os_log_type_enabled(currentTime, OS_LOG_TYPE_ERROR))
        {
          sub_10004D60C(self, eventCopy, currentTime);
        }

LABEL_25:

        goto LABEL_27;
      }
    }

    operationId2 = [eventCopy operationId];
    [(SecureBackupEscrowOperation *)self setId:operationId2];

    activityLabel = [eventCopy activityLabel];
    [(SecureBackupEscrowOperation *)self setActivityLabel:activityLabel];

    -[SecureBackupEscrowOperation setType:](self, "setType:", [eventCopy type]);
    recordId = [(SecureBackupEscrowOperation *)self recordId];
    if (recordId)
    {
      [(SecureBackupEscrowOperation *)self setRecordId:recordId];
    }

    else
    {
      recordId2 = [eventCopy recordId];
      [(SecureBackupEscrowOperation *)self setRecordId:recordId2];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      timestamp = [eventCopy timestamp];
      [(SecureBackupEscrowOperation *)self setStartTimestamp:timestamp];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_20:
        endTimestamp = [(SecureBackupEscrowOperation *)self endTimestamp];

        if (!endTimestamp)
        {
          [(SecureBackupEscrowOperation *)self setState:1];
          goto LABEL_27;
        }

        error = [(SecureBackupEscrowOperation *)self error];

        if (error)
        {
          v28 = 3;
        }

        else
        {
          v28 = 2;
        }

        [(SecureBackupEscrowOperation *)self setState:v28];
        currentTime = [contextCopy currentTime];
        [(SecureBackupEscrowOperation *)self setFinalCheckTimestamp:currentTime];
        goto LABEL_25;
      }

      startTimestamp = [(SecureBackupEscrowOperation *)self startTimestamp];
      if (startTimestamp)
      {
        [(SecureBackupEscrowOperation *)self setStartTimestamp:startTimestamp];
      }

      else
      {
        timestamp2 = [eventCopy timestamp];
        [(SecureBackupEscrowOperation *)self setStartTimestamp:timestamp2];
      }

      timestamp3 = [eventCopy timestamp];
      [(SecureBackupEscrowOperation *)self setEndTimestamp:timestamp3];

      timestamp = [eventCopy error];
      [(SecureBackupEscrowOperation *)self setError:timestamp];
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

- (id)updatedOperationWithAdditionalEvent:(id)event parentActivity:(id)activity context:(id)context
{
  contextCopy = context;
  activityCopy = activity;
  eventCopy = event;
  v11 = [(SecureBackupEscrowOperation *)self copy];
  [v11 _updateWithEvent:eventCopy parentActivity:activityCopy context:contextCopy];

  return v11;
}

- (id)updatedOperationWithParentActivity:(id)activity context:(id)context
{
  activityCopy = activity;
  contextCopy = context;
  isComplete = [(SecureBackupEscrowOperation *)self isComplete];
  v9 = [(SecureBackupEscrowOperation *)self copy];
  if ((isComplete & 1) == 0)
  {
    v10 = [(SecureBackupEscrowOperation *)self newStateWithContext:contextCopy parentActivity:activityCopy];
    if (sub_100003E20(v10))
    {
      currentTime = [contextCopy currentTime];
      [(SecureBackupEscrowOperation *)self setFinalCheckTimestamp:currentTime];
    }

    [v9 setState:v10];
  }

  return v9;
}

- (BOOL)isStaleWithcontext:(id)withcontext
{
  withcontextCopy = withcontext;
  finalCheckTimestamp = [(SecureBackupEscrowOperation *)self finalCheckTimestamp];
  if (finalCheckTimestamp)
  {
    currentTime = [withcontextCopy currentTime];
    [currentTime timeIntervalSinceDate:finalCheckTimestamp];
    v8 = v7;

    [withcontextCopy activityRecordRetentionInterval];
    v10 = v8 > v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)newStateWithContext:(id)context parentActivity:(id)activity
{
  contextCopy = context;
  activityCopy = activity;
  isComplete = [(SecureBackupEscrowOperation *)self isComplete];
  state = [(SecureBackupEscrowOperation *)self state];
  state2 = state;
  if ((isComplete & 1) == 0)
  {
    if (state)
    {
      currentBootId = [contextCopy currentBootId];
      bootId = [activityCopy bootId];
      v13 = [currentBootId isEqual:bootId];

      if (v13)
      {
        currentPID = [contextCopy currentPID];
        if (currentPID == [activityCopy pid])
        {
          currentTime = [contextCopy currentTime];
          startTimestamp = [(SecureBackupEscrowOperation *)self startTimestamp];
          if (startTimestamp)
          {
            [currentTime timeIntervalSinceDate:startTimestamp];
            v18 = v17;
          }

          else
          {
            currentTime2 = [contextCopy currentTime];
            [currentTime timeIntervalSinceDate:currentTime2];
            v18 = v20;
          }

          [contextCopy operationTimeoutInterval];
          if (v18 <= v21)
          {
            state2 = [(SecureBackupEscrowOperation *)self state];
          }

          else
          {
            state2 = 6;
          }
        }

        else
        {
          state2 = 4;
        }
      }

      else
      {
        state2 = 5;
      }
    }

    else
    {
      state2 = 7;
    }
  }

  return state2;
}

@end