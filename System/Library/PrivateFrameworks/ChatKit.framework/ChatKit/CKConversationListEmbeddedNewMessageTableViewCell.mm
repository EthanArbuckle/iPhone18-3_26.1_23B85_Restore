@interface CKConversationListEmbeddedNewMessageTableViewCell
- (CKConversationListEmbeddedNewMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CKConversationListEmbeddedNewMessageTableViewCell

- (CKConversationListEmbeddedNewMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CKConversationListEmbeddedNewMessageTableViewCell;
  v4 = [(CKConversationListNewMessageCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKConversationListEmbeddedNewMessageTableViewCell *)v4 setUserInteractionEnabled:1];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = CKConversationListEmbeddedNewMessageTableViewCell;
  v5 = [(CKConversationListEmbeddedNewMessageTableViewCell *)&v10 hitTest:event withEvent:test.x, test.y];
  closeButton = [(CKConversationListNewMessageCell *)self closeButton];
  if (v5 == closeButton)
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