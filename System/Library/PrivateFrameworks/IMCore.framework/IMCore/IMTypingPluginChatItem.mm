@interface IMTypingPluginChatItem
- (id)_initWithItem:(id)item dataSource:(id)source;
@end

@implementation IMTypingPluginChatItem

- (id)_initWithItem:(id)item dataSource:(id)source
{
  itemCopy = item;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = IMTypingPluginChatItem;
  v10 = [(IMTypingChatItem *)&v20 _initWithItem:itemCopy];
  if (v10)
  {
    v11 = objc_msgSend_guid(itemCopy, v8, v9);
    v12 = sub_1A83AC604();

    objc_msgSend__setGUID_(v10, v13, v12);
    objc_msgSend_setDataSource_(v10, v14, sourceCopy);
    v17 = objc_msgSend_typingIndicatorIcon(itemCopy, v15, v16);
    v18 = v10[7];
    v10[7] = v17;
  }

  return v10;
}

@end