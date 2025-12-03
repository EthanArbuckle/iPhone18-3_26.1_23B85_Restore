@interface RemoteWidgetExtensionSession
- (BOOL)boostToForegroundPriority;
- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler;
- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion;
- (void)getDescriptorsWithCompletion:(id)completion;
- (void)getTimelineFor:(id)for into:(id)into environment:(id)environment isPreview:(BOOL)preview completion:(id)completion;
- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion;
- (void)invalidate;
- (void)setBoostToForegroundPriority:(BOOL)priority;
@end

@implementation RemoteWidgetExtensionSession

- (BOOL)boostToForegroundPriority
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBoostToForegroundPriority:(BOOL)priority
{
  v5 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  *(&self->super.isa + v5) = priority;
}

- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  (*(v3 + 2))(v3, 0, 0, 0);

  _Block_release(v3);
}

- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler
{
  v5 = _Block_copy(handler);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion
{
  v5 = _Block_copy(completion);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)invalidate
{

  RemoteWidgetExtensionSession.invalidate()();
}

- (void)getDescriptorsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  sub_1BF3901C0(0, &qword_1EDC96350, 0x1E6994218);
  v4 = sub_1BF4E8B84();
  v3[2](v3, v4, 0);

  _Block_release(v3);
}

- (void)getTimelineFor:(id)for into:(id)into environment:(id)environment isPreview:(BOOL)preview completion:(id)completion
{
  v7 = _Block_copy(completion);
  v7[2](v7, 0);

  _Block_release(v7);
}

@end