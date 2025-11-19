@interface FINewFolderOperation
- (BOOL)isRenaming;
- (BOOL)postOpRenameHandler:(id)a3 suboperation:(unsigned int)a4;
- (id)_initWithName:(id)a3 destinationFolderNode:(id)a4 destinationFolderItem:(id)a5 propertyList:(id)a6;
- (id)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:;
- (id)createFPOperation;
- (id)makeOperationRecordForNode:(id)a3;
- (id)nameConflictHandler:(id)a3 fileExtension:(id)a4 error:(id *)a5;
- (uint64_t)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:;
- (void)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:;
- (void)schedule;
- (void)startFSOperationFailed:(id)a3 markCancelled:(BOOL)a4 error:(id)a5;
- (void)tearDownCallbacks;
@end

@implementation FINewFolderOperation

- (id)_initWithName:(id)a3 destinationFolderNode:(id)a4 destinationFolderItem:(id)a5 propertyList:(id)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v35.receiver = self;
  v35.super_class = FINewFolderOperation;
  v15 = [(FIOperation *)&v35 init];
  if ([v12 nodeIs:18] == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = [v13 isFolder];
  }

  if ((v12 != 0) == (v13 != 0) || (([v11 length] != 0) & v16) != 1)
  {
    if (!(v12 | v13))
    {
      v17 = LogObj(8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_ERROR, "nil destination node & item passed to %{public}@", buf, 0xCu);
      }
    }

    if (v16)
    {
      v20 = LogObj(8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = v22;
        if (v12)
        {
          v24 = v12;
        }

        else
        {
          v24 = v13;
        }

        *buf = 138543618;
        *&buf[4] = v22;
        v37 = 2114;
        *v38 = v24;
        _os_log_impl(&dword_1E5674000, v20, OS_LOG_TYPE_ERROR, "%{public}@ expects a folder: %{public}@", buf, 0x16u);
      }
    }

    if (![v11 length])
    {
      v25 = LogObj(8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138543362;
        *&buf[4] = v27;
        _os_log_impl(&dword_1E5674000, v25, OS_LOG_TYPE_ERROR, "Empty folder name passed to %{public}@", buf, 0xCu);
      }
    }

    v28 = 0;
  }

  else
  {
    [(FIOperation *)v15 setOperationType:11];
    objc_storeStrong(&v15->_rawName, a3);
    [(FINewFolderOperation *)v15 setPropertyList:v14];
    if (v12)
    {
      [(FIOperation *)v15 setSourceNodes:MEMORY[0x1E695E0F0]];
      [(FIOperation *)v15 setDestinationNode:v12];
    }

    else
    {
      v40[0] = v13;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
      make_nsweak<FIRenameOperation>(v15, &v33);
      v34 = v13;
      v39 = 0;
      *buf = &unk_1F5F41CB0;
      objc_copyWeak(&buf[8], &v33);
      objc_storeWeak(&v33, 0);
      v30 = v34;
      v34 = 0;
      *&v38[2] = v30;
      v39 = buf;
      [(FIOperation *)v15 fetchNodesAsyncFor:v29 completion:buf];
      std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](buf);

      objc_destroyWeak(&v33);
    }

    v28 = v15;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)createFPOperation
{
  v2 = self;
  objc_sync_enter(v2);
  [(FIOperation *)v2 setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E69672E8]);
  v4 = [(FIOperation *)v2 destinationFPItem];
  v5 = [(FINewFolderOperation *)v2 rawName];
  v6 = [v3 initWithParentItem:v4 folderName:v5];

  v7 = [(FINewFolderOperation *)v2 nameConflictHandler];
  [v6 setShouldBounceOnCollision:v7 != 0];

  objc_sync_exit(v2);

  return v6;
}

- (void)tearDownCallbacks
{
  v4.receiver = self;
  v4.super_class = FINewFolderOperation;
  [(FIOperation *)&v4 tearDownCallbacks];
  [(FINewFolderOperation *)self setNameConflictHandler:0];
  [(FINewFolderOperation *)self setPostOpRenameHandler:0];
  v3 = [(FINewFolderOperation *)self subOperation];
  [v3 setNameConflictHandler:0];
}

