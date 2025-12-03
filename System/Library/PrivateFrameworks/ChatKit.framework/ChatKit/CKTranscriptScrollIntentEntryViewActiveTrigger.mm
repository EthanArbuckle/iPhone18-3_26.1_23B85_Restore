@interface CKTranscriptScrollIntentEntryViewActiveTrigger
- (CKTranscriptScrollIntentEntryViewActiveTrigger)init;
- (CKTranscriptScrollIntentEntryViewActiveTrigger)initWithChatController:(id)controller;
- (id)updateRequestWithUpdateContext:(id)context;
@end

@implementation CKTranscriptScrollIntentEntryViewActiveTrigger

- (CKTranscriptScrollIntentEntryViewActiveTrigger)initWithChatController:(id)controller
{
  controllerCopy = controller;
  entryView = [controllerCopy entryView];
  sendLaterPluginInfo = [entryView sendLaterPluginInfo];

  if (sendLaterPluginInfo)
  {
  }

  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_hasSendLaterPluginInfo) = sendLaterPluginInfo != 0;
  v7 = [controllerCopy _appearState] == 1;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_isAppearing) = v7;
  v10.receiver = self;
  v10.super_class = CKTranscriptScrollIntentEntryViewActiveTrigger;
  v8 = [(CKTranscriptScrollIntentEntryViewActiveTrigger *)&v10 init];

  return v8;
}

- (id)updateRequestWithUpdateContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_19091A164(contextCopy);

  return v6;
}

- (CKTranscriptScrollIntentEntryViewActiveTrigger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end