@interface PBAnimation
+ (BOOL)hasPpt10Animations:(id)a3;
+ (id)newChartBuild:(id)a3;
+ (id)newColorFromBehaviorColor:(PptAnimColorBehavior_Color_Struct *)a3;
+ (id)newParaBuild:(id)a3;
+ (id)parseBehaviorContainer:(id)a3 timeNode:(id)a4 state:(id)a5;
+ (id)parseMediaContainer:(id)a3 timeNode:(id)a4 state:(id)a5;
+ (unint64_t)paragraphIndexFromBinaryTextBytesCharacterIndex:(unint64_t)a3 srcDrawable:(id)a4;
+ (void)generatePpt10AnimationFromState:(id)a3 timings:(id)a4;
+ (void)mapAnimationsFromSlide:(id)a3 tgtSlide:(id)a4 state:(id)a5;
+ (void)parseAnimateBehaviorContainer:(id)a3 animBehavior:(id)a4 timeNode:(id)a5;
+ (void)parseBuildList:(id)a3 buildMap:(id)a4 state:(id)a5;
+ (void)parseCmdBehaviorContainer:(id)a3 cmdBehavior:(id)a4 timeNode:(id)a5;
+ (void)parseColorBehaviorContainer:(id)a3 colorBehavior:(id)a4 timeNode:(id)a5;
+ (void)parseEffectBehaviorContainer:(id)a3 effectBehavior:(id)a4 timeNode:(id)a5;
+ (void)parseMotionBehaviorContainer:(id)a3 motionBehavior:(id)a4 timeNode:(id)a5;
+ (void)parsePpt10Animation:(id)a3 timings:(id)a4 state:(id)a5;
+ (void)parseRotationBehaviorContainer:(id)a3 rotationBehavior:(id)a4 timeNode:(id)a5;
+ (void)parseTargetContainerHolder:(id)a3 setTargetObj:(id)a4 state:(id)a5;
+ (void)parseTimeConditionsHolder:(id)a3 commonData:(id)a4;
+ (void)parseTimeNodeContainer:(id)a3 siblings:(id)a4 state:(id)a5;
+ (void)parseTimeNodeVariants:(id)a3 commonData:(id)a4;
@end

@implementation PBAnimation

+ (void)mapAnimationsFromSlide:(id)a3 tgtSlide:(id)a4 state:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 presentationState];
  v11 = [v8 animation];
  if ([a1 hasPpt10Animations:v12])
  {
    [a1 parsePpt10Animation:v12 timings:v11 state:v9];
  }

  else
  {
    [a1 generatePpt10AnimationFromState:v10 timings:v11];
  }

  [v10 resetSlideState];
}

+ (BOOL)hasPpt10Animations:(id)a3
{
  v3 = [PBProgTag binaryTagDataWithName:L"___PPT10" inProgTagsParent:a3];
  v4 = v3 != 0;

  return v4;
}

+ (void)parsePpt10Animation:(id)a3 timings:(id)a4 state:(id)a5
{
  v19 = a4;
  v8 = a5;
  v9 = [a3 firstChildOfType:5000];
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
            v14 = [v19 addRootTimeNode];
            v15 = [v19 rootTimeNode];
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v15 setChildTimeNodeList:v16];
            [a1 parseTimeNodeContainer:v13 siblings:v16 state:v8];
          }

          v17 = [v11 firstChildOfType:11010];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_alloc_init(OITSUNoCopyDictionary);
            [a1 parseBuildList:v17 buildMap:v18 state:v8];
            [v19 setBuildMap:v18];
          }
        }
      }
    }
  }
}

