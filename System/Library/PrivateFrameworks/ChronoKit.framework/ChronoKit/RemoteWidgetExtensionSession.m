@interface RemoteWidgetExtensionSession
- (BOOL)boostToForegroundPriority;
- (void)attachPreviewAgentWithFrameworkPath:(id)a3 endpoint:(id)a4 handler:(id)a5;
- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)a3;
- (void)getDescriptorsWithCompletion:(id)a3;
- (void)getTimelineFor:(id)a3 into:(id)a4 environment:(id)a5 isPreview:(BOOL)a6 completion:(id)a7;
- (void)getTimelinesWithRequests:(id)a3 isPreview:(BOOL)a4 completion:(id)a5;
- (void)invalidate;
- (void)setBoostToForegroundPriority:(BOOL)a3;
@end

@implementation RemoteWidgetExtensionSession

- (BOOL)boostToForegroundPriority
{
  v3 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBoostToForegroundPriority:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9ChronoKit28RemoteWidgetExtensionSession_boostToForegroundPriority;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  (*(v3 + 2))(v3, 0, 0, 0);

  _Block_release(v3);
}

- (void)attachPreviewAgentWithFrameworkPath:(id)a3 endpoint:(id)a4 handler:(id)a5
{
  v5 = _Block_copy(a5);
  (*(v5 + 2))(v5, 0, 0);

  _Block_release(v5);
}

- (void)getTimelinesWithRequests:(id)a3 isPreview:(BOOL)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)invalidate
{

  RemoteWidgetExtensionSession.invalidate()();
}

- (void)getDescriptorsWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  sub_1BF3901C0(0, &qword_1EDC96350, 0x1E6994218);
  v4 = sub_1BF4E8B84();
  v3[2](v3, v4, 0);

  _Block_release(v3);
}

- (void)getTimelineFor:(id)a3 into:(id)a4 environment:(id)a5 isPreview:(BOOL)a6 completion:(id)a7
{
  v7 = _Block_copy(a7);
  v7[2](v7, 0);

  _Block_release(v7);
}

@end