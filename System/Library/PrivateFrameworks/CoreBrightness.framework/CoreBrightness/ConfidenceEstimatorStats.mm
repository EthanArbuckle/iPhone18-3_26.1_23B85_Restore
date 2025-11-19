@interface ConfidenceEstimatorStats
- (ConfidenceEstimatorStats)initWithModelID:(unsigned int)a3;
- (void)dealloc;
@end

@implementation ConfidenceEstimatorStats

- (ConfidenceEstimatorStats)initWithModelID:(unsigned int)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = ConfidenceEstimatorStats;
  v10 = [(ConfidenceEstimatorStats *)&v7 init];
  if (v10)
  {
    context = objc_autoreleasePoolPush();
    v10->_edgeMappingConfidence = unk_1F599B9B8();
    v3 = (unk_1F599B9B8)(&__block_literal_global_723, &unk_1F59C9408);
    v10->_edgeMappingStrength = v3;
    v4 = [[CBHistogramBuilder2D alloc] initWithFirstDim:&unk_1F59C93F0 andSecondDim:&unk_1F59C9408];
    v10->_outputsCE = v4;
    v10->_modelID = v8;
    objc_autoreleasePoolPop(context);
  }

  return v10;
}

id __44__ConfidenceEstimatorStats_initWithModelID___block_invoke(uint64_t a1, void *a2)
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [a2 count];
  for (i = 0; i <= v5; ++i)
  {
    if (i)
    {
      if (i >= v5)
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@">=%d", objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", i - 1), "intValue")];
      }

      else
      {
        v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d-%d", objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", i - 1), "intValue"), objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", i), "intValue") - 1];
      }
    }

    else
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0-%d", objc_msgSend(objc_msgSend(a2, "objectAtIndexedSubscript:", 0), "intValue") - 1];
    }

    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", i), v3}];
  }

  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_edgeMappingStrength);
  MEMORY[0x1E69E5920](v5->_edgeMappingConfidence);
  *&v2 = MEMORY[0x1E69E5920](v5->_outputsCE).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = ConfidenceEstimatorStats;
  [(ConfidenceEstimatorStats *)&v3 dealloc];
}

uint64_t __34__ConfidenceEstimatorStats_submit__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a1;
  result = [a6 intValue];
  if (result > 0)
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = -1073741824;
    v10 = 0;
    v11 = __34__ConfidenceEstimatorStats_submit__block_invoke_2;
    v12 = &unk_1E867B3E0;
    v13 = *(a1 + 32);
    v14 = v20;
    v15 = v19;
    v16 = v18;
    return [CBAnalytics send:@".ConfidenceEstimator" withBlock:?];
  }

  return result;
}

uint64_t __34__ConfidenceEstimatorStats_submit__block_invoke_2(void *a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"modelType";
  v5[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1[4] + 24)];
  v4[1] = @"confidenceEdge";
  v5[1] = [*(a1[4] + 16) valueForKey:a1[5]];
  v4[2] = @"strengthEdge";
  v5[2] = [*(a1[4] + 8) valueForKey:a1[6]];
  v4[3] = @"value";
  v5[3] = a1[7];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  *MEMORY[0x1E69E9840];
  return v3;
}

@end