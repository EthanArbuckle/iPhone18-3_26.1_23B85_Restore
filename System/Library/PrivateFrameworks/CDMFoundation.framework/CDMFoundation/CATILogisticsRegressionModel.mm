@interface CATILogisticsRegressionModel
- (id)getBestIntent:()vector<float numberOfModels:(std:(unint64_t)models :(void *)a5 allocator<float>> *)a3 weightMatrix:(id)matrix guids:(id)guids usoEdgeKey:;
@end

@implementation CATILogisticsRegressionModel

- (id)getBestIntent:()vector<float numberOfModels:(std:(unint64_t)models :(void *)a5 allocator<float>> *)a3 weightMatrix:(id)matrix guids:(id)guids usoEdgeKey:
{
  matrixCopy = matrix;
  guidsCopy = guids;
  v13 = a3->var1 - a3->var0;
  __P = v13 + 1;
  v15 = malloc_type_calloc(v13 + 1, 4uLL, 0x100004052888210uLL);
  v16 = v15;
  *v15 = 1065353216;
  if ((v13 + 1) >= 2)
  {
    var0 = a3->var0;
    v18 = v15 + 1;
    do
    {
      v19 = *var0++;
      *v18++ = v19;
      --v13;
    }

    while (v13);
  }

  v20 = malloc_type_calloc(models, 4uLL, 0x100004052888210uLL);
  vDSP_mmul(*a5, 1, v16, 1, v20, 1, models, 1uLL, __P);
  v21 = malloc_type_calloc(models, 4uLL, 0x100004052888210uLL);
  v22 = v21;
  if (models)
  {
    v23 = 0;
    do
    {
      v22[v23] = 1.0 / (expf(-v20[v23]) + 1.0);
      ++v23;
    }

    while (models != v23);
    v24 = 0;
    v25 = 0;
    v26 = *v22;
    do
    {
      if (v22[v24] > v26)
      {
        v26 = v22[v24];
        v25 = v24;
      }

      ++v24;
    }

    while (models != v24);
    v27 = v25;
  }

  else
  {
    v27 = 0;
    v26 = *v21;
  }

  v28 = [matrixCopy objectAtIndex:v27];
  v29 = objc_opt_new();
  [v29 setValue:v28 forKey:guidsCopy];
  *&v30 = v26;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  [v29 setValue:v31 forKey:@"confidence_score"];

  free(v16);
  free(v22);
  free(v20);

  return v29;
}

@end