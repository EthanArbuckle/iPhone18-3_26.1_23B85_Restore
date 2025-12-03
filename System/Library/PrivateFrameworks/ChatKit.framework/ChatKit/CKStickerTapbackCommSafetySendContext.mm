@interface CKStickerTapbackCommSafetySendContext
+ (id)contextWithStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item;
- (CKStickerTapbackCommSafetySendContext)initWithStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item;
@end

@implementation CKStickerTapbackCommSafetySendContext

+ (id)contextWithStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item
{
  itemCopy = item;
  objectCopy = object;
  tapbackCopy = tapback;
  v10 = [[CKStickerTapbackCommSafetySendContext alloc] initWithStickerTapback:tapbackCopy mediaObject:objectCopy parentMessagePartChatItem:itemCopy];

  return v10;
}

- (CKStickerTapbackCommSafetySendContext)initWithStickerTapback:(id)tapback mediaObject:(id)object parentMessagePartChatItem:(id)item
{
  tapbackCopy = tapback;
  objectCopy = object;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = CKStickerTapbackCommSafetySendContext;
  v12 = [(CKStickerTapbackCommSafetySendContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stickerTapback, tapback);
    objc_storeStrong(&v13->_mediaObject, object);
    objc_storeStrong(&v13->_parentMessagePartChatItem, item);
  }

  return v13;
}

@end