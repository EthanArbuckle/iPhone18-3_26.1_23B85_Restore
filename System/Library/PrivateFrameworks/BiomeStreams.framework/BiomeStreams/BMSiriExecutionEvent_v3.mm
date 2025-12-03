@interface BMSiriExecutionEvent_v3
- (BMSiriExecutionEvent_v3)initWithProto:(id)proto;
@end

@implementation BMSiriExecutionEvent_v3

- (BMSiriExecutionEvent_v3)initWithProto:(id)proto
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
      if (taskStep >= 0x5F)
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
        v9 = qword_184D275D8[taskStep];
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

@end