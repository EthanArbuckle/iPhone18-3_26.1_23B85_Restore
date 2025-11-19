@interface IMReplySenderChatItem
- (id)_initWithItem:(id)a3 handle:(id)a4 threadIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation IMReplySenderChatItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend__item(self, v5, v6);
  v10 = objc_msgSend_handle(self, v8, v9);
  v12 = objc_msgSend__initWithItem_handle_(v4, v11, v7, v10);

  return v12;
}

- (id)_initWithItem:(id)a3 handle:(id)a4 threadIdentifier:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = IMReplySenderChatItem;
  v11 = [(IMSenderChatItem *)&v15 _initWithItem:a3 handle:a4];
  if (v11)
  {
    v12 = objc_msgSend_copy(v8, v9, v10);
    v13 = v11[11];
    v11[11] = v12;
  }

  return v11;
}

@end