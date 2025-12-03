@interface BMAlarmEvent_v2
- (BMAlarmEvent_v2)initWithProto:(id)proto;
@end

@implementation BMAlarmEvent_v2

- (BMAlarmEvent_v2)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = [v5 eventType]- 1;
      if (v6 >= 6)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMAlarmEvent_v2 initWithProto:];
        }

        v7 = 1;
      }

      else
      {
        v7 = qword_184D27CC0[v6];
      }

      v10 = [v5 lastEventType]- 1;
      if (v10 >= 0xB)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMAlarmEvent_v2 initWithProto:];
        }

        v10 = 0;
      }

      v12 = objc_alloc(MEMORY[0x1E696AFB0]);
      alarmID = [v5 alarmID];
      v14 = [v12 initWithUUIDString:alarmID];
      self = [(BMAlarmEvent *)self initWithEventType:v7 lastEventType:v10 alarmID:v14 isSleepAlarm:[v5 isSleepAlarm]];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMAlarmEvent initWithProto:];
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