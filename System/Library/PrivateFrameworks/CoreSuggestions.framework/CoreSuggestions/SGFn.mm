@interface SGFn
+ (id)simpleDedupe:(id)dedupe;
@end

@implementation SGFn

+ (id)simpleDedupe:(id)dedupe
{
  dedupeCopy = dedupe;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6356;
  v18 = __Block_byref_object_dispose__6357;
  v19 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __21__SGFn_simpleDedupe___block_invoke;
  v11 = &unk_1E7EFCBE0;
  v4 = dedupeCopy;
  v12 = v4;
  v13 = &v14;
  [v4 enumerateObjectsUsingBlock:&v8];
  if (v15[5])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v4 objectsAtIndexes:{v15[5], v8, v9, v10, v11}];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = [v4 copy];
  }

  _Block_object_dispose(&v14, 8);

  return v6;
}

uint64_t __21__SGFn_simpleDedupe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3 && [*(a1 + 32) indexOfObject:v10 inRange:{0, a3}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, a3}];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 addIndex:a3];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

@end