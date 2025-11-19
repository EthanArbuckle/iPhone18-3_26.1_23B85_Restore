@interface BMTextInputSessionEvent_v1
- (BMTextInputSessionEvent_v1)initWithProto:(id)a3;
@end

@implementation BMTextInputSessionEvent_v1

- (BMTextInputSessionEvent_v1)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E696AB80]);
      v7 = MEMORY[0x1E695DF00];
      [v5 timestamp];
      v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      [v5 duration];
      v9 = [v6 initWithStartDate:v8 duration:?];
      v10 = [v5 bundleID];
      v11 = [v5 sessionType];
      v12 = v11;
      if (v11 >= 5)
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
        v13 = qword_184D275A0[v11];
      }

      self = [(BMTextInputSessionEvent *)self initWithDateInterval:v9 bundleID:v10 sessionType:v13];

      v14 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMTextInputSessionEvent initWithProto:];
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end