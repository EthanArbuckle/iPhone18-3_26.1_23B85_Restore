@interface BMSiriExecutionEvent_v3
- (BMSiriExecutionEvent_v3)initWithProto:(id)a3;
@end

@implementation BMSiriExecutionEvent_v3

- (BMSiriExecutionEvent_v3)initWithProto:(id)a3
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
      if (v7 >= 0x5F)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSiriExecutionEvent_v3 initWithProto:v8];
        }

        v9 = 94;
      }

      else
      {
        v9 = qword_184D275D8[v7];
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

@end