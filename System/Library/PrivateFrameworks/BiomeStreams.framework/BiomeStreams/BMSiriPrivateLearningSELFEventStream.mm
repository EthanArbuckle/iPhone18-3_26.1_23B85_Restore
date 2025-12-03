@interface BMSiriPrivateLearningSELFEventStream
- (BMSiriPrivateLearningSELFEventStream)init;
- (id)publisher;
@end

@implementation BMSiriPrivateLearningSELFEventStream

- (BMSiriPrivateLearningSELFEventStream)init
{
  v8.receiver = self;
  v8.super_class = BMSiriPrivateLearningSELFEventStream;
  v2 = [(BMSiriPrivateLearningSELFEventStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    identifier = [(BMSiriPrivateLearningSELFEventStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:identifier eventDataClass:objc_opt_class()];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  identifier = [(BMSiriPrivateLearningSELFEventStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:identifier streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end