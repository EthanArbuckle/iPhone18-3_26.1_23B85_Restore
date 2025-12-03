@interface DOCShortcutsActionRunner
- (_TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner)init;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutputFiles:(id)files error:(id)error cancelled:(BOOL)cancelled;
@end

@implementation DOCShortcutsActionRunner

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutputFiles:(id)files error:(id)error cancelled:(BOOL)cancelled
{
  filesCopy = files;
  if (files)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for WFContextualActionFile);
    filesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(&self->super.isa + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_658718EC2EA5D3CB0FC4E9B24EA9403024DOCShortcutsActionRunner_completionHandler);
  errorCopy = error;
  selfCopy = self;

  v9(filesCopy, error);
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