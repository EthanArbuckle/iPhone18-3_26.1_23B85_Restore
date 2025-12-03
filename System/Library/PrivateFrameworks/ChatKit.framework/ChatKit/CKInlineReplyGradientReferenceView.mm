@interface CKInlineReplyGradientReferenceView
- (void)layoutSubviews;
@end

@implementation CKInlineReplyGradientReferenceView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKInlineReplyGradientReferenceView;
  [(CKInlineReplyGradientReferenceView *)&v13 layoutSubviews];
  [(CKInlineReplyGradientReferenceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(CKInlineReplyGradientReferenceView *)self safeAreaInsets];
  v10 = v9;
  v11 = v8 - v9;
  collectionView = [(CKInlineReplyGradientReferenceView *)self collectionView];
  [collectionView setFrame:{v4, v10, v6, v11}];
}

@end