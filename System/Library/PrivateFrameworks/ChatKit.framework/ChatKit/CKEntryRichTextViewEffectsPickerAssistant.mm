@interface CKEntryRichTextViewEffectsPickerAssistant
- (BOOL)shouldSkipNextAdjustingOfTypingAttributes;
- (CKEntryRichTextViewEffectsPickerAssistant)init;
- (CKEntryRichTextViewEffectsPickerAssistant)initWithTextView:(id)a3;
- (void)adjustTypingAttributesIfNeededForReplacement:(id)a3 inRange:(_NSRange)a4;
- (void)removeTypingAttributesAdjustments;
- (void)selectSentenceAtCaretIfPossible;
- (void)selectWordAtCaretIfPossible;
- (void)setShouldSkipNextAdjustingOfTypingAttributes:(BOOL)a3;
@end

@implementation CKEntryRichTextViewEffectsPickerAssistant

- (CKEntryRichTextViewEffectsPickerAssistant)initWithTextView:(id)a3
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

- (void)setShouldSkipNextAdjustingOfTypingAttributes:(BOOL)a3
{
  v5 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)selectSentenceAtCaretIfPossible
{
  v2 = self;
  sub_190975404();
}

- (void)selectWordAtCaretIfPossible
{
  v2 = self;
  sub_190975ACC();
}

- (void)adjustTypingAttributesIfNeededForReplacement:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = sub_190D56F10();
  v9 = v8;
  v10 = self;
  sub_190975C60(v7, v9, location, length, 1);
}

- (void)removeTypingAttributesAdjustments
{
  v2 = self;
  sub_190976A74();
}

- (CKEntryRichTextViewEffectsPickerAssistant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end