@interface IMPerfSinkPair
- (IMPerfSinkPair)initWithBehavior:(id)behavior sink:(id)sink;
@end

@implementation IMPerfSinkPair

- (IMPerfSinkPair)initWithBehavior:(id)behavior sink:(id)sink
{
  behaviorCopy = behavior;
  sinkCopy = sink;
  v12.receiver = self;
  v12.super_class = IMPerfSinkPair;
  v9 = [(IMPerfSinkPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_behavior, behavior);
    objc_storeStrong(&v10->_sink, sink);
  }

  return v10;
}

@end