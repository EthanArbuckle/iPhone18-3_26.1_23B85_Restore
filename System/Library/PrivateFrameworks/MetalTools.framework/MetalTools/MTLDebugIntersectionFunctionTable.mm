@interface MTLDebugIntersectionFunctionTable
- (MTLDebugIntersectionFunctionTable)initWithBaseObject:(id)object parent:(id)parent;
- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table parent:(id)parent descriptor:(id)descriptor pipelineState:(id)state stage:(unint64_t)stage;
- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table parent:(id)parent descriptor:(id)descriptor stage:(unint64_t)stage;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (void)dealloc;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
@end

@implementation MTLDebugIntersectionFunctionTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDebugIntersectionFunctionTable;
  [(MTLToolsIntersectionFunctionTable *)&v3 dealloc];
}

- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table parent:(id)parent descriptor:(id)descriptor stage:(unint64_t)stage
{
  v11.receiver = self;
  v11.super_class = MTLDebugIntersectionFunctionTable;
  v8 = [(MTLToolsResource *)&v11 initWithBaseObject:table parent:parent];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_purgeableStateToken);
    v8->_purgeableStateHasBeenSet = 0;
    v8->_functionCount = [descriptor functionCount];
    v9->_stage = stage;
  }

  return v9;
}

- (MTLDebugIntersectionFunctionTable)initWithIntersectionFunctionTable:(id)table parent:(id)parent descriptor:(id)descriptor pipelineState:(id)state stage:(unint64_t)stage
{
  v13.receiver = self;
  v13.super_class = MTLDebugIntersectionFunctionTable;
  v10 = [(MTLToolsResource *)&v13 initWithBaseObject:table parent:parent];
  v11 = v10;
  if (v10)
  {
    atomic_store(0, &v10->_purgeableStateToken);
    v10->_purgeableStateHasBeenSet = 0;
    v10->_functionCount = [descriptor functionCount];
    v11->_pipelineState = state;
    v11->_stage = stage;
  }

  return v11;
}

- (MTLDebugIntersectionFunctionTable)initWithBaseObject:(id)object parent:(id)parent
{
  v5.receiver = self;
  v5.super_class = MTLDebugIntersectionFunctionTable;
  result = [(MTLToolsResource *)&v5 initWithBaseObject:object parent:parent];
  if (result)
  {
    atomic_store(0, &result->_purgeableStateToken);
    result->_purgeableStateHasBeenSet = 0;
  }

  return result;
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    [MTLDebugIntersectionFunctionTable setPurgeableState:];
  }

  if (state != 1)
  {
    if (state != 2)
    {
      if (atomic_load(&self->_purgeableStateToken))
      {
        [MTLDebugIntersectionFunctionTable setPurgeableState:];
      }
    }

    self->_purgeableStateHasBeenSet = 1;
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject setPurgeableState:state];
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  if (self->_functionCount <= index)
  {
    indexCopy = index;
    functionCount = self->_functionCount;
    MTLReportFailure();
    if (!function)
    {
      goto LABEL_19;
    }
  }

  else if (!function)
  {
    goto LABEL_19;
  }

  if (self->_pipelineState)
  {
    stage = self->_stage;
    if (stage && stage != [function stage])
    {
      [MTLDebugIntersectionFunctionTable setFunction:function atIndex:&self->_stage];
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
      [(MTLToolsObject *)v12 validateHandleForSetFunction:function, indexCopy, functionCount];
    }
  }

  if ([function functionType] != 6)
  {
    [MTLDebugIntersectionFunctionTable setFunction:function atIndex:?];
  }

  function = [function function];
  if (function)
  {
    v14 = function;
    if (([function intersectionFunctionSignature] & 0x100) != 0)
    {
      [MTLDebugIntersectionFunctionTable setFunction:v14 atIndex:?];
    }
  }

LABEL_19:
  v15 = [(MTLToolsObject *)self baseObject:indexCopy];
  baseObject = [function baseObject];

  [v15 setFunction:baseObject atIndex:index];
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_functionCount)
  {
    v9 = range.location + range.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
    if (!length)
    {
      return;
    }
  }

  else if (!range.length)
  {
    return;
  }

  do
  {
    v8 = *functions++;
    [(MTLDebugIntersectionFunctionTable *)self setFunction:v8 atIndex:location++, v9, functionCount];
    --length;
  }

  while (length);
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  if (self->_functionCount <= index)
  {
    indexCopy = index;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v7 = [(MTLToolsObject *)self baseObject:indexCopy];

  [v7 setOpaqueTriangleIntersectionFunctionWithSignature:signature atIndex:index];
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_functionCount)
  {
    v9 = range.location + range.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v8 = [(MTLToolsObject *)self baseObject:v9];

  [v8 setOpaqueTriangleIntersectionFunctionWithSignature:signature withRange:{location, length}];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  if (self->_functionCount <= index)
  {
    indexCopy = index;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v7 = [(MTLToolsObject *)self baseObject:indexCopy];

  [v7 setOpaqueCurveIntersectionFunctionWithSignature:signature atIndex:index];
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.location + range.length > self->_functionCount)
  {
    v9 = range.location + range.length;
    functionCount = self->_functionCount;
    MTLReportFailure();
  }

  v8 = [(MTLToolsObject *)self baseObject:v9];

  [v8 setOpaqueCurveIntersectionFunctionWithSignature:signature withRange:{location, length}];
}

- (id)formattedDescription:(unint64_t)description
{
  v10[3] = *MEMORY[0x277D85DE8];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
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