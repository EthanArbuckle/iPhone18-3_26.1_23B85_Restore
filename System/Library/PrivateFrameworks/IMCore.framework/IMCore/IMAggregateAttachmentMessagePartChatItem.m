@interface IMAggregateAttachmentMessagePartChatItem
- (id)_initWithItem:(id)a3 text:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 transferGUIDs:(id)a7 chatContext:(id)a8 visibleAssociatedMessageChatItems:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4;
@end

@implementation IMAggregateAttachmentMessagePartChatItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMAggregateAttachmentMessagePartChatItem;
  v4 = [(IMAttachmentMessagePartChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"[[%@] transferGUIDs: %@]", v4, self->_transferGUIDs);

  return v6;
}

- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4
{
  v5 = a3;
  v38 = [IMReplyContextAggregateAttachmentMessagePartChatItem alloc];
  v37 = objc_msgSend__item(self, v6, v7);
  v10 = objc_msgSend_guid(v5, v8, v9);
  v13 = objc_msgSend_isFromMe(v5, v11, v12);
  v16 = objc_msgSend_text(self, v14, v15);
  v19 = objc_msgSend_index(self, v17, v18);
  v22 = objc_msgSend_messagePartRange(self, v20, v21);
  v24 = v23;
  v26 = objc_msgSend_transferGUIDs(self, v23, v25);
  v29 = objc_msgSend_chatContext(self, v27, v28);
  v31 = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_text_index_messagePartRange_transferGUIDs_chatContext_(v38, v30, v37, v5, v10, v13, v16, v19, v22, v24, v26, v29);

  v34 = objc_msgSend_aggregateAttachmentParts(self, v32, v33);
  objc_msgSend_setAggregateAttachmentParts_(v31, v35, v34);

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_text(self, v8, v9);
  v13 = objc_msgSend_index(self, v11, v12);
  v16 = objc_msgSend_messagePartRange(self, v14, v15);
  v18 = v17;
  transferGUIDs = self->_transferGUIDs;
  v21 = objc_msgSend_chatContext(self, v17, v20);
  v24 = objc_msgSend_visibleAssociatedMessageChatItems(self, v22, v23);
  v26 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUIDs_chatContext_visibleAssociatedMessageChatItems_(v4, v25, v7, v10, v13, v16, v18, transferGUIDs, v21, v24);

  v29 = objc_msgSend_aggregateAttachmentParts(self, v27, v28);
  objc_msgSend_setAggregateAttachmentParts_(v26, v30, v29);

  return v26;
}

- (id)_initWithItem:(id)a3 text:(id)a4 index:(int64_t)a5 messagePartRange:(_NSRange)a6 transferGUIDs:(id)a7 chatContext:(id)a8 visibleAssociatedMessageChatItems:(id)a9
{
  length = a6.length;
  location = a6.location;
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v34.receiver = self;
  v34.super_class = IMAggregateAttachmentMessagePartChatItem;
  v20 = [(IMMessagePartChatItem *)&v34 _initWithItem:v15 text:a4 index:a5 messagePartRange:location visibleAssociatedMessageChatItems:length, a9];
  if (v20)
  {
    v21 = objc_msgSend_guid(v15, v18, v19);
    v22 = sub_1A83AC604();

    objc_msgSend__setGUID_(v20, v23, v22);
    v26 = objc_msgSend_copy(v16, v24, v25);
    v27 = v20[28];
    v20[28] = v26;

    objc_msgSend_setChatContext_(v20, v28, v17);
    v31 = v20[28];
    if (!v31 || !objc_msgSend_count(v31, v29, v30))
    {
      v32 = IMLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_1A84DFF34(v20, v32);
      }
    }
  }

  return v20;
}

@end