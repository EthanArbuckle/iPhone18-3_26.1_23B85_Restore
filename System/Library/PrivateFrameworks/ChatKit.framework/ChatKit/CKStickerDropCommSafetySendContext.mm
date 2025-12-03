@interface CKStickerDropCommSafetySendContext
+ (id)contextWithSticker:(id)sticker composition:(id)composition mediaObject:(id)object parentMessagePartChatItem:(id)item messageSummaryInfo:(id)info;
- (CKStickerDropCommSafetySendContext)initWithSticker:(id)sticker composition:(id)composition mediaObject:(id)object parentMessagePartChatItem:(id)item messageSummaryInfo:(id)info;
@end

@implementation CKStickerDropCommSafetySendContext

+ (id)contextWithSticker:(id)sticker composition:(id)composition mediaObject:(id)object parentMessagePartChatItem:(id)item messageSummaryInfo:(id)info
{
  infoCopy = info;
  itemCopy = item;
  objectCopy = object;
  compositionCopy = composition;
  stickerCopy = sticker;
  v16 = [[CKStickerDropCommSafetySendContext alloc] initWithSticker:stickerCopy composition:compositionCopy mediaObject:objectCopy parentMessagePartChatItem:itemCopy messageSummaryInfo:infoCopy];

  return v16;
}

- (CKStickerDropCommSafetySendContext)initWithSticker:(id)sticker composition:(id)composition mediaObject:(id)object parentMessagePartChatItem:(id)item messageSummaryInfo:(id)info
{
  stickerCopy = sticker;
  compositionCopy = composition;
  objectCopy = object;
  itemCopy = item;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = CKStickerDropCommSafetySendContext;
  v17 = [(CKStickerDropCommSafetySendContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sticker, sticker);
    objc_storeStrong(&v18->_composition, composition);
    objc_storeStrong(&v18->_mediaObject, object);
    objc_storeStrong(&v18->_parentMessagePartChatItem, item);
    objc_storeStrong(&v18->_messageSummaryInfo, info);
  }

  return v18;
}

@end