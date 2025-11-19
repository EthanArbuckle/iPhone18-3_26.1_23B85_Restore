@interface BMScreenSharingEvent_v2
- (BMScreenSharingEvent_v2)initWithProto:(id)a3;
@end

@implementation BMScreenSharingEvent_v2

- (BMScreenSharingEvent_v2)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMScreenSharingEvent initWithProto:];
      }

      v10 = 0;
      goto LABEL_15;
    }

    v5 = v4;
    v6 = [v5 isStart];
    v7 = [v5 type];
    if (v7 != 1)
    {
      v8 = v7;
      if (v7 == 2)
      {
        v9 = 1;
LABEL_14:
        v13.receiver = self;
        v13.super_class = BMScreenSharingEvent_v2;
        self = [(BMScreenSharingEvent *)&v13 initWithIsStart:v6 type:v9];
        v10 = self;
LABEL_15:

        goto LABEL_16;
      }

      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BMScreenSharingEvent_v2 initWithProto:v8];
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

@end