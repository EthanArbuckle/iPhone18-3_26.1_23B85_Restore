@interface LNCorpus
- (LNCorpus)initWithContents:(id)a3 capacity:(int64_t)a4;
- (LNCorpusObserver)observer;
- (id)getTerms;
- (unint64_t)count;
- (void)changeWithBlock:(id)a3 completionHandler:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation LNCorpus

- (LNCorpusObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  if (WeakRetained == v4)
  {

    objc_storeWeak(&self->_observer, 0);
  }
}

- (id)getTerms
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2033;
  v10 = __Block_byref_object_dispose__2034;
  v11 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__LNCorpus_getTerms__block_invoke;
  v5[3] = &unk_1E74B1598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __20__LNCorpus_getTerms__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __17__LNCorpus_count__block_invoke;
  v5[3] = &unk_1E74B1598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __17__LNCorpus_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)changeWithBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__LNCorpus_changeWithBlock_completionHandler___block_invoke;
  block[3] = &unk_1E74B09C8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __46__LNCorpus_changeWithBlock_completionHandler___block_invoke(void *a1)
{
  v10 = [*(a1[4] + 16) copy];
  v2 = (*(a1[5] + 16))();
  v3 = [v2 copy];

  if ([v3 isEqualToArray:v10])
  {
    goto LABEL_6;
  }

  v4 = [v3 count];
  v5 = a1[4];
  if (v4 > *(v5 + 8))
  {
    v6 = [v3 subarrayWithRange:0];

    v5 = a1[4];
    v3 = v6;
  }

  objc_storeStrong((v5 + 16), v3);
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));

  if (!WeakRetained)
  {
LABEL_6:
    v9 = a1[6];
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }

  else
  {
    v8 = objc_loadWeakRetained((a1[4] + 24));
    [v8 corpusContentsChanged:a1[4] completionHandler:a1[6]];
  }
}

- (LNCorpus)initWithContents:(id)a3 capacity:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"LNCorpus.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"contents"}];
  }

  v22.receiver = self;
  v22.super_class = LNCorpus;
  v8 = [(LNCorpus *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v10 = a4 & ~(a4 >> 63);
    if (v10 >= 1000)
    {
      v10 = 1000;
    }

    v8->_capacity = v10;
    if ([v7 count] <= a4)
    {
      v14 = [v7 copy];
      terms = v9->_terms;
      v9->_terms = v14;
    }

    else
    {
      terms = [v7 subarrayWithRange:{0, a4}];
      v12 = [terms copy];
      v13 = v9->_terms;
      v9->_terms = v12;
    }

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_USER_INITIATED, 0);

    v17 = dispatch_queue_create("com.apple.link.LNCorpus.internal-queue", v16);
    queue = v9->_queue;
    v9->_queue = v17;

    v19 = v9;
  }

  return v9;
}

@end