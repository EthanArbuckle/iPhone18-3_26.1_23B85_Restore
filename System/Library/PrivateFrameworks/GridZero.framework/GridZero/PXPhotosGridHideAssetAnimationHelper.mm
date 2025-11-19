@interface PXPhotosGridHideAssetAnimationHelper
+ (id)_createDecorationAnimationsForLayout:(id)a3 scope:(int64_t)a4;
+ (id)createDecorationAnimationsForLayout:(id)a3 animationType:(int64_t)a4;
@end

@implementation PXPhotosGridHideAssetAnimationHelper

+ (id)createDecorationAnimationsForLayout:(id)a3 animationType:(int64_t)a4
{
  v7 = a3;
  if ((a4 - 1) >= 2)
  {
    if (a4)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"PXPhotosGridHideAssetAnimationHelper.m" lineNumber:53 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [a1 _createDecorationAnimationsForLayout:v7 scope:a4];
  }

  return v8;
}

+ (id)_createDecorationAnimationsForLayout:(id)a3 scope:(int64_t)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = [v5 array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__PXPhotosGridHideAssetAnimationHelper__createDecorationAnimationsForLayout_scope___block_invoke;
  v10[3] = &unk_278298E10;
  v12 = a4;
  v8 = v7;
  v11 = v8;
  _CreateAnimationOnDecoratingLayouts(v6, v10);

  return v8;
}

void __83__PXPhotosGridHideAssetAnimationHelper__createDecorationAnimationsForLayout_scope___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 createAnimation];
  [v3 setCurve:0];
  [v3 setDuration:0.3];
  [v3 setScope:*(a1 + 40)];
  [*(a1 + 32) addObject:v3];
}

@end