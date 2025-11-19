@interface JPCallbackStream
- (JPCallbackStream)initWithReadCallback:(id)a3 seekForwardCallback:(id)a4 seekToEndCallback:(id)a5;
@end

@implementation JPCallbackStream

- (JPCallbackStream)initWithReadCallback:(id)a3 seekForwardCallback:(id)a4 seekToEndCallback:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  JetPackStreamCreate();
}

@end