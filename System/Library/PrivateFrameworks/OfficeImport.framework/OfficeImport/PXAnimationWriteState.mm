@interface PXAnimationWriteState
- (PXAnimationWriteState)initWithWriteState:(id)state file:(id)file;
- (unint64_t)newCommonTimeNodeDataId;
@end

@implementation PXAnimationWriteState

- (PXAnimationWriteState)initWithWriteState:(id)state file:(id)file
{
  stateCopy = state;
  fileCopy = file;
  v12.receiver = self;
  v12.super_class = PXAnimationWriteState;
  v9 = [(PXAnimationWriteState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mWriteState, state);
    objc_storeStrong(&v10->mFile, file);
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