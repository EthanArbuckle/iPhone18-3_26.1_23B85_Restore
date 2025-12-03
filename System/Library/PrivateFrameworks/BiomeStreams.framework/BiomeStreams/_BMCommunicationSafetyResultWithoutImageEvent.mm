@interface _BMCommunicationSafetyResultWithoutImageEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (_BMCommunicationSafetyResultWithoutImageEvent)initWithProtoData:(id)data;
@end

@implementation _BMCommunicationSafetyResultWithoutImageEvent

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if (version == 2)
  {
    selfCopy = _BMCommunicationSafetyResultWithoutImageEvent_v2;
LABEL_5:
    v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
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

- (_BMCommunicationSafetyResultWithoutImageEvent)initWithProtoData:(id)data
{
  v4.receiver = self;
  v4.super_class = _BMCommunicationSafetyResultWithoutImageEvent;
  return [(BMCommunicationSafetyResultEvent *)&v4 initWithProtoData:data skipImage:1];
}

@end