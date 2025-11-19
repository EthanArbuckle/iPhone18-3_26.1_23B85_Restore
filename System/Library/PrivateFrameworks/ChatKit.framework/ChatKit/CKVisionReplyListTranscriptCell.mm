@interface CKVisionReplyListTranscriptCell
- (CKVisionReplyListTranscriptCell)initWithFrame:(CGRect)a3;
- (CKVisionReplyListTranscriptCellDelegate)delegate;
- (void)layoutSubviewsForAlignmentContents;
- (void)replyListButtonDidSelectReply:(id)a3 sourceView:(id)a4;
- (void)setReplies:(id)a3;
@end

@implementation CKVisionReplyListTranscriptCell

- (CKVisionReplyListTranscriptCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKVisionReplyListTranscriptCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(_TtC7ChatKit33QuickReplyButtonListConfiguration);
  configuration = v3->_configuration;
  v3->_configuration = v4;

  return v3;
}

- (void)setReplies:(id)a3
{
  v18 = a3;
  if (![v18 isEqual:self->_replies] || ((-[UIView bounds](self->_listView, "bounds"), v6 = v5, v8 = v7, -[CKEditableCollectionViewCell contentAlignmentRect](self, "contentAlignmentRect"), v6 == v10) ? (v11 = v8 == v9) : (v11 = 0), !v11))
  {
    objc_storeStrong(&self->_replies, a3);
    [(UIView *)self->_listView removeFromSuperview];
    listView = self->_listView;
    self->_listView = 0;

    replies = self->_replies;
    if (replies)
    {
      v14 = [(CKVisionReplyListTranscriptCell *)self configuration];
      v15 = [_TtC7ChatKit26QuickReplyButtonListHelper makeListView:replies delegate:self configurationObject:v14];
      v16 = self->_listView;
      self->_listView = v15;

      v17 = [(CKEditableCollectionViewCell *)self contentView];
      [v17 addSubview:self->_listView];

      [(CKEditableCollectionViewCell *)self contentAlignmentRect];
      [(UIView *)self->_listView setFrame:?];
    }
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v12.receiver = self;
  v12.super_class = CKVisionReplyListTranscriptCell;
  [(CKEditableCollectionViewCell *)&v12 layoutSubviewsForAlignmentContents];
  if (CKIsRunningInMessagesNotificationExtension())
  {
    v3 = [(CKEditableCollectionViewCell *)self contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v5 + 0.0, v7 + 0.0, v9 + -8.0, v11];
  }

  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  [(UIView *)self->_listView setFrame:?];
}

- (void)replyListButtonDidSelectReply:(id)a3 sourceView:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained replyListCell:self didSelectReply:v7 sourceView:v6];
}

- (CKVisionReplyListTranscriptCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end