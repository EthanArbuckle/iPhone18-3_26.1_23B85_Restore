@interface BMUserFocusComputedModeEvent_v2
- (BMUserFocusComputedModeEvent_v2)initWithProto:(id)proto;
@end

@implementation BMUserFocusComputedModeEvent_v2

- (BMUserFocusComputedModeEvent_v2)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      mode = [v5 mode];
      semanticModeIdentifier = [v5 semanticModeIdentifier];
      starting = [v5 starting];
      updated = BMUserFocusComputedModeUpdateReasonFromReason([v5 modeUpdateReason]);
      v10 = [v5 modeSemanticType]- 1;
      if (v10 >= 0xA)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [BMUserFocusComputedModeEvent_v2 initWithProto:];
        }

        v11 = 0;
      }

      else
      {
        v11 = v10 - 1;
      }

      v14 = BMUserFocusComputedModeUpdateSourceFromSource([v5 modeUpdateSource]);
      v17.receiver = self;
      v17.super_class = BMUserFocusComputedModeEvent_v2;
      v15 = [(BMUserFocusComputedModeEvent *)&v17 initWithMode:mode semanticModeIdentifier:semanticModeIdentifier starting:starting modeUpdateReason:updated modeSemanticType:v11 modeUpdateSource:v14];

      self = v15;
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserFocusComputedModeEvent initWithProto:];
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