@interface CKTranscriptScrollIntentEntryViewChangedTrigger
- (CKTranscriptScrollIntentEntryViewChangedTrigger)init;
- (CKTranscriptScrollIntentEntryViewChangedTrigger)initWithEntryView:(id)view isTextChange:(BOOL)change isShelfChange:(BOOL)shelfChange isSendLaterPluginChange:(BOOL)pluginChange;
- (id)updateRequestWithUpdateContext:(id)context;
@end

@implementation CKTranscriptScrollIntentEntryViewChangedTrigger

- (CKTranscriptScrollIntentEntryViewChangedTrigger)initWithEntryView:(id)view isTextChange:(BOOL)change isShelfChange:(BOOL)shelfChange isSendLaterPluginChange:(BOOL)pluginChange
{
  changeCopy = change;
  viewCopy = view;
  sendLaterPluginInfo = [viewCopy sendLaterPluginInfo];
  if (sendLaterPluginInfo)
  {

    v12 = 1;
    *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo) = 1;
    if (changeCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo) = 0;
  if (!changeCopy)
  {
LABEL_6:
    v12 = shelfChange || pluginChange;
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hadContentChange) = v12;
  *(&self->super.isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_isSendLaterPluginChange) = pluginChange;
  v15.receiver = self;
  v15.super_class = CKTranscriptScrollIntentEntryViewChangedTrigger;
  v13 = [(CKTranscriptScrollIntentEntryViewChangedTrigger *)&v15 init];

  return v13;
}

- (id)updateRequestWithUpdateContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_190838B10(contextCopy);

  return v6;
}

- (CKTranscriptScrollIntentEntryViewChangedTrigger)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end