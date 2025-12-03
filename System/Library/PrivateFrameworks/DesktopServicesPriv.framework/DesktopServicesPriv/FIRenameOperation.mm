@interface FIRenameOperation
- (FINode)node;
- (FIRenameOperation)initWithItem:(id)item rawName:(id)name hideExtension:(BOOL)extension;
- (FIRenameOperation)initWithNode:(id)node rawName:(id)name hideExtension:(BOOL)extension;
- (id)_initWithNode:(id)node item:(id)item rawName:(id)name hideExtension:(const void *)extension;
- (id)_initWithNode:item:rawName:hideExtension:;
- (id)createFPOperation;
- (id)makeOperationRecordForNode:(id)node;
- (uint64_t)_initWithNode:item:rawName:hideExtension:;
- (void)_initWithNode:item:rawName:hideExtension:;
- (void)schedule;
- (void)tearDownCallbacks;
@end

@implementation FIRenameOperation

- (id)_initWithNode:(id)node item:(id)item rawName:(id)name hideExtension:(const void *)extension
{
  v32[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  itemCopy = item;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = FIRenameOperation;
  v13 = [(FIOperation *)&v27 init];
  if ((nodeCopy != 0) == (itemCopy != 0) || ![nameCopy length])
  {
    if (!(nodeCopy | itemCopy))
    {
      v15 = LogObj(8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543362;
        *&buf[4] = v17;
        _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "nil node & item passed to %{public}@", buf, 0xCu);
      }
    }

    if (![nameCopy length])
    {
      v18 = LogObj(8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_1E5674000, v18, OS_LOG_TYPE_ERROR, "Empty name passed to %{public}@", buf, 0xCu);
      }
    }

    v21 = 0;
  }

  else
  {
    [(FIOperation *)v13 setOperationType:11];
    objc_storeStrong(&v13->_rawName, name);
    [(FIRenameOperation *)v13 setHideExtension:*extension];
    if (nodeCopy)
    {
      v32[0] = nodeCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [(FIOperation *)v13 setSourceNodes:v14];
    }

    else
    {
      objc_storeStrong(&v13->_item, item);
      v31 = itemCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      make_nsweak<FIRenameOperation>(v13, &v25);
      v26 = itemCopy;
      v30 = 0;
      *buf = &unk_1F5F3D438;
      objc_copyWeak(&buf[8], &v25);
      objc_storeWeak(&v25, 0);
      v22 = v26;
      v26 = 0;
      v29 = v22;
      v30 = buf;
      [(FIOperation *)v13 fetchNodesAsyncFor:v14 completion:buf];
      std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](buf);

      objc_destroyWeak(&v25);
    }

    v21 = v13;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (FIRenameOperation)initWithNode:(id)node rawName:(id)name hideExtension:(BOOL)extension
{
  v6[0] = extension;
  v6[1] = 1;
  return [(FIRenameOperation *)self _initWithNode:node item:0 rawName:name hideExtension:v6];
}

- (FIRenameOperation)initWithItem:(id)item rawName:(id)name hideExtension:(BOOL)extension
{
  v6[0] = extension;
  v6[1] = 1;
  return [(FIRenameOperation *)self _initWithNode:0 item:item rawName:name hideExtension:v6];
}

- (id)createFPOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(FIOperation *)selfCopy setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E69673F8]);
  sourceFPItems = [(FIOperation *)selfCopy sourceFPItems];
  firstObject = [sourceFPItems firstObject];
  rawName = [(FIRenameOperation *)selfCopy rawName];
  v7 = [v3 initWithItem:firstObject newFileName:rawName];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)tearDownCallbacks
{
  v4.receiver = self;
  v4.super_class = FIRenameOperation;
  [(FIOperation *)&v4 tearDownCallbacks];
  subOperation = [(FIRenameOperation *)self subOperation];
  [subOperation setNameConflictHandler:0];
}

- (FINode)node
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sourceNodes = [(FIOperation *)selfCopy sourceNodes];
  firstObject = [sourceNodes firstObject];

  objc_sync_exit(selfCopy);

  return firstObject;
}

- (id)makeOperationRecordForNode:(id)node
{
  v11.receiver = self;
  v11.super_class = FIRenameOperation;
  v4 = [(FIOperation *)&v11 makeOperationRecordForNode:node];
  subOperation = [(FIRenameOperation *)self subOperation];
  node = [(FIRenameOperation *)self node];
  rawName = [(FIRenameOperation *)self rawName];
  hideExtension = [(FIRenameOperation *)self hideExtension];
  v8 = [subOperation configureOperationRecord:v4 forNode:node rawName:rawName hideExtension:&hideExtension];

  return v8;
}

- (void)schedule
{
  v3 = [(FISubOperation *)[FIRenameSubOperation alloc] initWithOperation:self];
  [(FIRenameOperation *)self setSubOperation:v3];
  v14.receiver = self;
  v14.super_class = FIRenameOperation;
  [(FIOperation *)&v14 schedule];
  if ([(FIOperation *)self operationRef])
  {
    subOperationCompletedHandler = [(FIOperation *)self subOperationCompletedHandler];
    v5 = MEMORY[0x1E692D6D0]();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3321888768;
    v15[2] = ___ZZ29__FIRenameOperation_schedule_ENK3__1cvU13block_pointerFvP11FIOperation16NodeSuboperationP6FINodeEEv_block_invoke;
    v15[3] = &__block_descriptor_40_ea8_32c42_ZTSKZ29__FIRenameOperation_schedule_E3__1_e35_v28__0__FIOperation_8I16__FINode_20l;
    v16 = MEMORY[0x1E692D6D0]();
    v6 = MEMORY[0x1E692D6D0](v15);

    [(FIOperation *)self setSubOperationCompletedHandler:v6];
    v13 = 0;
    LOBYTE(v6) = [(FIRenameSubOperation *)v3 startRename:&v13];
    v7 = v13;
    if ((v6 & 1) == 0)
    {
      errorHandler = [(FIOperation *)self errorHandler];
      if (errorHandler)
      {
        v9 = [[FIOperationError alloc] initWithError:v7];
        v10 = (errorHandler)[2](errorHandler, self, v9);
      }

      [(FIOperation *)self markAsCancelled];
      completionHandler = [(FIOperation *)self completionHandler];
      v12 = completionHandler;
      if (completionHandler)
      {
        (*(completionHandler + 16))(completionHandler, self, MEMORY[0x1E695E0F0]);
      }
    }
  }
}

- (void)_initWithNode:item:rawName:hideExtension:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = TNSWeakPtr<FIRenameOperation>::Lock((self + 8));
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_sync_enter(v6);
    v7 = *(a2 + 8);
    if (*(v7 - 8) == 1 && (v8 = *(v7 - 16)) != 0)
    {
      v9 = v8;
      v13[0] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v6 setSourceNodes:v10];
    }

    else
    {
      v13[0] = *(self + 16);
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v6 setSourceFPItems:v11];
      v9 = v11;
    }

    objc_sync_exit(v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)_initWithNode:item:rawName:hideExtension:
{
  *a2 = &unk_1F5F3D438;
  objc_copyWeak((a2 + 8), (self + 8));
  result = *(self + 16);
  *(a2 + 16) = result;
  return result;
}

- (uint64_t)_initWithNode:item:rawName:hideExtension:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end