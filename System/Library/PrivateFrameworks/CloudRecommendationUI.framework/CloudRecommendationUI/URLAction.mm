@interface URLAction
- (_TtC21CloudRecommendationUI9URLAction)init;
- (void)liftUIPresenterDidCancelWithUserInfo:(id)info;
- (void)liftUIPresenterDidCompleteWithUserInfo:(id)info;
- (void)liftUIPresenterDidLoadWithSuccess:(BOOL)success error:(id)error;
- (void)remoteUIFlowManager:(id)manager didCompleteFlowWithSuccess:(BOOL)success error:(id)error;
- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error;
@end

@implementation URLAction

- (void)liftUIPresenterDidLoadWithSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_243ABA428(error);
}

- (void)liftUIPresenterDidCompleteWithUserInfo:(id)info
{
  if (info)
  {
    v4 = sub_243AC27D8();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_243AB9080(v4);
}

- (void)liftUIPresenterDidCancelWithUserInfo:(id)info
{
  if (info)
  {
    sub_243AC27D8();
  }

  selfCopy = self;
  sub_243ABA5DC();
}

- (void)remoteUIFlowManager:(id)manager didCompleteFlowWithSuccess:(BOOL)success error:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_243ABA72C(error);
}

- (void)remoteUIFlowManager:(id)manager didDismissWithError:(id)error
{
  managerCopy = manager;
  selfCopy = self;
  errorCopy = error;
  sub_243ABAA04(error);
}

- (_TtC21CloudRecommendationUI9URLAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end