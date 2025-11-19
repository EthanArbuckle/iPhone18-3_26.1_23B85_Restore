@interface BMMediaReactionStream
- (BMMediaReactionStream)init;
- (id)publisher;
@end

@implementation BMMediaReactionStream

- (BMMediaReactionStream)init
{
  v8.receiver = self;
  v8.super_class = BMMediaReactionStream;
  v2 = [(BMMediaReactionStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    v4 = [(BMMediaReactionStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:v4 eventDataClass:objc_opt_class()];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMMediaReactionStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end