@interface PBAnimation
+ (BOOL)hasPpt10Animations:(id)animations;
+ (id)newChartBuild:(id)build;
+ (id)newColorFromBehaviorColor:(PptAnimColorBehavior_Color_Struct *)color;
+ (id)newParaBuild:(id)build;
+ (id)parseBehaviorContainer:(id)container timeNode:(id)node state:(id)state;
+ (id)parseMediaContainer:(id)container timeNode:(id)node state:(id)state;
+ (unint64_t)paragraphIndexFromBinaryTextBytesCharacterIndex:(unint64_t)index srcDrawable:(id)drawable;
+ (void)generatePpt10AnimationFromState:(id)state timings:(id)timings;
+ (void)mapAnimationsFromSlide:(id)slide tgtSlide:(id)tgtSlide state:(id)state;
+ (void)parseAnimateBehaviorContainer:(id)container animBehavior:(id)behavior timeNode:(id)node;
+ (void)parseBuildList:(id)list buildMap:(id)map state:(id)state;
+ (void)parseCmdBehaviorContainer:(id)container cmdBehavior:(id)behavior timeNode:(id)node;
+ (void)parseColorBehaviorContainer:(id)container colorBehavior:(id)behavior timeNode:(id)node;
+ (void)parseEffectBehaviorContainer:(id)container effectBehavior:(id)behavior timeNode:(id)node;
+ (void)parseMotionBehaviorContainer:(id)container motionBehavior:(id)behavior timeNode:(id)node;
+ (void)parsePpt10Animation:(id)animation timings:(id)timings state:(id)state;
+ (void)parseRotationBehaviorContainer:(id)container rotationBehavior:(id)behavior timeNode:(id)node;
+ (void)parseTargetContainerHolder:(id)holder setTargetObj:(id)obj state:(id)state;
+ (void)parseTimeConditionsHolder:(id)holder commonData:(id)data;
+ (void)parseTimeNodeContainer:(id)container siblings:(id)siblings state:(id)state;
+ (void)parseTimeNodeVariants:(id)variants commonData:(id)data;
@end

@implementation PBAnimation

+ (void)mapAnimationsFromSlide:(id)slide tgtSlide:(id)tgtSlide state:(id)state
{
  slideCopy = slide;
  tgtSlideCopy = tgtSlide;
  stateCopy = state;
  presentationState = [stateCopy presentationState];
  animation = [tgtSlideCopy animation];
  if ([self hasPpt10Animations:slideCopy])
  {
    [self parsePpt10Animation:slideCopy timings:animation state:stateCopy];
  }

  else
  {
    [self generatePpt10AnimationFromState:presentationState timings:animation];
  }

  [presentationState resetSlideState];
}

+ (BOOL)hasPpt10Animations:(id)animations
{
  v3 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:animations];
  v4 = v3 != 0;

  return v4;
}

+ (void)parsePpt10Animation:(id)animation timings:(id)timings state:(id)state
{
  timingsCopy = timings;
  stateCopy = state;
  v9 = [animation firstChildOfType:5000];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 firstChildOfType:5002];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 firstChildOfType:5003];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 firstChildOfType:11008];
        if (v12)
        {
          v13 = [v11 firstChildOfType:61764];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            addRootTimeNode = [timingsCopy addRootTimeNode];
            rootTimeNode = [timingsCopy rootTimeNode];
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [rootTimeNode setChildTimeNodeList:v16];
            [self parseTimeNodeContainer:v13 siblings:v16 state:stateCopy];
          }

          v17 = [v11 firstChildOfType:11010];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_alloc_init(OITSUNoCopyDictionary);
            [self parseBuildList:v17 buildMap:v18 state:stateCopy];
            [timingsCopy setBuildMap:v18];
          }
        }
      }
    }
  }
}

