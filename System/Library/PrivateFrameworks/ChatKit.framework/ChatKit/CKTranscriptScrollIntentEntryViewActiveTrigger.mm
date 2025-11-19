@interface CKTranscriptScrollIntentEntryViewActiveTrigger
- (CKTranscriptScrollIntentEntryViewActiveTrigger)init;
- (CKTranscriptScrollIntentEntryViewActiveTrigger)initWithChatController:(id)a3;
- (id)updateRequestWithUpdateContext:(id)a3;
@end

@implementation CKTranscriptScrollIntentEntryViewActiveTrigger

- (CKTranscriptScrollIntentEntryViewActiveTrigger)initWithChatController:(id)a3
{
  v4 = a3;
  v5 = [v4 entryView];
  v6 = [v5 sendLaterPluginInfo];

  if (v6)
  {
  }

  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_hasSendLaterPluginInfo) = v6 != 0;
  v7 = [v4 _appearState] == 1;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewActiveTrigger_isAppearing) = v7;
  v10.receiver = self;
  v10.super_class = CKTranscriptScrollIntentEntryViewActiveTrigger;
  v8 = [(CKTranscriptScrollIntentEntryViewActiveTrigger *)&v10 init];

  return v8;
}

- (id)updateRequestWithUpdateContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_19091A164(v4);

  return v6;
}

- (CKTranscriptScrollIntentEntryViewActiveTrigger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end