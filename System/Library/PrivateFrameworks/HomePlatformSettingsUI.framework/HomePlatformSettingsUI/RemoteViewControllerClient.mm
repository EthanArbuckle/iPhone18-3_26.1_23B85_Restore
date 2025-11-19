@interface RemoteViewControllerClient
- (_TtC22HomePlatformSettingsUI26RemoteViewControllerClient)init;
- (void)hostViewController:(id)a3 didBeginHosting:(id)a4;
- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5;
- (void)hostViewController:(id)a3 didFailToHost:(id)a4 error:(id)a5;
- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4;
@end

@implementation RemoteViewControllerClient

- (_TtC22HomePlatformSettingsUI26RemoteViewControllerClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)hostViewController:(id)a3 didBeginHosting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_25429DED4();
}

- (void)hostViewController:(id)a3 didEndHosting:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_25429E080(a5);
}

- (void)hostViewController:(id)a3 didFailToHost:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_25429E118(a5);
}

- (void)hostViewController:(id)a3 didPrepareToHost:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_25429E5C8();
}

@end