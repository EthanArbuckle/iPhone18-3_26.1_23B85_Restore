@interface CKAnimatedEmojiMessagePartChatItem
- (CKAnimatedEmojiMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width;
@end

@implementation CKAnimatedEmojiMessagePartChatItem

- (CKAnimatedEmojiMessagePartChatItem)initWithIMChatItem:(id)item maxWidth:(double)width
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = CKAnimatedEmojiMessagePartChatItem;
  v7 = [(CKAttachmentMessagePartChatItem *)&v17 initWithIMChatItem:itemCopy maxWidth:width];
  v8 = v7;
  if (v7)
  {
    mediaObject = [(CKAttachmentMessagePartChatItem *)v7 mediaObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [mediaObject needsAnimation])
    {
      message = [itemCopy message];
      __ck_context = [message __ck_context];
      v12 = [__ck_context mutableCopy];

      if (([itemCopy isFromMe] & 1) == 0)
      {
        [v12 setSpam:{objc_msgSend(itemCopy, "parentChatIsSpam")}];
      }

      v13 = [CKAnimatedEmojiMediaObject alloc];
      transfer = [mediaObject transfer];
      v15 = [(CKAnimatedImageMediaObject *)v13 initWithTransfer:transfer context:v12 forceInlinePreview:0];

      [(CKAttachmentMessagePartChatItem *)v8 setMediaObject:v15];
      mediaObject = v15;
    }
  }

  return v8;
}

@end