@interface CBHistogramBuilder2D
- (CBHistogramBuilder2D)initWithFirstDim:(id)dim andSecondDim:(id)secondDim;
- (void)dealloc;
- (void)enumerateBinsUsingBlock:(id)block;
- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight forFirstDimValue:(float)value;
@end

@implementation CBHistogramBuilder2D

- (CBHistogramBuilder2D)initWithFirstDim:(id)dim andSecondDim:(id)secondDim
{
  selfCopy = self;
  v14 = a2;
  dimCopy = dim;
  secondDimCopy = secondDim;
  v11.receiver = self;
  v11.super_class = CBHistogramBuilder2D;
  selfCopy = [(CBHistogramBuilder2D *)&v11 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  if (dimCopy && secondDimCopy)
  {
    v4 = MEMORY[0x1E69E5928](dimCopy);
    selfCopy->_firstDimEdges = v4;
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v9 initWithCapacity:{-[NSArray count](selfCopy->_firstDimEdges, "count") + 1}];
    selfCopy->_histograms = v5;
    for (i = 0; i < [(NSArray *)selfCopy->_firstDimEdges count]+ 1; ++i)
    {
      histograms = selfCopy->_histograms;
      v6 = [CBHistogramBuilder alloc];
      [(NSMutableArray *)histograms insertObject:[(CBHistogramBuilder *)v6 initWithEdges:secondDimCopy] atIndex:i];
    }

    return selfCopy;
  }

  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_histograms);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_firstDimEdges).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBHistogramBuilder2D;
  [(CBHistogramBuilder2D *)&v3 dealloc];
}

- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight forFirstDimValue:(float)value
{
  for (i = 0; i < [(NSMutableArray *)self->_histograms count]; ++i)
  {
    if (i + 1 != [(NSMutableArray *)self->_histograms count])
    {
      [-[NSArray objectAtIndex:](self->_firstDimEdges objectAtIndex:{i), "doubleValue"}];
      v7 = v6;
      valueCopy = value;
      if (value >= v7)
      {
        continue;
      }
    }

    [-[NSMutableArray objectAtIndex:](self->_histograms objectAtIndex:{i, valueCopy), "pushNumberWeighted:withWeight:", weighted, weight}];
    return;
  }
}

- (void)enumerateBinsUsingBlock:(id)block
{
  selfCopy = self;
  v15 = a2;
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  v13 = [(NSMutableArray *)selfCopy->_histograms count];
  histograms = selfCopy->_histograms;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __48__CBHistogramBuilder2D_enumerateBinsUsingBlock___block_invoke;
  v9 = &unk_1E867B2E8;
  v10 = selfCopy;
  v12 = v13;
  v11 = blockCopy;
  [(NSMutableArray *)histograms enumerateObjectsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __48__CBHistogramBuilder2D_enumerateBinsUsingBlock___block_invoke(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a1;
  v14 = 0;
  if (a3)
  {
    if (v17 >= a1[6] - 1)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@">=%d", objc_msgSend(objc_msgSend(*(a1[4] + 8), "objectAtIndexedSubscript:", a1[6] - 2), "intValue")];
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d", objc_msgSend(objc_msgSend(*(a1[4] + 8), "objectAtIndexedSubscript:", v17 - 1), "intValue"), objc_msgSend(objc_msgSend(*(a1[4] + 8), "objectAtIndexedSubscript:", v17), "intValue") - 1];
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0-%d", objc_msgSend(objc_msgSend(*(a1[4] + 8), "objectAtIndexedSubscript:", 0), "intValue") - 1];
  }

  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __48__CBHistogramBuilder2D_enumerateBinsUsingBlock___block_invoke_2;
  v10 = &unk_1E867B2C0;
  v12 = a1[5];
  v13 = v17;
  v11 = v14;
  return [v18 enumerateBinsUsingBlock:?];
}

uint64_t __48__CBHistogramBuilder2D_enumerateBinsUsingBlock___block_invoke_2(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  return (*(a1[5] + 16))();
}

@end