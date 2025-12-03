@interface CKConversationListNewMessageCollectionViewCell
- (CKConversationListCollectionViewCellDelegate)delegate;
- (CKConversationListNewMessageCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)widthForDeterminingAvatarVisibility;
- (void)didHoverOverCell:(id)cell;
- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell;
- (void)setSelected:(BOOL)selected;
- (void)updateContentsForConversation:(id)conversation;
- (void)updateFontSize;
@end

@implementation CKConversationListNewMessageCollectionViewCell

- (CKConversationListNewMessageCollectionViewCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CKConversationListNewMessageCollectionViewCell;
  v3 = [(CKConversationListEmbeddedCollectionViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    embeddedNewMessageTableViewCell = [(CKConversationListNewMessageCollectionViewCell *)v3 embeddedNewMessageTableViewCell];
    [embeddedNewMessageTableViewCell setDelegate:v4];

    v6 = +[CKUIBehavior sharedBehaviors];
    preferredDeleteButtonVisibilityForNewCompose = [v6 preferredDeleteButtonVisibilityForNewCompose];

    if (preferredDeleteButtonVisibilityForNewCompose == 2)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [(CKConversationListNewMessageCollectionViewCell *)v4 addGestureRecognizer:v8];
    }
  }

  return v4;
}

- (void)didHoverOverCell:(id)cell
{
  cellCopy = cell;
  embeddedNewMessageTableViewCell = [(CKConversationListNewMessageCollectionViewCell *)self embeddedNewMessageTableViewCell];
  [embeddedNewMessageTableViewCell didHoverOverCell:cellCopy];
}

- (void)updateFontSize
{
  embeddedNewMessageTableViewCell = [(CKConversationListNewMessageCollectionViewCell *)self embeddedNewMessageTableViewCell];
  [embeddedNewMessageTableViewCell updateFontSize];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v6.receiver = self;
  v6.super_class = CKConversationListNewMessageCollectionViewCell;
  [(CKConversationListNewMessageCollectionViewCell *)&v6 setSelected:?];
  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
  [embeddedTableViewCell setSelected:selectedCopy];
}

- (void)updateContentsForConversation:(id)conversation
{
  conversationCopy = conversation;
  embeddedTableViewCell = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];

  if (embeddedTableViewCell)
  {
    embeddedTableViewCell2 = [(CKConversationListEmbeddedCollectionViewCell *)self embeddedTableViewCell];
    [embeddedTableViewCell2 updateContentsForConversation:conversationCopy];
  }
}

- (double)widthForDeterminingAvatarVisibility
{
  delegate = [(CKConversationListNewMessageCollectionViewCell *)self delegate];
  [delegate widthForDeterminingAvatarVisibility];
  v4 = v3;

  return v4;
}

- (void)selectedDeleteButtonForConversation:(id)conversation inCell:(id)cell
{
  conversationCopy = conversation;
  delegate = [(CKConversationListNewMessageCollectionViewCell *)self delegate];
  [delegate selectedDeleteButtonForConversation:conversationCopy inCell:self];
}

- (CKConversationListCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end