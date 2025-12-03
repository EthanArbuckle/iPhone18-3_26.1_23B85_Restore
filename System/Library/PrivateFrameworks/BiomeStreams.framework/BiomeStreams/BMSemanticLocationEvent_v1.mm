@interface BMSemanticLocationEvent_v1
- (BMSemanticLocationEvent_v1)initWithProto:(id)proto;
@end

@implementation BMSemanticLocationEvent_v1

- (BMSemanticLocationEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v6 = typeFromBMPBSemanticLocationUserSpecificPlaceType([v5 userSpecificPlaceType]);
      placeType = [v5 placeType];
      v8 = placeType;
      if (placeType >= 4)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMSemanticLocationEvent_v1 initWithProto:v8];
        }

        v9 = 0;
      }

      else
      {
        v9 = placeType;
      }

      self = [(BMSemanticLocationEvent *)self initWithUserSpecificPlaceType:v6 placeType:v9 starting:[v5 starting]];
      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSemanticLocationEvent initWithProto:];
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