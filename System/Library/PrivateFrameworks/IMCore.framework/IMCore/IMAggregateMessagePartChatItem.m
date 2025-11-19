@interface IMAggregateMessagePartChatItem
- (id)_initWithItem:(id)a3 messagePartRange:(_NSRange)a4 subparts:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4;
@end

@implementation IMAggregateMessagePartChatItem

- (id)replyContextPreviewChatItemForReply:(id)a3 chatContext:(id)a4
{
  v5 = a3;
  v6 = [IMReplyContextAggregateMessagePartChatItem alloc];
  v9 = objc_msgSend__item(self, v7, v8);
  v12 = objc_msgSend_guid(v5, v10, v11);
  v15 = objc_msgSend_isFromMe(v5, v13, v14);
  v18 = objc_msgSend_messagePartRange(self, v16, v17);
  v20 = v19;
  v22 = objc_msgSend_subparts(self, v19, v21);
  v24 = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_messagePartRange_subparts_(v6, v23, v9, v5, v12, v15, v18, v20, v22);

  return v24;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMAggregateMessagePartChatItem;
  v4 = [(IMTextMessagePartChatItem *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"[[%@] subparts: %@]", v4, self->_subparts);

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_messagePartRange(self, v8, v9);
  v12 = objc_msgSend__initWithItem_messagePartRange_subparts_(v4, v11, v7, v10, v11, self->_subparts);

  v15 = objc_msgSend_visibleAssociatedMessageChatItems(self, v13, v14);
  objc_msgSend__setVisibleAssociatedMessageChatItems_(v12, v16, v15);

  return v12;
}

- (id)_initWithItem:(id)a3 messagePartRange:(_NSRange)a4 subparts:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v13 = objc_msgSend_subject(v9, v11, v12);
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v17 = objc_msgSend_subject(v9, v15, v16);
    v19 = objc_msgSend_initWithString_(v14, v18, v17);
  }

  else
  {
    v19 = 0;
  }

  v22 = objc_msgSend_body(v9, v20, v21);
  v34.receiver = self;
  v34.super_class = IMAggregateMessagePartChatItem;
  v23 = [(IMTextMessagePartChatItem *)&v34 _initWithItem:v9 text:v22 translationSecondaryText:0 index:0 messagePartRange:location subject:length isShowingEditHistory:v19 showTranslationAlternateText:0];

  if (v23)
  {
    v26 = objc_msgSend_guid(v9, v24, v25);
    v27 = sub_1A83AC604();

    objc_msgSend__setGUID_(v23, v28, v27);
    v31 = objc_msgSend_copy(v10, v29, v30);
    v32 = v23[25];
    v23[25] = v31;
  }

  return v23;
}

@end