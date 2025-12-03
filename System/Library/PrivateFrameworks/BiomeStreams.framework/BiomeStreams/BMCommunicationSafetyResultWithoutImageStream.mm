@interface BMCommunicationSafetyResultWithoutImageStream
- (BMCommunicationSafetyResultWithoutImageStream)init;
- (id)publisher;
@end

@implementation BMCommunicationSafetyResultWithoutImageStream

- (BMCommunicationSafetyResultWithoutImageStream)init
{
  v8.receiver = self;
  v8.super_class = BMCommunicationSafetyResultWithoutImageStream;
  v2 = [(BMCommunicationSafetyResultWithoutImageStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    identifier = [(BMCommunicationSafetyResultWithoutImageStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:identifier eventDataClass:NSClassFromString(&cfstr_Bmcommunicatio.isa)];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMCommunicationSafetyResultWithoutImageStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end