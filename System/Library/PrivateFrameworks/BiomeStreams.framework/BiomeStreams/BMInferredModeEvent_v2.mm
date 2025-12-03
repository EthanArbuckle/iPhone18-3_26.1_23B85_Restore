@interface BMInferredModeEvent_v2
- (BMInferredModeEvent_v2)initWithProto:(id)proto;
@end

@implementation BMInferredModeEvent_v2

- (BMInferredModeEvent_v2)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      [v5 absoluteTimestamp];
      v7 = v6;
      modeIdentifier = [v5 modeIdentifier];
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
      originBundleId = [v5 originBundleId];
      originAnchorType = [v5 originAnchorType];
      isAutomationEnabled = [v5 isAutomationEnabled];
      uiLocation = [v5 uiLocation];
      isStart = [v5 isStart];
      [v5 confidenceScore];
      v15 = v14;
      uuid = [v5 uuid];
      serializedTriggers = [v5 serializedTriggers];
      shouldSuggestTriggers = [v5 shouldSuggestTriggers];
      modeType = [v5 modeType];
      if (modeType >= 0x12)
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
        v20 = qword_184D27AE0[modeType];
      }

      userModeName = [v5 userModeName];
      LOBYTE(v25) = shouldSuggestTriggers;
      LOBYTE(v24) = isStart;
      self = [(BMInferredModeEvent *)self initWithAbsoluteTimestamp:modeIdentifier modeUUID:v28 origin:originBundleId originBundleId:originAnchorType originAnchorType:isAutomationEnabled isAutomationEnabled:uiLocation uiLocation:v7 isStart:v15 confidenceScore:v24 suggestionUUID:uuid serializedTriggers:serializedTriggers shouldSuggestTriggers:v25 modeType:v20 userModeName:userModeName];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMInferredModeEvent initWithProto:];
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