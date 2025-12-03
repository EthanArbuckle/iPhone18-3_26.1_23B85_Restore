@interface PDSequentialTimeNode
+ (id)newSequentialTimeNodeGroupForAnimationInfo;
+ (id)newSequentialTimeNodeGroupForAnimationInfoWithClass:(Class)class target:(id)target;
+ (id)timeNodeUnion:(id)union initWithClass:(Class)class;
+ (unint64_t)buildPartsFromTarget:(id)target;
- (NSString)groupId;
- (PDAnimationTarget)target;
- (double)delay;
- (double)direction;
- (id)level1ParallelTimeNodeGroupAtNodeIndex:(unint64_t)index;
- (id)level2ParallelTimeNodeGroupAtNodeIndex:(unint64_t)index level1NodeIndex:(unint64_t)nodeIndex;
- (id)level3BehaviorAtNodeIndex:(unint64_t)index level2NodeIndex:(unint64_t)nodeIndex level1NodeIndex:(unint64_t)level1NodeIndex;
- (int)iterateType;
- (int)presetClass;
- (int)presetId;
- (int)triggerType;
- (void)setDelay:(double)delay;
- (void)setDirection:(double)direction;
- (void)setGroupId:(id)id;
- (void)setIterateType:(int)type;
- (void)setLevel2ParallelAttribute:(id)attribute;
- (void)setPresetClass:(int)class;
- (void)setPresetId:(int)id;
- (void)setTarget:(id)target;
- (void)setTriggerType:(int)type;
@end

@implementation PDSequentialTimeNode

+ (id)timeNodeUnion:(id)union initWithClass:(Class)class
{
  unionCopy = union;
  v6 = objc_alloc_init(class);
  if (objc_opt_class() == class)
  {
    [unionCopy setBehavior:v6];
  }

  else if (objc_opt_class() == class)
  {
    [unionCopy setCmdBehavior:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PDSequentialTimeNode(PDAnimationInfoAdditions) timeNodeUnion:initWithClass:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Dom/PDAnimationInfo.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:58 isFatal:0 description:"PDSequentialTimeNode::timeNodeUnion unsupported behavior class"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  commonBehavior = [unionCopy commonBehavior];

  return commonBehavior;
}

+ (unint64_t)buildPartsFromTarget:(id)target
{
  targetCopy = target;
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, targetCopy);
  if (v5)
  {
    v6 = objc_opt_class();
    drawable = [v5 drawable];
    v8 = TSUDynamicCast(v6, drawable);

    if (v8 && ([v8 textBody], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
    {
      textBody = [v8 textBody];
      nonEmptyParagraphCount = [textBody nonEmptyParagraphCount];
    }

    else
    {
      nonEmptyParagraphCount = 1;
    }
  }

  else
  {
    nonEmptyParagraphCount = 1;
  }

  return nonEmptyParagraphCount;
}

+ (id)newSequentialTimeNodeGroupForAnimationInfoWithClass:(Class)class target:(id)target
{
  targetCopy = target;
  v24 = objc_alloc_init(PDSequentialTimeNode);
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PDTimeNode *)v24 setStartTimeConditions:v22];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(PDTimeNode *)v24 setChildTimeNodeList:v4];
  v5 = [self buildPartsFromTarget:targetCopy];
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
      v16 = [self timeNodeUnion:v15 initWithClass:class];
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

  return [self newSequentialTimeNodeGroupForAnimationInfoWithClass:v3 target:0];
}

- (id)level1ParallelTimeNodeGroupAtNodeIndex:(unint64_t)index
{
  childTimeNodeList = [(PDTimeNode *)self childTimeNodeList];
  if ([childTimeNodeList count] <= index)
  {
    parallel = 0;
  }

  else
  {
    v5 = [childTimeNodeList objectAtIndex:index];
    parallel = [v5 parallel];
  }

  return parallel;
}

- (id)level2ParallelTimeNodeGroupAtNodeIndex:(unint64_t)index level1NodeIndex:(unint64_t)nodeIndex
{
  v5 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:nodeIndex];
  childTimeNodeList = [v5 childTimeNodeList];

  if ([childTimeNodeList count] <= index)
  {
    parallel = 0;
  }

  else
  {
    v7 = [childTimeNodeList objectAtIndex:index];
    parallel = [v7 parallel];
  }

  return parallel;
}

