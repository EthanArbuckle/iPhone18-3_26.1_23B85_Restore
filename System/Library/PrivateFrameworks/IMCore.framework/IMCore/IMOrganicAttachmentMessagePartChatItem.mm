@interface IMOrganicAttachmentMessagePartChatItem
- (id)_initWithAttachmentMessagePartChatItem:(id)item;
- (id)layoutGroupIdentifier;
@end

@implementation IMOrganicAttachmentMessagePartChatItem

- (id)_initWithAttachmentMessagePartChatItem:(id)item
{
  itemCopy = item;
  v7 = objc_msgSend__item(itemCopy, v5, v6);
  v10 = objc_msgSend_text(itemCopy, v8, v9);
  v13 = objc_msgSend_index(itemCopy, v11, v12);
  v16 = objc_msgSend_messagePartRange(itemCopy, v14, v15);
  v18 = v17;
  v20 = objc_msgSend_transferGUID(itemCopy, v17, v19);
  v23 = objc_msgSend_chatContext(itemCopy, v21, v22);
  v26 = objc_msgSend_visibleAssociatedMessageChatItems(itemCopy, v24, v25);

  v28 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_visibleAssociatedMessageChatItems_(self, v27, v7, v10, v13, v16, v18, v20, v23, v26);
  return v28;
}

- (id)layoutGroupIdentifier
{
  v3 = objc_msgSend__item(self, a2, v2);
  v6 = objc_msgSend_guid(v3, v4, v5);

  return v6;
}

@end