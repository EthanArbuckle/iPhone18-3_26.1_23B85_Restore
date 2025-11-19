@interface BMInferredModeEvent_v2
- (BMInferredModeEvent_v2)initWithProto:(id)a3;
@end

@implementation BMInferredModeEvent_v2

- (BMInferredModeEvent_v2)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 absoluteTimestamp];
      v7 = v6;
      v30 = [v5 modeIdentifier];
      v8 = [v5 origin]+ 1;
      if (v8 >= 0x13)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMInferredModeEvent_v2 initWithProto:];
        }

        v9 = -1;
      }

      else
      {
        v9 = qword_184D27A48[v8];
      }

      v28 = v9;
      v29 = [v5 originBundleId];
      v12 = [v5 originAnchorType];
      v27 = [v5 isAutomationEnabled];
      v26 = [v5 uiLocation];
      v13 = [v5 isStart];
      [v5 confidenceScore];
      v15 = v14;
      v16 = [v5 uuid];
      v17 = [v5 serializedTriggers];
      v18 = [v5 shouldSuggestTriggers];
      v19 = [v5 modeType];
      if (v19 >= 0x12)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [BMInferredModeEvent_v2 initWithProto:];
        }

        v20 = 1;
      }

      else
      {
        v20 = qword_184D27AE0[v19];
      }

      v22 = [v5 userModeName];
      LOBYTE(v25) = v18;
      LOBYTE(v24) = v13;
      self = [(BMInferredModeEvent *)self initWithAbsoluteTimestamp:v30 modeUUID:v28 origin:v29 originBundleId:v12 originAnchorType:v27 isAutomationEnabled:v26 uiLocation:v7 isStart:v15 confidenceScore:v24 suggestionUUID:v16 serializedTriggers:v17 shouldSuggestTriggers:v25 modeType:v20 userModeName:v22];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMInferredModeEvent initWithProto:];
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