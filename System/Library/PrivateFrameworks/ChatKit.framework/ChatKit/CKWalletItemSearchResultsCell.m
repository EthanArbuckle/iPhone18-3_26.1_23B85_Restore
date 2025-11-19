@interface CKWalletItemSearchResultsCell
- (CGPoint)avatarOffsetLTR;
- (CGPoint)avatarOffsetRTL;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation CKWalletItemSearchResultsCell

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKWalletItemSearchResultsCell;
  [(CKAttachmentSearchResultCell *)&v17 layoutSubviews];
  v3 = [(CKEditableSearchResultCell *)self imageView];
  v4 = [v3 layer];

  [v4 setBorderColor:0];
  [v4 setBorderWidth:0.0];
  [v4 setCornerRadius:0.0];
  v5 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v5 setHidden:1];

  v6 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [v6 frame];
  v8 = v7;

  v9 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v16 setFrame:{v11, v8, v13, v15}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  [v4 frame];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v9 = CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v10 = CGRectGetWidth(v17);
  v11 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [v11 sizeThatFits:{v9, 1.79769313e308}];
  v13 = v12;

  [v4 setFrame:{x, y, width, v10 + v13 + 4.0}];

  return v4;
}

- (CGPoint)avatarOffsetLTR
{
  v2 = -8.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)avatarOffsetRTL
{
  v2 = 8.0;
  v3 = 6.0;
  result.y = v3;
  result.x = v2;
  return result;
}

@end