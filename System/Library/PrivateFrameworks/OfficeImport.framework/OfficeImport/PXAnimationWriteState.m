@interface PXAnimationWriteState
- (PXAnimationWriteState)initWithWriteState:(id)a3 file:(id)a4;
- (unint64_t)newCommonTimeNodeDataId;
@end

@implementation PXAnimationWriteState

- (PXAnimationWriteState)initWithWriteState:(id)a3 file:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXAnimationWriteState;
  v9 = [(PXAnimationWriteState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWriteState, a3);
    objc_storeStrong(&v10->mFile, a4);
    v10->mCommonTimeNodeDataId = 0;
  }

  return v10;
}

- (unint64_t)newCommonTimeNodeDataId
{
  v2 = self->mCommonTimeNodeDataId + 1;
  self->mCommonTimeNodeDataId = v2;
  return v2;
}

@end