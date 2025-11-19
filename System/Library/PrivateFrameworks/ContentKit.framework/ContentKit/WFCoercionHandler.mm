@interface WFCoercionHandler
+ (id)asynchronousBlock:(id)a3 availabilityCheck:(id)a4;
+ (id)block:(id)a3 availabilityCheck:(id)a4;
+ (id)keyPath:(id)a3 availabilityCheck:(id)a4;
+ (id)keyPath:(id)a3 unavailableIfNilOrEmpty:(BOOL)a4;
- (BOOL)coercionIsAvailableForItem:(id)a3;
- (WFCoercionHandler)initWithBlock:(id)a3 asynchronousBlock:(id)a4 keyPath:(id)a5 availabilityCheck:(id)a6;
- (id)performSynchronousCoercionWithContentItem:(id)a3 forType:(id)a4 options:(id)a5 error:(id *)a6;
- (void)performAsynchronousCoercionWithContentItem:(id)a3 forType:(id)a4 options:(id)a5 completionHandler:(id)a6;
@end

@implementation WFCoercionHandler

- (void)performAsynchronousCoercionWithContentItem:(id)a3 forType:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (self->_asynchronousBlock)
  {
    v15 = [[WFCoercionContext alloc] initWithRequestedType:v11 options:v12];
    asynchronousBlock = self->_asynchronousBlock;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__WFCoercionHandler_performAsynchronousCoercionWithContentItem_forType_options_completionHandler___block_invoke;
    v19[3] = &unk_27834A618;
    v20 = v15;
    v21 = v14;
    v17 = asynchronousBlock[2];
    v18 = v15;
    v17(asynchronousBlock, v10, v18, v19);
  }

  else
  {
    (*(v13 + 2))(v13, 0, 0);
  }
}

void __98__WFCoercionHandler_performAsynchronousCoercionWithContentItem_forType_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = WFRepresentationsFromCoercionHandlerResult(a2);
  if (!(v7 | v5))
  {
    v6 = [*(a1 + 32) requestedType];
    v7 = [WFContentItem badCoercionErrorForType:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)performSynchronousCoercionWithContentItem:(id)a3 forType:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_block)
  {
    v12 = [[WFCoercionContext alloc] initWithRequestedType:v10 options:v11];
    v13 = (*(self->_block + 2))();
  }

  else if (self->_keyPath)
  {
    v13 = [v9 valueForKeyPath:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = WFRepresentationsFromCoercionHandlerResult(v13);

  return v14;
}

- (BOOL)coercionIsAvailableForItem:(id)a3
{
  availabilityCheck = self->_availabilityCheck;
  if (availabilityCheck)
  {
    return availabilityCheck[2](availabilityCheck, a3);
  }

  else
  {
    return 1;
  }
}

- (WFCoercionHandler)initWithBlock:(id)a3 asynchronousBlock:(id)a4 keyPath:(id)a5 availabilityCheck:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 && !v12 && !v13)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"block || asynchronousBlock || keyPath"}];
  }

  v27.receiver = self;
  v27.super_class = WFCoercionHandler;
  v15 = [(WFCoercionHandler *)&v27 init];
  if (v15)
  {
    v16 = [v11 copy];
    block = v15->_block;
    v15->_block = v16;

    v18 = [v12 copy];
    asynchronousBlock = v15->_asynchronousBlock;
    v15->_asynchronousBlock = v18;

    v20 = [v13 copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v20;

    v22 = [v14 copy];
    availabilityCheck = v15->_availabilityCheck;
    v15->_availabilityCheck = v22;

    v24 = v15;
  }

  return v15;
}

+ (id)keyPath:(id)a3 unavailableIfNilOrEmpty:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WFCoercionHandler_keyPath_unavailableIfNilOrEmpty___block_invoke;
    aBlock[3] = &unk_27834A5F0;
    v12 = v6;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 keyPath:v7 availabilityCheck:v8];

  return v9;
}

uint64_t __53__WFCoercionHandler_keyPath_unavailableIfNilOrEmpty___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKeyPath:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 count] == 0;
  }

  else
  {
    v3 = v2 == 0;
  }

  v4 = !v3;

  return v4;
}

+ (id)keyPath:(id)a3 availabilityCheck:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBlock:0 asynchronousBlock:0 keyPath:v7 availabilityCheck:v6];

  return v8;
}

+ (id)asynchronousBlock:(id)a3 availabilityCheck:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBlock:0 asynchronousBlock:v7 keyPath:0 availabilityCheck:v6];

  return v8;
}

+ (id)block:(id)a3 availabilityCheck:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithBlock:v7 asynchronousBlock:0 keyPath:0 availabilityCheck:v6];

  return v8;
}

@end