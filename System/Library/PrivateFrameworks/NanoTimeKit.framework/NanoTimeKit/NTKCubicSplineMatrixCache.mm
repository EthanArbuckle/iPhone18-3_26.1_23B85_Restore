@interface NTKCubicSplineMatrixCache
+ (id)sharedInstance;
- ($6F5639B62F6C861EB4A71773F5DCFA27)closedSplineMatrixWithDimension:(int)dimension;
- ($6F5639B62F6C861EB4A71773F5DCFA27)openSplineMatrixWithDimension:(int)dimension;
- ($6F5639B62F6C861EB4A71773F5DCFA27)splineMatrixWithDimension:(int)dimension cache:(id)cache matrixGenerator:(id)generator;
- (NTKCubicSplineMatrixCache)init;
@end

@implementation NTKCubicSplineMatrixCache

- (NTKCubicSplineMatrixCache)init
{
  v10.receiver = self;
  v10.super_class = NTKCubicSplineMatrixCache;
  v2 = [(NTKCubicSplineMatrixCache *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    openMatrixCache = v2->_openMatrixCache;
    v2->_openMatrixCache = v3;

    v5 = objc_opt_new();
    closedMatrixCache = v2->_closedMatrixCache;
    v2->_closedMatrixCache = v5;

    v7 = dispatch_queue_create("NTKCubic Spline Matrix Cache Queue", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[NTKCubicSplineMatrixCache sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __43__NTKCubicSplineMatrixCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NTKCubicSplineMatrixCache);
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
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
  v15[2] = __77__NTKCubicSplineMatrixCache_splineMatrixWithDimension_cache_matrixGenerator___block_invoke;
  v15[3] = &unk_27877F170;
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

void __77__NTKCubicSplineMatrixCache_splineMatrixWithDimension_cache_matrixGenerator___block_invoke(uint64_t a1)
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
    v4 = NTKSplineMatrixInversionWorkspace_new(*(a1 + 56));
    NTKSplineMatrix_invert(*(*(*(a1 + 48) + 8) + 24), v4);
    NTKSplineMatrixInversionWorkspace_destroy(v4);
    NTKSplineMatrix_convert_to_single_precision(*(*(*(a1 + 48) + 8) + 24));
    NTKSplineMatrix_discard_double_precision(*(*(*(a1 + 48) + 8) + 24));
    v7 = [MEMORY[0x277CCAE60] valueWithPointer:*(*(*(a1 + 48) + 8) + 24)];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
    [v5 setObject:v7 forKeyedSubscript:v6];
  }
}

- ($6F5639B62F6C861EB4A71773F5DCFA27)openSplineMatrixWithDimension:(int)dimension
{
  openMatrixCache = self->_openMatrixCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__NTKCubicSplineMatrixCache_openSplineMatrixWithDimension___block_invoke;
  v5[3] = &__block_descriptor_36_e14______d_fi_8__0l;
  dimensionCopy = dimension;
  return [(NTKCubicSplineMatrixCache *)self splineMatrixWithDimension:*&dimension cache:openMatrixCache matrixGenerator:v5];
}

- ($6F5639B62F6C861EB4A71773F5DCFA27)closedSplineMatrixWithDimension:(int)dimension
{
  closedMatrixCache = self->_closedMatrixCache;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__NTKCubicSplineMatrixCache_closedSplineMatrixWithDimension___block_invoke;
  v5[3] = &__block_descriptor_36_e14______d_fi_8__0l;
  dimensionCopy = dimension;
  return [(NTKCubicSplineMatrixCache *)self splineMatrixWithDimension:*&dimension cache:closedMatrixCache matrixGenerator:v5];
}

@end