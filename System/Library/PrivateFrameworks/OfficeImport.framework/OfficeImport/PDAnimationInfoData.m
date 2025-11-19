@interface PDAnimationInfoData
- (PDAnimationInfoData)initWithTarget:(id)a3 presetClass:(int)a4 presetId:(int)a5 triggerType:(int)a6 iterateType:(int)a7 delay:(double)a8 direction:(double)a9 order:(unsigned int)a10 groupId:(id)a11 build:(id)a12;
@end

@implementation PDAnimationInfoData

- (PDAnimationInfoData)initWithTarget:(id)a3 presetClass:(int)a4 presetId:(int)a5 triggerType:(int)a6 iterateType:(int)a7 delay:(double)a8 direction:(double)a9 order:(unsigned int)a10 groupId:(id)a11 build:(id)a12
{
  v15 = *&a7;
  v16 = *&a6;
  v17 = *&a5;
  v18 = *&a4;
  v20 = a3;
  v21 = a11;
  v22 = a12;
  v30.receiver = self;
  v30.super_class = PDAnimationInfoData;
  v23 = [(PDAnimationInfoData *)&v30 init];
  v24 = v23;
  if (v23)
  {
    v23->mOrder = a10;
    objc_storeStrong(&v23->mBuild, a12);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v20 drawable];
      mDrawable = v24->mDrawable;
      v24->mDrawable = v25;
    }

    v27 = [PDSequentialTimeNode newSequentialTimeNodeGroupForAnimationInfoWithClass:objc_opt_class() target:v20];
    mSequentialTimeNodeData = v24->mSequentialTimeNodeData;
    v24->mSequentialTimeNodeData = v27;

    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setPresetClass:v18];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setPresetId:v17];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setTriggerType:v16];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setIterateType:v15];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setDirection:a9];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setTarget:v20];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setGroupId:v21];
    if (v16 != 1)
    {
      [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setDelay:a8];
    }
  }

  return v24;
}

@end