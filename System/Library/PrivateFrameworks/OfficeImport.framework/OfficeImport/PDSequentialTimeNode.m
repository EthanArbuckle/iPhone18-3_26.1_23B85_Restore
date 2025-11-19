@interface PDSequentialTimeNode
+ (id)newSequentialTimeNodeGroupForAnimationInfo;
+ (id)newSequentialTimeNodeGroupForAnimationInfoWithClass:(Class)a3 target:(id)a4;
+ (id)timeNodeUnion:(id)a3 initWithClass:(Class)a4;
+ (unint64_t)buildPartsFromTarget:(id)a3;
- (NSString)groupId;
- (PDAnimationTarget)target;
- (double)delay;
- (double)direction;
- (id)level1ParallelTimeNodeGroupAtNodeIndex:(unint64_t)a3;
- (id)level2ParallelTimeNodeGroupAtNodeIndex:(unint64_t)a3 level1NodeIndex:(unint64_t)a4;
- (id)level3BehaviorAtNodeIndex:(unint64_t)a3 level2NodeIndex:(unint64_t)a4 level1NodeIndex:(unint64_t)a5;
- (int)iterateType;
- (int)presetClass;
- (int)presetId;
- (int)triggerType;
- (void)setDelay:(double)a3;
- (void)setDirection:(double)a3;
- (void)setGroupId:(id)a3;
- (void)setIterateType:(int)a3;
- (void)setLevel2ParallelAttribute:(id)a3;
- (void)setPresetClass:(int)a3;
- (void)setPresetId:(int)a3;
- (void)setTarget:(id)a3;
- (void)setTriggerType:(int)a3;
@end

@implementation PDSequentialTimeNode

+ (id)timeNodeUnion:(id)a3 initWithClass:(Class)a4
{
  v5 = a3;
  v6 = objc_alloc_init(a4);
  if (objc_opt_class() == a4)
  {
    [v5 setBehavior:v6];
  }

  else if (objc_opt_class() == a4)
  {
    [v5 setCmdBehavior:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PDSequentialTimeNode(PDAnimationInfoAdditions) timeNodeUnion:initWithClass:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Dom/PDAnimationInfo.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:58 isFatal:0 description:"PDSequentialTimeNode::timeNodeUnion unsupported behavior class"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [v5 commonBehavior];

  return v9;
}

+ (unint64_t)buildPartsFromTarget:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, v3);
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v5 drawable];
    v8 = TSUDynamicCast(v6, v7);

    if (v8 && ([v8 textBody], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      v10 = [v8 textBody];
      v11 = [v10 nonEmptyParagraphCount];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)newSequentialTimeNodeGroupForAnimationInfoWithClass:(Class)a3 target:(id)a4
{
  v23 = a4;
  v24 = objc_alloc_init(PDSequentialTimeNode);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PDTimeNode *)v24 setStartTimeConditions:v22];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PDTimeNode *)v24 setChildTimeNodeList:v4];
  v5 = [a1 buildPartsFromTarget:v23];
  if (v5)
  {
    do
    {
      v6 = objc_alloc_init(PDTimeNodeUnion);
      [v4 addObject:v6];
      v7 = objc_alloc_init(PDParallelTimeNode);
      [(PDTimeNodeUnion *)v6 setParallel:v7];
      v8 = objc_alloc_init(PDTimeCondition);
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v9 addObject:v8];
      [(PDTimeNode *)v7 setStartTimeConditions:v9];
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(PDTimeNode *)v7 setChildTimeNodeList:v10];
      v11 = objc_alloc_init(PDTimeNodeUnion);
      [v10 addObject:v11];
      v12 = objc_alloc_init(PDParallelTimeNode);
      [(PDTimeNodeUnion *)v11 setParallel:v12];
      v32 = objc_alloc_init(PDIterate);
      [(PDTimeNode *)v12 setIterate:v32];
      v34 = v12;
      v33 = objc_alloc_init(PDTimeCondition);
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v27 = v5;
      [v13 addObject:v33];
      [(PDTimeNode *)v34 setStartTimeConditions:v13];
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = v11;
      [(PDTimeNode *)v34 setChildTimeNodeList:v14];
      v15 = objc_alloc_init(PDTimeNodeUnion);
      v29 = v9;
      v30 = v8;
      v28 = v10;
      [v14 addObject:v15];
      v16 = [a1 timeNodeUnion:v15 initWithClass:a3];
      v17 = v7;
      v18 = v4;
      v19 = objc_alloc_init(PDTimeCondition);
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v20 addObject:v19];
      [v16 setStartTimeConditions:v20];

      v5 = v27 - 1;
      v4 = v18;
    }

    while (v27 != 1);
  }

  return v24;
}

+ (id)newSequentialTimeNodeGroupForAnimationInfo
{
  v3 = objc_opt_class();

  return [a1 newSequentialTimeNodeGroupForAnimationInfoWithClass:v3 target:0];
}

