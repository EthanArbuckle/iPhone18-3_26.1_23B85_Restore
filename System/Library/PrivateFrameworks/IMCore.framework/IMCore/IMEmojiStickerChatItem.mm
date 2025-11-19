@interface IMEmojiStickerChatItem
- (NSString)emojiString;
- (id)_initWithItem:(id)a3 sender:(id)a4 transferGUID:(id)a5 emojiSticker:(id)a6;
@end

@implementation IMEmojiStickerChatItem

- (id)_initWithItem:(id)a3 sender:(id)a4 transferGUID:(id)a5 emojiSticker:(id)a6
{
  v10 = a6;
  v15.receiver = self;
  v15.super_class = IMEmojiStickerChatItem;
  v11 = [(IMAssociatedStickerChatItem *)&v15 _initWithItem:a3 sender:a4 transferGUID:a5];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setEmojiSticker_(v11, v12, v10);
  }

  return v13;
}

- (NSString)emojiString
{
  v3 = objc_msgSend_emojiSticker(self, a2, v2);
  v6 = objc_msgSend_emojiString(v3, v4, v5);

  return v6;
}

@end