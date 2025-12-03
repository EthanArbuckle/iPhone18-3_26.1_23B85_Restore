@interface IMTypingChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMTypingChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = IMTypingChatItem;
  v5 = [(IMChatItem *)&v17 _initWithItem:itemCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    isAudioMessage = objc_msgSend_isAudioMessage(itemCopy, v7, v8);
    v12 = objc_msgSend_isFromMe(itemCopy, v10, v11);
    v14 = objc_msgSend_initWithFormat_(v6, v13, @"t:%d/%d", isAudioMessage, v12);
    objc_msgSend__setGUID_(v5, v15, v14);
  }

  return v5;
}

@end