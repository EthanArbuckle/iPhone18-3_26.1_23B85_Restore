@interface CKStickerDropCommSafetySendContext
+ (id)contextWithSticker:(id)a3 composition:(id)a4 mediaObject:(id)a5 parentMessagePartChatItem:(id)a6 messageSummaryInfo:(id)a7;
- (CKStickerDropCommSafetySendContext)initWithSticker:(id)a3 composition:(id)a4 mediaObject:(id)a5 parentMessagePartChatItem:(id)a6 messageSummaryInfo:(id)a7;
@end

@implementation CKStickerDropCommSafetySendContext

+ (id)contextWithSticker:(id)a3 composition:(id)a4 mediaObject:(id)a5 parentMessagePartChatItem:(id)a6 messageSummaryInfo:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[CKStickerDropCommSafetySendContext alloc] initWithSticker:v15 composition:v14 mediaObject:v13 parentMessagePartChatItem:v12 messageSummaryInfo:v11];

  return v16;
}

- (CKStickerDropCommSafetySendContext)initWithSticker:(id)a3 composition:(id)a4 mediaObject:(id)a5 parentMessagePartChatItem:(id)a6 messageSummaryInfo:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CKStickerDropCommSafetySendContext;
  v17 = [(CKStickerDropCommSafetySendContext *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sticker, a3);
    objc_storeStrong(&v18->_composition, a4);
    objc_storeStrong(&v18->_mediaObject, a5);
    objc_storeStrong(&v18->_parentMessagePartChatItem, a6);
    objc_storeStrong(&v18->_messageSummaryInfo, a7);
  }

  return v18;
}

@end