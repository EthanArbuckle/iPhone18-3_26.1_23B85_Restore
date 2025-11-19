@interface BMIntentEvent_v12
- (BMIntentEvent_v12)initWithProto:(id)a3;
@end

@implementation BMIntentEvent_v12

- (BMIntentEvent_v12)initWithProto:(id)a3
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
      v22 = [v5 bundleID];
      v21 = [v5 sourceId];
      v20 = [v5 intentClass];
      v19 = [v5 intentVerb];
      v18 = typeWithBMPBIntentType([v5 intentType]);
      v8 = [v5 intentHandlingStatus]- 1;
      if (v8 >= 7)
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMIntentEvent_v12 initWithProto:];
        }

        v8 = 0;
      }

      v10 = [v5 interaction];
      v11 = [v5 itemID];
      v12 = [v5 donatedBySiri];
      v13 = interactionDirectionWithPB([v5 interactionDirection]);
      v14 = [v5 groupIdentifier];
      v23.receiver = self;
      v23.super_class = BMIntentEvent_v12;
      v15 = [(BMIntentEvent *)&v23 initWithAbsoluteTime:v22 bundleId:v21 sourceId:v20 intentClass:v19 intentVerb:v18 intentType:v8 intentHandlingStatus:v7 interaction:v10 itemID:v11 donatedBySiri:v12 interactionDirection:v13 groupIdentifier:v14];

      self = v15;
      v16 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMIntentEvent_v12 initWithProto:];
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end