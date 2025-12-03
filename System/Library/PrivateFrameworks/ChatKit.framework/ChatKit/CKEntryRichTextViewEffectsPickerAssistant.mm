@interface CKEntryRichTextViewEffectsPickerAssistant
- (BOOL)shouldSkipNextAdjustingOfTypingAttributes;
- (CKEntryRichTextViewEffectsPickerAssistant)init;
- (CKEntryRichTextViewEffectsPickerAssistant)initWithTextView:(id)view;
- (void)adjustTypingAttributesIfNeededForReplacement:(id)replacement inRange:(_NSRange)range;
- (void)removeTypingAttributesAdjustments;
- (void)selectSentenceAtCaretIfPossible;
- (void)selectWordAtCaretIfPossible;
- (void)setShouldSkipNextAdjustingOfTypingAttributes:(BOOL)attributes;
@end

@implementation CKEntryRichTextViewEffectsPickerAssistant

- (CKEntryRichTextViewEffectsPickerAssistant)initWithTextView:(id)view
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes) = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for EntryRichTextViewEffectsPickerAssistant();
  return [(CKEntryRichTextViewEffectsPickerAssistant *)&v5 init];
}

- (BOOL)shouldSkipNextAdjustingOfTypingAttributes
{
  v3 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldSkipNextAdjustingOfTypingAttributes:(BOOL)attributes
{
  v5 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  *(&self->super.isa + v5) = attributes;
}

- (void)selectSentenceAtCaretIfPossible
{
  selfCopy = self;
  sub_190975404();
}

- (void)selectWordAtCaretIfPossible
{
  selfCopy = self;
  sub_190975ACC();
}

- (void)adjustTypingAttributesIfNeededForReplacement:(id)replacement inRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = sub_190D56F10();
  v9 = v8;
  selfCopy = self;
  sub_190975C60(v7, v9, location, length, 1);
}

- (void)removeTypingAttributesAdjustments
{
  selfCopy = self;
  sub_190976A74();
}

- (CKEntryRichTextViewEffectsPickerAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end