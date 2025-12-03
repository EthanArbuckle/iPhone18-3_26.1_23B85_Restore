@interface CKStickerReactionLayoutHelper
+ (CGPoint)stickerCenterForIndex:(int64_t)index inFrame:(CGRect)frame alignLeft:(BOOL)left stickerSize:(CGSize)size;
- (CKStickerReactionLayoutHelper)init;
@end

@implementation CKStickerReactionLayoutHelper

+ (CGPoint)stickerCenterForIndex:(int64_t)index inFrame:(CGRect)frame alignLeft:(BOOL)left stickerSize:(CGSize)size
{
  _s7ChatKit27StickerReactionLayoutHelperC13stickerCenter3for2in9alignLeft0G4SizeSo7CGPointVSi_So6CGRectVSbSo6CGSizeVtFZ_0(index, left, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, size.width, size.height);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CKStickerReactionLayoutHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickerReactionLayoutHelper();
  return [(CKStickerReactionLayoutHelper *)&v3 init];
}

@end