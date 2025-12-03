@interface BMScreenSharingEvent_v2
- (BMScreenSharingEvent_v2)initWithProto:(id)proto;
@end

@implementation BMScreenSharingEvent_v2

- (BMScreenSharingEvent_v2)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMScreenSharingEvent initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_15;
    }

    v5 = protoCopy;
    isStart = [v5 isStart];
    type = [v5 type];
    if (type != 1)
    {
      v8 = type;
      if (type == 2)
      {
        v9 = 1;
LABEL_14:
        v13.receiver = self;
        v13.super_class = BMScreenSharingEvent_v2;
        self = [(BMScreenSharingEvent *)&v13 initWithIsStart:isStart type:v9];
        selfCopy = self;
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

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

@end