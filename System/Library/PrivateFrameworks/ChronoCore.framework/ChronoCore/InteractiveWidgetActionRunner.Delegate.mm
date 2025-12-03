@interface InteractiveWidgetActionRunner.Delegate
- (_TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate)init;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled;
@end

@implementation InteractiveWidgetActionRunner.Delegate

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithError:(id)error cancelled:(BOOL)cancelled
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion);
  v6 = *&self->completion[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
  selfCopy = self;
  errorCopy = error;

  v7(error);
}

- (_TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end