+ (void)generatePpt10AnimationFromState:(id)a3 timings:(id)a4
{
  v38 = a3;
  v5 = a4;
  v6 = [v38 slideState];
  v7 = [v6 buildOrderMap];
  v37 = v5;

  v8 = [v7 allKeys];
  v9 = [v8 sortedArrayUsingSelector:sel_compare_];

  v40 = objc_alloc_init(OITSUNoCopyDictionary);
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = MEMORY[0x277CBEB98];
  v11 = [v38 tgtSlide];
  v12 = [v11 drawables];
  v13 = [v10 setWithArray:v12];

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
    v17 = v7;
    v18 = [v7 objectForKey:v16];

    v19 = [v18 drawable];
    if (![v13 containsObject:v19])
    {
      goto LABEL_15;
    }

    v20 = [PDBuildMapKey alloc];
    v21 = [v18 drawable];
    v22 = [v18 data];
    v23 = [v22 groupId];
    v42 = [(PDBuildMapKey *)v20 initWithDrawable:v21 groupId:v23];

    v24 = [v18 build];
    [(OITSUNoCopyDictionary *)v40 setObject:v24 forUncopiedKey:v42];

    v25 = objc_alloc_init(PDTimeNodeUnion);
    v26 = [v18 data];
    [(PDTimeNodeUnion *)v25 setSequential:v26];

    [v41 addObject:v25];
    v27 = objc_opt_class();
    v28 = [v19 clientData];
    v29 = TSUDynamicCast(v27, v28);

    v30 = [v29 animationInfo];
    v31 = [v30 mediaNode];

    if (v31)
    {
      v32 = objc_alloc_init(PDTimeNodeUnion);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PDTimeNodeUnion *)v32 setVideo:v31];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(PDTimeNodeUnion *)v32 setAudio:v31];
        }
      }

      v33 = [(PDTimeNodeUnion *)v32 video];
      if (v33)
      {

        goto LABEL_12;
      }

      v34 = [(PDTimeNodeUnion *)v32 audio];

      if (v34)
      {
LABEL_12:
        [v41 addObject:v32];
      }
    }

    v13 = v39;
LABEL_15:

    v14 = v15 + 1;
    v7 = v17;
  }

  v35 = [v37 addRootTimeNode];
  v36 = [v37 rootTimeNode];
  [v36 setChildTimeNodeList:v41];

  [v37 setBuildMap:v40];
}

+ (id)parseBehaviorContainer:(id)a3 timeNode:(id)a4 state:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v46 = [v7 firstChildOfType:61745];
  if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = objc_alloc_init(PDSetBehavior);
    [v8 setBehavior:v10];

    v11 = [v8 behavior];
    v51 = v46;
  }

  else
  {
    v51 = 0;
    v11 = 0;
  }

  v50 = [v7 firstChildOfType:61744];
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
        v15 = [v13 eshObject];
        if (v15)
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

        [v8 setScaleBehavior:v12];
      }

      v18 = [v8 scaleBehavior];

      v19 = v50;
      v51 = v19;
      v11 = v18;
    }
  }

  v49 = [v7 firstChildOfType:61739];
  if (v49)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = objc_alloc_init(PDAnimateTimeBehavior);
      [a1 parseAnimateBehaviorContainer:v49 animBehavior:v20 timeNode:v8];

      v21 = [v8 timeBehavior];

      v22 = v49;
      v51 = v22;
      v11 = v21;
    }
  }

  v48 = [v7 firstChildOfType:61740];
  if (v48)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = objc_alloc_init(PDAnimateColorBehavior);
      [a1 parseColorBehaviorContainer:v48 colorBehavior:v23 timeNode:v8];

      v24 = [v8 colorBehavior];

      v25 = v48;
      v51 = v25;
      v11 = v24;
    }
  }

  v26 = [v7 firstChildOfType:61741];
  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = objc_alloc_init(PDAnimateEffectBehavior);
      [a1 parseEffectBehaviorContainer:v26 effectBehavior:v27 timeNode:v8];

      v28 = [v8 effectBehavior];

      v29 = v26;
      v51 = v29;
      v11 = v28;
    }
  }

  v30 = [v7 firstChildOfType:61742];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = objc_alloc_init(PDAnimateMotionBehavior);
      [a1 parseMotionBehaviorContainer:v30 motionBehavior:v31 timeNode:v8];

      v32 = [v8 motionBehavior];

      v33 = v30;
      v51 = v33;
      v11 = v32;
    }
  }

  v34 = [v7 firstChildOfType:61743];
  if (v34)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = objc_alloc_init(PDAnimateRotateBehavior);
      [a1 parseRotationBehaviorContainer:v34 rotationBehavior:v35 timeNode:v8];

      v36 = [v8 rotateBehavior];

      v37 = v34;
      v51 = v37;
      v11 = v36;
    }
  }

  v38 = [v7 firstChildOfType:61746];
  if (v38)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v9;
      v39 = objc_alloc_init(PDCmdBehavior);
      [a1 parseCmdBehaviorContainer:v38 cmdBehavior:v39 timeNode:v8];

      v40 = [v8 cmdBehavior];

      v41 = v38;
      v51 = v41;
      v11 = v40;
      v9 = v45;
    }
  }

  if (v11 && v51)
  {
    v42 = [v51 firstChildOfType:61738];
    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 parseTargetContainerHolder:v42 setTargetObj:v11 state:v9];
      }
    }
  }

  v43 = v11;

  return v11;
}

