@interface SGCubicSplineMatrixCache
+ (id)sharedInstance;
- ($6F5639B62F6C861EB4A71773F5DCFA27)splineMatrixWithDimension:(int)dimension cache:(id)cache matrixGenerator:(id)generator;
- (SGCubicSplineMatrixCache)init;
@end

@implementation SGCubicSplineMatrixCache

- (SGCubicSplineMatrixCache)init
{
  v10.receiver = self;
  v10.super_class = SGCubicSplineMatrixCache;
  v2 = [(SGCubicSplineMatrixCache *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    openMatrixCache = v2->_openMatrixCache;
    v2->_openMatrixCache = v3;

    v5 = objc_opt_new();
    closedMatrixCache = v2->_closedMatrixCache;
    v2->_closedMatrixCache = v5;

    v7 = dispatch_queue_create("SGCubic Spline Matrix Cache Queue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SGCubicSplineMatrixCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __42__SGCubicSplineMatrixCache_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(SGCubicSplineMatrixCache);

  return MEMORY[0x2821F96F8]();
}

- ($6F5639B62F6C861EB4A71773F5DCFA27)splineMatrixWithDimension:(int)dimension cache:(id)cache matrixGenerator:(id)generator
{
  cacheCopy = cache;
  generatorCopy = generator;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__SGCubicSplineMatrixCache_splineMatrixWithDimension_cache_matrixGenerator___block_invoke;
  v15[3] = &unk_279942148;
  dimensionCopy = dimension;
  v17 = generatorCopy;
  v18 = &v20;
  v16 = cacheCopy;
  v11 = generatorCopy;
  v12 = cacheCopy;
  dispatch_sync(internalQueue, v15);
  v13 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __76__SGCubicSplineMatrixCache_splineMatrixWithDimension_cache_matrixGenerator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  v7 = [v2 objectForKeyedSubscript:v3];

  if (v7)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v7 pointerValue];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 40) + 16))();
    v4 = SGSplineMatrixInversionWorkspace_new(*(a1 + 56));
    SGSplineMatrix_invert(*(*(*(a1 + 48) + 8) + 24), v4);
    SGSplineMatrixInversionWorkspace_destroy(v4);
    SGSplineMatrix_convert_to_single_precision(*(*(*(a1 + 48) + 8) + 24));
    SGSplineMatrix_discard_double_precision(*(*(*(a1 + 48) + 8) + 24));
    v7 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 48) + 8) + 24)];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

@end