@interface _BMCommunicationSafetyResultWithoutImageEvent_v2
- (_BMCommunicationSafetyResultWithoutImageEvent_v2)initWithProtoData:(id)a3;
@end

@implementation _BMCommunicationSafetyResultWithoutImageEvent_v2

- (_BMCommunicationSafetyResultWithoutImageEvent_v2)initWithProtoData:(id)a3
{
  v4.receiver = self;
  v4.super_class = _BMCommunicationSafetyResultWithoutImageEvent_v2;
  return [(BMCommunicationSafetyResultEvent *)&v4 initWithProtoData:a3 skipImage:1];
}

@end