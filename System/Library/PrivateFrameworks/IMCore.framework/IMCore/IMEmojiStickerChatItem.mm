@interface IMEmojiStickerChatItem
- (NSString)emojiString;
- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d emojiSticker:(id)sticker;
@end

@implementation IMEmojiStickerChatItem

- (id)_initWithItem:(id)item sender:(id)sender transferGUID:(id)d emojiSticker:(id)sticker
{
  stickerCopy = sticker;
  v15.receiver = self;
  v15.super_class = IMEmojiStickerChatItem;
  v11 = [(IMAssociatedStickerChatItem *)&v15 _initWithItem:item sender:sender transferGUID:d];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setEmojiSticker_(v11, v12, stickerCopy);
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