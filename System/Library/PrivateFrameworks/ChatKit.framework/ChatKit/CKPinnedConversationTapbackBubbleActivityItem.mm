@interface CKPinnedConversationTapbackBubbleActivityItem
- (CKPinnedConversationTapbackBubbleActivityItem)initWithMessage:(id)message contentScale:(double)scale attachedContactItemIdentifier:(id)identifier;
- (id)activityItemView;
@end

@implementation CKPinnedConversationTapbackBubbleActivityItem

- (CKPinnedConversationTapbackBubbleActivityItem)initWithMessage:(id)message contentScale:(double)scale attachedContactItemIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CKPinnedConversationTapbackBubbleActivityItem;
  v11 = [(CKPinnedConversationTapbackBubbleActivityItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_message, message);
    v12->_activityItemContentScale = scale;
    v13 = [identifierCopy copy];
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