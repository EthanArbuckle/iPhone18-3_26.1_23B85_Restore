@interface DOCShortcutsActionRunner
- (_TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner)init;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutputFiles:(id)a4 error:(id)a5 cancelled:(BOOL)a6;
@end

@implementation DOCShortcutsActionRunner

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithOutputFiles:(id)a4 error:(id)a5 cancelled:(BOOL)a6
{
  v7 = a4;
  if (a4)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for WFContextualActionFile);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner_completionHandler);
  v10 = a5;
  v11 = self;

  v9(v7, a5);
}

- (_TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner)init
{
  v2 = (&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner_completionHandler);
  *v2 = DOCGridLayout.specIconWidth.modify;
  v2[1] = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCShortcutsActionRunner();
  return [(DOCShortcutsActionRunner *)&v4 init];
}

@end