@interface IMGroupTypingChatItem
- (id)_initWithItem:(id)a3;
@end

@implementation IMGroupTypingChatItem

- (id)_initWithItem:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v5, v6);
  isGroupTypingIndicatorsEnabled = objc_msgSend_isGroupTypingIndicatorsEnabled(v7, v8, v9);

  if (isGroupTypingIndicatorsEnabled)
  {
    v24.receiver = self;
    v24.super_class = IMGroupTypingChatItem;
    v11 = [(IMTypingChatItem *)&v24 _initWithItem:v4];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E696AEC0]);
      isAudioMessage = objc_msgSend_isAudioMessage(v4, v13, v14);
      v18 = objc_msgSend_isFromMe(v4, v16, v17);
      v20 = objc_msgSend_initWithFormat_(v12, v19, @"gt:%d/%d", isAudioMessage, v18);
      objc_msgSend__setGUID_(v11, v21, v20);
    }

    self = v11;
    v22 = self;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end