@interface IMExpressiveSendAsTextChatItem
- (id)_initWithItem:(id)a3 text:(id)a4;
@end

@implementation IMExpressiveSendAsTextChatItem

- (id)_initWithItem:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = IMExpressiveSendAsTextChatItem;
  v10 = [(IMChatItem *)&v19 _initWithItem:v6];
  if (v10)
  {
    v11 = objc_msgSend_guid(v6, v8, v9);
    v12 = sub_1A83AC604();

    objc_msgSend__setGUID_(v10, v13, v12);
    v16 = objc_msgSend_copy(v7, v14, v15);
    v17 = v10[7];
    v10[7] = v16;
  }

  return v10;
}

@end