- (id)level3BehaviorAtNodeIndex:(unint64_t)index level2NodeIndex:(unint64_t)nodeIndex level1NodeIndex:(unint64_t)level1NodeIndex
{
  v6 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:nodeIndex level1NodeIndex:level1NodeIndex];
  childTimeNodeList = [v6 childTimeNodeList];

  v8 = [childTimeNodeList objectAtIndex:index];
  commonBehavior = [v8 commonBehavior];

  return commonBehavior;
}

- (void)setTarget:(id)target
{
  targetCopy = target;
  v4 = objc_opt_class();
  v5 = TSUDynamicCast(v4, targetCopy);
  childTimeNodeList = [(PDTimeNode *)self childTimeNodeList];
  v19 = [childTimeNodeList count];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      v7 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:i];
      childTimeNodeList2 = [v7 childTimeNodeList];

      v20 = childTimeNodeList2;
      v21 = [childTimeNodeList2 count];
      if (v21)
      {
        for (j = 0; j != v21; ++j)
        {
          v10 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:j level1NodeIndex:i];
          childTimeNodeList3 = [v10 childTimeNodeList];

          v12 = [childTimeNodeList3 count];
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
                  drawable = [v5 drawable];
                  [(PDAnimationShapeTarget *)v16 setDrawable:drawable];

                  [(PDAnimationTextTarget *)v16 setRange:i, 1];
                  [v15 setTarget:v16];
                }

                else
                {
                  [v14 setTarget:targetCopy];
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
  target = [v2 target];

  return target;
}

- (void)setLevel2ParallelAttribute:(id)attribute
{
  attributeCopy = attribute;
  childTimeNodeList = [(PDTimeNode *)self childTimeNodeList];
  v5 = [childTimeNodeList count];
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(PDSequentialTimeNode *)self level1ParallelTimeNodeGroupAtNodeIndex:i];
      childTimeNodeList2 = [v7 childTimeNodeList];

      v9 = [childTimeNodeList2 count];
      if (v9)
      {
        for (j = 0; j != v9; ++j)
        {
          v11 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:j level1NodeIndex:i];
          attributeCopy[2](attributeCopy, v11);
        }
      }
    }
  }
}

- (void)setPresetClass:(int)class
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setPresetClass___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  classCopy = class;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)presetClass
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  animationPresetClass = [v2 animationPresetClass];

  return animationPresetClass;
}

- (void)setPresetId:(int)id
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__PDSequentialTimeNode_PDAnimationInfoAdditions__setPresetId___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  idCopy = id;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)presetId
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  presetId = [v2 presetId];

  return presetId;
}

- (void)setTriggerType:(int)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setTriggerType___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  typeCopy = type;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (int)triggerType
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  type = [v2 type];

  return type;
}

- (void)setIterateType:(int)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__PDSequentialTimeNode_PDAnimationInfoAdditions__setIterateType___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__PDParallelTimeNode_8l;
  typeCopy = type;
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
  iterate = [v2 iterate];
  type = [iterate type];

  return type;
}

- (void)setDelay:(double)delay
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__PDSequentialTimeNode_PDAnimationInfoAdditions__setDelay___block_invoke;
  v3[3] = &__block_descriptor_40_e28_v16__0__PDParallelTimeNode_8l;
  *&v3[4] = delay;
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
  startTimeConditions = [v2 startTimeConditions];

  v4 = [startTimeConditions objectAtIndex:0];
  delay = [v4 delay];

  return delay;
}

- (void)setDirection:(double)direction
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__PDSequentialTimeNode_PDAnimationInfoAdditions__setDirection___block_invoke;
  v3[3] = &__block_descriptor_40_e28_v16__0__PDParallelTimeNode_8l;
  *&v3[4] = direction;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v3];
}

- (double)direction
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  presetSubType = [v2 presetSubType];

  return presetSubType;
}

- (void)setGroupId:(id)id
{
  idCopy = id;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PDSequentialTimeNode_PDAnimationInfoAdditions__setGroupId___block_invoke;
  v6[3] = &unk_2799CDBD8;
  v7 = idCopy;
  v5 = idCopy;
  [(PDSequentialTimeNode *)self setLevel2ParallelAttribute:v6];
}

- (NSString)groupId
{
  v2 = [(PDSequentialTimeNode *)self level2ParallelTimeNodeGroupAtNodeIndex:0 level1NodeIndex:0];
  groupId = [v2 groupId];

  return groupId;
}

@end