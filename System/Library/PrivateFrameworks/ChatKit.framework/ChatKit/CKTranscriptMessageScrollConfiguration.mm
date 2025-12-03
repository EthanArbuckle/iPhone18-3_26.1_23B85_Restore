@interface CKTranscriptMessageScrollConfiguration
- (BOOL)allowOverScroll;
- (BOOL)animated;
- (BOOL)autoDismissHightlight;
- (BOOL)emphasize;
- (BOOL)highlight;
- (BOOL)inlineReplyOverlay;
- (NSString)messageGUID;
- (UIView)viewToAlignWith;
- (int64_t)partIndex;
- (unint64_t)scrollPosition;
- (void)setAllowOverScroll:(BOOL)scroll;
- (void)setAnimated:(BOOL)animated;
- (void)setAutoDismissHightlight:(BOOL)hightlight;
- (void)setEmphasize:(BOOL)emphasize;
- (void)setHighlight:(BOOL)highlight;
- (void)setInlineReplyOverlay:(BOOL)overlay;
- (void)setMessageGUID:(id)d;
- (void)setPartIndex:(int64_t)index;
- (void)setScrollPosition:(unint64_t)position;
- (void)setViewToAlignWith:(id)with;
@end

@implementation CKTranscriptMessageScrollConfiguration

- (NSString)messageGUID
{
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (void)setMessageGUID:(id)d
{
  v4 = sub_190D56F10();
  v6 = v5;
  v7 = (self + OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)partIndex
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPartIndex:(int64_t)index
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  swift_beginAccess();
  *(self + v5) = index;
}

- (BOOL)animated
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnimated:(BOOL)animated
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  swift_beginAccess();
  *(self + v5) = animated;
}

- (BOOL)inlineReplyOverlay
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInlineReplyOverlay:(BOOL)overlay
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  swift_beginAccess();
  *(self + v5) = overlay;
}

- (BOOL)highlight
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHighlight:(BOOL)highlight
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  swift_beginAccess();
  *(self + v5) = highlight;
}

- (BOOL)emphasize
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEmphasize:(BOOL)emphasize
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  swift_beginAccess();
  *(self + v5) = emphasize;
}

- (BOOL)autoDismissHightlight
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAutoDismissHightlight:(BOOL)hightlight
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  swift_beginAccess();
  *(self + v5) = hightlight;
}

- (unint64_t)scrollPosition
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollPosition:(unint64_t)position
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  swift_beginAccess();
  *(self + v5) = position;
}

- (UIView)viewToAlignWith
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setViewToAlignWith:(id)with
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = with;
  withCopy = with;
}

- (BOOL)allowOverScroll
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowOverScroll:(BOOL)scroll
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  swift_beginAccess();
  *(self + v5) = scroll;
}

@end