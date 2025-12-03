@interface BMTextInputSessionEvent_v1
- (BMTextInputSessionEvent_v1)initWithProto:(id)proto;
@end

@implementation BMTextInputSessionEvent_v1

- (BMTextInputSessionEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      v7 = MEMORY[0x1E695DF00];
      [v5 timestamp];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      [v5 duration];
      v9 = [v6 initWithStartDate:v8 duration:?];
      bundleID = [v5 bundleID];
      sessionType = [v5 sessionType];
      v12 = sessionType;
      if (sessionType >= 5)
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [BMTextInputSessionEvent_v1 initWithProto:v12];
        }

        v13 = 4;
      }

      else
      {
        v13 = qword_184D275A0[sessionType];
      }

      self = [(BMTextInputSessionEvent *)self initWithDateInterval:v9 bundleID:bundleID sessionType:v13];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMTextInputSessionEvent initWithProto:];
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