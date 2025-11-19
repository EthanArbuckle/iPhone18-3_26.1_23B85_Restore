@interface _BMCommunicationSafetyResultWithoutImageEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (_BMCommunicationSafetyResultWithoutImageEvent)initWithProtoData:(id)a3;
@end

@implementation _BMCommunicationSafetyResultWithoutImageEvent

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = a1;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v7 = _BMCommunicationSafetyResultWithoutImageEvent_v2;
LABEL_5:
    v8 = [[v7 alloc] initWithProtoData:v6];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[BMCommunicationSafetyResultEvent eventWithData:dataVersion:];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (_BMCommunicationSafetyResultWithoutImageEvent)initWithProtoData:(id)a3
{
  v4.receiver = self;
  v4.super_class = _BMCommunicationSafetyResultWithoutImageEvent;
  return [(BMCommunicationSafetyResultEvent *)&v4 initWithProtoData:a3 skipImage:1];
}

@end