+ (void)generatePpt10AnimationFromState:(id)state timings:(id)timings
{
  stateCopy = state;
  timingsCopy = timings;
  slideState = [stateCopy slideState];
  buildOrderMap = [slideState buildOrderMap];
  v37 = timingsCopy;

  allKeys = [buildOrderMap allKeys];
  v9 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v40 = objc_alloc_init(OITSUNoCopyDictionary);
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277CBEB98];
  tgtSlide = [stateCopy tgtSlide];
  drawables = [tgtSlide drawables];
  v13 = [v10 setWithArray:drawables];

  v14 = 0;
  v39 = v13;
  while (1)
  {
    v15 = v14;
    if ([v9 count] <= v14)
    {
      break;
    }

    v16 = [v9 objectAtIndex:v14];
    v17 = buildOrderMap;
    v18 = [buildOrderMap objectForKey:v16];

    drawable = [v18 drawable];
    if (![v13 containsObject:drawable])
    {
      goto LABEL_15;
    }

    v20 = [PDBuildMapKey alloc];
    drawable2 = [v18 drawable];
    data = [v18 data];
    groupId = [data groupId];
    v42 = [(PDBuildMapKey *)v20 initWithDrawable:drawable2 groupId:groupId];

    build = [v18 build];
    [(OITSUNoCopyDictionary *)v40 setObject:build forUncopiedKey:v42];

    v25 = objc_alloc_init(PDTimeNodeUnion);
    data2 = [v18 data];
    [(PDTimeNodeUnion *)v25 setSequential:data2];

    [v41 addObject:v25];
    v27 = objc_opt_class();
    clientData = [drawable clientData];
    v29 = TSUDynamicCast(v27, clientData);

    animationInfo = [v29 animationInfo];
    mediaNode = [animationInfo mediaNode];

    if (mediaNode)
    {
      v32 = objc_alloc_init(PDTimeNodeUnion);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PDTimeNodeUnion *)v32 setVideo:mediaNode];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PDTimeNodeUnion *)v32 setAudio:mediaNode];
        }
      }

      video = [(PDTimeNodeUnion *)v32 video];
      if (video)
      {

        goto LABEL_12;
      }

      audio = [(PDTimeNodeUnion *)v32 audio];

      if (audio)
      {
LABEL_12:
        [v41 addObject:v32];
      }
    }

    v13 = v39;
LABEL_15:

    v14 = v15 + 1;
    buildOrderMap = v17;
  }

  addRootTimeNode = [v37 addRootTimeNode];
  rootTimeNode = [v37 rootTimeNode];
  [rootTimeNode setChildTimeNodeList:v41];

  [v37 setBuildMap:v40];
}

