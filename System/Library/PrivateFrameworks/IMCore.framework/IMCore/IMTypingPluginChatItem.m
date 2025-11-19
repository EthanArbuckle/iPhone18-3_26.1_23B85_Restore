@interface IMTypingPluginChatItem
- (id)_initWithItem:(id)a3 dataSource:(id)a4;
@end

@implementation IMTypingPluginChatItem

- (id)_initWithItem:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = IMTypingPluginChatItem;
  v10 = [(IMTypingChatItem *)&v20 _initWithItem:v6];
  if (v10)
  {
    v11 = objc_msgSend_guid(v6, v8, v9);
    v12 = sub_1A83AC604();

    objc_msgSend__setGUID_(v10, v13, v12);
    objc_msgSend_setDataSource_(v10, v14, v7);
    v17 = objc_msgSend_typingIndicatorIcon(v6, v15, v16);
    v18 = v10[7];
    v10[7] = v17;
  }

  return v10;
}

@end