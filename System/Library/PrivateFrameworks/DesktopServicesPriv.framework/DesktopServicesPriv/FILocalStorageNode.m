@interface FILocalStorageNode
+ (id)currentSharedInstance;
+ (id)makeWithCoder:(id)a3;
+ (id)sharedInstanceWithDisplayName:(id)a3 domain:(id)a4;
- (FILocalStorageNode)initWithStorageNode:(id)a3 domain:(id)a4 displayName:(id)a5;
- (id)fpItem;
- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (void)encodeWithCoder:(id)a3;
- (void)fetchFPItemIfNeeded;
- (void)setFpItem:(id)a3;
@end

@implementation FILocalStorageNode

+ (id)currentSharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = sLocalStorageNode;
  objc_sync_exit(v2);

  return v3;
}

+ (id)sharedInstanceWithDisplayName:(id)a3 domain:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  v9 = sLocalStorageNode;
  if (sLocalStorageNode)
  {
LABEL_2:
    v10 = v9;
    goto LABEL_15;
  }

  v11 = [v7 storageURLs];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = [FINode fiNodeFromURL:v12];
    if (v13)
    {
      v14 = LogObj(7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v22 = 138543362;
        v23 = v6;
        _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_DEBUG, "Creating FILocalStorageNode - %{public}@", &v22, 0xCu);
      }

      v15 = [[a1 alloc] initWithStorageNode:v13 domain:v7 displayName:v6];
      v16 = sLocalStorageNode;
      sLocalStorageNode = v15;

      v17 = [sLocalStorageNode displayName];
      if (([v6 isEqualToString:v17] & 1) == 0)
      {
        v18 = LogObj(7);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 138543618;
          v23 = v6;
          v24 = 2114;
          v25 = v17;
          _os_log_impl(&dword_1E5674000, v18, OS_LOG_TYPE_ERROR, "LocalStorage node name not set. Expected: %{public}@, actual: %{public}@", &v22, 0x16u);
        }
      }

      v9 = sLocalStorageNode;
      goto LABEL_2;
    }
  }

  v19 = LogObj(7);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v22 = 138543362;
    v23 = v7;
    _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_ERROR, "Unable to load local storage root storageURL from domain %{public}@", &v22, 0xCu);
  }

  v10 = 0;
LABEL_15:
  objc_sync_exit(v8);

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (FILocalStorageNode)initWithStorageNode:(id)a3 domain:(id)a4 displayName:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E695DFD8];
  v23[0] = v9;
  v13 = +[FILocalAppContainerCollection sharedInstance];
  v23[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v15 = [v12 setWithArray:v14];

  v22.receiver = self;
  v22.super_class = FILocalStorageNode;
  v16 = [(FICompoundNode *)&v22 initWithNodes:v15 subject:v9];
  objc_storeStrong(&v16->_storageNode, a3);
  v17 = [FIProviderDomain providerDomainForDomain:v10];
  providerDomain = v16->_providerDomain;
  v16->_providerDomain = v17;

  objc_storeStrong(&v16->_displayName, a5);
  v19 = +[FIPresentationNodeMap shared];
  [v19 registerPresentationNode:v16 forNode:v9];

  [(FILocalStorageNode *)v16 fetchFPItemIfNeeded];
  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)makeWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FI Display Name"];
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"FI Domain"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  v8 = [FILocalStorageNode sharedInstanceWithDisplayName:v5 domain:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FILocalStorageNode;
  [(FIDSNode *)&v7 encodeWithCoder:v4];
  v5 = [(FINode *)self displayName];
  [v4 encodeObject:v5 forKey:@"FI Display Name"];

  v6 = [(FILocalStorageNode *)self fpDomain];
  [v4 encodeObject:v6 forKey:@"FI Domain"];
}

- (void)fetchFPItemIfNeeded
{
  v3 = [(FILocalStorageNode *)self fpItem];

  if (!v3)
  {
    v4 = [objc_opt_class() defaultManager];
    v5 = [(FILocalStorageNode *)self fpDomain];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = __41__FILocalStorageNode_fetchFPItemIfNeeded__block_invoke;
    v7[3] = &__block_descriptor_40_ea8_32c54_ZTSKZ41__FILocalStorageNode_fetchFPItemIfNeeded_E3__0_e28_v24__0__FPItem_8__NSError_16l;
    v6 = self;
    v8 = v6;
    [v4 fetchRootItemForProviderDomain:v5 completionHandler:v7];
  }
}

void __41__FILocalStorageNode_fetchFPItemIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v7)
  {
    [*(a1 + 32) setFpItem:v7];
  }

  else
  {
    v9 = LogObj(7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Unable to get root item for local storage %{public}@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setFpItem:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  fpItem = obj->_fpItem;
  obj->_fpItem = v4;

  objc_sync_exit(obj);
}

- (id)fpItem
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fpItem;
  objc_sync_exit(v2);

  return v3;
}

- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a3 == 1886282093 || a3 == 1684955501)
  {
    v7 = self->_displayName;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FILocalStorageNode;
    v7 = [FICompoundNode propertyAsString:sel_propertyAsString_async_options_error_ async:? options:? error:?];
  }

  return v7;
}

@end