@interface CHUISRemoteWidgetLaunchRequest
- (CHUISRemoteWidgetLaunchRequest)init;
- (CHUISRemoteWidgetLaunchRequest)initWithData:(id)data;
- (void)setAction:(id)action;
- (void)setExtensionIdentity:(id)identity;
@end

@implementation CHUISRemoteWidgetLaunchRequest

- (void)setExtensionIdentity:(id)identity
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity);
  *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity) = identity;
  identityCopy = identity;
}

- (void)setAction:(id)action
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action);
  *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action) = action;
  actionCopy = action;
}

- (CHUISRemoteWidgetLaunchRequest)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v4 = sub_1D9326824();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  return sub_1D92DE060(v4, v6);
}

- (CHUISRemoteWidgetLaunchRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end