@interface CKPinnedConversationSummaryBubble
- (CKPinnedConversationSummaryBubble)initWithSummaryBubbleActivityItem:(id)item;
- (NSAttributedString)summaryText;
- (UIEdgeInsets)contentViewPadding;
- (double)pillCornerRadius;
- (id)_summaryLabelTextColor;
- (id)summaryLabelFont;
- (void)_updateSummaryLabel;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)setActivityItem:(id)item;
- (void)setActivityItemViewContentScale:(int64_t)scale;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKPinnedConversationSummaryBubble

- (CKPinnedConversationSummaryBubble)initWithSummaryBubbleActivityItem:(id)item
{
  itemCopy = item;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v11.receiver = self;
  v11.super_class = CKPinnedConversationSummaryBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:itemCopy contentView:v6 needsContentViewStroke:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_summaryBubbleActivityItem, item);
    objc_storeStrong(&v8->_summaryLabel, v6);
    [(UILabel *)v8->_summaryLabel setTextAlignment:1];
    [(UILabel *)v8->_summaryLabel setNumberOfLines:2];
    [(CKPinnedConversationSummaryBubble *)v8 _updateSummaryLabel];
    [(CKPinnedConversationSummaryBubble *)v8 addSubview:v8->_summaryLabel];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (NSAttributedString)summaryText
{
  summaryLabel = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  attributedText = [summaryLabel attributedText];

  return attributedText;
}

- (double)pillCornerRadius
{
  [(CKPinnedConversationSummaryBubble *)self contentViewPadding];
  summaryLabel = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [summaryLabel setNumberOfLines:1];

  summaryLabel2 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [summaryLabel2 intrinsicContentSize];

  summaryLabel3 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [summaryLabel3 setNumberOfLines:2];

  UIRoundToViewScale();
  return result;
}

- (void)setActivityItem:(id)item
{
  itemCopy = item;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_summaryBubbleActivityItem, item);
    [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
  }
}

- (void)_updateSummaryLabel
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  activityItemViewContentScale = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  traitCollection = [(CKPinnedConversationSummaryBubble *)self traitCollection];
  v7 = -[CKPinnedConversationSummaryBubbleActivityItem summaryAttributedStringForContentScale:userInterfaceStyle:](summaryBubbleActivityItem, "summaryAttributedStringForContentScale:userInterfaceStyle:", activityItemViewContentScale, [traitCollection userInterfaceStyle]);

  attributedText = [(UILabel *)self->_summaryLabel attributedText];
  LOBYTE(activityItemViewContentScale) = [attributedText isEqualToAttributedString:v7];

  if ((activityItemViewContentScale & 1) == 0)
  {
    [(UILabel *)self->_summaryLabel setAttributedText:v7];
    [(CKPinnedConversationSummaryBubble *)self setNeedsLayout];
  }
}

- (void)setActivityItemViewContentScale:(int64_t)scale
{
  activityItemViewContentScale = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  v6.receiver = self;
  v6.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItemViewContentScale:scale];
  if (activityItemViewContentScale != scale)
  {
    [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
  }
}

- (id)summaryLabelFont
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  activityItemViewContentScale = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];

  return [(CKPinnedConversationSummaryBubbleActivityItem *)summaryBubbleActivityItem summaryLabelFontForContentScale:activityItemViewContentScale];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];

  [(CKPinnedConversationSummaryBubble *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v4 traitCollectionDidChange:change];
  [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
}

- (id)_summaryLabelTextColor
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  traitCollection = [(CKPinnedConversationSummaryBubble *)self traitCollection];
  v4 = -[CKPinnedConversationSummaryBubbleActivityItem summaryLabelTextColorForUserInterfaceStyle:](summaryBubbleActivityItem, "summaryLabelTextColorForUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  return v4;
}

- (UIEdgeInsets)contentViewPadding
{
  activityItemViewContentScale = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  v3 = 0.0;
  if (activityItemViewContentScale == 1)
  {
    v3 = 7.0;
  }

  if (!activityItemViewContentScale)
  {
    v3 = 5.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v5;
  result.bottom = v6;
  result.left = v4;
  result.top = v3;
  return result;
}

@end