+ (void)parseTimeNodeContainer:(id)a3 siblings:(id)a4 state:(id)a5
{
  v26 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v25 = objc_alloc_init(PDTimeNodeUnion);
  v11 = [v26 firstChildOfType:61735];
  v24 = v11;
  if (v11)
  {
    v12 = [v11 eshObject];
    if (v12)
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
        v17 = [a1 parseBehaviorContainer:v26 timeNode:v25 state:v9];
      }

      else
      {
        if (v16 != 4)
        {
          goto LABEL_20;
        }

        v17 = [a1 parseMediaContainer:v26 timeNode:v25 state:v9];
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
  v18 = [v26 firstChildOfType:61757];
  if (v18)
  {
    objc_opt_class();
    if (!(v14 | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      [a1 parseTimeNodeVariants:v18 commonData:v15];
    }
  }

  v19 = [v26 firstChildOfType:61733];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 parseTimeConditionsHolder:v26 commonData:v15];
    }
  }

  if (v15)
  {
    v20 = [(PDTimeNode *)v15 childTimeNodeList];
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(PDTimeNode *)v15 setChildTimeNodeList:v20];
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [v26 firstChildOfType:61764];
  v22 = v21;
  if (v20 && v21)
  {
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      [a1 parseTimeNodeContainer:v22 siblings:v20 state:v9];
      v23 = [v26 firstChildOfType:61764 afterChild:v22];

      v22 = v23;
    }

    while (v23);
    v8 = v10;
  }

  [v8 addObject:v25];
}

+ (id)parseMediaContainer:(id)a3 timeNode:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstChildOfType:61757];
  v12 = [v8 firstChildOfType:61756];
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
    [v9 setVideo:v18];
    v16 = v18;
    BYTE1(v19.var1) = 0;
    if (getVariantVal(v8, 26, 0, (&v19.var1 + 1)))
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
  [v9 setAudio:v16];
LABEL_15:

  if (v16)
  {
    if (v11)
    {
      LOBYTE(v20.var0) = 0;
      if (getVariantVal(v8, 18, 0, &v20))
      {
        [(PDMediaNode *)v16 setIsShowWhenStopped:(v20.var0 & 1) == 0];
      }

      *(&v19.var1 + 1) = 0;
      if (getVariantVal(v8, 15, 1, (&v19.var1 + 1)))
      {
        [(PDMediaNode *)v16 setNumberOfSlides:*(&v19.var1 + 1)];
      }

      *(&v19.var0 + 1) = 0;
      if (getVariantVal(v8, 22, 2, (&v19.var0 + 1)))
      {
        [(PDMediaNode *)v16 setVolume:*(&v19.var0 + 1)];
      }

      LOBYTE(v19.var0) = 0;
      if (getVariantVal(v8, 23, 0, &v19))
      {
        [(PDMediaNode *)v16 setIsMuted:LOBYTE(v19.var0)];
      }
    }

    [a1 parseTargetContainerHolder:v8 setTargetObj:v16 state:v10];
  }

