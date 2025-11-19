@interface BMMindfulnessSessionEvent_v1
- (BMMindfulnessSessionEvent_v1)initWithProto:(id)a3;
@end

@implementation BMMindfulnessSessionEvent_v1

- (BMMindfulnessSessionEvent_v1)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 sessionType];
      v7 = v6;
      if (v6 >= 4)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMMindfulnessSessionEvent_v1 initWithProto:v7];
        }

        v8 = 3;
      }

      else
      {
        v8 = qword_184D279F8[v6];
      }

      self = [(BMMindfulnessSessionEvent *)self initWithSessionType:v8 stateType:typeWithBMPBMindfulnessSessionStateType([v5 stateType])];
      v9 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMindfulnessSessionEvent initWithProto:];
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