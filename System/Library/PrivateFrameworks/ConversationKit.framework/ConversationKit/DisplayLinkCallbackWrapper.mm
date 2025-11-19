@interface DisplayLinkCallbackWrapper
- (void)displayLinkCallback:(id)a3;
@end

@implementation DisplayLinkCallbackWrapper

- (void)displayLinkCallback:(id)a3
{
  v3 = a3;

  DisplayLinkCallbackWrapper.displayLinkCallback(_:)(v3);
}

@end