@interface CKConversationListCollectionViewConversationCell
+ (Class)conversationCellClassForCurrentSizeCategory;
+ (double)cellHeightForDisplayScale:(double)scale;
+ (id)identifierForConversation:(id)conversation;
+ (id)reuseIdentifier;
- (BOOL)avatarView:(id)view shouldShowContact:(id)contact;
- (BOOL)shouldHidePreviewSummary;
- (CKConversationListCollectionViewCellDelegate)delegate;
- (CKConversationListCollectionViewConversationCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (double)widthForDeterminingAvatarVisibility;
- (id)avatarView;
- (id)footer;
- (id)summaryLabelTextColor;
- (void)avatarHeaderWasTappedForConversation:(id)conversation inCell:(id)cell;
- (void)didHoverOverCell:(id)cell;
- (void)dragStateDidChange:(int64_t)change;
- (void)forceUnreadIndicatorVisibility:(BOOL)visibility forConversation:(id)conversation animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell;
- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated;
- (void)setMarginInsets:(UIEdgeInsets)insets;
- (void)setShouldHidePreviewSummary:(BOOL)summary;
- (void)updateContentsForConversation:(id)conversation;
- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview;
@end

@implementation CKConversationListCollectionViewConversationCell

+ (id)reuseIdentifier
{
  conversationCellClassForCurrentSizeCategory = [self conversationCellClassForCurrentSizeCategory];

  return [conversationCellClassForCurrentSizeCategory reuseIdentifier];
}

+ (Class)conversationCellClassForCurrentSizeCategory
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 isAccessibilityPreferredContentSizeCategory];

  v3 = objc_opt_class();

  return v3;
}

- (id)avatarView
{
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  avatarView = [embeddedConversationTableViewCell avatarView];

  return avatarView;
}

- (void)layoutSubviews
{
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [(CKConversationListCollectionViewConversationCell *)self bounds];
  [embeddedConversationTableViewCell setContainerBounds:?];

  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewConversationCell;
  [(CKConversationListCollectionViewConversationCell *)&v4 layoutSubviews];
}

- (double)widthForDeterminingAvatarVisibility
{
  delegate = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [delegate widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (CKConversationListCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)identifierForConversation:(id)conversation
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

+ (double)cellHeightForDisplayScale:(double)scale
{
  conversationCellClassForCurrentSizeCategory = [self conversationCellClassForCurrentSizeCategory];

  [conversationCellClassForCurrentSizeCategory cellHeightForDisplayScale:scale];
  return result;
}

- (BOOL)shouldHidePreviewSummary
{
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  shouldHidePreviewSummary = [embeddedConversationTableViewCell shouldHidePreviewSummary];

  return shouldHidePreviewSummary;
}

- (void)setShouldHidePreviewSummary:(BOOL)summary
{
  summaryCopy = summary;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell setShouldHidePreviewSummary:summaryCopy];
}

- (void)updateContentsForConversation:(id)conversation
{
  conversationCopy = conversation;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell updateContentsForConversation:conversationCopy];
}

- (void)updateContentsForConversation:(id)conversation fastPreview:(BOOL)preview
{
  previewCopy = preview;
  conversationCopy = conversation;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell updateContentsForConversation:conversationCopy fastPreview:previewCopy];
}

- (BOOL)avatarView:(id)view shouldShowContact:(id)contact
{
  contactCopy = contact;
  viewCopy = view;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v9 = [embeddedConversationTableViewCell avatarView:viewCopy shouldShowContact:contactCopy];

  return v9;
}

- (void)setEditingMode:(unint64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = CKConversationListCollectionViewConversationCell;
  [CKConversationListEmbeddedCollectionViewCell setEditingMode:sel_setEditingMode_animated_ animated:?];
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell setEditingPins:mode == 2 animated:animatedCopy];
}

- (id)footer
{
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  footer = [embeddedConversationTableViewCell footer];

  return footer;
}

- (void)forceUnreadIndicatorVisibility:(BOOL)visibility forConversation:(id)conversation animated:(BOOL)animated
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  conversationCopy = conversation;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell forceUnreadIndicatorVisibility:visibilityCopy forConversation:conversationCopy animated:animatedCopy];
}

- (void)avatarHeaderWasTappedForConversation:(id)conversation inCell:(id)cell
{
  conversationCopy = conversation;
  delegate = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [delegate avatarHeaderWasTappedForConversation:conversationCopy];
}

- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell
{
  conversationCopy = conversation;
  delegate = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [delegate selectedDeleteButtonForConversation:conversationCopy inCell:self];
}

- (CKConversationListCollectionViewConversationCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewConversationCell;
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)v3 embeddedConversationTableViewCell];
    [embeddedConversationTableViewCell setDelegate:v4];

    embeddedConversationTableViewCell2 = [(CKConversationListCollectionViewConversationCell *)v4 embeddedConversationTableViewCell];
    [(CKConversationListCollectionViewConversationCell *)v4 bounds];
    [embeddedConversationTableViewCell2 setContainerBounds:?];

    v7 = +[CKUIBehavior sharedBehaviors];
    showsHoverToDeleteButton = [v7 showsHoverToDeleteButton];

    if (showsHoverToDeleteButton)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKConversationListCollectionViewConversationCell *)v4 addGestureRecognizer:v9];
    }
  }

  return v4;
}

- (void)didHoverOverCell:(id)cell
{
  cellCopy = cell;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell didHoverOverCell:cellCopy];
}

- (void)setMarginInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_marginInsets = insets;
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [embeddedConversationTableViewCell setMarginInsets:{top, left, bottom, right}];
}

- (id)summaryLabelTextColor
{
  embeddedConversationTableViewCell = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  summaryLabelTextColor = [embeddedConversationTableViewCell summaryLabelTextColor];

  return summaryLabelTextColor;
}

- (void)dragStateDidChange:(int64_t)change
{
  v6.receiver = self;
  v6.super_class = CKConversationListCollectionViewConversationCell;
  [(CKConversationListCollectionViewConversationCell *)&v6 dragStateDidChange:change];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained listCellIsBeingDisplayedAsGhostedCellInPinnedSection:self];

  if (v5)
  {
    [(CKConversationListCollectionViewConversationCell *)self setAlpha:0.0];
  }
}

- (UIEdgeInsets)marginInsets
{
  top = self->_marginInsets.top;
  left = self->_marginInsets.left;
  bottom = self->_marginInsets.bottom;
  right = self->_marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end