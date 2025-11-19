@interface BMUserActivityMetadataStream
- (BMUserActivityMetadataStream)init;
- (id)publisher;
@end

@implementation BMUserActivityMetadataStream

- (BMUserActivityMetadataStream)init
{
  v8.receiver = self;
  v8.super_class = BMUserActivityMetadataStream;
  v2 = [(BMUserActivityMetadataStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    v4 = [(BMUserActivityMetadataStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:v4 eventDataClass:objc_opt_class()];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMUserActivityMetadataStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end