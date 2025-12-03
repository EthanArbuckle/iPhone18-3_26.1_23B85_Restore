@interface MockCall
- (_TtC12GameStoreKit8MockCall)initWithCall:(id)call;
- (_TtC12GameStoreKit8MockCall)initWithCoder:(id)coder;
- (_TtC12GameStoreKit8MockCall)initWithNotificationCenter:(id)center;
- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier;
- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device;
- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center;
@end

@implementation MockCall

- (_TtC12GameStoreKit8MockCall)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit8MockCall_mockStatus) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12GameStoreKit8MockCall_mockIsConnected) = 1;
  result = sub_24F92CA88();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit8MockCall)initWithCall:(id)call
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit8MockCall)initWithNotificationCenter:(id)center
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12GameStoreKit8MockCall)initWithUniqueProxyIdentifier:(id)identifier endpointOnCurrentDevice:(BOOL)device notificationCenter:(id)center
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end