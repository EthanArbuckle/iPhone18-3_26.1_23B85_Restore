@interface DisplayLinkCallbackWrapper
- (void)displayLinkCallback:(id)callback;
@end

@implementation DisplayLinkCallbackWrapper

- (void)displayLinkCallback:(id)callback
{
  callbackCopy = callback;

  DisplayLinkCallbackWrapper.displayLinkCallback(_:)(callbackCopy);
}

@end