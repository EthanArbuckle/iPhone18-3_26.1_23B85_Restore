@interface MTLDebugIntersectionFunctionTable
- (MTLDebugIntersectionFunctionTable)initWithBaseObject:(id)a3 parent:(id)a4;
- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 parent:(id)a4 descriptor:(id)a5 pipelineState:(id)a6 stage:(unint64_t)a7;
- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 parent:(id)a4 descriptor:(id)a5 stage:(unint64_t)a6;
- (id)formattedDescription:(unint64_t)a3;
- (unint64_t)setPurgeableState:(unint64_t)a3;
- (void)dealloc;
- (void)setFunction:(id)a3 atIndex:(unint64_t)a4;
- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4;
@end

@implementation MTLDebugIntersectionFunctionTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIntersectionFunctionTable;
  [(MTLToolsIntersectionFunctionTable *)&v3 dealloc];
}

- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 parent:(id)a4 descriptor:(id)a5 stage:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = MTLDebugIntersectionFunctionTable;
  v8 = [(MTLToolsResource *)&v11 initWithBaseObject:a3 parent:a4];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
    v8->_functionCount = [a5 functionCount];
    v9->_stage = a6;
  }

  return v9;
}

- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)a3 parent:(id)a4 descriptor:(id)a5 pipelineState:(id)a6 stage:(unint64_t)a7
{
  v13.receiver = self;
  v13.super_class = MTLDebugIntersectionFunctionTable;
  v10 = [(MTLToolsResource *)&v13 initWithBaseObject:a3 parent:a4];
  v11 = v10;
  if (v10)
  {
    atomic_store(0, &v10->_purgeableStateToken);
    v10->_purgeableStateHasBeenSet = 0;
    v10->_functionCount = [a5 functionCount];
    v11->_pipelineState = a6;
    v11->_stage = a7;
  }

  return v11;
}

- (MTLDebugIntersectionFunctionTable)initWithBaseObject:(id)a3 parent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLDebugIntersectionFunctionTable;
  result = [(MTLToolsResource *)&v5 initWithBaseObject:a3 parent:a4];
  if (result)
  {
    atomic_store(0, &result->_purgeableStateToken);
    result->_purgeableStateHasBeenSet = 0;
  }

  return result;
}

- (unint64_t)setPurgeableState:(unint64_t)a3
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugIntersectionFunctionTable setPurgeableState:];
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugIntersectionFunctionTable setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  v6 = [(MTLToolsObject *)self baseObject];

  return [v6 setPurgeableState:a3];
}

- (void)setFunction:(id)a3 atIndex:(unint64_t)a4
{
  if (self->_functionCount <= a4)
  {
    v17 = a4;
    functionCount = self->_functionCount;
    MTLReportFailure();
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  else if (!a3)
  {
    goto LABEL_19;
  }

  if (self->_pipelineState)
  {
    stage = self->_stage;
    if (stage && stage != [a3 stage])
    {
      [MTLDebugIntersectionFunctionTable setFunction:a3 atIndex:&self->_stage];
    }

    pipelineState = self->_pipelineState;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = self->_pipelineState;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MTLDebugIntersectionFunctionTable setFunction:atIndex:];
      }
    }

    v10 = self->_pipelineState;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v12 = self->_pipelineState;
    if (isKindOfClass)
    {
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = self->_pipelineState;
LABEL_13:
      [(MTLToolsObject *)v12 validateHandleForSetFunction:a3, v17, functionCount];
    }
  }

  if ([a3 functionType] != 6)
  {
    [MTLDebugIntersectionFunctionTable setFunction:a3 atIndex:?];
  }

  v13 = [a3 function];
  if (v13)
  {
    v14 = v13;
    if (([v13 intersectionFunctionSignature] & 0x100) != 0)
    {
      [MTLDebugIntersectionFunctionTable setFunction:v14 atIndex:?];
    }
  }

LABEL_19:
  v15 = [(MTLToolsObject *)self baseObject:v17];
  v16 = [a3 baseObject];

  [v15 setFunction:v16 atIndex:a4];
}

- (void)setFunctions:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_functionCount)
  {
    v9 = a4.location + a4.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
    if (!length)
    {
      return;
    }
  }

  else if (!a4.length)
  {
    return;
  }

  do
  {
    v8 = *a3++;
    [(MTLDebugIntersectionFunctionTable *)self setFunction:v8 atIndex:location++, v9, functionCount];
    --length;
  }

  while (length);
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (self->_functionCount <= a4)
  {
    v8 = a4;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v7 = [(MTLToolsObject *)self baseObject:v8];

  [v7 setOpaqueTriangleIntersectionFunctionWithSignature:a3 atIndex:a4];
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_functionCount)
  {
    v9 = a4.location + a4.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v8 = [(MTLToolsObject *)self baseObject:v9];

  [v8 setOpaqueTriangleIntersectionFunctionWithSignature:a3 withRange:{location, length}];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 atIndex:(unint64_t)a4
{
  if (self->_functionCount <= a4)
  {
    v8 = a4;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v7 = [(MTLToolsObject *)self baseObject:v8];

  [v7 setOpaqueCurveIntersectionFunctionWithSignature:a3 atIndex:a4];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a4.location + a4.length > self->_functionCount)
  {
    v9 = a4.location + a4.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v8 = [(MTLToolsObject *)self baseObject:v9];

  [v8 setOpaqueCurveIntersectionFunctionWithSignature:a3 withRange:{location, length}];
}

- (id)formattedDescription:(unint64_t)a3
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MTLDebugIntersectionFunctionTable;
  v6 = [(MTLToolsObject *)&v9 description];
  v10[0] = v4;
  v10[1] = @"functionCount =";
  v10[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_functionCount];
  result = [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v10, 3), "componentsJoinedByString:", @" "];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)setFunction:(void *)a1 atIndex:(unint64_t *)a2 .cold.1(void *a1, unint64_t *a2)
{
  MTLDebugStageToString([a1 stage]);
  MTLDebugStageToString(*a2);
  return MTLReportFailure();
}

- (uint64_t)setFunction:(void *)a1 atIndex:.cold.3(void *a1)
{
  [a1 functionType];
  MTLFunctionTypeString();
  return MTLReportFailure();
}

@end