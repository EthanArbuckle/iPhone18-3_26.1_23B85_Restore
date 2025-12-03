@interface CKPinnedConversationTypingBubbleActivityItem
- (CKPinnedConversationTypingBubbleActivityItem)initWithMessage:(id)message contentScale:(double)scale attachedContactItemIdentifier:(id)identifier;
- (NSString)activityItemIdentifier;
- (id)activityItemView;
@end

@implementation CKPinnedConversationTypingBubbleActivityItem

- (CKPinnedConversationTypingBubbleActivityItem)initWithMessage:(id)message contentScale:(double)scale attachedContactItemIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = CKPinnedConversationTypingBubbleActivityItem;
  v11 = [(CKPinnedConversationTypingBubbleActivityItem *)&v16 init];
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

- (NSString)activityItemIdentifier
{
  guid = [(IMMessage *)self->_message guid];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ActivityTypingBubble-%@", guid];

  return v3;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationTypingBubble alloc] initWithActivityItem:self];

  return v2;
}

@end