@interface MediaAuthenticationProtocolHandler
- (_TtC12GameStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)service;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation MediaAuthenticationProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  requestCopy = request;
  taskCopy = task;
  selfCopy = self;
  sub_24F2D88CC(requestCopy, taskCopy, redirect, error);
}

- (_TtC12GameStoreKit34MediaAuthenticationProtocolHandler)initWithTokenService:(id)service
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(AMSMediaProtocolHandler *)&v5 initWithTokenService:service];
}

@end