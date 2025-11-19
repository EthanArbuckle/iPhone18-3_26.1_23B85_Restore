@interface CPMLModel
+ (id)initCPModelPath:(id)a3 withConfiguration:(id)a4;
- (BOOL)reset;
- (BOOL)updateModelWithCPDB:(id)a3;
- (BOOL)updateModelWithDB:(id)a3;
- (CPMLModel)initWithModelPath:(id)a3 withConfiguration:(id)a4;
- (CPMLModel)initWithModelPath:(id)a3 withPropertyListPath:(id)a4;
- (id)evalArray:(id)a3;
- (id)evalDict:(id)a3;
- (id)evalNSObjectV:(id)a3;
- (id)evalString:(id)a3;
- (id)getPropertyList;
- (void)boundResult:(id)a3;
- (void)initializeModel:(id)a3 withConfiguration:(id)a4;
@end

@implementation CPMLModel

+ (id)initCPModelPath:(id)a3 withConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:@"machineLearningAlgorithm"];
  if ([v7 isEqualToString:@"KMEANS"])
  {
    v8 = objc_opt_new();
  }

  else
  {
    v8 = objc_alloc_init(CPMLModel);
  }

  v9 = v8;
  [(CPMLModel *)v8 initializeModel:v5 withConfiguration:v6];

  return v9;
}

- (CPMLModel)initWithModelPath:(id)a3 withPropertyListPath:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_savedPlistPath, a4);
  v7 = [(CPMLModel *)self getPropertyList];
  if (v7)
  {
    self = [(CPMLModel *)self initWithModelPath:v6 withConfiguration:v7];
  }

  return self;
}

- (CPMLModel)initWithModelPath:(id)a3 withConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CPMLModel;
  v8 = [(CPMLModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CPMLModel *)v8 initializeModel:v6 withConfiguration:v7];
  }

  return v9;
}

- (void)initializeModel:(id)a3 withConfiguration:(id)a4
{
  v15 = a3;
  v7 = a4;
  objc_storeStrong(&self->_modelPath, a3);
  v8 = dispatch_queue_create("com.apple.coreprediction.mdb", 0);
  dispatch_queue = self->_dispatch_queue;
  self->_dispatch_queue = v8;

  v10 = [[CPMLModelEvaluate alloc] initWithModel:v15 withPropertyList:v7];
  cpModelEvaluate = self->cpModelEvaluate;
  self->cpModelEvaluate = v10;

  v12 = [(CPMLModelEvaluate *)self->cpModelEvaluate getModelData];
  self->_mData = v12;
  if (v12)
  {
    v13 = *v12;
    self->_realBase = &v12[*v12];
    v14 = *&v12[v13];
    self->_totalBytesIntSection = v13;
    self->_totalBytesRealSection = v14;
  }
}

- (id)getPropertyList
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:self->_savedPlistPath];
  if (v2)
  {
    v7 = 0;
    v8 = 100;
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:v2 options:0 format:&v8 error:&v7];
    v4 = v7;
    if (v4)
    {
      NSLog(&cfstr_SPlistInvalid.isa, "[CPMLModel getPropertyList]");
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }
  }

  else
  {
    NSLog(&cfstr_SPlistIncorrec.isa, "[CPMLModel getPropertyList]");
    v5 = 0;
  }

  return v5;
}

- (id)evalString:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__CPMLModel_evalString___block_invoke;
  block[3] = &unk_278E9EE38;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __24__CPMLModel_evalString___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) evalString:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)evalNSObjectV:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__CPMLModel_evalNSObjectV___block_invoke;
  block[3] = &unk_278E9EE38;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __27__CPMLModel_evalNSObjectV___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) evalNSObjectV:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)evalArray:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CPMLModel_evalArray___block_invoke;
  block[3] = &unk_278E9EE38;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __23__CPMLModel_evalArray___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) evalArray:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)evalDict:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__CPMLModel_evalDict___block_invoke;
  block[3] = &unk_278E9EE38;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __22__CPMLModel_evalDict___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) evalDict:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)boundResult:(id)a3
{
  v4 = a3;
  dispatch_queue = self->_dispatch_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__CPMLModel_boundResult___block_invoke;
  v7[3] = &unk_278E9EE60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatch_queue, v7);
}

- (BOOL)updateModelWithDB:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CPMLModel_updateModelWithDB___block_invoke;
  block[3] = &unk_278E9EE88;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  LOBYTE(dispatch_queue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return dispatch_queue;
}

void __31__CPMLModel_updateModelWithDB___block_invoke(void *a1)
{
  v2 = [[CPMLDB alloc] initWithDBName:a1[4] withPlistPath:*(a1[5] + 8) withWriteOptions:1];
  *(*(a1[6] + 8) + 24) = [*(a1[5] + 64) updateModel:?];
}

- (BOOL)updateModelWithCPDB:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CPMLModel_updateModelWithCPDB___block_invoke;
  block[3] = &unk_278E9EE38;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatch_queue, block);
  LOBYTE(dispatch_queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return dispatch_queue;
}

uint64_t __33__CPMLModel_updateModelWithCPDB___block_invoke(void *a1)
{
  result = [*(a1[4] + 64) updateModel:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (BOOL)reset
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_queue = self->_dispatch_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__CPMLModel_reset__block_invoke;
  v5[3] = &unk_278E9EEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatch_queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __18__CPMLModel_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = *(*(a1 + 32) + 16);
  v12 = 0;
  v6 = [v4 removeItemAtPath:v5 error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = [*(a1 + 32) getPropertyList];
    if (v8)
    {
      v9 = [[CPMLModelEvaluate alloc] initWithModel:*(*(a1 + 32) + 16) withPropertyList:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 64);
      *(v10 + 64) = v9;
    }

    if (*(*(a1 + 32) + 64))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    NSLog(&cfstr_SCannotRemoveM.isa, "[CPMLModel reset]_block_invoke");
  }
}

@end