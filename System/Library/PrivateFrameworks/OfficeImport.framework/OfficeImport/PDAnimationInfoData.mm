@interface PDAnimationInfoData
- (PDAnimationInfoData)initWithTarget:(id)target presetClass:(int)class presetId:(int)id triggerType:(int)type iterateType:(int)iterateType delay:(double)delay direction:(double)direction order:(unsigned int)self0 groupId:(id)self1 build:(id)self2;
@end

@implementation PDAnimationInfoData

- (PDAnimationInfoData)initWithTarget:(id)target presetClass:(int)class presetId:(int)id triggerType:(int)type iterateType:(int)iterateType delay:(double)delay direction:(double)direction order:(unsigned int)self0 groupId:(id)self1 build:(id)self2
{
  v15 = *&iterateType;
  v16 = *&type;
  v17 = *&id;
  v18 = *&class;
  targetCopy = target;
  groupIdCopy = groupId;
  buildCopy = build;
  v30.receiver = self;
  v30.super_class = PDAnimationInfoData;
  v23 = [(PDAnimationInfoData *)&v30 init];
  v24 = v23;
  if (v23)
  {
    v23->mOrder = order;
    objc_storeStrong(&v23->mBuild, build);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      drawable = [targetCopy drawable];
      mDrawable = v24->mDrawable;
      v24->mDrawable = drawable;
    }

    v27 = [PDSequentialTimeNode newSequentialTimeNodeGroupForAnimationInfoWithClass:objc_opt_class() target:targetCopy];
    mSequentialTimeNodeData = v24->mSequentialTimeNodeData;
    v24->mSequentialTimeNodeData = v27;

    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setPresetClass:v18];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setPresetId:v17];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setTriggerType:v16];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setIterateType:v15];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setDirection:direction];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setTarget:targetCopy];
    [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setGroupId:groupIdCopy];
    if (v16 != 1)
    {
      [(PDSequentialTimeNode *)v24->mSequentialTimeNodeData setDelay:delay];
    }
  }

  return v24;
}

@end