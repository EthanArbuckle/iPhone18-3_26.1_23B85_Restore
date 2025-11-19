@interface SupportAppStoreComponent.AppStoreCoordinator
- (_TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator)init;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidBeginRequest:;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation SupportAppStoreComponent.AppStoreCoordinator

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_25ADDC614(v4);
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_25ADDE770(v8);
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_25ADDC92C(v6, v7);
}

- (_TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)lockupViewDidBeginRequest:
{
  if (qword_27FA12490 != -1)
  {
    swift_once();
  }

  v0 = sub_25AE102DC();
  __swift_project_value_buffer(v0, qword_27FA1CFB0);
  oslog = sub_25AE102BC();
  v1 = sub_25AE10C4C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_25ADDA000, oslog, v1, "Started Request", v2, 2u);
    MEMORY[0x25F857CD0](v2, -1, -1);
  }
}

@end