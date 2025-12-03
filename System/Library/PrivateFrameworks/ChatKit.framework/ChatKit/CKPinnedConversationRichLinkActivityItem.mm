@interface CKPinnedConversationRichLinkActivityItem
- (CKPinnedConversationRichLinkActivityItem)initWithLinkView:(id)view;
- (CKPinnedConversationRichLinkActivityItem)initWithMessage:(id)message chatContext:(id)context contentScale:(double)scale attachedContactItemIdentifier:(id)identifier;
- (id)activityItemView;
- (id)linkPreviewContentView;
@end

@implementation CKPinnedConversationRichLinkActivityItem

- (CKPinnedConversationRichLinkActivityItem)initWithMessage:(id)message chatContext:(id)context contentScale:(double)scale attachedContactItemIdentifier:(id)identifier
{
  messageCopy = message;
  contextCopy = context;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationRichLinkActivityItem;
  v14 = [(CKPinnedConversationRichLinkActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, message);
    objc_storeStrong(&v15->_chatContext, context);
    v15->_activityItemContentScale = scale;
    v16 = [identifierCopy copy];
    attachedContactItemIdentifier = v15->_attachedContactItemIdentifier;
    v15->_attachedContactItemIdentifier = v16;
  }

  return v15;
}

- (CKPinnedConversationRichLinkActivityItem)initWithLinkView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = CKPinnedConversationRichLinkActivityItem;
  v6 = [(CKPinnedConversationRichLinkActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkView, view);
  }

  return v7;
}

- (id)activityItemView
{
  v2 = [[CKPinnedConversationRichLinkBubble alloc] initWithRichLinkActivityItem:self];

  return v2;
}

- (id)linkPreviewContentView
{
  message = [(CKPinnedConversationRichLinkActivityItem *)self message];

  if (message)
  {
    message2 = [(CKPinnedConversationRichLinkActivityItem *)self message];
    chatContext = [(CKPinnedConversationRichLinkActivityItem *)self chatContext];
    v6 = [message2 richLinkDataSourceWithChatContext:chatContext];

    v7 = objc_alloc(MEMORY[0x1E696ECC8]);
    v8 = [v6 url];
    linkView = [v7 initWithURL:v8];

    richLinkMetadata = [v6 richLinkMetadata];
    [linkView setMetadata:richLinkMetadata];

    [linkView _setPreferredSizeClass:7];
    [linkView _setApplyCornerRadius:0];
    [linkView _setDisableTapGesture:1];
    [linkView _setDisableAnimations:1];
    [linkView _setForceFlexibleWidth:1];
  }

  else
  {
    linkView = [(CKPinnedConversationRichLinkActivityItem *)self linkView];

    if (linkView)
    {
      linkView = [(CKPinnedConversationRichLinkActivityItem *)self linkView];
    }
  }

  return linkView;
}

@end