- (BOOL)isRenaming
{
  v2 = [(FINewFolderOperation *)self subOperation];
  v3 = objc_cast<FIRenameSubOperation,FISubOperation * {__strong}>(v2);
  v4 = v3 != 0;

  return v4;
}

- (id)makeOperationRecordForNode:(id)a3
{
  v4 = a3;
  v5 = [(FINewFolderOperation *)self subOperation];
  v6 = objc_cast<FIRenameSubOperation,FISubOperation * {__strong}>(v5);

  if (v6)
  {
    v13.receiver = self;
    v13.super_class = FINewFolderOperation;
    v7 = [(FIOperation *)&v13 makeOperationRecordForNode:v4];
    v8 = [(FINewFolderOperation *)self rawName];
    v12 = 0;
    v9 = [v6 configureOperationRecord:v7 forNode:v4 rawName:v8 hideExtension:&v12];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FINewFolderOperation;
    v9 = [(FIOperation *)&v11 makeOperationRecordForNode:0];
  }

  return v9;
}

- (void)startFSOperationFailed:(id)a3 markCancelled:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(FIOperation *)self errorHandler];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [[FIOperationError alloc] initWithError:v9];
    v13 = (v11)[2](v11, self, v12);
  }

  if (v6)
  {
    [(FIOperation *)self markAsCancelled];
  }

  v14 = [(FIOperation *)self completionHandler];
  if (v14)
  {
    if (v8)
    {
      v17[0] = v8;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    (v14)[2](v14, self, v15);
    if (v8)
    {
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)nameConflictHandler:(id)a3 fileExtension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(FINewFolderOperation *)self nameConflictHandler];
  v11 = v10;
  if (v10)
  {
    v12 = (*(v10 + 16))(v10, self, v8, v9, a5);
  }

  else
  {
    v12 = 0;
  }

  if ([v12 length])
  {
    v13 = self;
    objc_sync_enter(v13);
    v14 = NSStringFromSelector(sel_rawName);
    StChangeValueForKeyHelper::StChangeValueForKeyHelper(v16, &v13->super.super, v14);

    objc_storeStrong(&v13->_rawName, v12);
    StChangeValueForKeyHelper::~StChangeValueForKeyHelper(v16);
    objc_sync_exit(v13);
  }

  return v12;
}

- (BOOL)postOpRenameHandler:(id)a3 suboperation:(unsigned int)a4
{
  v6 = a3;
  v7 = [(FINewFolderOperation *)self postOpRenameHandler];
  v8 = v7;
  v9 = 0;
  if (v6 && a4 == 21 && v7)
  {
    v10 = [(FINewFolderOperation *)self rawName];
    v29 = 0;
    v11 = (v8)[2](v8, self, v10, &v29);
    v12 = v29;

    if (v12)
    {
      v13 = IsUserCancelledErr(v12);
      v14 = [(FIOperation *)self errorHandler];
      if (v14 != 0 && !v13)
      {
        v15 = [[FIOperationError alloc] initWithError:v12];
        v16 = (v14->super._operation)(v14, self, v15);
      }

      v9 = 0;
      goto LABEL_8;
    }

    if (![v11 length] || (-[FINewFolderOperation rawName](self, "rawName"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v11, "isEqualToString:", v17), v17, (v18 & 1) != 0))
    {
      v9 = 0;
      v12 = 0;
      goto LABEL_12;
    }

    v20 = self;
    objc_sync_enter(v20);
    v21 = NSStringFromSelector(sel_rawName);
    StChangeValueForKeyHelper::StChangeValueForKeyHelper(v28, &v20->super.super, v21);

    objc_storeStrong(&v20->_rawName, v11);
    StChangeValueForKeyHelper::~StChangeValueForKeyHelper(v28);
    objc_sync_exit(v20);

    v14 = [(FISubOperation *)[FIRenameSubOperation alloc] initWithOperation:v20];
    [(FINewFolderOperation *)v20 setSubOperation:v14];
    v27 = 0;
    v22 = [(FIRenameSubOperation *)v14 reconfigureOpForRename:v6 error:&v27];
    v23 = v27;
    v24 = v23;
    if (v22)
    {
      v26 = v23;
      v25 = [(FIRenameSubOperation *)v14 startRename:&v26];
      v12 = v26;

      if (v25)
      {
        v9 = 1;
LABEL_8:

LABEL_12:
        goto LABEL_13;
      }

      v24 = v12;
    }

    [(FINewFolderOperation *)v20 startFSOperationFailed:v6 markCancelled:0 error:v24];
    v9 = 0;
    v12 = v24;
    goto LABEL_8;
  }

LABEL_13:

  return v9;
}

