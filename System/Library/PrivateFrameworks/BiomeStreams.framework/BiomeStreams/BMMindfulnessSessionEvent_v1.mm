@interface BMMindfulnessSessionEvent_v1
- (BMMindfulnessSessionEvent_v1)initWithProto:(id)proto;
@end

@implementation BMMindfulnessSessionEvent_v1

- (BMMindfulnessSessionEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      sessionType = [v5 sessionType];
      v7 = sessionType;
      if (sessionType >= 4)
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
        v8 = qword_184D279F8[sessionType];
      }

      self = [(BMMindfulnessSessionEvent *)self initWithSessionType:v8 stateType:typeWithBMPBMindfulnessSessionStateType([v5 stateType])];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMMindfulnessSessionEvent initWithProto:];
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