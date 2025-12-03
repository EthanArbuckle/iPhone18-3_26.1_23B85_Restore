@interface BMSiriExecutionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMSiriExecutionEvent)initWithProto:(id)proto;
- (BMSiriExecutionEvent)initWithProtoData:(id)data;
- (BMSiriExecutionEvent)initWithTaskID:(id)d taskStep:(unint64_t)step statusReason:(id)reason slotValue:(id)value intentName:(id)name appBundleId:(id)id interactionId:(id)interactionId absoluteTimestamp:(double)self0;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriExecutionEvent

- (BMSiriExecutionEvent)initWithTaskID:(id)d taskStep:(unint64_t)step statusReason:(id)reason slotValue:(id)value intentName:(id)name appBundleId:(id)id interactionId:(id)interactionId absoluteTimestamp:(double)self0
{
  dCopy = d;
  reasonCopy = reason;
  valueCopy = value;
  nameCopy = name;
  idCopy = id;
  interactionIdCopy = interactionId;
  v27.receiver = self;
  v27.super_class = BMSiriExecutionEvent;
  v20 = [(BMEventBase *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_taskId, d);
    v21->_taskStep = step;
    objc_storeStrong(&v21->_statusReason, reason);
    objc_storeStrong(&v21->_slotValue, value);
    objc_storeStrong(&v21->_intentName, name);
    objc_storeStrong(&v21->_appBundleId, id);
    objc_storeStrong(&v21->_interactionId, interactionId);
    v21->_absoluteTimestamp = timestamp;
  }

  return v21;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 3)
  {
    selfCopy = BMSiriExecutionEvent_v3;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMSiriExecutionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMSiriExecutionEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      taskId = [v5 taskId];
      taskStep = [v5 taskStep];
      v8 = taskStep;
      if (taskStep >= 0x5E)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSiriExecutionEvent initWithProto:v8];
        }

        v9 = 94;
      }

      else
      {
        v9 = taskStep;
      }

      statusReason = [v5 statusReason];
      slotValue = [v5 slotValue];
      intentName = [v5 intentName];
      appBundleId = [v5 appBundleId];
      interactionId = [v5 interactionId];
      [v5 absoluteTimestamp];
      self = [(BMSiriExecutionEvent *)self initWithTaskID:taskId taskStep:v9 statusReason:statusReason slotValue:slotValue intentName:intentName appBundleId:appBundleId interactionId:interactionId absoluteTimestamp:?];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSiriExecutionEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMSiriExecutionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBSiriExecutionEvent alloc] initWithData:dataCopy];

    self = [(BMSiriExecutionEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  taskId = [(BMSiriExecutionEvent *)self taskId];
  [v3 setTaskId:taskId];

  taskStep = [(BMSiriExecutionEvent *)self taskStep];
  if (taskStep >= 0x5E)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMSiriExecutionEvent *)taskStep proto];
    }

    v11 = 0;
  }

  else
  {
    [v3 setTaskStep:taskStep];
    statusReason = [(BMSiriExecutionEvent *)self statusReason];
    [v3 setStatusReason:statusReason];

    slotValue = [(BMSiriExecutionEvent *)self slotValue];
    [v3 setSlotValue:slotValue];

    intentName = [(BMSiriExecutionEvent *)self intentName];
    [v3 setIntentName:intentName];

    appBundleId = [(BMSiriExecutionEvent *)self appBundleId];
    [v3 setAppBundleId:appBundleId];

    interactionId = [(BMSiriExecutionEvent *)self interactionId];
    [v3 setInteractionId:interactionId];

    [(BMSiriExecutionEvent *)self absoluteTimestamp];
    [v3 setAbsoluteTimestamp:?];
    v11 = v3;
  }

  return v11;
}

- (unint64_t)hash
{
  taskId = [(BMSiriExecutionEvent *)self taskId];
  v4 = [taskId hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMSiriExecutionEvent taskStep](self, "taskStep")}];
  v6 = [v5 hash];
  statusReason = [(BMSiriExecutionEvent *)self statusReason];
  v8 = v4 ^ [statusReason hash];
  slotValue = [(BMSiriExecutionEvent *)self slotValue];
  v10 = v8 ^ [slotValue hash];
  intentName = [(BMSiriExecutionEvent *)self intentName];
  v12 = v10 ^ [intentName hash];
  appBundleId = [(BMSiriExecutionEvent *)self appBundleId];
  v14 = v12 ^ [appBundleId hash];
  interactionId = [(BMSiriExecutionEvent *)self interactionId];
  v16 = v6 ^ v14 ^ [interactionId hash];
  v17 = MEMORY[0x1E696AD98];
  [(BMSiriExecutionEvent *)self absoluteTimestamp];
  v18 = [v17 numberWithDouble:?];
  v19 = [v18 hash];

  return v16 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    taskId = self->_taskId;
    taskId = [v5 taskId];
    if (-[NSString isEqual:](taskId, "isEqual:", taskId) && (taskStep = self->_taskStep, taskStep == [v5 taskStep]))
    {
      statusReason = self->_statusReason;
      statusReason = [v5 statusReason];
      if ([(NSString *)statusReason isEqual:statusReason])
      {
        slotValue = self->_slotValue;
        slotValue = [v5 slotValue];
        if ([(NSString *)slotValue isEqual:slotValue])
        {
          intentName = self->_intentName;
          intentName = [v5 intentName];
          if ([(NSString *)intentName isEqual:intentName])
          {
            appBundleId = self->_appBundleId;
            appBundleId = [v5 appBundleId];
            if ([(NSString *)appBundleId isEqual:appBundleId])
            {
              interactionId = self->_interactionId;
              interactionId = [v5 interactionId];
              if ([(NSString *)interactionId isEqual:interactionId])
              {
                absoluteTimestamp = self->_absoluteTimestamp;
                [v5 absoluteTimestamp];
                v21 = absoluteTimestamp == v20;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end