LABEL_9:

  return v16;
}

+ (void)parseTimeConditionsHolder:(id)a3 commonData:(id)a4
{
  v16 = a3;
  v15 = a4;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v16 firstChildOfType:61733];
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

      v13 = [v16 firstChildOfType:61733 afterChild:{v6, v15}];

      v6 = v13;
    }

    while (v13);
  }

  v14 = v15;
  [v15 setStartTimeConditions:{v5, v15}];
}

+ (void)parseAnimateBehaviorContainer:(id)a3 animBehavior:(id)a4 timeNode:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [a3 firstChildOfType:61748];
  if (v8)
  {
    [v7 setTimeBehavior:v9];
  }
}

+ (id)newColorFromBehaviorColor:(PptAnimColorBehavior_Color_Struct *)a3
{
  var0 = a3->var0;
  if (!a3->var0)
  {
    goto LABEL_5;
  }

  if (var0 == 2)
  {
    v13 = [OADIndexedColor alloc];
    var1 = a3->var1;

    return [(OADIndexedColor *)v13 initWithIndex:var1];
  }

  else
  {
    if (var0 == 1)
    {
      v16 = 0;
      v15 = 0.0;
      convertHslToRgb(a3->var1, a3->var2, a3->var3, &v16 + 1, &v16, &v15);
      v5 = *(&v16 + 1);
      v6 = *&v16;
      a3->var0 = 0;
      a3->var1 = v5;
      v7 = v15;
      a3->var2 = v6;
      a3->var3 = v7;
LABEL_5:
      v8 = [OADRgbColor alloc];
      *&v9 = a3->var1;
      *&v10 = a3->var2;
      *&v11 = a3->var3;
      return [(OADRgbColor *)v8 initWithRed:v9 green:v10 blue:v11];
    }

    return 0;
  }
}

+ (void)parseColorBehaviorContainer:(id)a3 colorBehavior:(id)a4 timeNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstChildOfType:61749];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 eshObject];
    if (v13)
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
      v17 = [a1 newColorFromBehaviorColor:&v19.var0 + 4];
      [v9 setFrom:v17];
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
    v18 = [a1 newColorFromBehaviorColor:&v19.var0 + 4];

    [v9 setTo:v18];
    v15 = v14[45];
    v16 = v18;
    if ((v15 & 8) == 0)
    {
LABEL_8:
      if ((v15 & 0x10) == 0)
      {
LABEL_17:
        [v10 setColorBehavior:v9];

        goto LABEL_18;
      }

LABEL_15:
      LODWORD(v19.var0) = 0;
      if (getVariantVal(v8, 5, 1, &v19))
      {
        [v9 setDirection:LODWORD(v19.var0)];
      }

      goto LABEL_17;
    }

LABEL_12:
    LODWORD(v19.var0) = 0;
    if (getVariantVal(v8, 4, 1, &v19))
    {
      [v9 setColorSpace:LODWORD(v19.var0)];
    }

    if ((v14[45] & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_18:
}

+ (void)parseEffectBehaviorContainer:(id)a3 effectBehavior:(id)a4 timeNode:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v12 firstChildOfType:61750];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eshObject];
    if (v11)
    {
    }

    if (*(v11 + 45))
    {
      [v7 setTransition:v11[12]];
    }

    [v8 setEffectBehavior:v7];
  }
}

