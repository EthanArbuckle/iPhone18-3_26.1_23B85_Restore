@interface InstructionsForUseWebView.Coordinator
- (_TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator)init;
- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
@end

@implementation InstructionsForUseWebView.Coordinator

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1C3D0B6C8(errorCopy);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = self + OBJC_IVAR____TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator_parent;
  v8 = type metadata accessor for InstructionsForUseWebView(0);
  v9 = &v7[*(v8 + 24)];
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v8 + 32);
  errorCopy = error;
  selfCopy = self;
  sub_1C3D088C8(error, v10, v11, &v7[v12], 0, 0);
}

- (void)webView:(id)view decidePolicyForNavigationResponse:(id)response decisionHandler:(id)handler
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = _Block_copy(handler);
  _Block_copy(v9);
  viewCopy = view;
  responseCopy = response;
  selfCopy = self;
  sub_1C3D0BAA4(viewCopy, responseCopy, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (_TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end