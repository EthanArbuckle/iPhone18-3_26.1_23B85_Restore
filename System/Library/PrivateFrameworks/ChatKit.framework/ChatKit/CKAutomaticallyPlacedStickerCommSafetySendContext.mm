@interface CKAutomaticallyPlacedStickerCommSafetySendContext
+ (id)contextWithAutomaticallyPlacedSticker:(id)a3 stickerReactionSession:(id)a4 chatItem:(id)a5 parentChatItem:(id)a6 stickerFrame:(CGRect)a7 animationCompletionHandler:(id)a8;
- (CGRect)stickerFrame;
- (CKAutomaticallyPlacedStickerCommSafetySendContext)initWithAutomaticallyPlacedSticker:(id)a3 stickerReactionSession:(id)a4 chatItem:(id)a5 parentChatItem:(id)a6 stickerFrame:(CGRect)a7 animationCompletionHandler:(id)a8;
@end

@implementation CKAutomaticallyPlacedStickerCommSafetySendContext

+ (id)contextWithAutomaticallyPlacedSticker:(id)a3 stickerReactionSession:(id)a4 chatItem:(id)a5 parentChatItem:(id)a6 stickerFrame:(CGRect)a7 animationCompletionHandler:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[CKAutomaticallyPlacedStickerCommSafetySendContext alloc] initWithAutomaticallyPlacedSticker:v20 stickerReactionSession:v19 chatItem:v18 parentChatItem:v17 stickerFrame:v16 animationCompletionHandler:x, y, width, height];

  return v21;
}

- (CKAutomaticallyPlacedStickerCommSafetySendContext)initWithAutomaticallyPlacedSticker:(id)a3 stickerReactionSession:(id)a4 chatItem:(id)a5 parentChatItem:(id)a6 stickerFrame:(CGRect)a7 animationCompletionHandler:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v27 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a8;
  v28.receiver = self;
  v28.super_class = CKAutomaticallyPlacedStickerCommSafetySendContext;
  v22 = [(CKAutomaticallyPlacedStickerCommSafetySendContext *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sticker, a3);
    objc_storeStrong(&v23->_stickerReactionSession, a4);
    objc_storeStrong(&v23->_chatItem, a5);
    objc_storeStrong(&v23->_parentChatItem, a6);
    v23->_stickerFrame.origin.x = x;
    v23->_stickerFrame.origin.y = y;
    v23->_stickerFrame.size.width = width;
    v23->_stickerFrame.size.height = height;
    v24 = _Block_copy(v21);
    animationCompletionHandler = v23->_animationCompletionHandler;
    v23->_animationCompletionHandler = v24;
  }

  return v23;
}

- (CGRect)stickerFrame
{
  x = self->_stickerFrame.origin.x;
  y = self->_stickerFrame.origin.y;
  width = self->_stickerFrame.size.width;
  height = self->_stickerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end