@interface CBHistogramBuilder2D
- (CBHistogramBuilder2D)initWithFirstDim:(id)a3 andSecondDim:(id)a4;
- (void)dealloc;
- (void)enumerateBinsUsingBlock:(id)a3;
- (void)pushNumberWeighted:(double)a3 withWeight:(double)a4 forFirstDimValue:(float)a5;
@end

@implementation CBHistogramBuilder2D

- (CBHistogramBuilder2D)initWithFirstDim:(id)a3 andSecondDim:(id)a4
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11.receiver = self;
  v11.super_class = CBHistogramBuilder2D;
  v15 = [(CBHistogramBuilder2D *)&v11 init];
  if (!v15)
  {
    return v15;
  }

  if (v13 && v12)
  {
    v4 = MEMORY[0x1E69E5928](v13);
    v15->_firstDimEdges = v4;
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v9 initWithCapacity:{-[NSArray count](v15->_firstDimEdges, "count") + 1}];
    v15->_histograms = v5;
    for (i = 0; i < [(NSArray *)v15->_firstDimEdges count]+ 1; ++i)
    {
      histograms = v15->_histograms;
      v6 = [CBHistogramBuilder alloc];
      [(NSMutableArray *)histograms insertObject:[(CBHistogramBuilder *)v6 initWithEdges:v12] atIndex:i];
    }

    return v15;
  }

  return 0;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_histograms);
  *&v2 = MEMORY[0x1E69E5920](v5->_firstDimEdges).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBHistogramBuilder2D;
  [(CBHistogramBuilder2D *)&v3 dealloc];
}

- (void)pushNumberWeighted:(double)a3 withWeight:(double)a4 forFirstDimValue:(float)a5
{
  for (i = 0; i < [(NSMutableArray *)self->_histograms count]; ++i)
  {
    if (i + 1 != [(NSMutableArray *)self->_histograms count])
    {
      [-[NSArray objectAtIndex:](self->_firstDimEdges objectAtIndex:{i), "doubleValue"}];
      v7 = v6;
      v5 = a5;
      if (a5 >= v7)
      {
        continue;
      }
    }

    [-[NSMutableArray objectAtIndex:](self->_histograms objectAtIndex:{i, v5), "pushNumberWeighted:withWeight:", a3, a4}];
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
  v8 = __48__CBHistogramBuilder2D_enumerateBinsUsingBlock___block_invoke;
  v9 = &unk_1E867B2E8;
  v10 = v16;
  v12 = v13;
  v11 = v14;
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