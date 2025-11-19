@interface InteractiveWidgetActionRunner.Delegate
- (_TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate)init;
- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithError:(id)a4 cancelled:(BOOL)a5;
@end

@implementation InteractiveWidgetActionRunner.Delegate

- (void)workflowRunnerClient:(id)a3 didFinishRunningWorkflowWithError:(id)a4 cancelled:(BOOL)a5
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion);
  v6 = *&self->completion[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
  v9 = self;
  v8 = a4;

  v7(a4);
}

- (_TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end