- (void)schedule
{
  v18.receiver = self;
  v18.super_class = FINewFolderOperation;
  [(FIOperation *)&v18 schedule];
  if ([(FIOperation *)self operationRef])
  {
    make_nsweak<FIRenameOperation>(self, &from);
    v3 = [[FISubOperation alloc] initWithOperation:self];
    [(FINewFolderOperation *)self setSubOperation:v3];

    v4 = [(FINewFolderOperation *)self nameConflictHandler];

    if (v4)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3321888768;
      v21 = ___ZZ32__FINewFolderOperation_schedule_ENK3__1cvU13block_pointerFP8NSStringP11FIOperationS1_S1_PU15__autoreleasingP7NSErrorEEv_block_invoke;
      v22 = &__block_descriptor_33_ea8_32c45_ZTSKZ32__FINewFolderOperation_schedule_E3__1_e61___NSString_40__0__FIOperation_8__NSString_16__NSString_24__32l;
      v5 = MEMORY[0x1E692D6D0](&v19);
      v6 = [(FINewFolderOperation *)self subOperation];
      [v6 setNameConflictHandler:v5];
    }

    v7 = [(FIOperation *)self subOperationCompletedHandler];
    objc_copyWeak(&to, &from);
    v16 = MEMORY[0x1E692D6D0](v7);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3321888768;
    v21 = ___ZZ32__FINewFolderOperation_schedule_ENK3__2cvU13block_pointerFvP11FIOperation16NodeSuboperationP6FINodeEEv_block_invoke;
    v22 = &__block_descriptor_48_ea8_32c45_ZTSKZ32__FINewFolderOperation_schedule_E3__2_e35_v28__0__FIOperation_8I16__FINode_20l;
    objc_copyWeak(&v23, &to);
    v24 = MEMORY[0x1E692D6D0](v16);
    v8 = MEMORY[0x1E692D6D0](&v19);

    objc_destroyWeak(&v23);
    [(FIOperation *)self setSubOperationCompletedHandler:v8];

    objc_destroyWeak(&to);
    v9 = [(FINewFolderOperation *)self subOperation];
    v10 = [(FINewFolderOperation *)self rawName];
    v11 = [(FINewFolderOperation *)self propertyList];
    v14 = 0;
    v12 = [v9 startFileSystemSuboperation:21 newAliasOrFolderName:v10 propertyList:objc_msgSend(v11 aliasTarget:"propertyListRef") error:{0, &v14}];
    v13 = v14;

    if ((v12 & 1) == 0)
    {
      [(FINewFolderOperation *)self startFSOperationFailed:0 markCancelled:1 error:v13];
    }

    objc_destroyWeak(&from);
  }
}

- (void)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:
{
  v4 = TNSWeakPtr<FINewFolderOperation>::Lock((a1 + 8));
  if (v4)
  {
    v9 = v4;
    v5 = v4;
    objc_sync_enter(v5);
    v6 = *(a2 + 8);
    if (*(v6 - 8) == 1 && (v7 = *(v6 - 16)) != 0)
    {
      v8 = v7;
      [v5 setSourceNodes:MEMORY[0x1E695E0F0]];
      [v5 setDestinationNode:v8];
    }

    else
    {
      [v5 setSourceFPItems:MEMORY[0x1E695E0F0]];
      v8 = 0;
      [v5 setDestinationFPItem:*(a1 + 16)];
    }

    objc_sync_exit(v5);
    v4 = v9;
  }
}

- (id)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:
{
  *a2 = &unk_1F5F41CB0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

- (uint64_t)_initWithName:destinationFolderNode:destinationFolderItem:propertyList:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end