+ (void)parseMotionBehaviorContainer:(id)a3 motionBehavior:(id)a4 timeNode:(id)a5
{
  v27 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v27 firstChildOfType:61751];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_36;
  }

  v11 = [v9 eshObject];
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v12 + 45);
  if (v13)
  {
    [v7 setBy:{v12[12], v12[13]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 2) != 0)
  {
    [v7 setFrom:{v12[14], v12[15]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 4) != 0)
  {
    [v7 setTo:{v12[16], v12[16]}];
    v13 = *(v12 + 45);
  }

  if ((v13 & 8) != 0)
  {
    [v7 setOriginType:*(v12 + 17) != 2];
  }

  v14 = [v27 firstChildOfType:61762];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 eshObject];
    if (v16)
    {

      if (!v17 || EshRecord::getInstance(v17) != 1 || *(v17 + 12) != 3)
      {
        goto LABEL_20;
      }

      v15 = [MEMORY[0x277CCACA8] stringWithCsString:getStreamInfo(v17)];
      v18 = [PDAnimateMotionBehavior bezierPathFromNSString:v15];
      [v7 setPath:v18];
    }
  }

LABEL_20:
  v19 = *(v12 + 45);
  if ((v19 & 0x40) != 0)
  {
    v20 = [v27 firstChildOfType:61757];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v20 childOfType:61762 instance:7];
        v22 = [v21 eshObject];
        if (v22)
        {
        }

        else
        {
          v23 = 0;
        }

        if ((*(*v23 + 16))(v23) == 2)
        {
          [v7 setAngle:PptAnimVariantAtom::getReal(v23)];
        }
      }
    }

    v19 = *(v12 + 45);
  }

  if (v19 < 0)
  {
    v24 = [v27 firstChildOfType:61757];
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

  [v8 setMotionBehavior:v7];
LABEL_36:
}

+ (void)parseRotationBehaviorContainer:(id)a3 rotationBehavior:(id)a4 timeNode:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v14 firstChildOfType:61752];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eshObject];
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 45);
    if (v13)
    {
      [v7 setBy:(v12[12] * 60000.0)];
      v13 = *(v12 + 45);
    }

    if ((v13 & 2) != 0)
    {
      [v7 setFrom:(v12[13] * 60000.0)];
      v13 = *(v12 + 45);
    }

    if ((v13 & 4) != 0)
    {
      [v7 setTo:(v12[14] * 60000.0)];
    }

    [v8 setRotateBehavior:v7];
  }
}

+ (void)parseCmdBehaviorContainer:(id)a3 cmdBehavior:(id)a4 timeNode:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v12 firstChildOfType:61755];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 eshObject];
    if (v11)
    {
    }

    if (*(v11 + 45))
    {
      [v7 setBehaviorType:v11[12]];
    }

    [v8 setCmdBehavior:v7];
  }
}

+ (void)parseTimeNodeVariants:(id)a3 commonData:(id)a4
{
  v21 = a3;
  v5 = a4;
  v6 = [v21 childOfType:61762 instance:9];
  v7 = v6;
  if (v6)
  {
    if (*(v8 + 12) == 1)
    {
      [v5 setPresetId:PptAnimVariantAtom::getInteger(v8)];
    }
  }

  v9 = [v21 childOfType:61762 instance:10];
  v10 = v9;
  if (v9)
  {
    if (*(v11 + 12) == 1)
    {
      [v5 setPresetSubType:PptAnimVariantAtom::getInteger(v11)];
    }
  }

  v12 = [v21 childOfType:61762 instance:11];
  v13 = v12;
  if (v12)
  {
    if (*(v14 + 12) == 1)
    {
      [v5 setAnimationPresetClass:PptAnimVariantAtom::getInteger(v14)];
    }
  }

  v15 = [v21 childOfType:61762 instance:19];
  v16 = v15;
  if (v15)
  {
    if (*(v17 + 12) == 1)
    {
      [v5 setGroupIdValue:PptAnimVariantAtom::getInteger(v17)];
    }
  }

  v18 = [v21 childOfType:61762 instance:20];
  v19 = v18;
  if (v18)
  {
    if (*(v20 + 12) == 1)
    {
      [v5 setType:PptAnimVariantAtom::getInteger(v20)];
    }
  }
}

