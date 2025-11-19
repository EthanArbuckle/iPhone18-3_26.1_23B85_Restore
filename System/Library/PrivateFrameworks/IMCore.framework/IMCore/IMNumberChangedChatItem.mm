@interface IMNumberChangedChatItem
- (id)_initWithItem:(id)a3 senderHandle:(id)a4;
@end

@implementation IMNumberChangedChatItem

- (id)_initWithItem:(id)a3 senderHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = IMNumberChangedChatItem;
  v8 = [(IMChatItem *)&v18 _initWithItem:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 7, a4);
    v10 = MEMORY[0x1E696AEC0];
    v13 = objc_msgSend_guid(v6, v11, v12);
    v15 = objc_msgSend_stringWithFormat_(v10, v14, @"%@%@", @"nc:", v13);

    objc_msgSend__setGUID_(v9, v16, v15);
  }

  return v9;
}

@end