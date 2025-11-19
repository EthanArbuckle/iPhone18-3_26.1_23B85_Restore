@interface LegacyMediaAuthenticationProtocolHandler
- (_TtC12GameStoreKit40LegacyMediaAuthenticationProtocolHandler)init;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation LegacyMediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_24F2D85AC(v10, v11, a5, a6);
}

- (_TtC12GameStoreKit40LegacyMediaAuthenticationProtocolHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LegacyMediaAuthenticationProtocolHandler();
  return [(AMSURLProtocolHandler *)&v3 init];
}

@end