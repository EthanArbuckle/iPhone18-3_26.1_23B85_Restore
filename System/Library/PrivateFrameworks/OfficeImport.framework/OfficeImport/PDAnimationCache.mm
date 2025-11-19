@interface PDAnimationCache
+ (id)createAnimationInfoDataForCacheItem:(id)a3 order:(unsigned int)a4;
+ (void)loadAnimationCache:(id)a3 pdAnimation:(id)a4 state:(id)a5;
+ (void)mapAnimationInfo:(id)a3 cacheData:(id)a4 state:(id)a5;
+ (void)mapCommonData:(id)a3 cacheData:(id)a4 state:(id)a5;
- (PDAnimationCache)initWithAnimationInfo:(id)a3;
@end

@implementation PDAnimationCache

- (PDAnimationCache)initWithAnimationInfo:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PDAnimationCache;
  v5 = [(PDAnimationCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 target];
    [(PDAnimationCache *)v5 setTarget:v6];

    v7 = [v4 motionPath];
    [(PDAnimationCache *)v5 setMotionPath:v7];

    v8 = [v4 groupId];
    [(PDAnimationCache *)v5 setGroupId:v8];

    v9 = [v4 build];
    [(PDAnimationCache *)v5 setBuild:v9];

    v5->mNodeType = [v4 nodeType];
    v5->mPresetId = [v4 presetId];
    v5->mPresetSubType = [v4 presetSubType];
    v5->mPresetClass = [v4 presetClass];
    v5->mIterateType = [v4 iterateType];
    if ([v4 hasDelay])
    {
      [v4 delay];
      [(PDAnimationCache *)v5 setDelay:?];
    }

    if ([v4 hasDirection])
    {
      [v4 direction];
      [(PDAnimationCache *)v5 setDirection:?];
    }

    if ([v4 hasDuration])
    {
      [v4 duration];
      [(PDAnimationCache *)v5 setDuration:?];
    }

    if ([v4 hasPartCount])
    {
      -[PDAnimationCache setPartCount:](v5, "setPartCount:", [v4 partCount]);
    }

    if ([v4 hasValue])
    {
      [v4 value];
      [(PDAnimationCache *)v5 setValue:?];
    }

    v5->mIsHead = [v4 isHead];
    v5->mLevel = [v4 level];
    v10 = [v4 groupId];
    mGroupId = v5->mGroupId;
    v5->mGroupId = v10;
  }

  return v5;
}

+ (void)loadAnimationCache:(id)a3 pdAnimation:(id)a4 state:(id)a5
{
  v22 = a3;
  v8 = a4;
  v21 = a5;
  v9 = [v8 rootTimeNode];
  if (v9)
  {
    [a1 mapCommonData:v9 cacheData:v22 state:v21];
  }

  v10 = [v8 buildMap];
  if (v10)
  {
    for (i = 0; ; i = v12 + 1)
    {
      v12 = i;
      if ([v22 count] <= i)
      {
        break;
      }

      v13 = [v22 objectAtIndex:i];
      v14 = [v13 target];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v13 target];
        v16 = [v15 drawable];

        if (!v16)
        {
          goto LABEL_13;
        }

        v17 = [PDBuildMapKey alloc];
        v18 = [v13 groupId];
        v19 = [(PDBuildMapKey *)v17 initWithDrawable:v16 groupId:v18];

        v20 = [v10 objectForKey:v19];
        if (v20)
        {
          [v13 setBuild:v20];
        }
      }

      else
      {
        v16 = v14;
      }

LABEL_13:
    }
  }
}

+ (id)createAnimationInfoDataForCacheItem:(id)a3 order:(unsigned int)a4
{
  v4 = a3;
  v5 = [v4 target];

  if (v5)
  {
    v6 = [PDAnimationInfoData alloc];
    v7 = [v4 target];
    v8 = [v4 presetClass];
    v9 = [v4 presetId];
    v10 = [v4 nodeType];
    v11 = [v4 iterateType];
    [v4 delay];
    v13 = v12;
    v14 = [v4 presetSubType];
    v15 = [v4 groupId];
    v16 = [v4 build];
    v5 = [(PDAnimationInfoData *)v6 initWithTarget:v7 presetClass:v8 presetId:v9 triggerType:v10 iterateType:v11 delay:a4 direction:v13 order:v14 groupId:v15 build:v16];
  }

  return v5;
}

+ (void)mapCommonData:(id)a3 cacheData:(id)a4 state:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([v23 hasPresetClass] && (objc_msgSend(v23, "animationPresetClass") == 1 || objc_msgSend(v23, "animationPresetClass") == 2 || objc_msgSend(v23, "animationPresetClass") == 6 || objc_msgSend(v23, "animationPresetClass") == 3 || objc_msgSend(v23, "animationPresetClass") == 4))
  {
    [a1 mapAnimationInfo:v23 cacheData:v8 state:v9];
    goto LABEL_25;
  }

  v10 = [v23 childTimeNodeList];

  if (v10)
  {
    v11 = [v23 childTimeNodeList];
    for (i = 0; ; i = v13 + 1)
    {
      v13 = i;
      if ([v11 count] <= i)
      {

        break;
      }

      v14 = [v11 objectAtIndex:i];
      v15 = [v14 parallel];

      if (v15)
      {
        v16 = [v14 parallel];
        [a1 mapCommonData:v16 cacheData:v8 state:v9];
      }

      else
      {
        v17 = [v14 sequential];

        if (v17)
        {
          v16 = [v14 sequential];
          [a1 mapCommonData:v16 cacheData:v8 state:v9];
        }

        else
        {
          v18 = [v14 audio];
          if (v18)
          {
          }

          else
          {
            v19 = [v14 video];

            if (!v19)
            {
              goto LABEL_23;
            }
          }

          v16 = [v14 audio];
          if (v16 || ([v14 video], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = [v16 target];

            if (v20)
            {
              v21 = [v9 mediaNodeMap];
              v22 = [v16 target];
              [v21 setObject:v16 forUncopiedKey:v22];
            }
          }
        }
      }

LABEL_23:
    }
  }

LABEL_25:
}

+ (void)mapAnimationInfo:(id)a3 cacheData:(id)a4 state:(id)a5
{
  v19 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v19 animationPresetClass];
  v10 = [v19 type];
  v11 = [v19 presetSubType];
  v12 = [v19 presetId];
  v13 = [v19 groupId];
  v14 = objc_opt_class();
  v15 = TSUDynamicCast(v14, v19);
  v16 = [v15 buildInfo];
  if (v16)
  {
    v17 = objc_alloc_init(PDAnimationCache);
    [(PDAnimationCache *)v17 setPresetClass:v9];
    [(PDAnimationCache *)v17 setNodeType:v10];
    [(PDAnimationCache *)v17 setPresetSubType:v11];
    [(PDAnimationCache *)v17 setPresetId:v12];
    v18 = [v16 target];
    [(PDAnimationCache *)v17 setTarget:v18];

    -[PDAnimationCache setIterateType:](v17, "setIterateType:", [v16 iterateType]);
    [(PDAnimationCache *)v17 setGroupId:v13];
    [v16 duration];
    [(PDAnimationCache *)v17 setDuration:?];
    [v16 delay];
    [(PDAnimationCache *)v17 setDelay:?];
    if ([v8 isValid:v17])
    {
      [v7 addObject:v17];
    }
  }
}

@end