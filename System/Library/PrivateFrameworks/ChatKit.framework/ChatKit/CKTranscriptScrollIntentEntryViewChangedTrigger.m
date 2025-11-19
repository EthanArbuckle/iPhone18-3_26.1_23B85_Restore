@interface CKTranscriptScrollIntentEntryViewChangedTrigger
- (CKTranscriptScrollIntentEntryViewChangedTrigger)init;
- (CKTranscriptScrollIntentEntryViewChangedTrigger)initWithEntryView:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isSendLaterPluginChange:(BOOL)a6;
- (id)updateRequestWithUpdateContext:(id)a3;
@end

@implementation CKTranscriptScrollIntentEntryViewChangedTrigger

- (CKTranscriptScrollIntentEntryViewChangedTrigger)initWithEntryView:(id)a3 isTextChange:(BOOL)a4 isShelfChange:(BOOL)a5 isSendLaterPluginChange:(BOOL)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [v10 sendLaterPluginInfo];
  if (v11)
  {

    v12 = 1;
    *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo) = 1;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo) = 0;
  if (!v8)
  {
LABEL_6:
    v12 = a5 || a6;
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hadContentChange) = v12;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_isSendLaterPluginChange) = a6;
  v15.receiver = self;
  v15.super_class = CKTranscriptScrollIntentEntryViewChangedTrigger;
  v13 = [(CKTranscriptScrollIntentEntryViewChangedTrigger *)&v15 init];

  return v13;
}

- (id)updateRequestWithUpdateContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_190838B10(v4);

  return v6;
}

- (CKTranscriptScrollIntentEntryViewChangedTrigger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end