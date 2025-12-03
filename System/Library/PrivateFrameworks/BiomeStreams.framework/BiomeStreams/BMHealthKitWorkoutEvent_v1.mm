@interface BMHealthKitWorkoutEvent_v1
- (BMHealthKitWorkoutEvent_v1)initWithProto:(id)proto;
@end

@implementation BMHealthKitWorkoutEvent_v1

- (BMHealthKitWorkoutEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      isFirstPartyDonation = [v5 isFirstPartyDonation];
      isIndoor = [v5 isIndoor];
      activityType = [v5 activityType];
      activityUUID = [v5 activityUUID];
      eventType = [v5 eventType];
      v11 = eventType;
      if (eventType >= 5)
      {
        v14 = __biome_log_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [BMHealthKitWorkoutEvent_v1 initWithProto:v11];
        }

        v12 = 4;
      }

      else
      {
        v12 = qword_184D27A18[eventType];
      }

      self = [(BMHealthKitWorkoutEvent *)self initWithIsFirstPartyDonation:isFirstPartyDonation isIndoor:isIndoor activityType:activityType activityUUID:activityUUID eventType:v12 isUpdate:[v5 isUpdate]];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMHealthKitWorkoutEvent initWithProto:];
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