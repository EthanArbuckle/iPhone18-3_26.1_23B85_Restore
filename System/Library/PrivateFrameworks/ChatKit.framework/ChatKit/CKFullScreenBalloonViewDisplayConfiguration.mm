@interface CKFullScreenBalloonViewDisplayConfiguration
+ (id)addStickerContextDismissingAppCardOnExit:(BOOL)exit;
+ (id)tapbackKeyboardInputContext;
+ (id)tapbackPickerContext;
- (BOOL)shouldAvoidAppCardAtInitialPresentation;
- (BOOL)shouldDismissAppCardOnExit;
- (BOOL)shouldDismissWithAppCard;
- (BOOL)shouldHideBalloonTail;
- (BOOL)shouldHideTapbackAttributionAndPicker;
- (BOOL)shouldPresentAsTapbackKeyboardInput;
- (BOOL)shouldPresentTintViewBeforeScrolling;
- (BOOL)shouldReturnToStartingScrollOffset;
- (BOOL)shouldShowHighlightButton;
- (BOOL)shouldShowReplyButton;
- (BOOL)shouldShowStickers;
- (CKMessagePartChatItem)supplementaryLayoutChatItem;
- (UIColor)tintViewBackgroundColor;
- (UIView)snapshotView;
- (double)darkModeTintAlpha;
- (double)scrollDuration;
- (double)tintAlpha;
- (double)tintDismissDuration;
- (double)tintRevealDuration;
- (id)supplementaryLayoutContext;
- (int64_t)type;
- (void)setDarkModeTintAlpha:(double)alpha;
- (void)setScrollDuration:(double)duration;
- (void)setShouldAvoidAppCardAtInitialPresentation:(BOOL)presentation;
- (void)setShouldDismissAppCardOnExit:(BOOL)exit;
- (void)setShouldDismissWithAppCard:(BOOL)card;
- (void)setShouldHideBalloonTail:(BOOL)tail;
- (void)setShouldHideTapbackAttributionAndPicker:(BOOL)picker;
- (void)setShouldPresentAsTapbackKeyboardInput:(BOOL)input;
- (void)setShouldPresentTintViewBeforeScrolling:(BOOL)scrolling;
- (void)setShouldReturnToStartingScrollOffset:(BOOL)offset;
- (void)setShouldShowHighlightButton:(BOOL)button;
- (void)setShouldShowReplyButton:(BOOL)button;
- (void)setShouldShowStickers:(BOOL)stickers;
- (void)setSupplementaryLayoutContext:(id)context;
- (void)setTintAlpha:(double)alpha;
- (void)setTintDismissDuration:(double)duration;
- (void)setTintRevealDuration:(double)duration;
- (void)setTintViewBackgroundColor:(id)color;
- (void)setType:(int64_t)type;
@end

@implementation CKFullScreenBalloonViewDisplayConfiguration

- (int64_t)type
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)shouldPresentTintViewBeforeScrolling
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldPresentTintViewBeforeScrolling:(BOOL)scrolling
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentTintViewBeforeScrolling;
  swift_beginAccess();
  *(self + v5) = scrolling;
}

- (BOOL)shouldHideTapbackAttributionAndPicker
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideTapbackAttributionAndPicker:(BOOL)picker
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideTapbackAttributionAndPicker;
  swift_beginAccess();
  *(self + v5) = picker;
}

- (BOOL)shouldShowReplyButton
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShowReplyButton:(BOOL)button
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowReplyButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (BOOL)shouldShowHighlightButton
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShowHighlightButton:(BOOL)button
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowHighlightButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (BOOL)shouldAvoidAppCardAtInitialPresentation
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldAvoidAppCardAtInitialPresentation:(BOOL)presentation
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldAvoidAppCardAtInitialPresentation;
  swift_beginAccess();
  *(self + v5) = presentation;
}

- (BOOL)shouldReturnToStartingScrollOffset
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldReturnToStartingScrollOffset:(BOOL)offset
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldReturnToStartingScrollOffset;
  swift_beginAccess();
  *(self + v5) = offset;
}

- (BOOL)shouldShowStickers
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShowStickers:(BOOL)stickers
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldShowStickers;
  swift_beginAccess();
  *(self + v5) = stickers;
}

- (BOOL)shouldDismissAppCardOnExit
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDismissAppCardOnExit:(BOOL)exit
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissAppCardOnExit;
  swift_beginAccess();
  *(self + v5) = exit;
}

- (BOOL)shouldDismissWithAppCard
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldDismissWithAppCard:(BOOL)card
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldDismissWithAppCard;
  swift_beginAccess();
  *(self + v5) = card;
}

- (BOOL)shouldPresentAsTapbackKeyboardInput
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldPresentAsTapbackKeyboardInput:(BOOL)input
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  swift_beginAccess();
  *(self + v5) = input;
}

- (BOOL)shouldHideBalloonTail
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideBalloonTail;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldHideBalloonTail:(BOOL)tail
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldHideBalloonTail;
  swift_beginAccess();
  *(self + v5) = tail;
}

- (UIView)snapshotView
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_snapshotView;
  swift_beginAccess();
  return *(self + v3);
}

- (double)tintAlpha
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTintAlpha:(double)alpha
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintAlpha;
  swift_beginAccess();
  *(self + v5) = alpha;
}

- (double)tintRevealDuration
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTintRevealDuration:(double)duration
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintRevealDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (double)tintDismissDuration
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTintDismissDuration:(double)duration
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintDismissDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (double)darkModeTintAlpha
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDarkModeTintAlpha:(double)alpha
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_darkModeTintAlpha;
  swift_beginAccess();
  *(self + v5) = alpha;
}

- (double)scrollDuration
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollDuration:(double)duration
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_scrollDuration;
  swift_beginAccess();
  *(self + v5) = duration;
}

- (UIColor)tintViewBackgroundColor
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTintViewBackgroundColor:(id)color
{
  v5 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_tintViewBackgroundColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = color;
  colorCopy = color;
}

- (CKMessagePartChatItem)supplementaryLayoutChatItem
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutChatItem;
  swift_beginAccess();
  return *(self + v3);
}

- (id)supplementaryLayoutContext
{
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  sub_19023C414(self + v3, v13);
  v4 = v14;
  if (v14)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v6 + 16))(v9, v7);
    v10 = sub_190D58740();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setSupplementaryLayoutContext:(id)context
{
  if (context)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  v6 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_supplementaryLayoutContext;
  swift_beginAccess();
  sub_190A3A620(v7, self + v6);
  swift_endAccess();
}

+ (id)tapbackPickerContext
{
  v2 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();

  return v2;
}

+ (id)tapbackKeyboardInputContext
{
  v2 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC20tapbackPickerContextACyFZ_0();
  v3 = OBJC_IVAR___CKFullScreenBalloonViewDisplayConfiguration_shouldPresentAsTapbackKeyboardInput;
  swift_beginAccess();
  v2[v3] = 1;

  return v2;
}

+ (id)addStickerContextDismissingAppCardOnExit:(BOOL)exit
{
  v3 = _s7ChatKit41FullScreenBalloonViewDisplayConfigurationC17addStickerContext23dismissingAppCardOnExitACSb_tFZ_0(exit);

  return v3;
}

@end