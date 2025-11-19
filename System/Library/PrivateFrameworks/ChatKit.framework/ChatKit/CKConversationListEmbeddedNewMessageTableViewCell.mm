@interface CKConversationListEmbeddedNewMessageTableViewCell
- (CKConversationListEmbeddedNewMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CKConversationListEmbeddedNewMessageTableViewCell

- (CKConversationListEmbeddedNewMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = CKConversationListEmbeddedNewMessageTableViewCell;
  v4 = [(CKConversationListNewMessageCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKConversationListEmbeddedNewMessageTableViewCell *)v4 setUserInteractionEnabled:1];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CKConversationListEmbeddedNewMessageTableViewCell;
  v5 = [(CKConversationListEmbeddedNewMessageTableViewCell *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = [(CKConversationListNewMessageCell *)self closeButton];
  if (v5 == v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

@end