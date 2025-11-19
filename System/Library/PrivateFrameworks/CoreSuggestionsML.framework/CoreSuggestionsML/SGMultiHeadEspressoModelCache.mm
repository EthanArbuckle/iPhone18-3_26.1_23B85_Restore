@interface SGMultiHeadEspressoModelCache
+ (id)sharedInstance;
- (BOOL)setCachedEspressoClassifierWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5;
- (SGMultiHeadEspressoModelCache)init;
- (id)headDimensionalityWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5;
- (id)predict:(id)a3 heads:(id)a4 withFile:(id)a5 inputName:(id)a6 headDimensionality:(id)a7;
- (id)predict:(id)a3 withFile:(id)a4 inputName:(id)a5 headDimensionality:(id)a6;
- (unint64_t)inputNumParametersWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5;
@end

@implementation SGMultiHeadEspressoModelCache

- (id)headDimensionalityWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__1603;
  v26 = __Block_byref_object_dispose__1604;
  v27 = 0;
  currentModel = self->_currentModel;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__SGMultiHeadEspressoModelCache_headDimensionalityWithFile_inputName_headDimensionality___block_invoke;
  v17[3] = &unk_278EB84D8;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = v10;
  v20 = v14;
  v21 = &v22;
  [(_PASLock *)currentModel runWithLockAcquired:v17];
  v15 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v15;
}

void __89__SGMultiHeadEspressoModelCache_headDimensionalityWithFile_inputName_headDimensionality___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40) inputName:*(a1 + 48) headDimensionality:*(a1 + 56)])
  {
    v3 = [v8 model];
    v4 = [v3 result];
    v5 = [v4 headDimensionality];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (unint64_t)inputNumParametersWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  currentModel = self->_currentModel;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__SGMultiHeadEspressoModelCache_inputNumParametersWithFile_inputName_headDimensionality___block_invoke;
  v17[3] = &unk_278EB84D8;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = v9;
  v19 = v13;
  v14 = v10;
  v20 = v14;
  v21 = &v22;
  [(_PASLock *)currentModel runWithLockAcquired:v17];
  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v15;
}

void __89__SGMultiHeadEspressoModelCache_inputNumParametersWithFile_inputName_headDimensionality___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40) inputName:*(a1 + 48) headDimensionality:*(a1 + 56)])
  {
    v3 = [v5 model];
    v4 = [v3 result];
    *(*(*(a1 + 64) + 8) + 24) = [v4 inputNumParameters];
  }
}

- (id)predict:(id)a3 heads:(id)a4 withFile:(id)a5 inputName:(id)a6 headDimensionality:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1603;
  v36 = __Block_byref_object_dispose__1604;
  v37 = 0;
  currentModel = self->_currentModel;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __85__SGMultiHeadEspressoModelCache_predict_heads_withFile_inputName_headDimensionality___block_invoke;
  v25[3] = &unk_278EB84B0;
  v25[4] = self;
  v18 = v14;
  v26 = v18;
  v19 = v15;
  v27 = v19;
  v20 = v16;
  v28 = v20;
  v31 = &v32;
  v21 = v12;
  v29 = v21;
  v22 = v13;
  v30 = v22;
  [(_PASLock *)currentModel runWithLockAcquired:v25];
  v23 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v23;
}

void __85__SGMultiHeadEspressoModelCache_predict_heads_withFile_inputName_headDimensionality___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40) inputName:*(a1 + 48) headDimensionality:*(a1 + 56)])
  {
    v3 = [v8 model];
    v4 = [v3 result];
    v5 = [v4 predict:*(a1 + 64) heads:*(a1 + 72)];
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)predict:(id)a3 withFile:(id)a4 inputName:(id)a5 headDimensionality:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1603;
  v31 = __Block_byref_object_dispose__1604;
  v32 = 0;
  currentModel = self->_currentModel;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__SGMultiHeadEspressoModelCache_predict_withFile_inputName_headDimensionality___block_invoke;
  v21[3] = &unk_278EB8488;
  v21[4] = self;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v26 = &v27;
  v18 = v10;
  v25 = v18;
  [(_PASLock *)currentModel runWithLockAcquired:v21];
  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

void __79__SGMultiHeadEspressoModelCache_predict_withFile_inputName_headDimensionality___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([*(a1 + 32) setCachedEspressoClassifierWithFile:*(a1 + 40) inputName:*(a1 + 48) headDimensionality:*(a1 + 56)])
  {
    v3 = [v8 model];
    v4 = [v3 result];
    v5 = [v4 predict:*(a1 + 64)];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (BOOL)setCachedEspressoClassifierWithFile:(id)a3 inputName:(id)a4 headDimensionality:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  currentModel = self->_currentModel;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__SGMultiHeadEspressoModelCache_setCachedEspressoClassifierWithFile_inputName_headDimensionality___block_invoke;
  v16[3] = &unk_278EB8460;
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v10;
  v19 = v14;
  v20 = &v21;
  [(_PASLock *)currentModel runWithLockAcquired:v16];
  LOBYTE(v8) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v8;
}

void __98__SGMultiHeadEspressoModelCache_setCachedEspressoClassifierWithFile_inputName_headDimensionality___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 espressoModelFile];
  if (![v4 isEqualToString:*(a1 + 32)])
  {
    goto LABEL_7;
  }

  v5 = [v3 inputName];
  if (([v5 isEqualToString:*(a1 + 40)] & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v6 = [v3 headDimensionality];
  v7 = [v6 isEqualToDictionary:*(a1 + 48)];

  if (v7)
  {
    v8 = [v3 model];
    v9 = [v8 result];

    if (v9)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    goto LABEL_11;
  }

LABEL_8:
  v10 = objc_autoreleasePoolPush();
  [v3 setEspressoModelFile:0];
  [v3 setInputName:0];
  [v3 setHeadDimensionality:0];
  [v3 setModel:0];
  objc_autoreleasePoolPop(v10);
  v11 = objc_alloc(MEMORY[0x277D425E8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__SGMultiHeadEspressoModelCache_setCachedEspressoClassifierWithFile_inputName_headDimensionality___block_invoke_2;
  v14[3] = &unk_278EB8438;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v12 = [v11 initWithBlock:v14 idleTimeout:60.0];
  v13 = [v12 result];

  if (v13)
  {
    [v3 setEspressoModelFile:*(a1 + 32)];
    [v3 setInputName:*(a1 + 40)];
    [v3 setHeadDimensionality:*(a1 + 48)];
    [v3 setModel:v12];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

LABEL_11:
}

- (SGMultiHeadEspressoModelCache)init
{
  v8.receiver = self;
  v8.super_class = SGMultiHeadEspressoModelCache;
  v2 = [(SGMultiHeadEspressoModelCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D425F8]);
    v4 = objc_opt_new();
    v5 = [v3 initWithGuardedData:v4];
    currentModel = v2->_currentModel;
    v2->_currentModel = v5;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2_1614 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_1614, &__block_literal_global_1615);
  }

  v3 = sharedInstance__pasExprOnceResult_1616;

  return v3;
}

void __47__SGMultiHeadEspressoModelCache_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_1616;
  sharedInstance__pasExprOnceResult_1616 = v1;

  objc_autoreleasePoolPop(v0);
}

@end