+ (unint64_t)paragraphIndexFromBinaryTextBytesCharacterIndex:(unint64_t)a3 srcDrawable:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = TSUDynamicCast(v6, v5);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 textBody];
    v10 = 0;
    for (i = -1; i + 1 < [v9 paragraphCount] && v10 <= a3; ++i)
    {
      v12 = [v9 paragraphAtIndex:?];
      v10 += [v12 characterCount] + 1;
    }
  }

  else
  {
    i = -1;
  }

  return i;
}

+ (void)parseTargetContainerHolder:(id)a3 setTargetObj:(id)a4 state:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v19 firstChildOfType:61756];
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

      v13 = [v11 eshObject];
      if (v13)
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

          v18 = [v9 drawableOnTgtSlideForShapeId:v17];
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
                [v8 performSelector:sel_setTarget_ withObject:v15];
              }
            }

LABEL_31:

            goto LABEL_32;
          }

LABEL_24:
          v18 = [v9 drawableOnTgtSlideForShapeId:v17];
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
          v18 = [v9 drawableOnTgtSlideForShapeId:v17];
          if (!v18)
          {
            goto LABEL_26;
          }

          v15 = objc_alloc_init(PDAnimationSoundTarget);
          [(PDAnimationShapeTarget *)v15 setDrawable:v18];
          goto LABEL_27;
        }
      }

      v18 = [v9 drawableOnTgtSlideForShapeId:v17];
      if (v18)
      {
        v15 = objc_alloc_init(PDAnimationTextTarget);
        [(PDAnimationShapeTarget *)v15 setDrawable:v18];
        if (v16 == 2)
        {
          -[PDAnimationOleChartTarget setRange:](v15, "setRange:", [a1 paragraphIndexFromBinaryTextBytesCharacterIndex:v14[15] srcDrawable:v18], 1);
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

LABEL_33:
}

+ (id)newParaBuild:(id)a3
{
  v3 = a3;
  v4 = v3;
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

+ (id)newChartBuild:(id)a3
{
  v3 = a3;
  v4 = v3;
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

+ (void)parseBuildList:(id)a3 buildMap:(id)a4 state:(id)a5
{
  v30 = a3;
  v28 = a4;
  v7 = a5;
  v27 = v7;
  v8 = [v30 childCount];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [v30 childAt:v9];
      if (v10)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

LABEL_22:

      if (v8 == ++v9)
      {
        goto LABEL_23;
      }
    }

    v11 = [v10 eshObject];
    v12 = (*(*v11 + 16))(v11);
    if (v12 == 11012)
    {
      v13 = [v10 firstChildOfType:11013];
      v14 = [a1 newChartBuild:v13];
    }

    else
    {
      if (v12 != 11016)
      {
        v15 = 0;
        goto LABEL_11;
      }

      v13 = [v10 firstChildOfType:11017];
      v14 = [a1 newParaBuild:v13];
    }

    v15 = v14;

LABEL_11:
    v16 = [v10 firstChildOfType:11011];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 eshObject];
      if (v18)
      {
      }

      else
      {
        v19 = 0;
      }

      v21 = [v7 drawableForShapeId:v19[12]];
      v20 = v21;
      if (v15 && v21)
      {
        v22 = v19[14];
        if ((v22 & 0x80000000) == 0)
        {
          v23 = [PDBuildMapKey alloc];
          v24 = [MEMORY[0x277CCABB0] numberWithInt:v22];
          v25 = [v24 stringValue];
          v26 = [(PDBuildMapKey *)v23 initWithDrawable:v20 groupId:v25];

          [v28 setObject:v15 forUncopiedKey:v26];
        }

        v7 = v27;
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