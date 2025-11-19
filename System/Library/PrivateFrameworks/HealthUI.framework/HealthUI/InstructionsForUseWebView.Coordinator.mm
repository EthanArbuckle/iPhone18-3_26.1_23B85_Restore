@interface InstructionsForUseWebView.Coordinator
- (_TtCV8HealthUIP33_9391128D22BBD0797A4FA47559946E1D25InstructionsForUseWebView11Coordinator)init;
- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
@end

@implementation InstructionsForUseWebView.Coordinator

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = a3;
  v10 = a4;
  v12 = a5;
  v11 = self;
  sub_1C3D0B6C8(v12);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
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
  v14 = a5;
  v13 = self;
  sub_1C3D088C8(a5, v10, v11, &v7[v12], 0, 0);
}

- (void)webView:(id)a3 decidePolicyForNavigationResponse:(id)a4 decisionHandler:(id)a5
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = _Block_copy(a5);
  _Block_copy(v9);
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_1C3D0BAA4(v10, v11, v12, v9);
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