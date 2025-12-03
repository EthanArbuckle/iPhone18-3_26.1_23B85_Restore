@interface BMFindMyLocationChangeEvent_v1
- (BMFindMyLocationChangeEvent_v1)initWithProto:(id)proto;
@end

@implementation BMFindMyLocationChangeEvent_v1

- (BMFindMyLocationChangeEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      idsHandle = [v5 idsHandle];
      locationChangeType = [v5 locationChangeType];
      v8 = locationChangeType;
      if (locationChangeType >= 4)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMFindMyLocationChangeEvent_v1 initWithProto:v8];
        }

        v9 = 3;
      }

      else
      {
        v9 = qword_184D27548[locationChangeType];
      }

      v12 = activityTypeWithState([v5 activityState]);
      v13 = MEMORY[0x1E696AD98];
      [v5 latitude];
      v14 = [v13 numberWithDouble:?];
      v15 = MEMORY[0x1E696AD98];
      [v5 longitude];
      v16 = [v15 numberWithDouble:?];
      name = [v5 name];
      self = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:idsHandle locationChangeType:v9 motionActivityState:v12 latitude:v14 longitude:v16 name:name];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMFindMyLocationChangeEvent initWithProto:];
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