@interface BMEntityRelationshipStream
- (BMEntityRelationshipStream)init;
- (id)publisher;
@end

@implementation BMEntityRelationshipStream

- (BMEntityRelationshipStream)init
{
  v8.receiver = self;
  v8.super_class = BMEntityRelationshipStream;
  v2 = [(BMEntityRelationshipStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    v4 = [(BMEntityRelationshipStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:v4 eventDataClass:objc_opt_class()];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMEntityRelationshipStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end