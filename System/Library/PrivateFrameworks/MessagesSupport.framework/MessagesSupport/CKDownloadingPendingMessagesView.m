@interface CKDownloadingPendingMessagesView
- (CGSize)intrinsicContentSize;
- (CKDownloadingPendingMessagesView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)startAppearanceAnimations;
- (void)updateForLayoutDirectionWithScale:(double)a3;
- (void)updateMessageCountWith:(id)a3;
@end

@implementation CKDownloadingPendingMessagesView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = CKDownloadingPendingMessagesView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateMessageCountWith:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___CKDownloadingPendingMessagesView_pendingMessageCountLabel);
  v5 = a3;
  v6 = self;
  [v4 setAttributedText_];
  sub_215685908();
}

- (void)updateForLayoutDirectionWithScale:(double)a3
{
  v4 = self;
  CKDownloadingPendingMessagesView.updateForLayoutDirection(withScale:)(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  CKDownloadingPendingMessagesView.layoutSubviews()();
}

- (CKDownloadingPendingMessagesView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)startAppearanceAnimations
{
  v2 = self;
  sub_2156867A0();
}

@end