@interface SGMultiLabelEspressoClassifierCache
+ (id)sharedInstance;
- (BOOL)setCachedEspressoClassifierWithFile:(id)file;
- (SGMultiLabelEspressoClassifierCache)init;
- (id)predict:(id)predict withFile:(id)file;
- (unint64_t)outputDimensionWithFile:(id)file;
@end

@implementation SGMultiLabelEspressoClassifierCache

- (unint64_t)outputDimensionWithFile:(id)file
{
  fileCopy = file;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  currentClassifier = self->_currentClassifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__SGMultiLabelEspressoClassifierCache_outputDimensionWithFile___block_invoke;
  v9[3] = &unk_278EB7550;
  v9[4] = self;
  v6 = fileCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)currentClassifier runWithLockAcquired:v9];
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __63__SGMultiLabelEspressoClassifierCache_outputDimensionWithFile___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40)])
  {
    v3 = [v5 classifier];
    v4 = [v3 result];
    *(*(*(a1 + 48) + 8) + 24) = [v4 outputDimension];
  }
}

- (id)predict:(id)predict withFile:(id)file
{
  predictCopy = predict;
  fileCopy = file;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__63;
  v21 = __Block_byref_object_dispose__64;
  v22 = 0;
  currentClassifier = self->_currentClassifier;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SGMultiLabelEspressoClassifierCache_predict_withFile___block_invoke;
  v13[3] = &unk_278EB7528;
  v13[4] = self;
  v9 = fileCopy;
  v14 = v9;
  v16 = &v17;
  v10 = predictCopy;
  v15 = v10;
  [(_PASLock *)currentClassifier runWithLockAcquired:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __56__SGMultiLabelEspressoClassifierCache_predict_withFile___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40)])
  {
    v3 = [v8 classifier];
    v4 = [v3 result];
    v5 = [v4 predict:*(a1 + 48)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)setCachedEspressoClassifierWithFile:(id)file
{
  fileCopy = file;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  currentClassifier = self->_currentClassifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SGMultiLabelEspressoClassifierCache_setCachedEspressoClassifierWithFile___block_invoke;
  v8[3] = &unk_278EB7500;
  v6 = fileCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)currentClassifier runWithLockAcquired:v8];
  LOBYTE(currentClassifier) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return currentClassifier;
}

void __75__SGMultiLabelEspressoClassifierCache_setCachedEspressoClassifierWithFile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 espressoModelFile];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 classifier];
    v7 = [v6 result];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    [v3 setEspressoModelFile:0];
    [v3 setClassifier:0];
    objc_autoreleasePoolPop(v8);
    v9 = objc_alloc(MEMORY[0x277D425E8]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__SGMultiLabelEspressoClassifierCache_setCachedEspressoClassifierWithFile___block_invoke_2;
    v12[3] = &unk_278EB74D8;
    v13 = *(a1 + 32);
    v10 = [v9 initWithBlock:v12 idleTimeout:60.0];
    v11 = [v10 result];

    if (v11)
    {
      [v3 setEspressoModelFile:*(a1 + 32)];
      [v3 setClassifier:v10];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (SGMultiLabelEspressoClassifierCache)init
{
  v8.receiver = self;
  v8.super_class = SGMultiLabelEspressoClassifierCache;
  v2 = [(SGMultiLabelEspressoClassifierCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    currentClassifier = v2->_currentClassifier;
    v2->_currentClassifier = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global_68);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __53__SGMultiLabelEspressoClassifierCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end