@interface DemoAccessoryServerBrowser
- (void)discoverAccessoryServerWithIdentifier:(id)a3;
- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
@end

@implementation DemoAccessoryServerBrowser

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate) = a3;
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  swift_unknownObjectRelease();
  v9 = *(&v8->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue);
  *(&v8->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue) = v7;
}

- (void)startDiscoveringAccessoryServers
{
  v2 = self;
  sub_22956C548();
}

- (void)stopDiscoveringAccessoryServers
{
  v2 = self;
  sub_22956D0FC();
}

- (void)discoverAccessoryServerWithIdentifier:(id)a3
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  v7 = self;
  sub_22956D6F0(v4, v6);
}

- (void)matchAccessoryServerWithSetupID:(id)a3 serverIdentifier:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_22A4DD5EC();
  v9 = v8;
  v10 = sub_22A4DD5EC();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_22957A11C(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end