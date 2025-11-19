@interface IMStewieStoppedSharingChatItem
- (IMChat)chat;
- (id)_initWithItem:(id)a3 emergencyUserHandle:(id)a4 chat:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMStewieStoppedSharingChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  handle = self->_handle;
  v11 = objc_msgSend_chat(self, v9, v10);
  v13 = objc_msgSend__initWithItem_emergencyUserHandle_chat_(v4, v12, v7, handle, v11);

  return v13;
}

- (id)_initWithItem:(id)a3 emergencyUserHandle:(id)a4 chat:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = IMStewieStoppedSharingChatItem;
  v13 = [(IMChatItem *)&v21 _initWithItem:v8];
  if (v13)
  {
    v14 = objc_msgSend_guid(v8, v11, v12);
    v17 = objc_msgSend_ID(v9, v15, v16);
    v18 = sub_1A83AC604();

    objc_msgSend__setGUID_(v13, v19, v18);
    objc_storeStrong(v13 + 7, a4);
    objc_storeWeak(v13 + 8, v10);
  }

  return v13;
}

- (IMChat)chat
{
  WeakRetained = objc_loadWeakRetained(&self->_chat);

  return WeakRetained;
}

@end