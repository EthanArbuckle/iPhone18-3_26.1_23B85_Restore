@interface CHUISRemoteWidgetLaunchRequest
- (CHUISRemoteWidgetLaunchRequest)init;
- (CHUISRemoteWidgetLaunchRequest)initWithData:(id)a3;
- (void)setAction:(id)a3;
- (void)setExtensionIdentity:(id)a3;
@end

@implementation CHUISRemoteWidgetLaunchRequest

- (void)setExtensionIdentity:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity);
  *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_extensionIdentity) = a3;
  v3 = a3;
}

- (void)setAction:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action);
  *(&self->super.isa + OBJC_IVAR___CHUISRemoteWidgetLaunchRequest_action) = a3;
  v3 = a3;
}

- (CHUISRemoteWidgetLaunchRequest)initWithData:(id)a3
{
  if (a3)
  {
    v3 = a3;
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