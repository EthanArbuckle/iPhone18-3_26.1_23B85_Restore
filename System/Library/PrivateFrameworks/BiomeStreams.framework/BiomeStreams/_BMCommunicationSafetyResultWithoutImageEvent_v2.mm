@interface _BMCommunicationSafetyResultWithoutImageEvent_v2
- (_BMCommunicationSafetyResultWithoutImageEvent_v2)initWithProtoData:(id)data;
@end

@implementation _BMCommunicationSafetyResultWithoutImageEvent_v2

- (_BMCommunicationSafetyResultWithoutImageEvent_v2)initWithProtoData:(id)data
{
  v4.receiver = self;
  v4.super_class = _BMCommunicationSafetyResultWithoutImageEvent_v2;
  return [(BMCommunicationSafetyResultEvent *)&v4 initWithProtoData:data skipImage:1];
}

@end