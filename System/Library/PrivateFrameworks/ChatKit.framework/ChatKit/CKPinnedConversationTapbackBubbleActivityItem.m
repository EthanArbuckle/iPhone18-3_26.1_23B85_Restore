@interface CKPinnedConversationTapbackBubbleActivityItem
- (CKPinnedConversationTapbackBubbleActivityItem)initWithMessage:(id)a3 contentScale:(double)a4 attachedContactItemIdentifier:(id)a5;
- (id)activityItemView;
@end

@implementation CKPinnedConversationTapbackBubbleActivityItem

- (CKPinnedConversationTapbackBubbleActivityItem)initWithMessage:(id)a3 contentScale:(double)a4 attachedContactItemIdentifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CKPinnedConversationTapbackBubbleActivityItem;
  v11 = [(CKPinnedConversationTapbackBubbleActivityItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, a3);
    v12->_activityItemContentScale = a4;
    v13 = [v10 copy];
    attachedContactItemIdentifier = v12->_attachedContactItemIdentifier;
    v12->_attachedContactItemIdentifier = v13;
  }

  return v12;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationTapbackBubble alloc] initWithActivityItem:self];

  return v2;
}

@end