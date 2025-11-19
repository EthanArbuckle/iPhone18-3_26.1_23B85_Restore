@interface BMFindMyLocationChangeEvent_v1
- (BMFindMyLocationChangeEvent_v1)initWithProto:(id)a3;
@end

@implementation BMFindMyLocationChangeEvent_v1

- (BMFindMyLocationChangeEvent_v1)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 idsHandle];
      v7 = [v5 locationChangeType];
      v8 = v7;
      if (v7 >= 4)
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
        v9 = qword_184D27548[v7];
      }

      v12 = activityTypeWithState([v5 activityState]);
      v13 = MEMORY[0x1E696AD98];
      [v5 latitude];
      v14 = [v13 numberWithDouble:?];
      v15 = MEMORY[0x1E696AD98];
      [v5 longitude];
      v16 = [v15 numberWithDouble:?];
      v17 = [v5 name];
      self = [(BMFindMyLocationChangeEvent *)self initWithIDSHandle:v6 locationChangeType:v9 motionActivityState:v12 latitude:v14 longitude:v16 name:v17];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMFindMyLocationChangeEvent initWithProto:];
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