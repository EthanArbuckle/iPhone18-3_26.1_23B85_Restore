@interface CBHistogramBuilder3D
- (CBHistogramBuilder3D)initWithFirstDim:(id)dim andSecondDim:(id)secondDim andThirdDim:(id)thirdDim;
- (void)enumerateBinsUsingBlock:(id)block;
- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight forFirstDimValue:(float)value andSecondDimValue:(float)dimValue;
@end

@implementation CBHistogramBuilder3D

- (CBHistogramBuilder3D)initWithFirstDim:(id)dim andSecondDim:(id)secondDim andThirdDim:(id)thirdDim
{
  selfCopy = self;
  v16 = a2;
  dimCopy = dim;
  secondDimCopy = secondDim;
  thirdDimCopy = thirdDim;
  v12.receiver = self;
  v12.super_class = CBHistogramBuilder3D;
  selfCopy = [(CBHistogramBuilder3D *)&v12 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  if (dimCopy && secondDimCopy && thirdDimCopy)
  {
    v5 = MEMORY[0x1E69E5928](dimCopy);
    selfCopy->_firstDimEdges = v5;
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [v10 initWithCapacity:{-[NSArray count](selfCopy->_firstDimEdges, "count") + 1}];
    selfCopy->_histograms = v6;
    for (i = 0; i < [(NSArray *)selfCopy->_firstDimEdges count]+ 1; ++i)
    {
      histograms = selfCopy->_histograms;
      v7 = [CBHistogramBuilder2D alloc];
      [(NSMutableArray *)histograms insertObject:[(CBHistogramBuilder2D *)v7 initWithFirstDim:secondDimCopy andSecondDim:thirdDimCopy] atIndex:i];
    }

    return selfCopy;
  }

  return 0;
}

- (void)pushNumberWeighted:(double)weighted withWeight:(double)weight forFirstDimValue:(float)value andSecondDimValue:(float)dimValue
{
  for (i = 0; i < [(NSMutableArray *)self->_histograms count]; ++i)
  {
    if (i + 1 != [(NSMutableArray *)self->_histograms count])
    {
      [-[NSArray objectAtIndex:](self->_firstDimEdges objectAtIndex:{i), "doubleValue"}];
      v8 = v7;
      valueCopy = value;
      if (value >= v8)
      {
        continue;
      }
    }

    valueCopy = [(NSMutableArray *)self->_histograms objectAtIndex:i, valueCopy];
    *&v10 = dimValue;
    [valueCopy pushNumberWeighted:weighted withWeight:weight forFirstDimValue:v10];
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
  v8 = __48__CBHistogramBuilder3D_enumerateBinsUsingBlock___block_invoke;
  v9 = &unk_1E867B358;
  v10 = selfCopy;
  v12 = v13;
  v11 = blockCopy;
  [(NSMutableArray *)histograms enumerateObjectsUsingBlock:?];
  objc_autoreleasePoolPop(context);
}

uint64_t __48__CBHistogramBuilder3D_enumerateBinsUsingBlock___block_invoke(void *a1, void *a2, unint64_t a3, uint64_t a4)
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
  v9 = __48__CBHistogramBuilder3D_enumerateBinsUsingBlock___block_invoke_2;
  v10 = &unk_1E867B330;
  v12 = a1[5];
  v13 = v17;
  v11 = v14;
  return [v18 enumerateBinsUsingBlock:?];
}

uint64_t __48__CBHistogramBuilder3D_enumerateBinsUsingBlock___block_invoke_2(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  return (*(a1[5] + 16))();
}

@end