@interface IMGroupTypingChatItem
- (id)_initWithItem:(id)item;
@end

@implementation IMGroupTypingChatItem

- (id)_initWithItem:(id)item
{
  itemCopy = item;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v7, v8, v9);

  if (isGroupTypingIndicatorsEnabled)
  {
    v24.receiver = self;
    v24.super_class = IMGroupTypingChatItem;
    v11 = [(IMTypingChatItem *)&v24 _initWithItem:itemCopy];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      isAudioMessage = objc_msgSend_isAudioMessage(itemCopy, v13, v14);
      v18 = objc_msgSend_isFromMe(itemCopy, v16, v17);
      v20 = objc_msgSend_initWithFormat_(v12, v19, @"gt:%d/%d", isAudioMessage, v18);
      objc_msgSend__setGUID_(v11, v21, v20);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end