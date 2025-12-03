@interface JPCallbackStream
- (JPCallbackStream)initWithReadCallback:(id)callback seekForwardCallback:(id)forwardCallback seekToEndCallback:(id)endCallback;
@end

@implementation JPCallbackStream

- (JPCallbackStream)initWithReadCallback:(id)callback seekForwardCallback:(id)forwardCallback seekToEndCallback:(id)endCallback
{
  callbackCopy = callback;
  forwardCallbackCopy = forwardCallback;
  endCallbackCopy = endCallback;
  JetPackStreamCreate();
}

@end