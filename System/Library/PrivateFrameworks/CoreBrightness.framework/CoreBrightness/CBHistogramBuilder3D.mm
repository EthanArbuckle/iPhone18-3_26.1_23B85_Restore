@interface CBHistogramBuilder3D
- (CBHistogramBuilder3D)initWithFirstDim:(id)a3 andSecondDim:(id)a4 andThirdDim:(id)a5;
- (void)enumerateBinsUsingBlock:(id)a3;
- (void)pushNumberWeighted:(double)a3 withWeight:(double)a4 forFirstDimValue:(float)a5 andSecondDimValue:(float)a6;
@end

@implementation CBHistogramBuilder3D

- (CBHistogramBuilder3D)initWithFirstDim:(id)a3 andSecondDim:(id)a4 andThirdDim:(id)a5
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12.receiver = self;
  v12.super_class = CBHistogramBuilder3D;
  v17 = [(CBHistogramBuilder3D *)&v12 init];
  if (!v17)
  {
    return v17;
  }

  if (v15 && v14 && v13)
  {
    v5 = MEMORY[0x1E69E5928](v15);
    v17->_firstDimEdges = v5;
    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [v10 initWithCapacity:{-[NSArray count](v17->_firstDimEdges, "count") + 1}];
    v17->_histograms = v6;
    for (i = 0; i < [(NSArray *)v17->_firstDimEdges count]+ 1; ++i)
    {
      histograms = v17->_histograms;
      v7 = [CBHistogramBuilder2D alloc];
      [(NSMutableArray *)histograms insertObject:[(CBHistogramBuilder2D *)v7 initWithFirstDim:v14 andSecondDim:v13] atIndex:i];
    }

    return v17;
  }

  return 0;
}

- (void)pushNumberWeighted:(double)a3 withWeight:(double)a4 forFirstDimValue:(float)a5 andSecondDimValue:(float)a6
{
  for (i = 0; i < [(NSMutableArray *)self->_histograms count]; ++i)
  {
    if (i + 1 != [(NSMutableArray *)self->_histograms count])
    {
      [-[NSArray objectAtIndex:](self->_firstDimEdges objectAtIndex:{i), "doubleValue"}];
      v8 = v7;
      v6 = a5;
      if (a5 >= v8)
      {
        continue;
      }
    }

    v9 = [(NSMutableArray *)self->_histograms objectAtIndex:i, v6];
    *&v10 = a6;
    [v9 pushNumberWeighted:a3 withWeight:a4 forFirstDimValue:v10];
    return;
  }
}

- (void)enumerateBinsUsingBlock:(id)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  context = objc_autoreleasePoolPush();
  v13 = [(NSMutableArray *)v16->_histograms count];
  histograms = v16->_histograms;
  v5 = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __48__CBHistogramBuilder3D_enumerateBinsUsingBlock___block_invoke;
  v9 = &unk_1E867B358;
  v10 = v16;
  v12 = v13;
  v11 = v14;
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