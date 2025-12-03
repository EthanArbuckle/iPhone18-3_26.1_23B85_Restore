@interface RemoteViewControllerClient
- (_TtC22HomePlatformSettingsUI26RemoteViewControllerClient)init;
- (void)hostViewController:(id)controller didBeginHosting:(id)hosting;
- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error;
- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error;
- (void)hostViewController:(id)controller didPrepareToHost:(id)host;
@end

@implementation RemoteViewControllerClient

- (_TtC22HomePlatformSettingsUI26RemoteViewControllerClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewController:(id)controller didBeginHosting:(id)hosting
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  sub_25429DED4();
}

- (void)hostViewController:(id)controller didEndHosting:(id)hosting error:(id)error
{
  controllerCopy = controller;
  hostingCopy = hosting;
  selfCopy = self;
  errorCopy = error;
  sub_25429E080(error);
}

- (void)hostViewController:(id)controller didFailToHost:(id)host error:(id)error
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  errorCopy = error;
  sub_25429E118(error);
}

- (void)hostViewController:(id)controller didPrepareToHost:(id)host
{
  controllerCopy = controller;
  hostCopy = host;
  selfCopy = self;
  sub_25429E5C8();
}

@end