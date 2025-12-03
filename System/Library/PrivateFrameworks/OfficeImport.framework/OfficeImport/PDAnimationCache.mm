@interface PDAnimationCache
+ (id)createAnimationInfoDataForCacheItem:(id)item order:(unsigned int)order;
+ (void)loadAnimationCache:(id)cache pdAnimation:(id)animation state:(id)state;
+ (void)mapAnimationInfo:(id)info cacheData:(id)data state:(id)state;
+ (void)mapCommonData:(id)data cacheData:(id)cacheData state:(id)state;
- (PDAnimationCache)initWithAnimationInfo:(id)info;
@end

@implementation PDAnimationCache

- (PDAnimationCache)initWithAnimationInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = PDAnimationCache;
  v5 = [(PDAnimationCache *)&v13 init];
  if (v5)
  {
    target = [infoCopy target];
    [(PDAnimationCache *)v5 setTarget:target];

    motionPath = [infoCopy motionPath];
    [(PDAnimationCache *)v5 setMotionPath:motionPath];

    groupId = [infoCopy groupId];
    [(PDAnimationCache *)v5 setGroupId:groupId];

    build = [infoCopy build];
    [(PDAnimationCache *)v5 setBuild:build];

    v5->mNodeType = [infoCopy nodeType];
    v5->mPresetId = [infoCopy presetId];
    v5->mPresetSubType = [infoCopy presetSubType];
    v5->mPresetClass = [infoCopy presetClass];
    v5->mIterateType = [infoCopy iterateType];
    if ([infoCopy hasDelay])
    {
      [infoCopy delay];
      [(PDAnimationCache *)v5 setDelay:?];
    }

    if ([infoCopy hasDirection])
    {
      [infoCopy direction];
      [(PDAnimationCache *)v5 setDirection:?];
    }

    if ([infoCopy hasDuration])
    {
      [infoCopy duration];
      [(PDAnimationCache *)v5 setDuration:?];
    }

    if ([infoCopy hasPartCount])
    {
      -[PDAnimationCache setPartCount:](v5, "setPartCount:", [infoCopy partCount]);
    }

    if ([infoCopy hasValue])
    {
      [infoCopy value];
      [(PDAnimationCache *)v5 setValue:?];
    }

    v5->mIsHead = [infoCopy isHead];
    v5->mLevel = [infoCopy level];
    groupId2 = [infoCopy groupId];
    mGroupId = v5->mGroupId;
    v5->mGroupId = groupId2;
  }

  return v5;
}

+ (void)loadAnimationCache:(id)cache pdAnimation:(id)animation state:(id)state
{
  cacheCopy = cache;
  animationCopy = animation;
  stateCopy = state;
  rootTimeNode = [animationCopy rootTimeNode];
  if (rootTimeNode)
  {
    [self mapCommonData:rootTimeNode cacheData:cacheCopy state:stateCopy];
  }

  buildMap = [animationCopy buildMap];
  if (buildMap)
  {
    for (i = 0; ; i = v12 + 1)
    {
      v12 = i;
      if ([cacheCopy count] <= i)
      {
        break;
      }

      v13 = [cacheCopy objectAtIndex:i];
      target = [v13 target];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        target2 = [v13 target];
        drawable = [target2 drawable];

        if (!drawable)
        {
          goto LABEL_13;
        }

        v17 = [PDBuildMapKey alloc];
        groupId = [v13 groupId];
        v19 = [(PDBuildMapKey *)v17 initWithDrawable:drawable groupId:groupId];

        v20 = [buildMap objectForKey:v19];
        if (v20)
        {
          [v13 setBuild:v20];
        }
      }

      else
      {
        drawable = target;
      }

LABEL_13:
    }
  }
}

