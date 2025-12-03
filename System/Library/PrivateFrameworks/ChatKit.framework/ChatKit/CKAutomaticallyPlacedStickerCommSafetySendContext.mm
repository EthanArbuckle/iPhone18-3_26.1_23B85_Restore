@interface CKAutomaticallyPlacedStickerCommSafetySendContext
+ (id)contextWithAutomaticallyPlacedSticker:(id)sticker stickerReactionSession:(id)session chatItem:(id)item parentChatItem:(id)chatItem stickerFrame:(CGRect)frame animationCompletionHandler:(id)handler;
- (CGRect)stickerFrame;
- (CKAutomaticallyPlacedStickerCommSafetySendContext)initWithAutomaticallyPlacedSticker:(id)sticker stickerReactionSession:(id)session chatItem:(id)item parentChatItem:(id)chatItem stickerFrame:(CGRect)frame animationCompletionHandler:(id)handler;
@end

@implementation CKAutomaticallyPlacedStickerCommSafetySendContext

+ (id)contextWithAutomaticallyPlacedSticker:(id)sticker stickerReactionSession:(id)session chatItem:(id)item parentChatItem:(id)chatItem stickerFrame:(CGRect)frame animationCompletionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  handlerCopy = handler;
  chatItemCopy = chatItem;
  itemCopy = item;
  sessionCopy = session;
  stickerCopy = sticker;
  height = [[CKAutomaticallyPlacedStickerCommSafetySendContext alloc] initWithAutomaticallyPlacedSticker:stickerCopy stickerReactionSession:sessionCopy chatItem:itemCopy parentChatItem:chatItemCopy stickerFrame:handlerCopy animationCompletionHandler:x, y, width, height];

  return height;
}

- (CKAutomaticallyPlacedStickerCommSafetySendContext)initWithAutomaticallyPlacedSticker:(id)sticker stickerReactionSession:(id)session chatItem:(id)item parentChatItem:(id)chatItem stickerFrame:(CGRect)frame animationCompletionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  stickerCopy = sticker;
  sessionCopy = session;
  itemCopy = item;
  chatItemCopy = chatItem;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = CKAutomaticallyPlacedStickerCommSafetySendContext;
  v22 = [(CKAutomaticallyPlacedStickerCommSafetySendContext *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sticker, sticker);
    objc_storeStrong(&v23->_stickerReactionSession, session);
    objc_storeStrong(&v23->_chatItem, item);
    objc_storeStrong(&v23->_parentChatItem, chatItem);
    v23->_stickerFrame.origin.x = x;
    v23->_stickerFrame.origin.y = y;
    v23->_stickerFrame.size.width = width;
    v23->_stickerFrame.size.height = height;
    v24 = _Block_copy(handlerCopy);
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