+ (id)parseBehaviorContainer:(id)container timeNode:(id)node state:(id)state
{
  containerCopy = container;
  nodeCopy = node;
  stateCopy = state;
  v46 = [containerCopy firstChildOfType:61745];
  if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc_init(PDSetBehavior);
    [nodeCopy setBehavior:v10];

    behavior = [nodeCopy behavior];
    v51 = v46;
  }

  else
  {
    v51 = 0;
    behavior = 0;
  }

  v50 = [containerCopy firstChildOfType:61744];
  if (v50)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = objc_alloc_init(PDAnimateScaleBehavior);
      v13 = [v50 firstChildOfType:61753];
      v14 = v13;
      if (v13)
      {
        eshObject = [v13 eshObject];
        if (eshObject)
        {
        }

        else
        {
          v16 = 0;
        }

        v17 = v16[9].i8[1];
        if (v17)
        {
          [(PDAnimateScaleBehavior *)v12 setBy:vcvtq_f64_f32(vmul_f32(v16[6], vdup_n_s32(0x447A0000u)))];
          v17 = v16[9].i8[1];
        }

        if ((v17 & 2) != 0)
        {
          [(PDAnimateScaleBehavior *)v12 setFrom:vcvtq_f64_f32(vmul_f32(v16[8], vdup_n_s32(0x447A0000u)))];
          v17 = v16[9].i8[1];
        }

        if ((v17 & 4) != 0)
        {
          [(PDAnimateScaleBehavior *)v12 setTo:vcvtq_f64_f32(vmul_f32(v16[7], vdup_n_s32(0x447A0000u)))];
        }

        [nodeCopy setScaleBehavior:v12];
      }

      scaleBehavior = [nodeCopy scaleBehavior];

      v19 = v50;
      v51 = v19;
      behavior = scaleBehavior;
    }
  }

  v49 = [containerCopy firstChildOfType:61739];
  if (v49)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_alloc_init(PDAnimateTimeBehavior);
      [self parseAnimateBehaviorContainer:v49 animBehavior:v20 timeNode:nodeCopy];

      timeBehavior = [nodeCopy timeBehavior];

      v22 = v49;
      v51 = v22;
      behavior = timeBehavior;
    }
  }

  v48 = [containerCopy firstChildOfType:61740];
  if (v48)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_alloc_init(PDAnimateColorBehavior);
      [self parseColorBehaviorContainer:v48 colorBehavior:v23 timeNode:nodeCopy];

      colorBehavior = [nodeCopy colorBehavior];

      v25 = v48;
      v51 = v25;
      behavior = colorBehavior;
    }
  }

  v26 = [containerCopy firstChildOfType:61741];
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = objc_alloc_init(PDAnimateEffectBehavior);
      [self parseEffectBehaviorContainer:v26 effectBehavior:v27 timeNode:nodeCopy];

      effectBehavior = [nodeCopy effectBehavior];

      v29 = v26;
      v51 = v29;
      behavior = effectBehavior;
    }
  }

  v30 = [containerCopy firstChildOfType:61742];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = objc_alloc_init(PDAnimateMotionBehavior);
      [self parseMotionBehaviorContainer:v30 motionBehavior:v31 timeNode:nodeCopy];

      motionBehavior = [nodeCopy motionBehavior];

      v33 = v30;
      v51 = v33;
      behavior = motionBehavior;
    }
  }

  v34 = [containerCopy firstChildOfType:61743];
  if (v34)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = objc_alloc_init(PDAnimateRotateBehavior);
      [self parseRotationBehaviorContainer:v34 rotationBehavior:v35 timeNode:nodeCopy];

      rotateBehavior = [nodeCopy rotateBehavior];

      v37 = v34;
      v51 = v37;
      behavior = rotateBehavior;
    }
  }

  v38 = [containerCopy firstChildOfType:61746];
  if (v38)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = stateCopy;
      v39 = objc_alloc_init(PDCmdBehavior);
      [self parseCmdBehaviorContainer:v38 cmdBehavior:v39 timeNode:nodeCopy];

      cmdBehavior = [nodeCopy cmdBehavior];

      v41 = v38;
      v51 = v41;
      behavior = cmdBehavior;
      stateCopy = v45;
    }
  }

  if (behavior && v51)
  {
    v42 = [v51 firstChildOfType:61738];
    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self parseTargetContainerHolder:v42 setTargetObj:behavior state:stateCopy];
      }
    }
  }

  v43 = behavior;

  return behavior;
}

+ (void)parseTimeNodeContainer:(id)container siblings:(id)siblings state:(id)state
{
  containerCopy = container;
  siblingsCopy = siblings;
  stateCopy = state;
  v10 = siblingsCopy;
  v25 = objc_alloc_init(PDTimeNodeUnion);
  v11 = [containerCopy firstChildOfType:61735];
  v24 = v11;
  if (v11)
  {
    eshObject = [v11 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
    v16 = v13[14];
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = [self parseBehaviorContainer:containerCopy timeNode:v25 state:stateCopy];
      }

      else
      {
        if (v16 != 4)
        {
          goto LABEL_20;
        }

        v17 = [self parseMediaContainer:containerCopy timeNode:v25 state:stateCopy];
      }

      v15 = v17;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!v16)
      {
        v15 = objc_alloc_init(PDParallelTimeNode);
        [(PDTimeNodeUnion *)v25 setParallel:v15];
LABEL_14:
        if (!v15)
        {
          goto LABEL_20;
        }

LABEL_18:
        if ((v13[16] & 0x10) != 0)
        {
          [(PDTimeNode *)v15 setDuration:v13[12]];
        }

        goto LABEL_20;
      }

      if (v16 == 1)
      {
        v15 = objc_alloc_init(PDSequentialTimeNode);
        [(PDTimeNodeUnion *)v25 setSequential:v15];
        goto LABEL_14;
      }
    }