- (id)level1ParallelTimeNodeGroupAtNodeIndex:(unint64_t)a3
{
  v4 = [(PDTimeNode *)self childTimeNodeList];
  if ([v4 count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
    v6 = [v5 parallel];
  }

  return v6;
}

- (id)level2ParallelTimeNodeGroupAtNodeIndex:(unint64_t)a3 level1NodeIndex:(unint64_t)a4
{
  v5 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:a4];
  v6 = [v5 childTimeNodeList];

  if ([v6 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:a3];
    v8 = [v7 parallel];
  }

  return v8;
}

- (id)level3BehaviorAtNodeIndex:(unint64_t)a3 level2NodeIndex:(unint64_t)a4 level1NodeIndex:(unint64_t)a5
{
  v6 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:a4 level1NodeIndex:a5];
  v7 = [v6 childTimeNodeList];

  v8 = [v7 objectAtIndex:a3];
  v9 = [v8 commonBehavior];

  return v9;
}

- (void)setTarget:(id)a3
{
  v22 = a3;
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, v22);
  v18 = [(PDTimeNode *)self childTimeNodeList];
  v19 = [v18 count];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v7 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:i];
      v8 = [v7 childTimeNodeList];

      v20 = v8;
      v21 = [v8 count];
      if (v21)
      {
        for (j = 0; j != v21; ++j)
        {
          v10 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:j level1NodeIndex:i];
          v11 = [v10 childTimeNodeList];

          v12 = [v11 count];
          if (v12)
          {
            for (k = 0; k != v12; ++k)
            {
              v14 = [(PDSequentialTimeNode *)self level3BehaviorAtNodeIndex:k level2NodeIndex:j level1NodeIndex:i];
              v15 = v14;
              if (v14)
              {
                if (v5)
                {
                  v16 = objc_alloc_init(PDAnimationTextTarget);
                  -[PDAnimationTextTarget setType:](v16, "setType:", [v5 type]);
                  v17 = [v5 drawable];
                  [(PDAnimationShapeTarget *)v16 setDrawable:v17];

                  [(PDAnimationTextTarget *)v16 setRange:i, 1];
                  [v15 setTarget:v16];
                }

                else
                {
                  [v14 setTarget:v22];
                }
              }
            }
          }
        }
      }
    }
  }
}

- (PDAnimationTarget)target
{
  v2 = [(PDSequentialTimeNode *)self level3BehaviorAtNodeIndex:0 level2NodeIndex:0 level1NodeIndex:0];
  v3 = [v2 target];

  return v3;
}

- (void)setLevel2ParallelAttribute:(id)a3
{
  v12 = a3;
  v4 = [(PDTimeNode *)self childTimeNodeList];
  v5 = [v4 count];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:i];
      v8 = [v7 childTimeNodeList];

      v9 = [v8 count];
      if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          v11 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:j level1NodeIndex:i];
          v12[2](v12, v11);
        }
      }
    }
  }
}

- (void)setPresetClass:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setPresetClass___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  v4 = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)presetClass
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 animationPresetClass];

  return v3;
}

- (void)setPresetId:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__PDSequentialTimeNode_PDAnimationInfoAdditions__setPresetId___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  v4 = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)presetId
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 presetId];

  return v3;
}

- (void)setTriggerType:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setTriggerType___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  v4 = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)triggerType
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 type];

  return v3;
}

- (void)setIterateType:(int)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setIterateType___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  v4 = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

void __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setIterateType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 iterate];
  [v3 setType:v2];
}

- (int)iterateType
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 iterate];
  v4 = [v3 type];

  return v4;
}

- (void)setDelay:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__PDSequentialTimeNode_PDAnimationInfoAdditions__setDelay___block_invoke;
  v3[3] = &__block_descriptor_40_e28_v16__0__PDParallelTimeNode_8l;
  *&v3[4] = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

void __59__PDSequentialTimeNode_PDAnimationInfoAdditions__setDelay___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 startTimeConditions];
  v3 = [v4 objectAtIndex:0];
  [v3 setDelay:*(a1 + 32)];
}

- (double)delay
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 startTimeConditions];

  v4 = [v3 objectAtIndex:0];
  v5 = [v4 delay];

  return v5;
}

- (void)setDirection:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PDSequentialTimeNode_PDAnimationInfoAdditions__setDirection___block_invoke;
  v3[3] = &__block_descriptor_40_e28_v16__0__PDParallelTimeNode_8l;
  *&v3[4] = a3;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (double)direction
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 presetSubType];

  return v3;
}

- (void)setGroupId:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PDSequentialTimeNode_PDAnimationInfoAdditions__setGroupId___block_invoke;
  v6[3] = &unk_2799CDBD8;
  v7 = v4;
  v5 = v4;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v6];
}

- (NSString)groupId
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  v3 = [v2 groupId];

  return v3;
}

@end