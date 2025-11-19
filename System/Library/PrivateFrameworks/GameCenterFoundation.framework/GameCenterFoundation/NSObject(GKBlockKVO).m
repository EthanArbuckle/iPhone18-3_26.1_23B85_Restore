@interface NSObject(GKBlockKVO)
- (id)_gkAddObserverForKeyPath:()GKBlockKVO options:withBlock:;
- (void)_gkRemoveObserverWithBlockToken:()GKBlockKVO;
@end

@implementation NSObject(GKBlockKVO)

- (id)_gkAddObserverForKeyPath:()GKBlockKVO options:withBlock:
{
  v8 = a3;
  v9 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__16;
  v35 = __Block_byref_object_dispose__16;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__16;
  v29 = __Block_byref_object_dispose__16;
  v30 = 0;
  v10 = GKObserverMutationQueueCreatingIfNecessary();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__NSObject_GKBlockKVO___gkAddObserverForKeyPath_options_withBlock___block_invoke;
  v18 = &unk_2785E25E0;
  v19 = a1;
  v22 = &v25;
  v11 = v8;
  v20 = v11;
  v24 = a4;
  v12 = v9;
  v21 = v12;
  v23 = &v31;
  dispatch_sync(v10, &v15);

  [v26[5] startObserving];
  v13 = v32[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v13;
}

- (void)_gkRemoveObserverWithBlockToken:()GKBlockKVO
{
  v4 = a3;
  v5 = GKObserverMutationQueueCreatingIfNecessary();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NSObject_GKBlockKVO___gkRemoveObserverWithBlockToken___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v7[4] = a1;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end