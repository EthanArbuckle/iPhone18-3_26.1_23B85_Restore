@interface CKWalletItemSearchResultsCell
- (CGPoint)avatarOffsetLTR;
- (CGPoint)avatarOffsetRTL;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation CKWalletItemSearchResultsCell

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = CKWalletItemSearchResultsCell;
  [(CKAttachmentSearchResultCell *)&v17 layoutSubviews];
  imageView = [(CKEditableSearchResultCell *)self imageView];
  layer = [imageView layer];

  [layer setBorderColor:0];
  [layer setBorderWidth:0.0];
  [layer setCornerRadius:0.0];
  titleLabel = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel setHidden:1];

  titleLabel2 = [(CKAttachmentSearchResultCell *)self titleLabel];
  [titleLabel2 frame];
  v8 = v7;

  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  dateLabel2 = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel2 setFrame:{v11, v8, v13, v15}];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  [attributesCopy frame];
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
  dateLabel = [(CKAttachmentSearchResultCell *)self dateLabel];
  [dateLabel sizeThatFits:{v9, 1.79769313e308}];
  v13 = v12;

  [attributesCopy setFrame:{x, y, width, v10 + v13 + 4.0}];

  return attributesCopy;
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