+ (id)createAnimationInfoDataForCacheItem:(id)item order:(unsigned int)order
{
  itemCopy = item;
  target = [itemCopy target];

  if (target)
  {
    v6 = [PDAnimationInfoData alloc];
    target2 = [itemCopy target];
    presetClass = [itemCopy presetClass];
    presetId = [itemCopy presetId];
    nodeType = [itemCopy nodeType];
    iterateType = [itemCopy iterateType];
    [itemCopy delay];
    v13 = v12;
    presetSubType = [itemCopy presetSubType];
    groupId = [itemCopy groupId];
    build = [itemCopy build];
    target = [(PDAnimationInfoData *)v6 initWithTarget:target2 presetClass:presetClass presetId:presetId triggerType:nodeType iterateType:iterateType delay:order direction:v13 order:presetSubType groupId:groupId build:build];
  }

  return target;
}

+ (void)mapCommonData:(id)data cacheData:(id)cacheData state:(id)state
{
  dataCopy = data;
  cacheDataCopy = cacheData;
  stateCopy = state;
  if ([dataCopy hasPresetClass] && (objc_msgSend(dataCopy, "animationPresetClass") == 1 || objc_msgSend(dataCopy, "animationPresetClass") == 2 || objc_msgSend(dataCopy, "animationPresetClass") == 6 || objc_msgSend(dataCopy, "animationPresetClass") == 3 || objc_msgSend(dataCopy, "animationPresetClass") == 4))
  {
    [self mapAnimationInfo:dataCopy cacheData:cacheDataCopy state:stateCopy];
    goto LABEL_25;
  }

  childTimeNodeList = [dataCopy childTimeNodeList];

  if (childTimeNodeList)
  {
    childTimeNodeList2 = [dataCopy childTimeNodeList];
    for (i = 0; ; i = v13 + 1)
    {
      v13 = i;
      if ([childTimeNodeList2 count] <= i)
      {

        break;
      }

      v14 = [childTimeNodeList2 objectAtIndex:i];
      parallel = [v14 parallel];

      if (parallel)
      {
        parallel2 = [v14 parallel];
        [self mapCommonData:parallel2 cacheData:cacheDataCopy state:stateCopy];
      }

      else
      {
        sequential = [v14 sequential];

        if (sequential)
        {
          parallel2 = [v14 sequential];
          [self mapCommonData:parallel2 cacheData:cacheDataCopy state:stateCopy];
        }

        else
        {
          audio = [v14 audio];
          if (audio)
          {
          }

          else
          {
            video = [v14 video];

            if (!video)
            {
              goto LABEL_23;
            }
          }

          parallel2 = [v14 audio];
          if (parallel2 || ([v14 video], (parallel2 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            target = [parallel2 target];

            if (target)
            {
              mediaNodeMap = [stateCopy mediaNodeMap];
              target2 = [parallel2 target];
              [mediaNodeMap setObject:parallel2 forUncopiedKey:target2];
            }
          }
        }
      }

LABEL_23:
    }
  }

LABEL_25:
}

+ (void)mapAnimationInfo:(id)info cacheData:(id)data state:(id)state
{
  infoCopy = info;
  dataCopy = data;
  stateCopy = state;
  animationPresetClass = [infoCopy animationPresetClass];
  type = [infoCopy type];
  presetSubType = [infoCopy presetSubType];
  presetId = [infoCopy presetId];
  groupId = [infoCopy groupId];
  v14 = objc_opt_class();
  v15 = TSUDynamicCast(v14, infoCopy);
  buildInfo = [v15 buildInfo];
  if (buildInfo)
  {
    v17 = objc_alloc_init(PDAnimationCache);
    [(PDAnimationCache *)v17 setPresetClass:animationPresetClass];
    [(PDAnimationCache *)v17 setNodeType:type];
    [(PDAnimationCache *)v17 setPresetSubType:presetSubType];
    [(PDAnimationCache *)v17 setPresetId:presetId];
    target = [buildInfo target];
    [(PDAnimationCache *)v17 setTarget:target];

    -[PDAnimationCache setIterateType:](v17, "setIterateType:", [buildInfo iterateType]);
    [(PDAnimationCache *)v17 setGroupId:groupId];
    [buildInfo duration];
    [(PDAnimationCache *)v17 setDuration:?];
    [buildInfo delay];
    [(PDAnimationCache *)v17 setDelay:?];
    if ([stateCopy isValid:v17])
    {
      [dataCopy addObject:v17];
    }
  }
}

@end