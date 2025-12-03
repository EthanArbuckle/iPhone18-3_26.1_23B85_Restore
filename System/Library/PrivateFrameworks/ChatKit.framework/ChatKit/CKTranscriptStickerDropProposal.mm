@interface CKTranscriptStickerDropProposal
- (CGPoint)previewCenter;
- (CKTranscriptStickerDropProposal)initWithDragItem:(id)item previewCenter:(CGPoint)center targetBalloonIndex:(id)index;
@end

@implementation CKTranscriptStickerDropProposal

- (CKTranscriptStickerDropProposal)initWithDragItem:(id)item previewCenter:(CGPoint)center targetBalloonIndex:(id)index
{
  y = center.y;
  x = center.x;
  itemCopy = item;
  indexCopy = index;
  v15.receiver = self;
  v15.super_class = CKTranscriptStickerDropProposal;
  v12 = [(CKTranscriptStickerDropProposal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dragItem, item);
    v13->_previewCenter.x = x;
    v13->_previewCenter.y = y;
    objc_storeStrong(&v13->_targetBalloonIndex, index);
  }

  return v13;
}

- (CGPoint)previewCenter
{
  x = self->_previewCenter.x;
  y = self->_previewCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end