LABEL_20:
    v14 = v16 > 1;
    goto LABEL_21;
  }

  v14 = 0;
  v15 = 0;
LABEL_21:
  v18 = [containerCopy firstChildOfType:61757];
  if (v18)
  {
    objc_opt_class();
    if (!(v14 | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      [self parseTimeNodeVariants:v18 commonData:v15];
    }
  }

  v19 = [containerCopy firstChildOfType:61733];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [self parseTimeConditionsHolder:containerCopy commonData:v15];
    }
  }

  if (v15)
  {
    childTimeNodeList = [(PDTimeNode *)v15 childTimeNodeList];
    if (!childTimeNodeList)
    {
      childTimeNodeList = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(PDTimeNode *)v15 setChildTimeNodeList:childTimeNodeList];
    }
  }

  else
  {
    childTimeNodeList = 0;
  }

  v21 = [containerCopy firstChildOfType:61764];
  v22 = v21;
  if (childTimeNodeList && v21)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [self parseTimeNodeContainer:v22 siblings:childTimeNodeList state:stateCopy];
      v23 = [containerCopy firstChildOfType:61764 afterChild:v22];

      v22 = v23;
    }

    while (v23);
    siblingsCopy = v10;
  }

  [siblingsCopy addObject:v25];
}

+ (id)parseMediaContainer:(id)container timeNode:(id)node state:(id)state
{
  containerCopy = container;
  nodeCopy = node;
  stateCopy = state;
  v11 = [containerCopy firstChildOfType:61757];
  v12 = [containerCopy firstChildOfType:61756];
  if (!v12)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = [v12 firstChildOfType:11003];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v15 == 4)
  {
    v18 = objc_alloc_init(PDVideoNode);
    [nodeCopy setVideo:v18];
    v16 = v18;
    BYTE1(v19.var1) = 0;
    if (getVariantVal(containerCopy, 26, 0, (&v19.var1 + 1)))
    {
      [(PDAudioNode *)v16 setIsFullScreen:BYTE1(v19.var1)];
    }

    goto LABEL_15;
  }

  if (v15 != 3)
  {
LABEL_7:

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v16 = objc_alloc_init(PDAudioNode);
  [nodeCopy setAudio:v16];
LABEL_15:

  if (v16)
  {
    if (v11)
    {
      LOBYTE(v20.var0) = 0;
      if (getVariantVal(containerCopy, 18, 0, &v20))
      {
        [(PDMediaNode *)v16 setIsShowWhenStopped:(v20.var0 & 1) == 0];
      }

      *(&v19.var1 + 1) = 0;
      if (getVariantVal(containerCopy, 15, 1, (&v19.var1 + 1)))
      {
        [(PDMediaNode *)v16 setNumberOfSlides:*(&v19.var1 + 1)];
      }

      *(&v19.var0 + 1) = 0;
      if (getVariantVal(containerCopy, 22, 2, (&v19.var0 + 1)))
      {
        [(PDMediaNode *)v16 setVolume:*(&v19.var0 + 1)];
      }

      LOBYTE(v19.var0) = 0;
      if (getVariantVal(containerCopy, 23, 0, &v19))
      {
        [(PDMediaNode *)v16 setIsMuted:LOBYTE(v19.var0)];
      }
    }

    [self parseTargetContainerHolder:containerCopy setTargetObj:v16 state:stateCopy];
  }

LABEL_9:

  return v16;
}

