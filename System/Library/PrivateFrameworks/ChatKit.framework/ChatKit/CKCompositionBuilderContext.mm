@interface CKCompositionBuilderContext
- (BOOL)canUseRichTextAttributes;
- (BOOL)conversationSupportsInlineAdaptiveImageGlyphs;
- (BOOL)isInLockdownMode;
- (BOOL)isPastingAfterBracketCharacter;
- (BOOL)supportsExpressiveText;
- (BOOL)wantsInlinedRichLinks;
- (_TtC7ChatKit27CKCompositionBuilderContext)init;
- (void)setCanUseRichTextAttributes:(BOOL)attributes;
- (void)setConversationSupportsInlineAdaptiveImageGlyphs:(BOOL)glyphs;
- (void)setIsInLockdownMode:(BOOL)mode;
- (void)setIsPastingAfterBracketCharacter:(BOOL)character;
- (void)setSupportsExpressiveText:(BOOL)text;
@end

@implementation CKCompositionBuilderContext

- (BOOL)isInLockdownMode
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInLockdownMode:(BOOL)mode
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = mode;
}

- (BOOL)isPastingAfterBracketCharacter
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsPastingAfterBracketCharacter:(BOOL)character
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  swift_beginAccess();
  *(&self->super.isa + v5) = character;
}

- (BOOL)supportsExpressiveText
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSupportsExpressiveText:(BOOL)text
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  swift_beginAccess();
  *(&self->super.isa + v5) = text;
}

- (BOOL)conversationSupportsInlineAdaptiveImageGlyphs
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConversationSupportsInlineAdaptiveImageGlyphs:(BOOL)glyphs
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  swift_beginAccess();
  *(&self->super.isa + v5) = glyphs;
}

- (BOOL)canUseRichTextAttributes
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCanUseRichTextAttributes:(BOOL)attributes
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  swift_beginAccess();
  *(&self->super.isa + v5) = attributes;
}

- (BOOL)wantsInlinedRichLinks
{
  selfCopy = self;
  v3 = sub_190B0F9F8();

  return v3 & 1;
}

- (_TtC7ChatKit27CKCompositionBuilderContext)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKCompositionBuilderContext();
  return [(CKCompositionBuilderContext *)&v3 init];
}

@end