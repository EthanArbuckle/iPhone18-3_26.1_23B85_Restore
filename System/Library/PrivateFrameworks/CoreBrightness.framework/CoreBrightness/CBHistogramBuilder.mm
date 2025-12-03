@interface CBHistogramBuilder
- (CBHistogramBuilder)initWithEdges:(id)edges;
- (void)dealloc;
- (void)enumerateBinsUsingBlock:(id)block;
- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight;
- (void)reset;
@end

@implementation CBHistogramBuilder

- (CBHistogramBuilder)initWithEdges:(id)edges
{
  selfCopy = self;
  v10 = a2;
  edgesCopy = edges;
  v8.receiver = self;
  v8.super_class = CBHistogramBuilder;
  selfCopy = [(CBHistogramBuilder *)&v8 init];
  if (selfCopy)
  {
    context = objc_autoreleasePoolPush();
    MEMORY[0x1E69E5928](edgesCopy);
    selfCopy->_edges = edgesCopy;
    v7 = [(NSArray *)edgesCopy count]+ 1;
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    selfCopy->_bins = v3;
    for (i = 0; i < v7; ++i)
    {
      [(NSMutableArray *)selfCopy->_bins insertObject:&unk_1F59C87C8 atIndex:i];
    }

    objc_autoreleasePoolPop(context);
  }

  return selfCopy;
}

- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight
{
  context = objc_autoreleasePoolPush();
  v13 = [(NSMutableArray *)self->_bins count];
  for (i = 0; i < v13; ++i)
  {
    if (i + 1 != v13)
    {
      [-[NSArray objectAtIndex:](self->_edges objectAtIndex:{i), "doubleValue"}];
      v6 = v5;
      weightedCopy = weighted;
      if (weighted >= v6)
      {
        continue;
      }
    }

    weightedCopy = [(NSMutableArray *)self->_bins objectAtIndex:i, weightedCopy];
    bins = self->_bins;
    v8 = MEMORY[0x1E696AD98];
    [weightedCopy doubleValue];
    -[NSMutableArray setObject:atIndexedSubscript:](bins, "setObject:atIndexedSubscript:", [v8 numberWithDouble:v7 + weight], i);
    break;
  }

  objc_autoreleasePoolPop(context);
}

- (void)enumerateBinsUsingBlock:(id)block
{
  selfCopy = self;
  v15 = a2;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v13 = [(NSMutableArray *)selfCopy->_bins count];
  bins = selfCopy->_bins;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __46__CBHistogramBuilder_enumerateBinsUsingBlock___block_invoke;
  v9 = &unk_1E867B298;
  v10 = selfCopy;
  v12 = v13;
  v11 = blockCopy;
  [(NSMutableArray *)bins enumerateObjectsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __46__CBHistogramBuilder_enumerateBinsUsingBlock___block_invoke(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 >= a1[6] - 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@">=%d", objc_msgSend(objc_msgSend(*(a1[4] + 16), "objectAtIndexedSubscript:", a1[6] - 2), "intValue")];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d", objc_msgSend(objc_msgSend(*(a1[4] + 16), "objectAtIndexedSubscript:", a3 - 1), "intValue"), objc_msgSend(objc_msgSend(*(a1[4] + 16), "objectAtIndexedSubscript:", a3), "intValue") - 1];
    }
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"0-%d", objc_msgSend(objc_msgSend(*(a1[4] + 16), "objectAtIndexedSubscript:", 0), "intValue") - 1];
  }

  return (*(a1[5] + 16))();
}

- (void)reset
{
  context = objc_autoreleasePoolPush();
  v4 = [(NSMutableArray *)self->_bins count];
  [(NSMutableArray *)self->_bins removeAllObjects];
  for (i = 0; i < v4; ++i)
  {
    [(NSMutableArray *)self->_bins insertObject:&unk_1F59C87C8 atIndex:i];
  }

  objc_autoreleasePoolPop(context);
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_edges);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_bins).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBHistogramBuilder;
  [(CBHistogramBuilder *)&v3 dealloc];
}

@end