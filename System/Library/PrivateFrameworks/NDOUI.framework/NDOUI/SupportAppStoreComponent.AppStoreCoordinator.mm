@interface SupportAppStoreComponent.AppStoreCoordinator
- (_TtCV5NDOUIP33_6BC22319AD482AF5176C41E8E708800424SupportAppStoreComponent19AppStoreCoordinator)init;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation SupportAppStoreComponent.AppStoreCoordinator

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_25ADDC614(requestCopy);
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_25ADDE770(errorCopy);
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_25ADDC92C(viewCopy, changeCopy);
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