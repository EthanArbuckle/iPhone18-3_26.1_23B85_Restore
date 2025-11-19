@interface IMReplyContextAggregateMessagePartChatItem
- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 messagePartRange:(_NSRange)a7 subparts:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMReplyContextAggregateMessagePartChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  parentItem = self->_parentItem;
  replyMessageGUID = self->_replyMessageGUID;
  replyIsFromMe = self->_replyIsFromMe;
  v13 = objc_msgSend_messagePartRange(self, v11, v12);
  v15 = v14;
  v17 = objc_msgSend_subparts(self, v14, v16);
  v19 = objc_msgSend__initWithItem_parentItem_replyMessageGUID_replyIsFromMe_messagePartRange_subparts_(v4, v18, v7, parentItem, replyMessageGUID, replyIsFromMe, v13, v15, v17);

  return v19;
}

- (id)_initWithItem:(id)a3 parentItem:(id)a4 replyMessageGUID:(id)a5 replyIsFromMe:(BOOL)a6 messagePartRange:(_NSRange)a7 subparts:(id)a8
{
  length = a7.length;
  location = a7.location;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v24.receiver = self;
  v24.super_class = IMReplyContextAggregateMessagePartChatItem;
  v19 = [(IMAggregateMessagePartChatItem *)&v24 _initWithItem:v14 messagePartRange:location subparts:length, a8];
  if (v19)
  {
    v20 = objc_msgSend_guid(v14, v17, v18);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(v19, v22, v21);
    objc_storeStrong(v19 + 27, a4);
    *(v19 + 208) = a6;
    objc_storeStrong(v19 + 28, a5);
  }

  return v19;
}

@end