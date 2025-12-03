@interface EventPreviewWrapper
- (_TtC13EventKitTCCUI19EventPreviewWrapper)init;
- (_TtC13EventKitTCCUI19EventPreviewWrapper)initWithEvent:(id)event;
- (id)getPreviewControllerForPrompt:(BOOL)prompt;
@end

@implementation EventPreviewWrapper

- (_TtC13EventKitTCCUI19EventPreviewWrapper)initWithEvent:(id)event
{
  *(&self->super.isa + OBJC_IVAR____TtC13EventKitTCCUI19EventPreviewWrapper_event) = event;
  v6.receiver = self;
  v6.super_class = type metadata accessor for EventPreviewWrapper();
  eventCopy = event;
  return [(EventPreviewWrapper *)&v6 init];
}

- (id)getPreviewControllerForPrompt:(BOOL)prompt
{
  sub_24A093270();
  sub_24A093260();
  sub_24A093250();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  EventPreviewWrapper.getPreviewController(forPrompt:)(v6, prompt);
  v8 = v7;

  return v8;
}

- (_TtC13EventKitTCCUI19EventPreviewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end