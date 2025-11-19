@interface BMSleepModeEvent_v3
- (BMSleepModeEvent_v3)initWithProto:(id)a3;
@end

@implementation BMSleepModeEvent_v3

- (BMSleepModeEvent_v3)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 sleepModeState];
      v7 = v6;
      if (v6 >= 4)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMSleepModeEvent_v3 initWithProto:v7];
        }

        v8 = 3;
      }

      else
      {
        v8 = qword_184D27BE8[v6];
      }

      v11 = BMSleepModeChangeReasonFromReason([v5 sleepModeChangeReason]);
      v12 = [v5 hasExpectedEndDate];
      if (v12)
      {
        v13 = MEMORY[0x1E695DF00];
        [v5 expectedEndDate];
        v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v14 = 0;
      }

      v17.receiver = self;
      v17.super_class = BMSleepModeEvent_v3;
      v15 = [(BMSleepModeEvent *)&v17 initWithSleepModeState:v8 sleepModeChangeReason:v11 expectedEndDate:v14];
      if (v12)
      {
      }

      self = v15;
      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSleepModeEvent initWithProto:];
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end