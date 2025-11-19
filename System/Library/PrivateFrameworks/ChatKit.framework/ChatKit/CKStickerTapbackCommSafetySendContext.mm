@interface CKStickerTapbackCommSafetySendContext
+ (id)contextWithStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5;
- (CKStickerTapbackCommSafetySendContext)initWithStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5;
@end

@implementation CKStickerTapbackCommSafetySendContext

+ (id)contextWithStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CKStickerTapbackCommSafetySendContext alloc] initWithStickerTapback:v9 mediaObject:v8 parentMessagePartChatItem:v7];

  return v10;
}

- (CKStickerTapbackCommSafetySendContext)initWithStickerTapback:(id)a3 mediaObject:(id)a4 parentMessagePartChatItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKStickerTapbackCommSafetySendContext;
  v12 = [(CKStickerTapbackCommSafetySendContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stickerTapback, a3);
    objc_storeStrong(&v13->_mediaObject, a4);
    objc_storeStrong(&v13->_parentMessagePartChatItem, a5);
  }

  return v13;
}

@end