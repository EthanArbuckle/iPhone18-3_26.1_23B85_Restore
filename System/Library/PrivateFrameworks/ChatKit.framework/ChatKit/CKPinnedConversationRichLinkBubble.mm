@interface CKPinnedConversationRichLinkBubble
- (CKPinnedConversationRichLinkBubble)initWithRichLinkActivityItem:(id)item;
- (UIEdgeInsets)contentViewPadding;
- (void)_updateLinkMetadata;
- (void)_updatePillCornerRadius;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)linkViewNeedsResize:(id)resize;
- (void)setActivityItem:(id)item;
@end

@implementation CKPinnedConversationRichLinkBubble

- (CKPinnedConversationRichLinkBubble)initWithRichLinkActivityItem:(id)item
{
  itemCopy = item;
  linkPreviewContentView = [itemCopy linkPreviewContentView];
  [linkPreviewContentView setDelegate:self];
  v11.receiver = self;
  v11.super_class = CKPinnedConversationRichLinkBubble;
  v7 = [(CKPinnedConversationTailedActivityItemView *)&v11 initWithActivityItem:itemCopy contentView:linkPreviewContentView needsContentViewStroke:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_richLinkActivityItem, item);
    objc_storeStrong(&v8->_linkView, linkPreviewContentView);
    [(CKPinnedConversationRichLinkBubble *)v8 addSubview:v8->_linkView];
    [(CKPinnedConversationRichLinkBubble *)v8 _updatePillCornerRadius];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
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

- (void)setActivityItem:(id)item
{
  itemCopy = item;
  v6.receiver = self;
  v6.super_class = CKPinnedConversationRichLinkBubble;
  [(CKPinnedConversationTailedActivityItemView *)&v6 setActivityItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_richLinkActivityItem, item);
    [(CKPinnedConversationRichLinkBubble *)self _updateLinkMetadata];
  }
}

- (void)_updateLinkMetadata
{
  richLinkActivityItem = [(CKPinnedConversationRichLinkBubble *)self richLinkActivityItem];
  message = [richLinkActivityItem message];
  chatContext = [richLinkActivityItem chatContext];
  v5 = [message richLinkDataSourceWithChatContext:chatContext];

  richLinkMetadata = [v5 richLinkMetadata];
  [(LPLinkView *)self->_linkView setMetadata:richLinkMetadata];
  [(CKPinnedConversationRichLinkBubble *)self setNeedsLayout];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CKPinnedConversationRichLinkBubble *)self _updatePillCornerRadius];

  [(CKPinnedConversationRichLinkBubble *)self setNeedsLayout];
}

- (void)linkViewNeedsResize:(id)resize
{
  activityItemViewDelegate = [(CKPinnedConversationTailedActivityItemView *)self activityItemViewDelegate];
  if (objc_opt_respondsToSelector())
  {
    [activityItemViewDelegate activityItemViewNeedsResize:self];
  }
}

@end