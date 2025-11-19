@interface BMAlarmEvent_v2
- (BMAlarmEvent_v2)initWithProto:(id)a3;
@end

@implementation BMAlarmEvent_v2

- (BMAlarmEvent_v2)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
      v13 = [v5 alarmID];
      v14 = [v12 initWithUUIDString:v13];
      self = [(BMAlarmEvent *)self initWithEventType:v7 lastEventType:v10 alarmID:v14 isSleepAlarm:[v5 isSleepAlarm]];

      v8 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMAlarmEvent initWithProto:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end