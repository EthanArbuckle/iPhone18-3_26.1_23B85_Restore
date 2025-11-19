@interface URLAction
- (_TtC21CloudRecommendationUI9URLAction)init;
- (void)liftUIPresenterDidCancelWithUserInfo:(id)a3;
- (void)liftUIPresenterDidCompleteWithUserInfo:(id)a3;
- (void)liftUIPresenterDidLoadWithSuccess:(BOOL)a3 error:(id)a4;
- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5;
- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4;
@end

@implementation URLAction

- (void)liftUIPresenterDidLoadWithSuccess:(BOOL)a3 error:(id)a4
{
  v5 = self;
  v6 = a4;
  sub_243ABA428(a4);
}

- (void)liftUIPresenterDidCompleteWithUserInfo:(id)a3
{
  if (a3)
  {
    v4 = sub_243AC27D8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_243AB9080(v4);
}

- (void)liftUIPresenterDidCancelWithUserInfo:(id)a3
{
  if (a3)
  {
    sub_243AC27D8();
  }

  v4 = self;
  sub_243ABA5DC();
}

- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = self;
  v9 = a5;
  sub_243ABA72C(a5);
}

- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_243ABAA04(a4);
}

- (_TtC21CloudRecommendationUI9URLAction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end