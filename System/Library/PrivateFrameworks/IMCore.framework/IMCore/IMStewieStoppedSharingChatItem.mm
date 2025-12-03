@interface IMStewieStoppedSharingChatItem
- (IMChat)chat;
- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMStewieStoppedSharingChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  handle = self->_handle;
  v11 = objc_msgSend_chat(self, v9, v10);
  v13 = objc_msgSend__initWithItem_emergencyUserHandle_chat_(v4, v12, v7, handle, v11);

  return v13;
}

- (id)_initWithItem:(id)item emergencyUserHandle:(id)handle chat:(id)chat
{
  itemCopy = item;
  handleCopy = handle;
  chatCopy = chat;
  v21.receiver = self;
  v21.super_class = IMStewieStoppedSharingChatItem;
  v13 = [(IMChatItem *)&v21 _initWithItem:itemCopy];
  if (v13)
  {
    v14 = objc_msgSend_guid(itemCopy, v11, v12);
    v17 = objc_msgSend_ID(handleCopy, v15, v16);
    v18 = sub_1A83AC604();

    objc_msgSend__setGUID_(v13, v19, v18);
    objc_storeStrong(v13 + 7, handle);
    objc_storeWeak(v13 + 8, chatCopy);
  }

  return v13;
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

@end