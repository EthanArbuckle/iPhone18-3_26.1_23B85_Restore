@interface CKPinnedConversationRichLinkBubble
- (CKPinnedConversationRichLinkBubble)initWithRichLinkActivityItem:(id)a3;
- (UIEdgeInsets)contentViewPadding;
- (void)_updateLinkMetadata;
- (void)_updatePillCornerRadius;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)linkViewNeedsResize:(id)a3;
- (void)setActivityItem:(id)a3;
@end

@implementation CKPinnedConversationRichLinkBubble

- (CKPinnedConversationRichLinkBubble)initWithRichLinkActivityItem:(id)a3
{
  v5 = a3;
  v6 = [v5 linkPreviewContentView];
  [v6 setDelegate:self];
  v11.receiver = self;
  v11.super_class = CKPinnedConversationRichLinkBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:v5 contentView:v6 needsContentViewStroke:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_richLinkActivityItem, a3);
    objc_storeStrong(&v8->_linkView, v6);
    [(CKPinnedConversationRichLinkBubble *)v8 addSubview:v8->_linkView];
    [(CKPinnedConversationRichLinkBubble *)v8 _updatePillCornerRadius];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (UIEdgeInsets)contentViewPadding
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_updatePillCornerRadius
{
  v5 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0 options:1];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  [v3 lineHeight];
  UIRoundToViewScale();
  self->_pillCornerRadius = v4;
}

- (void)setActivityItem:(id)a3
{
  v5 = a3;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationRichLinkBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_richLinkActivityItem, a3);
    [(CKPinnedConversationRichLinkBubble *)self _updateLinkMetadata];
  }
}

- (void)_updateLinkMetadata
{
  v7 = [(CKPinnedConversationRichLinkBubble *)self richLinkActivityItem];
  v3 = [v7 message];
  v4 = [v7 chatContext];
  v5 = [v3 richLinkDataSourceWithChatContext:v4];

  v6 = [v5 richLinkMetadata];
  [(LPLinkView *)self->_linkView setMetadata:v6];
  [(CKPinnedConversationRichLinkBubble *)self setNeedsLayout];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CKPinnedConversationRichLinkBubble *)self _updatePillCornerRadius];

  [(CKPinnedConversationRichLinkBubble *)self setNeedsLayout];
}

- (void)linkViewNeedsResize:(id)a3
{
  v4 = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 activityItemViewNeedsResize:self];
  }
}

@end