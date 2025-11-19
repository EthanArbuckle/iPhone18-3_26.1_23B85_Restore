@interface BMSemanticLocationEvent_v1
- (BMSemanticLocationEvent_v1)initWithProto:(id)a3;
@end

@implementation BMSemanticLocationEvent_v1

- (BMSemanticLocationEvent_v1)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = typeFromBMPBSemanticLocationUserSpecificPlaceType([v5 userSpecificPlaceType]);
      v7 = [v5 placeType];
      v8 = v7;
      if (v7 >= 4)
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
        v9 = v7;
      }

      self = [(BMSemanticLocationEvent *)self initWithUserSpecificPlaceType:v6 placeType:v9 starting:[v5 starting]];
      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMSemanticLocationEvent initWithProto:];
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