+ (void)parseTimeConditionsHolder:(id)holder commonData:(id)data
{
  holderCopy = holder;
  dataCopy = data;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [holderCopy firstChildOfType:61733];
  if (v6)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v7 = [v6 firstChildOfType:61736];
      v8 = v7;
      if (v7)
      {
        v10 = v9[13];
        v11 = v9[15];
        v12 = objc_alloc_init(PDTimeCondition);
        [(PDTimeCondition *)v12 setTriggerEvent:v10];
        [(PDTimeCondition *)v12 setDelay:v11];
        [v5 addObject:v12];
      }

      v13 = [holderCopy firstChildOfType:61733 afterChild:{v6, dataCopy}];

      v6 = v13;
    }

    while (v13);
  }

  v14 = dataCopy;
  [dataCopy setStartTimeConditions:{v5, dataCopy}];
}

+ (void)parseAnimateBehaviorContainer:(id)container animBehavior:(id)behavior timeNode:(id)node
{
  behaviorCopy = behavior;
  nodeCopy = node;
  v8 = [container firstChildOfType:61748];
  if (v8)
  {
    [nodeCopy setTimeBehavior:behaviorCopy];
  }
}

+ (id)newColorFromBehaviorColor:(PptAnimColorBehavior_Color_Struct *)color
{
  var0 = color->var0;
  if (!color->var0)
  {
    goto LABEL_5;
  }

  if (var0 == 2)
  {
    v13 = [OADIndexedColor alloc];
    var1 = color->var1;

    return [(OADIndexedColor *)v13 initWithIndex:var1];
  }

  else
  {
    if (var0 == 1)
    {
      v16 = 0;
      v15 = 0.0;
      convertHslToRgb(color->var1, color->var2, color->var3, &v16 + 1, &v16, &v15);
      v5 = *(&v16 + 1);
      v6 = *&v16;
      color->var0 = 0;
      color->var1 = v5;
      v7 = v15;
      color->var2 = v6;
      color->var3 = v7;
LABEL_5:
      v8 = [OADRgbColor alloc];
      *&v9 = color->var1;
      *&v10 = color->var2;
      *&v11 = color->var3;
      return [(OADRgbColor *)v8 initWithRed:v9 green:v10 blue:v11];
    }

    return 0;
  }
}

