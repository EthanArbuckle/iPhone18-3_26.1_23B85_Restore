@interface BMUserFocusComputedModeEvent_v2
- (BMUserFocusComputedModeEvent_v2)initWithProto:(id)a3;
@end

@implementation BMUserFocusComputedModeEvent_v2

- (BMUserFocusComputedModeEvent_v2)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 mode];
      v7 = [v5 semanticModeIdentifier];
      v8 = [v5 starting];
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
      v15 = [(BMUserFocusComputedModeEvent *)&v17 initWithMode:v6 semanticModeIdentifier:v7 starting:v8 modeUpdateReason:updated modeSemanticType:v11 modeUpdateSource:v14];

      self = v15;
      v12 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserFocusComputedModeEvent initWithProto:];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end