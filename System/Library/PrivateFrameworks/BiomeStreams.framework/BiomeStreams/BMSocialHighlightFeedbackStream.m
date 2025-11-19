@interface BMSocialHighlightFeedbackStream
- (BMSocialHighlightFeedbackStream)init;
- (BMSocialHighlightFeedbackStream)initWithPruningPolicy:(id)a3;
- (id)publisher;
@end

@implementation BMSocialHighlightFeedbackStream

- (BMSocialHighlightFeedbackStream)init
{
  v8.receiver = self;
  v8.super_class = BMSocialHighlightFeedbackStream;
  v2 = [(BMSocialHighlightFeedbackStream *)&v8 init];
  if (v2)
  {
    v3 = [BMRestrictedStream alloc];
    v4 = [(BMSocialHighlightFeedbackStream *)v2 identifier];
    v5 = [(BMRestrictedStream *)v3 initWithIdentifier:v4 eventDataClass:objc_opt_class()];
    stream = v2->_stream;
    v2->_stream = v5;
  }

  return v2;
}

- (BMSocialHighlightFeedbackStream)initWithPruningPolicy:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BMSocialHighlightFeedbackStream;
  v5 = [(BMSocialHighlightFeedbackStream *)&v11 init];
  if (v5)
  {
    v6 = [BMRestrictedStream alloc];
    v7 = [(BMSocialHighlightFeedbackStream *)v5 identifier];
    v8 = [(BMRestrictedStream *)v6 initWithIdentifier:v7 segmentSize:*MEMORY[0x1E698F178] pruningPolicy:v4 eventDataClass:objc_opt_class()];
    stream = v5->_stream;
    v5->_stream = v8;
  }

  return v5;
}

- (id)publisher
{
  v3 = [BMDSLStreamPublisher alloc];
  v4 = [(BMSocialHighlightFeedbackStream *)self identifier];
  v5 = [(BMDSLStreamPublisher *)v3 initWithIdentifier:v4 streamType:2 eventDataClass:objc_opt_class()];

  return v5;
}

@end