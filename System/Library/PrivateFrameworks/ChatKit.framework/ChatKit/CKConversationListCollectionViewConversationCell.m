@interface CKConversationListCollectionViewConversationCell
+ (Class)conversationCellClassForCurrentSizeCategory;
+ (double)cellHeightForDisplayScale:(double)a3;
+ (id)identifierForConversation:(id)a3;
+ (id)reuseIdentifier;
- (BOOL)avatarView:(id)a3 shouldShowContact:(id)a4;
- (BOOL)shouldHidePreviewSummary;
- (CKConversationListCollectionViewCellDelegate)delegate;
- (CKConversationListCollectionViewConversationCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (double)widthForDeterminingAvatarVisibility;
- (id)avatarView;
- (id)footer;
- (id)summaryLabelTextColor;
- (void)avatarHeaderWasTappedForConversation:(id)a3 inCell:(id)a4;
- (void)didHoverOverCell:(id)a3;
- (void)dragStateDidChange:(int64_t)a3;
- (void)forceUnreadIndicatorVisibility:(BOOL)a3 forConversation:(id)a4 animated:(BOOL)a5;
- (void)layoutSubviews;
- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4;
- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4;
- (void)setMarginInsets:(UIEdgeInsets)a3;
- (void)setShouldHidePreviewSummary:(BOOL)a3;
- (void)updateContentsForConversation:(id)a3;
- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4;
@end

@implementation CKConversationListCollectionViewConversationCell

+ (id)reuseIdentifier
{
  v2 = [a1 conversationCellClassForCurrentSizeCategory];

  return [v2 reuseIdentifier];
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
  v2 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v3 = [v2 avatarView];

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [(CKConversationListCollectionViewConversationCell *)self bounds];
  [v3 setContainerBounds:?];

  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewConversationCell;
  [(CKConversationListCollectionViewConversationCell *)&v4 layoutSubviews];
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [v2 widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (CKConversationListCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)identifierForConversation:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

+ (double)cellHeightForDisplayScale:(double)a3
{
  v4 = [a1 conversationCellClassForCurrentSizeCategory];

  [v4 cellHeightForDisplayScale:a3];
  return result;
}

- (BOOL)shouldHidePreviewSummary
{
  v2 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v3 = [v2 shouldHidePreviewSummary];

  return v3;
}

- (void)setShouldHidePreviewSummary:(BOOL)a3
{
  v3 = a3;
  v4 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v4 setShouldHidePreviewSummary:v3];
}

- (void)updateContentsForConversation:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v5 updateContentsForConversation:v4];
}

- (void)updateContentsForConversation:(id)a3 fastPreview:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v7 updateContentsForConversation:v6 fastPreview:v4];
}

- (BOOL)avatarView:(id)a3 shouldShowContact:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v9 = [v8 avatarView:v7 shouldShowContact:v6];

  return v9;
}

- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = CKConversationListCollectionViewConversationCell;
  [CKConversationListEmbeddedCollectionViewCell setEditingMode:sel_setEditingMode_animated_ animated:?];
  v7 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v7 setEditingPins:a3 == 2 animated:v4];
}

- (id)footer
{
  v2 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v3 = [v2 footer];

  return v3;
}

- (void)forceUnreadIndicatorVisibility:(BOOL)a3 forConversation:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v9 forceUnreadIndicatorVisibility:v6 forConversation:v8 animated:v5];
}

- (void)avatarHeaderWasTappedForConversation:(id)a3 inCell:(id)a4
{
  v5 = a3;
  v6 = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [v6 avatarHeaderWasTappedForConversation:v5];
}

- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4
{
  v5 = a3;
  v6 = [(CKConversationListCollectionViewConversationCell *)self delegate];
  [v6 selectedDeleteButtonForConversation:v5 inCell:self];
}

- (CKConversationListCollectionViewConversationCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = CKConversationListCollectionViewConversationCell;
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKConversationListCollectionViewConversationCell *)v3 embeddedConversationTableViewCell];
    [v5 setDelegate:v4];

    v6 = [(CKConversationListCollectionViewConversationCell *)v4 embeddedConversationTableViewCell];
    [(CKConversationListCollectionViewConversationCell *)v4 bounds];
    [v6 setContainerBounds:?];

    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 showsHoverToDeleteButton];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKConversationListCollectionViewConversationCell *)v4 addGestureRecognizer:v9];
    }
  }

  return v4;
}

- (void)didHoverOverCell:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v5 didHoverOverCell:v4];
}

- (void)setMarginInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_marginInsets = a3;
  v7 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  [v7 setMarginInsets:{top, left, bottom, right}];
}

- (id)summaryLabelTextColor
{
  v2 = [(CKConversationListCollectionViewConversationCell *)self embeddedConversationTableViewCell];
  v3 = [v2 summaryLabelTextColor];

  return v3;
}

- (void)dragStateDidChange:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CKConversationListCollectionViewConversationCell;
  [(CKConversationListCollectionViewConversationCell *)&v6 dragStateDidChange:a3];
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