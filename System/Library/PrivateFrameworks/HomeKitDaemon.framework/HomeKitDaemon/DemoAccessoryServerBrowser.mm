@interface DemoAccessoryServerBrowser
- (void)discoverAccessoryServerWithIdentifier:(id)identifier;
- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)startDiscoveringAccessoryServers;
- (void)stopDiscoveringAccessoryServers;
@end

@implementation DemoAccessoryServerBrowser

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate) = delegate;
  swift_unknownObjectRetain();
  queueCopy = queue;
  selfCopy = self;
  swift_unknownObjectRelease();
  v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue) = queueCopy;
}

- (void)startDiscoveringAccessoryServers
{
  selfCopy = self;
  sub_22956C548();
}

- (void)stopDiscoveringAccessoryServers
{
  selfCopy = self;
  sub_22956D0FC();
}

- (void)discoverAccessoryServerWithIdentifier:(id)identifier
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  selfCopy = self;
  sub_22956D6F0(v4, v6);
}

- (void)matchAccessoryServerWithSetupID:(id)d serverIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_22A4DD5EC();
  v9 = v8;
  v10 = sub_22A4DD5EC();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_22957A11C(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end