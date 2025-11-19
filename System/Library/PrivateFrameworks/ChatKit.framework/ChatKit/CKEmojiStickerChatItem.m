@interface CKEmojiStickerChatItem
- (CGSize)size;
- (IMEmojiSticker)emojiSticker;
@end

@implementation CKEmojiStickerChatItem

- (IMEmojiSticker)emojiSticker
{
  emojiSticker = self->_emojiSticker;
  if (!emojiSticker)
  {
    v4 = [(CKAssociatedStickerChatItem *)self stickerUserInfo];
    v5 = objc_alloc(MEMORY[0x1E69A8058]);
    v6 = [(CKEmojiStickerChatItem *)self IMEmojiStickerChatItem];
    v7 = [v6 emojiString];
    v8 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A7CB0]];
    v9 = [(CKAssociatedStickerChatItem *)self mediaObject];
    v10 = [v9 fileURL];
    v11 = [v5 initWithEmojiString:v7 stickerPackID:v8 fileURL:v10];
    v12 = self->_emojiSticker;
    self->_emojiSticker = v11;

    [(CKAssociatedStickerChatItem *)self setSticker:self->_emojiSticker];
    emojiSticker = self->_emojiSticker;
  }

  return emojiSticker;
}

- (CGSize)size
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 emojiStickerTranscriptBalloonSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end