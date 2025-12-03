@interface FILocalStorageNode
+ (id)currentSharedInstance;
+ (id)makeWithCoder:(id)coder;
+ (id)sharedInstanceWithDisplayName:(id)name domain:(id)domain;
- (FILocalStorageNode)initWithStorageNode:(id)node domain:(id)domain displayName:(id)name;
- (id)fpItem;
- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)fetchFPItemIfNeeded;
- (void)setFpItem:(id)item;
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

+ (id)sharedInstanceWithDisplayName:(id)name domain:(id)domain
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  domainCopy = domain;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  v9 = sLocalStorageNode;
  if (sLocalStorageNode)
  {
LABEL_2:
    v10 = v9;
    goto LABEL_15;
  }

  storageURLs = [domainCopy storageURLs];
  firstObject = [storageURLs firstObject];

  if (firstObject)
  {
    v13 = [FINode fiNodeFromURL:firstObject];
    if (v13)
    {
      v14 = LogObj(7);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v22 = 138543362;
        v23 = nameCopy;
        _os_log_impl(&dword_1E5674000, v14, OS_LOG_TYPE_DEBUG, "Creating FILocalStorageNode - %{public}@", &v22, 0xCu);
      }

      v15 = [[self alloc] initWithStorageNode:v13 domain:domainCopy displayName:nameCopy];
      v16 = sLocalStorageNode;
      sLocalStorageNode = v15;

      displayName = [sLocalStorageNode displayName];
      if (([nameCopy isEqualToString:displayName] & 1) == 0)
      {
        v18 = LogObj(7);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = 138543618;
          v23 = nameCopy;
          v24 = 2114;
          v25 = displayName;
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
    v23 = domainCopy;
    _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_ERROR, "Unable to load local storage root storageURL from domain %{public}@", &v22, 0xCu);
  }

  v10 = 0;
LABEL_15:
  objc_sync_exit(v8);

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (FILocalStorageNode)initWithStorageNode:(id)node domain:(id)domain displayName:(id)name
{
  v23[2] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  domainCopy = domain;
  nameCopy = name;
  v12 = MEMORY[0x1E695DFD8];
  v23[0] = nodeCopy;
  v13 = +[FILocalAppContainerCollection sharedInstance];
  v23[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v15 = [v12 setWithArray:v14];

  v22.receiver = self;
  v22.super_class = FILocalStorageNode;
  v16 = [(FICompoundNode *)&v22 initWithNodes:v15 subject:nodeCopy];
  objc_storeStrong(&v16->_storageNode, node);
  v17 = [FIProviderDomain providerDomainForDomain:domainCopy];
  providerDomain = v16->_providerDomain;
  v16->_providerDomain = v17;

  objc_storeStrong(&v16->_displayName, name);
  v19 = +[FIPresentationNodeMap shared];
  [v19 registerPresentationNode:v16 forNode:nodeCopy];

  [(FILocalStorageNode *)v16 fetchFPItemIfNeeded];
  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (id)makeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FI Display Name"];
  v5 = static_objc_cast<NSString,objc_object * {__strong}>(v4);

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FI Domain"];
  v7 = static_objc_cast<NSString,objc_object * {__strong}>(v6);

  v8 = [FILocalStorageNode sharedInstanceWithDisplayName:v5 domain:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = FILocalStorageNode;
  [(FIDSNode *)&v7 encodeWithCoder:coderCopy];
  displayName = [(FINode *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"FI Display Name"];

  fpDomain = [(FILocalStorageNode *)self fpDomain];
  [coderCopy encodeObject:fpDomain forKey:@"FI Domain"];
}

- (void)fetchFPItemIfNeeded
{
  fpItem = [(FILocalStorageNode *)self fpItem];

  if (!fpItem)
  {
    defaultManager = [objc_opt_class() defaultManager];
    fpDomain = [(FILocalStorageNode *)self fpDomain];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3321888768;
    v7[2] = __41__FILocalStorageNode_fetchFPItemIfNeeded__block_invoke;
    v7[3] = &__block_descriptor_40_ea8_32c54_ZTSKZ41__FILocalStorageNode_fetchFPItemIfNeeded_E3__0_e28_v24__0__FPItem_8__NSError_16l;
    selfCopy = self;
    v8 = selfCopy;
    [defaultManager fetchRootItemForProviderDomain:fpDomain completionHandler:v7];
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

- (void)setFpItem:(id)item
{
  itemCopy = item;
  obj = self;
  objc_sync_enter(obj);
  fpItem = obj->_fpItem;
  obj->_fpItem = itemCopy;

  objc_sync_exit(obj);
}

- (id)fpItem
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fpItem;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  if (string == 1886282093 || string == 1684955501)
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