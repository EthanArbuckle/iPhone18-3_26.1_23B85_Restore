@interface LegacyMediaAuthenticationProtocolHandler
- (_TtC12GameStoreKit40LegacyMediaAuthenticationProtocolHandler)init;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation LegacyMediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  requestCopy = request;
  taskCopy = task;
  selfCopy = self;
  sub_24F2D85AC(requestCopy, taskCopy, redirect, error);
}

- (_TtC12GameStoreKit40LegacyMediaAuthenticationProtocolHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return [(AMSURLProtocolHandler *)&v3 init];
}

@end