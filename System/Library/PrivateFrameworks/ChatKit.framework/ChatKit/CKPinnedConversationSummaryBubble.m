@interface CKPinnedConversationSummaryBubble
- (CKPinnedConversationSummaryBubble)initWithSummaryBubbleActivityItem:(id)a3;
- (NSAttributedString)summaryText;
- (UIEdgeInsets)contentViewPadding;
- (double)pillCornerRadius;
- (id)_summaryLabelTextColor;
- (id)summaryLabelFont;
- (void)_updateSummaryLabel;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)setActivityItem:(id)a3;
- (void)setActivityItemViewContentScale:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPinnedConversationSummaryBubble

- (CKPinnedConversationSummaryBubble)initWithSummaryBubbleActivityItem:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v11.receiver = self;
  v11.super_class = CKPinnedConversationSummaryBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:v5 contentView:v6 needsContentViewStroke:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_summaryBubbleActivityItem, a3);
    objc_storeStrong(&v8->_summaryLabel, v6);
    [(UILabel *)v8->_summaryLabel setTextAlignment:1];
    [(UILabel *)v8->_summaryLabel setNumberOfLines:2];
    [(CKPinnedConversationSummaryBubble *)v8 _updateSummaryLabel];
    [(CKPinnedConversationSummaryBubble *)v8 addSubview:v8->_summaryLabel];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (NSAttributedString)summaryText
{
  v2 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  v3 = [v2 attributedText];

  return v3;
}

- (double)pillCornerRadius
{
  [(CKPinnedConversationSummaryBubble *)self contentViewPadding];
  v3 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [v3 setNumberOfLines:1];

  v4 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [v4 intrinsicContentSize];

  v5 = [(CKPinnedConversationSummaryBubble *)self summaryLabel];
  [v5 setNumberOfLines:2];

  UIRoundToViewScale();
  return result;
}

- (void)setActivityItem:(id)a3
{
  v5 = a3;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_summaryBubbleActivityItem, a3);
    [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
  }
}

- (void)_updateSummaryLabel
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  v4 = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  v5 = [(CKPinnedConversationSummaryBubble *)self traitCollection];
  v7 = -[CKPinnedConversationSummaryBubbleActivityItem summaryAttributedStringForContentScale:userInterfaceStyle:](summaryBubbleActivityItem, "summaryAttributedStringForContentScale:userInterfaceStyle:", v4, [v5 userInterfaceStyle]);

  v6 = [(UILabel *)self->_summaryLabel attributedText];
  LOBYTE(v4) = [v6 isEqualToAttributedString:v7];

  if ((v4 & 1) == 0)
  {
    [(UILabel *)self->_summaryLabel setAttributedText:v7];
    [(CKPinnedConversationSummaryBubble *)self setNeedsLayout];
  }
}

- (void)setActivityItemViewContentScale:(int64_t)a3
{
  v5 = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  v6.receiver = self;
  v6.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItemViewContentScale:a3];
  if (v5 != a3)
  {
    [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
  }
}

- (id)summaryLabelFont
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  v3 = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];

  return [(CKPinnedConversationSummaryBubbleActivityItem *)summaryBubbleActivityItem summaryLabelFontForContentScale:v3];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];

  [(CKPinnedConversationSummaryBubble *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationSummaryBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v4 traitCollectionDidChange:a3];
  [(CKPinnedConversationSummaryBubble *)self _updateSummaryLabel];
}

- (id)_summaryLabelTextColor
{
  summaryBubbleActivityItem = self->_summaryBubbleActivityItem;
  v3 = [(CKPinnedConversationSummaryBubble *)self traitCollection];
  v4 = -[CKPinnedConversationSummaryBubbleActivityItem summaryLabelTextColorForUserInterfaceStyle:](summaryBubbleActivityItem, "summaryLabelTextColorForUserInterfaceStyle:", [v3 userInterfaceStyle]);

  return v4;
}

- (UIEdgeInsets)contentViewPadding
{
  v2 = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewContentScale];
  v3 = 0.0;
  if (v2 == 1)
  {
    v3 = 7.0;
  }

  if (!v2)
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