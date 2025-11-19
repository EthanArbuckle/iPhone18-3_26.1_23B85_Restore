@interface BMSiriExecutionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMSiriExecutionEvent)initWithProto:(id)a3;
- (BMSiriExecutionEvent)initWithProtoData:(id)a3;
- (BMSiriExecutionEvent)initWithTaskID:(id)a3 taskStep:(unint64_t)a4 statusReason:(id)a5 slotValue:(id)a6 intentName:(id)a7 appBundleId:(id)a8 interactionId:(id)a9 absoluteTimestamp:(double)a10;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMSiriExecutionEvent

- (BMSiriExecutionEvent)initWithTaskID:(id)a3 taskStep:(unint64_t)a4 statusReason:(id)a5 slotValue:(id)a6 intentName:(id)a7 appBundleId:(id)a8 interactionId:(id)a9 absoluteTimestamp:(double)a10
{
  v26 = a3;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = BMSiriExecutionEvent;
  v20 = [(BMEventBase *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_taskId, a3);
    v21->_taskStep = a4;
    objc_storeStrong(&v21->_statusReason, a5);
    objc_storeStrong(&v21->_slotValue, a6);
    objc_storeStrong(&v21->_intentName, a7);
    objc_storeStrong(&v21->_appBundleId, a8);
    objc_storeStrong(&v21->_interactionId, a9);
    v21->_absoluteTimestamp = a10;
  }

  return v21;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 3)
  {
    v4 = BMSiriExecutionEvent_v3;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMSiriExecutionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMSiriExecutionEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 taskId];
      v7 = [v5 taskStep];
      v8 = v7;
      if (v7 >= 0x5E)
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
        v9 = v7;
      }

      v12 = [v5 statusReason];
      v13 = [v5 slotValue];
      v14 = [v5 intentName];
      v15 = [v5 appBundleId];
      v16 = [v5 interactionId];
      [v5 absoluteTimestamp];
      self = [(BMSiriExecutionEvent *)self initWithTaskID:v6 taskStep:v9 statusReason:v12 slotValue:v13 intentName:v14 appBundleId:v15 interactionId:v16 absoluteTimestamp:?];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSiriExecutionEvent initWithProto:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMSiriExecutionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBSiriExecutionEvent alloc] initWithData:v4];

    self = [(BMSiriExecutionEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(BMSiriExecutionEvent *)self taskId];
  [v3 setTaskId:v4];

  v5 = [(BMSiriExecutionEvent *)self taskStep];
  if (v5 >= 0x5E)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(BMSiriExecutionEvent *)v5 proto];
    }

    v11 = 0;
  }

  else
  {
    [v3 setTaskStep:v5];
    v6 = [(BMSiriExecutionEvent *)self statusReason];
    [v3 setStatusReason:v6];

    v7 = [(BMSiriExecutionEvent *)self slotValue];
    [v3 setSlotValue:v7];

    v8 = [(BMSiriExecutionEvent *)self intentName];
    [v3 setIntentName:v8];

    v9 = [(BMSiriExecutionEvent *)self appBundleId];
    [v3 setAppBundleId:v9];

    v10 = [(BMSiriExecutionEvent *)self interactionId];
    [v3 setInteractionId:v10];

    [(BMSiriExecutionEvent *)self absoluteTimestamp];
    [v3 setAbsoluteTimestamp:?];
    v11 = v3;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(BMSiriExecutionEvent *)self taskId];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMSiriExecutionEvent taskStep](self, "taskStep")}];
  v6 = [v5 hash];
  v7 = [(BMSiriExecutionEvent *)self statusReason];
  v8 = v4 ^ [v7 hash];
  v9 = [(BMSiriExecutionEvent *)self slotValue];
  v10 = v8 ^ [v9 hash];
  v11 = [(BMSiriExecutionEvent *)self intentName];
  v12 = v10 ^ [v11 hash];
  v13 = [(BMSiriExecutionEvent *)self appBundleId];
  v14 = v12 ^ [v13 hash];
  v15 = [(BMSiriExecutionEvent *)self interactionId];
  v16 = v6 ^ v14 ^ [v15 hash];
  v17 = MEMORY[0x1E696AD98];
  [(BMSiriExecutionEvent *)self absoluteTimestamp];
  v18 = [v17 numberWithDouble:?];
  v19 = [v18 hash];

  return v16 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    taskId = self->_taskId;
    v7 = [v5 taskId];
    if (-[NSString isEqual:](taskId, "isEqual:", v7) && (taskStep = self->_taskStep, taskStep == [v5 taskStep]))
    {
      statusReason = self->_statusReason;
      v10 = [v5 statusReason];
      if ([(NSString *)statusReason isEqual:v10])
      {
        slotValue = self->_slotValue;
        v12 = [v5 slotValue];
        if ([(NSString *)slotValue isEqual:v12])
        {
          intentName = self->_intentName;
          v14 = [v5 intentName];
          if ([(NSString *)intentName isEqual:v14])
          {
            appBundleId = self->_appBundleId;
            v16 = [v5 appBundleId];
            if ([(NSString *)appBundleId isEqual:v16])
            {
              interactionId = self->_interactionId;
              v18 = [v5 interactionId];
              if ([(NSString *)interactionId isEqual:v18])
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