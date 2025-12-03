@interface IMExpressiveSendAsTextChatItem
- (id)_initWithItem:(id)item text:(id)text;
@end

@implementation IMExpressiveSendAsTextChatItem

- (id)_initWithItem:(id)item text:(id)text
{
  itemCopy = item;
  textCopy = text;
  v19.receiver = self;
  v19.super_class = IMExpressiveSendAsTextChatItem;
  v10 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  if (v10)
  {
    v11 = objc_msgSend_guid(itemCopy, v8, v9);
    v12 = sub_1A83AC604();

    objc_msgSend__setGUID_(v10, v13, v12);
    v16 = objc_msgSend_copy(textCopy, v14, v15);
    v17 = v10[7];
    v10[7] = v16;
  }

  return v10;
}

@end