@interface PXPhotosGridHideAssetAnimationHelper
+ (id)_createDecorationAnimationsForLayout:(id)layout scope:(int64_t)scope;
+ (id)createDecorationAnimationsForLayout:(id)layout animationType:(int64_t)type;
@end

@implementation PXPhotosGridHideAssetAnimationHelper

+ (id)createDecorationAnimationsForLayout:(id)layout animationType:(int64_t)type
{
  layoutCopy = layout;
  if ((type - 1) >= 2)
  {
    if (type)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridHideAssetAnimationHelper.m" lineNumber:53 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = [self _createDecorationAnimationsForLayout:layoutCopy scope:type];
  }

  return v8;
}

+ (id)_createDecorationAnimationsForLayout:(id)layout scope:(int64_t)scope
{
  v5 = MEMORY[0x277CBEB18];
  layoutCopy = layout;
  array = [v5 array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__PXPhotosGridHideAssetAnimationHelper__createDecorationAnimationsForLayout_scope___block_invoke;
  v10[3] = &unk_278298E10;
  scopeCopy = scope;
  v8 = array;
  v11 = v8;
  _CreateAnimationOnDecoratingLayouts(layoutCopy, v10);

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