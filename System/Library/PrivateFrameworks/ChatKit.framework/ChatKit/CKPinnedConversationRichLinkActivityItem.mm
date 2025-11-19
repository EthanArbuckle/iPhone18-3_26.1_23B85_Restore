@interface CKPinnedConversationRichLinkActivityItem
- (CKPinnedConversationRichLinkActivityItem)initWithLinkView:(id)a3;
- (CKPinnedConversationRichLinkActivityItem)initWithMessage:(id)a3 chatContext:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6;
- (id)activityItemView;
- (id)linkPreviewContentView;
@end

@implementation CKPinnedConversationRichLinkActivityItem

- (CKPinnedConversationRichLinkActivityItem)initWithMessage:(id)a3 chatContext:(id)a4 contentScale:(double)a5 attachedContactItemIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = CKPinnedConversationRichLinkActivityItem;
  v14 = [(CKPinnedConversationRichLinkActivityItem *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_message, a3);
    objc_storeStrong(&v15->_chatContext, a4);
    v15->_activityItemContentScale = a5;
    v16 = [v13 copy];
    attachedContactItemIdentifier = v15->_attachedContactItemIdentifier;
    v15->_attachedContactItemIdentifier = v16;
  }

  return v15;
}

- (CKPinnedConversationRichLinkActivityItem)initWithLinkView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKPinnedConversationRichLinkActivityItem;
  v6 = [(CKPinnedConversationRichLinkActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkView, a3);
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
  v3 = [(CKPinnedConversationRichLinkActivityItem *)self message];

  if (v3)
  {
    v4 = [(CKPinnedConversationRichLinkActivityItem *)self message];
    v5 = [(CKPinnedConversationRichLinkActivityItem *)self chatContext];
    v6 = [v4 richLinkDataSourceWithChatContext:v5];

    v7 = objc_alloc(MEMORY[0x1E696ECC8]);
    v8 = [v6 url];
    v9 = [v7 initWithURL:v8];

    v10 = [v6 richLinkMetadata];
    [v9 setMetadata:v10];

    [v9 _setPreferredSizeClass:7];
    [v9 _setApplyCornerRadius:0];
    [v9 _setDisableTapGesture:1];
    [v9 _setDisableAnimations:1];
    [v9 _setForceFlexibleWidth:1];
  }

  else
  {
    v9 = [(CKPinnedConversationRichLinkActivityItem *)self linkView];

    if (v9)
    {
      v9 = [(CKPinnedConversationRichLinkActivityItem *)self linkView];
    }
  }

  return v9;
}

@end