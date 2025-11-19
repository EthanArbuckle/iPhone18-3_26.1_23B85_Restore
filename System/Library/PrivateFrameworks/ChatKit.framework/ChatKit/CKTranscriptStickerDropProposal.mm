@interface CKTranscriptStickerDropProposal
- (CGPoint)previewCenter;
- (CKTranscriptStickerDropProposal)initWithDragItem:(id)a3 previewCenter:(CGPoint)a4 targetBalloonIndex:(id)a5;
@end

@implementation CKTranscriptStickerDropProposal

- (CKTranscriptStickerDropProposal)initWithDragItem:(id)a3 previewCenter:(CGPoint)a4 targetBalloonIndex:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKTranscriptStickerDropProposal;
  v12 = [(CKTranscriptStickerDropProposal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dragItem, a3);
    v13->_previewCenter.x = x;
    v13->_previewCenter.y = y;
    objc_storeStrong(&v13->_targetBalloonIndex, a5);
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