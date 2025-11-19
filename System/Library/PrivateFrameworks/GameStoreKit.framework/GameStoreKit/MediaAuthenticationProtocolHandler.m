@interface MediaAuthenticationProtocolHandler
- (_TtC12GameStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)a3;
- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6;
@end

@implementation MediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)a3 originalTask:(id)a4 redirect:(BOOL)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_24F2D88CC(v10, v11, a5, a6);
}

- (_TtC12GameStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AMSMediaProtocolHandler *)&v5 initWithTokenService:a3];
}

@end