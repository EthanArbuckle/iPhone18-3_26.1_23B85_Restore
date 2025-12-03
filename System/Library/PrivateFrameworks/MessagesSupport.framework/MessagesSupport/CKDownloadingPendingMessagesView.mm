@interface CKDownloadingPendingMessagesView
- (CGSize)intrinsicContentSize;
- (CKDownloadingPendingMessagesView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)startAppearanceAnimations;
- (void)updateForLayoutDirectionWithScale:(double)scale;
- (void)updateMessageCountWith:(id)with;
@end

@implementation CKDownloadingPendingMessagesView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = CKDownloadingPendingMessagesView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateMessageCountWith:(id)with
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel);
  withCopy = with;
  selfCopy = self;
  [v4 setAttributedText_];
  sub_215685908();
}

- (void)updateForLayoutDirectionWithScale:(double)scale
{
  selfCopy = self;
  CKDownloadingPendingMessagesView.updateForLayoutDirection(withScale:)(scale);
}

- (void)layoutSubviews
{
  selfCopy = self;
  CKDownloadingPendingMessagesView.layoutSubviews()();
}

- (CKDownloadingPendingMessagesView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)startAppearanceAnimations
{
  selfCopy = self;
  sub_2156867A0();
}

@end