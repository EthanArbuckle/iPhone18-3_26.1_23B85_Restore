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
- (void)setAllowOverScroll:(BOOL)a3;
- (void)setAnimated:(BOOL)a3;
- (void)setAutoDismissHightlight:(BOOL)a3;
- (void)setEmphasize:(BOOL)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setInlineReplyOverlay:(BOOL)a3;
- (void)setMessageGUID:(id)a3;
- (void)setPartIndex:(int64_t)a3;
- (void)setScrollPosition:(unint64_t)a3;
- (void)setViewToAlignWith:(id)a3;
@end

@implementation CKTranscriptMessageScrollConfiguration

- (NSString)messageGUID
{
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D56ED0();

  return v2;
}

- (void)setMessageGUID:(id)a3
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

- (void)setPartIndex:(int64_t)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)animated
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnimated:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_animated;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)inlineReplyOverlay
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInlineReplyOverlay:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_inlineReplyOverlay;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)highlight
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHighlight:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_highlight;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)emphasize
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEmphasize:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_emphasize;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)autoDismissHightlight
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAutoDismissHightlight:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_autoDismissHightlight;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (unint64_t)scrollPosition
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setScrollPosition:(unint64_t)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (UIView)viewToAlignWith
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setViewToAlignWith:(id)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (BOOL)allowOverScroll
{
  v3 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowOverScroll:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_allowOverScroll;
  swift_beginAccess();
  *(self + v5) = a3;
}

@end