+ (void)parseColorBehaviorContainer:(id)container colorBehavior:(id)behavior timeNode:(id)node
{
  containerCopy = container;
  behaviorCopy = behavior;
  nodeCopy = node;
  v11 = [containerCopy firstChildOfType:61749];
  v12 = v11;
  if (v11)
  {
    eshObject = [v11 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v14 = 0;
    }

    v15 = v14[45];
    if ((v15 & 2) != 0)
    {
      *(&v19.var0 + 4) = *(v14 + 4);
      v17 = [self newColorFromBehaviorColor:&v19.var0 + 4];
      [behaviorCopy setFrom:v17];
      v15 = v14[45];
      v16 = v17;
      if ((v15 & 4) == 0)
      {
LABEL_7:
        if ((v15 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v16 = 0;
      if ((v14[45] & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    *(&v19.var0 + 4) = *(v14 + 5);
    v18 = [self newColorFromBehaviorColor:&v19.var0 + 4];

    [behaviorCopy setTo:v18];
    v15 = v14[45];
    v16 = v18;
    if ((v15 & 8) == 0)
    {
LABEL_8:
      if ((v15 & 0x10) == 0)
      {
LABEL_17:
        [nodeCopy setColorBehavior:behaviorCopy];

        goto LABEL_18;
      }

LABEL_15:
      LODWORD(v19.var0) = 0;
      if (getVariantVal(containerCopy, 5, 1, &v19))
      {
        [behaviorCopy setDirection:LODWORD(v19.var0)];
      }

      goto LABEL_17;
    }

LABEL_12:
    LODWORD(v19.var0) = 0;
    if (getVariantVal(containerCopy, 4, 1, &v19))
    {
      [behaviorCopy setColorSpace:LODWORD(v19.var0)];
    }

    if ((v14[45] & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_18:
}

+ (void)parseEffectBehaviorContainer:(id)container effectBehavior:(id)behavior timeNode:(id)node
{
  containerCopy = container;
  behaviorCopy = behavior;
  nodeCopy = node;
  v9 = [containerCopy firstChildOfType:61750];
  v10 = v9;
  if (v9)
  {
    eshObject = [v9 eshObject];
    if (eshObject)
    {
    }

    if (*(eshObject + 45))
    {
      [behaviorCopy setTransition:eshObject[12]];
    }

    [nodeCopy setEffectBehavior:behaviorCopy];
  }
}

+ (void)parseMotionBehaviorContainer:(id)container motionBehavior:(id)behavior timeNode:(id)node
{
  containerCopy = container;
  behaviorCopy = behavior;
  nodeCopy = node;
  v9 = [containerCopy firstChildOfType:61751];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

  eshObject = [v9 eshObject];
  if (eshObject)
  {
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 45);
  if (v13)
  {
    [behaviorCopy setBy:{v12[12], v12[13]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 2) != 0)
  {
    [behaviorCopy setFrom:{v12[14], v12[15]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 4) != 0)
  {
    [behaviorCopy setTo:{v12[16], v12[16]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 8) != 0)
  {
    [behaviorCopy setOriginType:*(v12 + 17) != 2];
  }

  v14 = [containerCopy firstChildOfType:61762];
  v15 = v14;
  if (v14)
  {
    eshObject2 = [v14 eshObject];
    if (eshObject2)
    {

      if (!v17 || EshRecord::getInstance(v17) != 1 || *(v17 + 12) != 3)
      {
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCsString:getStreamInfo(v17)];
      v18 = [PDAnimateMotionBehavior bezierPathFromNSString:v15];
      [behaviorCopy setPath:v18];
    }
  }

LABEL_20:
  v19 = *(v12 + 45);
  if ((v19 & 0x40) != 0)
  {
    v20 = [containerCopy firstChildOfType:61757];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 childOfType:61762 instance:7];
        eshObject3 = [v21 eshObject];
        if (eshObject3)
        {
        }

        else
        {
          v23 = 0;
        }

        if ((*(*v23 + 16))(v23) == 2)
        {
          [behaviorCopy setAngle:PptAnimVariantAtom::getReal(v23)];
        }
      }
    }

    v19 = *(v12 + 45);
  }

  if (v19 < 0)
  {
    v24 = [containerCopy firstChildOfType:61757];
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 childOfType:61762 instance:10];
        (*(*v26 + 16))(v26);
      }
    }
  }

  [nodeCopy setMotionBehavior:behaviorCopy];
LABEL_36:
}

+ (void)parseRotationBehaviorContainer:(id)container rotationBehavior:(id)behavior timeNode:(id)node
{
  containerCopy = container;
  behaviorCopy = behavior;
  nodeCopy = node;
  v9 = [containerCopy firstChildOfType:61752];
  v10 = v9;
  if (v9)
  {
    eshObject = [v9 eshObject];
    if (eshObject)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 45);
    if (v13)
    {
      [behaviorCopy setBy:(v12[12] * 60000.0)];
      v13 = *(v12 + 45);
    }

    if ((v13 & 2) != 0)
    {
      [behaviorCopy setFrom:(v12[13] * 60000.0)];
      v13 = *(v12 + 45);
    }

    if ((v13 & 4) != 0)
    {
      [behaviorCopy setTo:(v12[14] * 60000.0)];
    }

    [nodeCopy setRotateBehavior:behaviorCopy];
  }
}

+ (void)parseCmdBehaviorContainer:(id)container cmdBehavior:(id)behavior timeNode:(id)node
{
  containerCopy = container;
  behaviorCopy = behavior;
  nodeCopy = node;
  v9 = [containerCopy firstChildOfType:61755];
  v10 = v9;
  if (v9)
  {
    eshObject = [v9 eshObject];
    if (eshObject)
    {
    }

    if (*(eshObject + 45))
    {
      [behaviorCopy setBehaviorType:eshObject[12]];
    }

    [nodeCopy setCmdBehavior:behaviorCopy];
  }
}

+ (void)parseTimeNodeVariants:(id)variants commonData:(id)data
{
  variantsCopy = variants;
  dataCopy = data;
  v6 = [variantsCopy childOfType:61762 instance:9];
  v7 = v6;
  if (v6)
  {
    if (*(v8 + 12) == 1)
    {
      [dataCopy setPresetId:PptAnimVariantAtom::getInteger(v8)];
    }
  }

  v9 = [variantsCopy childOfType:61762 instance:10];
  v10 = v9;
  if (v9)
  {
    if (*(v11 + 12) == 1)
    {
      [dataCopy setPresetSubType:PptAnimVariantAtom::getInteger(v11)];
    }
  }

  v12 = [variantsCopy childOfType:61762 instance:11];
  v13 = v12;
  if (v12)
  {
    if (*(v14 + 12) == 1)
    {
      [dataCopy setAnimationPresetClass:PptAnimVariantAtom::getInteger(v14)];
    }
  }

  v15 = [variantsCopy childOfType:61762 instance:19];
  v16 = v15;
  if (v15)
  {
    if (*(v17 + 12) == 1)
    {
      [dataCopy setGroupIdValue:PptAnimVariantAtom::getInteger(v17)];
    }
  }

  v18 = [variantsCopy childOfType:61762 instance:20];
  v19 = v18;
  if (v18)
  {
    if (*(v20 + 12) == 1)
    {
      [dataCopy setType:PptAnimVariantAtom::getInteger(v20)];
    }
  }
}

+ (unint64_t)paragraphIndexFromBinaryTextBytesCharacterIndex:(unint64_t)index srcDrawable:(id)drawable
{
  drawableCopy = drawable;
  v6 = objc_opt_class();
  v7 = TSUDynamicCast(v6, drawableCopy);
  v8 = v7;
  if (v7)
  {
    textBody = [v7 textBody];
    v10 = 0;
    for (i = -1; i + 1 < [textBody paragraphCount] && v10 <= index; ++i)
    {
      v12 = [textBody paragraphAtIndex:?];
      v10 += [v12 characterCount] + 1;
    }
  }

  else
  {
    i = -1;
  }

  return i;
}

+ (void)parseTargetContainerHolder:(id)holder setTargetObj:(id)obj state:(id)state
{
  holderCopy = holder;
  objCopy = obj;
  stateCopy = state;
  v10 = [holderCopy firstChildOfType:61756];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 firstChildOfType:11003];
      v12 = v11;
      if (!v11)
      {
LABEL_32:

        goto LABEL_33;
      }

      eshObject = [v11 eshObject];
      if (eshObject)
      {
      }

      else
      {
        v14 = 0;
      }

      v15 = 0;
      v16 = v14[12];
      v17 = v14[14];
      if (v16 > 3)
      {
        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            goto LABEL_24;
          }

          v18 = [stateCopy drawableOnTgtSlideForShapeId:v17];
          if (!v18)
          {
            goto LABEL_26;
          }

          v15 = objc_alloc_init(PDAnimationOleChartTarget);
          [(PDAnimationShapeTarget *)v15 setDrawable:v18];
          [(PDAnimationOleChartTarget *)v15 setLevel:v14[16]];
          [(PDAnimationOleChartTarget *)v15 setChartSubElementType:v14[15]];
LABEL_27:

          goto LABEL_28;
        }

        if (v16 == 6)
        {
          goto LABEL_24;
        }

        if (v16 != 8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v16 <= 1)
        {
          if (v16)
          {
            if (v16 == 1)
            {
              v15 = objc_alloc_init(PDSlideTarget);
LABEL_28:
              if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [objCopy performSelector:sel_setTarget_ withObject:v15];
              }
            }

LABEL_31:

            goto LABEL_32;
          }

LABEL_24:
          v18 = [stateCopy drawableOnTgtSlideForShapeId:v17];
          if (v18)
          {
            v15 = objc_alloc_init(PDAnimationShapeTarget);
            [(PDAnimationShapeTarget *)v15 setDrawable:v18];
            goto LABEL_27;
          }

LABEL_26:
          v15 = 0;
          goto LABEL_27;
        }

        if (v16 != 2)
        {
          v18 = [stateCopy drawableOnTgtSlideForShapeId:v17];
          if (!v18)
          {
            goto LABEL_26;
          }

          v15 = objc_alloc_init(PDAnimationSoundTarget);
          [(PDAnimationShapeTarget *)v15 setDrawable:v18];
          goto LABEL_27;
        }
      }

      v18 = [stateCopy drawableOnTgtSlideForShapeId:v17];
      if (v18)
      {
        v15 = objc_alloc_init(PDAnimationTextTarget);
        [(PDAnimationShapeTarget *)v15 setDrawable:v18];
        if (v16 == 2)
        {
          -[PDAnimationOleChartTarget setRange:](v15, "setRange:", [self paragraphIndexFromBinaryTextBytesCharacterIndex:v14[15] srcDrawable:v18], 1);
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

LABEL_33:
}

+ (id)newParaBuild:(id)build
{
  buildCopy = build;
  v4 = buildCopy;
  {
    v7 = v6;
    v8 = objc_alloc_init(PDParagraphBuild);
    LOBYTE(v9) = v7[59];
    [(PDParagraphBuild *)v8 setAutoAdvanceTime:v9];
    [(PDParagraphBuild *)v8 setIsReversedParagraphOrder:v7[57]];
    [(PDParagraphBuild *)v8 setBuildLevel:*(v7 + 13)];
    v10 = *(v7 + 12);
    if (v10 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 == 2;
    }

    [(PDParagraphBuild *)v8 setType:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)newChartBuild:(id)build
{
  buildCopy = build;
  v4 = buildCopy;
  {
    v7 = v6;
    v8 = [[PDChartBuild alloc] initWithBuildType:v6[12]];
    [(PDBuild *)v8 setIsAnimateBackground:*(v7 + 52)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)parseBuildList:(id)list buildMap:(id)map state:(id)state
{
  listCopy = list;
  mapCopy = map;
  stateCopy = state;
  v27 = stateCopy;
  childCount = [listCopy childCount];
  if (childCount)
  {
    v9 = 0;
    while (1)
    {
      v10 = [listCopy childAt:v9];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

LABEL_22:

      if (childCount == ++v9)
      {
        goto LABEL_23;
      }
    }

    eshObject = [v10 eshObject];
    v12 = (*(*eshObject + 16))(eshObject);
    if (v12 == 11012)
    {
      v13 = [v10 firstChildOfType:11013];
      v14 = [self newChartBuild:v13];
    }

    else
    {
      if (v12 != 11016)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v13 = [v10 firstChildOfType:11017];
      v14 = [self newParaBuild:v13];
    }

    v15 = v14;

LABEL_11:
    v16 = [v10 firstChildOfType:11011];
    v17 = v16;
    if (v16)
    {
      eshObject2 = [v16 eshObject];
      if (eshObject2)
      {
      }

      else
      {
        v19 = 0;
      }

      v21 = [stateCopy drawableForShapeId:v19[12]];
      v20 = v21;
      if (v15 && v21)
      {
        v22 = v19[14];
        if ((v22 & 0x80000000) == 0)
        {
          v23 = [PDBuildMapKey alloc];
          v24 = [MEMORY[0x277CCABB0] numberWithInt:v22];
          stringValue = [v24 stringValue];
          v26 = [(PDBuildMapKey *)v23 initWithDrawable:v20 groupId:stringValue];

          [mapCopy setObject:v15 forUncopiedKey:v26];
        }

        stateCopy = v27;
      }
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_22;
  }

LABEL_23:
}

@end