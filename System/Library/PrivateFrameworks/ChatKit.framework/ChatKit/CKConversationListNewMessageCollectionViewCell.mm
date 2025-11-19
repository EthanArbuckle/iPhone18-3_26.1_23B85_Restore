@interface CKConversationListNewMessageCollectionViewCell
- (CKConversationListCollectionViewCellDelegate)delegate;
- (CKConversationListNewMessageCollectionViewCell)initWithFrame:(CGRect)a3;
- (double)widthForDeterminingAvatarVisibility;
- (void)didHoverOverCell:(id)a3;
- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)updateContentsForConversation:(id)a3;
- (void)updateFontSize;
@end

@implementation CKConversationListNewMessageCollectionViewCell

- (CKConversationListNewMessageCollectionViewCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKConversationListNewMessageCollectionViewCell;
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKConversationListNewMessageCollectionViewCell *)v3 embeddedNewMessageTableViewCell];
    [v5 setDelegate:v4];

    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 preferredDeleteButtonVisibilityForNewCompose];

    if (v7 == 2)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKConversationListNewMessageCollectionViewCell *)v4 addGestureRecognizer:v8];
    }
  }

  return v4;
}

- (void)didHoverOverCell:(id)a3
{
  v4 = a3;
  v5 = [(CKConversationListNewMessageCollectionViewCell *)self embeddedNewMessageTableViewCell];
  [v5 didHoverOverCell:v4];
}

- (void)updateFontSize
{
  v2 = [(CKConversationListNewMessageCollectionViewCell *)self embeddedNewMessageTableViewCell];
  [v2 updateFontSize];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CKConversationListNewMessageCollectionViewCell;
  [(CKConversationListNewMessageCollectionViewCell *)&v6 setSelected:?];
  v5 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [v5 setSelected:v3];
}

- (void)updateContentsForConversation:(id)a3
{
  v6 = a3;
  v4 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];

  if (v4)
  {
    v5 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [v5 updateContentsForConversation:v6];
  }
}

- (double)widthForDeterminingAvatarVisibility
{
  v2 = [(CKConversationListNewMessageCollectionViewCell *)self delegate];
  [v2 widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (void)selectedDeleteButtonForConversation:(id)a3 inCell:(id)a4
{
  v5 = a3;
  v6 = [(CKConversationListNewMessageCollectionViewCell *)self delegate];
  [v6 selectedDeleteButtonForConversation:v5 inCell:self];
}

- (CKConversationListCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end