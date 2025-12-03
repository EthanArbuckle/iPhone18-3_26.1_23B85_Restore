@interface BMIntentEvent_v12
- (BMIntentEvent_v12)initWithProto:(id)proto;
@end

@implementation BMIntentEvent_v12

- (BMIntentEvent_v12)initWithProto:(id)proto
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
      bundleID = [v5 bundleID];
      sourceId = [v5 sourceId];
      intentClass = [v5 intentClass];
      intentVerb = [v5 intentVerb];
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

      interaction = [v5 interaction];
      itemID = [v5 itemID];
      donatedBySiri = [v5 donatedBySiri];
      v13 = interactionDirectionWithPB([v5 interactionDirection]);
      groupIdentifier = [v5 groupIdentifier];
      v23.receiver = self;
      v23.super_class = BMIntentEvent_v12;
      v15 = [(BMIntentEvent *)&v23 initWithAbsoluteTime:bundleID bundleId:sourceId sourceId:intentClass intentClass:intentVerb intentVerb:v18 intentType:v8 intentHandlingStatus:v7 interaction:interaction itemID:itemID donatedBySiri:donatedBySiri interactionDirection:v13 groupIdentifier:groupIdentifier];

      self = v15;
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMIntentEvent_v12 initWithProto:];
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