@interface IMReplyContextAggregateMessagePartChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me messagePartRange:(_NSRange)range subparts:(id)subparts;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMReplyContextAggregateMessagePartChatItem

- (id)copyWithZone:(_NSZone *)zone
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

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me messagePartRange:(_NSRange)range subparts:(id)subparts
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  parentItemCopy = parentItem;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = IMReplyContextAggregateMessagePartChatItem;
  subparts = [(IMAggregateMessagePartChatItem *)&v24 _initWithItem:itemCopy messagePartRange:location subparts:length, subparts];
  if (subparts)
  {
    v20 = objc_msgSend_guid(itemCopy, v17, v18);
    v21 = sub_1A83AC604();

    objc_msgSend__setGUID_(subparts, v22, v21);
    objc_storeStrong(subparts + 27, parentItem);
    *(subparts + 208) = me;
    objc_storeStrong(subparts + 28, d);
  }

  return subparts;
}

@end