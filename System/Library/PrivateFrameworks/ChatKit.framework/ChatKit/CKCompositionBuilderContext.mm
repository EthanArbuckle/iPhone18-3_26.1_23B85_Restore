@interface CKCompositionBuilderContext
- (BOOL)canUseRichTextAttributes;
- (BOOL)conversationSupportsInlineAdaptiveImageGlyphs;
- (BOOL)isInLockdownMode;
- (BOOL)isPastingAfterBracketCharacter;
- (BOOL)supportsExpressiveText;
- (BOOL)wantsInlinedRichLinks;
- (_TtC7ChatKit27CKCompositionBuilderContext)init;
- (void)setCanUseRichTextAttributes:(BOOL)a3;
- (void)setConversationSupportsInlineAdaptiveImageGlyphs:(BOOL)a3;
- (void)setIsInLockdownMode:(BOOL)a3;
- (void)setIsPastingAfterBracketCharacter:(BOOL)a3;
- (void)setSupportsExpressiveText:(BOOL)a3;
@end

@implementation CKCompositionBuilderContext

- (BOOL)isInLockdownMode
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsInLockdownMode:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isInLockdownMode;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isPastingAfterBracketCharacter
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsPastingAfterBracketCharacter:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_isPastingAfterBracketCharacter;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)supportsExpressiveText
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSupportsExpressiveText:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_supportsExpressiveText;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)conversationSupportsInlineAdaptiveImageGlyphs
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setConversationSupportsInlineAdaptiveImageGlyphs:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_conversationSupportsInlineAdaptiveImageGlyphs;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)canUseRichTextAttributes
{
  v3 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCanUseRichTextAttributes:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit27CKCompositionBuilderContext_canUseRichTextAttributes;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)wantsInlinedRichLinks
{
  v2 = self;
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