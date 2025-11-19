@interface IMPerfSinkPair
- (IMPerfSinkPair)initWithBehavior:(id)a3 sink:(id)a4;
@end

@implementation IMPerfSinkPair

- (IMPerfSinkPair)initWithBehavior:(id)a3 sink:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMPerfSinkPair;
  v9 = [(IMPerfSinkPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_behavior, a3);
    objc_storeStrong(&v10->_sink, a4);
  }

  return v10;
}

@end