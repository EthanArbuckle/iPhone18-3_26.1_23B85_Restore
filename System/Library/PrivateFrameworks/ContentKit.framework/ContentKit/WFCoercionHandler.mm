@interface WFCoercionHandler
+ (id)asynchronousBlock:(id)block availabilityCheck:(id)check;
+ (id)block:(id)block availabilityCheck:(id)check;
+ (id)keyPath:(id)path availabilityCheck:(id)check;
+ (id)keyPath:(id)path unavailableIfNilOrEmpty:(BOOL)empty;
- (BOOL)coercionIsAvailableForItem:(id)item;
- (WFCoercionHandler)initWithBlock:(id)block asynchronousBlock:(id)asynchronousBlock keyPath:(id)path availabilityCheck:(id)check;
- (id)performSynchronousCoercionWithContentItem:(id)item forType:(id)type options:(id)options error:(id *)error;
- (void)performAsynchronousCoercionWithContentItem:(id)item forType:(id)type options:(id)options completionHandler:(id)handler;
@end

@implementation WFCoercionHandler

- (void)performAsynchronousCoercionWithContentItem:(id)item forType:(id)type options:(id)options completionHandler:(id)handler
{
  itemCopy = item;
  typeCopy = type;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (self->_asynchronousBlock)
  {
    v15 = [[WFCoercionContext alloc] initWithRequestedType:typeCopy options:optionsCopy];
    asynchronousBlock = self->_asynchronousBlock;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__WFCoercionHandler_performAsynchronousCoercionWithContentItem_forType_options_completionHandler___block_invoke;
    v19[3] = &unk_27834A618;
    v20 = v15;
    v21 = v14;
    v17 = asynchronousBlock[2];
    v18 = v15;
    v17(asynchronousBlock, itemCopy, v18, v19);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (id)performSynchronousCoercionWithContentItem:(id)item forType:(id)type options:(id)options error:(id *)error
{
  itemCopy = item;
  typeCopy = type;
  optionsCopy = options;
  if (self->_block)
  {
    v12 = [[WFCoercionContext alloc] initWithRequestedType:typeCopy options:optionsCopy];
    v13 = (*(self->_block + 2))();
  }

  else if (self->_keyPath)
  {
    v13 = [itemCopy valueForKeyPath:?];
  }

  else
  {
    v13 = 0;
  }

  v14 = WFRepresentationsFromCoercionHandlerResult(v13);

  return v14;
}

- (BOOL)coercionIsAvailableForItem:(id)item
{
  availabilityCheck = self->_availabilityCheck;
  if (availabilityCheck)
  {
    return availabilityCheck[2](availabilityCheck, item);
  }

  else
  {
    return 1;
  }
}

- (WFCoercionHandler)initWithBlock:(id)block asynchronousBlock:(id)asynchronousBlock keyPath:(id)path availabilityCheck:(id)check
{
  blockCopy = block;
  asynchronousBlockCopy = asynchronousBlock;
  pathCopy = path;
  checkCopy = check;
  if (!blockCopy && !asynchronousBlockCopy && !pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCoercion.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"block || asynchronousBlock || keyPath"}];
  }

  v27.receiver = self;
  v27.super_class = WFCoercionHandler;
  v15 = [(WFCoercionHandler *)&v27 init];
  if (v15)
  {
    v16 = [blockCopy copy];
    block = v15->_block;
    v15->_block = v16;

    v18 = [asynchronousBlockCopy copy];
    asynchronousBlock = v15->_asynchronousBlock;
    v15->_asynchronousBlock = v18;

    v20 = [pathCopy copy];
    keyPath = v15->_keyPath;
    v15->_keyPath = v20;

    v22 = [checkCopy copy];
    availabilityCheck = v15->_availabilityCheck;
    v15->_availabilityCheck = v22;

    v24 = v15;
  }

  return v15;
}

+ (id)keyPath:(id)path unavailableIfNilOrEmpty:(BOOL)empty
{
  emptyCopy = empty;
  pathCopy = path;
  v7 = pathCopy;
  if (emptyCopy)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__WFCoercionHandler_keyPath_unavailableIfNilOrEmpty___block_invoke;
    aBlock[3] = &unk_27834A5F0;
    v12 = pathCopy;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  v9 = [self keyPath:v7 availabilityCheck:v8];

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

+ (id)keyPath:(id)path availabilityCheck:(id)check
{
  checkCopy = check;
  pathCopy = path;
  v8 = [[self alloc] initWithBlock:0 asynchronousBlock:0 keyPath:pathCopy availabilityCheck:checkCopy];

  return v8;
}

+ (id)asynchronousBlock:(id)block availabilityCheck:(id)check
{
  checkCopy = check;
  blockCopy = block;
  v8 = [[self alloc] initWithBlock:0 asynchronousBlock:blockCopy keyPath:0 availabilityCheck:checkCopy];

  return v8;
}

+ (id)block:(id)block availabilityCheck:(id)check
{
  checkCopy = check;
  blockCopy = block;
  v8 = [[self alloc] initWithBlock:blockCopy asynchronousBlock:0 keyPath:0 availabilityCheck:checkCopy];

  return v8;
}

@end