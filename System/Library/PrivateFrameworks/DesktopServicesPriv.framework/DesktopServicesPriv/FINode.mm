@interface FINode
+ (NSSet)protectedAppIdentifiers;
+ (NSString)currentHostAppIdentifier;
+ (id)_dataSeparatedICloudDrive;
+ (id)_iCloudDrive;
+ (id)appLibraryNodeForNode:(id)a3;
+ (id)dataSeparatedICloudDefaultContainer;
+ (id)dataSeparatedICloudLibrariesContainer;
+ (id)fiNodeFromItem:inFPv2Domain:completion:;
+ (id)fiNodeFromURL:(id)a3;
+ (id)iCloudDefaultContainer;
+ (id)iCloudLibrariesContainer;
+ (id)providerDomainsContainer;
+ (id)sizeFolder:(id)a3;
+ (id)sizeFolder:(id)a3 forCopyInto:(id)a4 withDelegate:(id)a5;
+ (void)fiNodeFromItem:(id)a3 inFPv2Domain:(id)a4 completion:(id)a5;
+ (void)setCurrentHostAppIdentifier:(id)a3;
+ (void)setProtectedAppIdentifiers:(id)a3;
- (BOOL)markAsUsed:(id *)a3;
- (BOOL)propertyAsBool:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (BOOL)setProperty:(unsigned int)a3 asArray:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asBool:(BOOL)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asData:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asDate:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asDictionary:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asNumber:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asObject:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (BOOL)setProperty:(unsigned int)a3 asString:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7;
- (FINode)_uiParent;
- (FINode)initWithCoder:(id)a3;
- (FINode)parent;
- (FINode)presentationNode;
- (NSArray)itemDecorations;
- (NSArray)tags;
- (NSNumber)childItemCount;
- (NSObject)simplifiedFolderIcon;
- (NSPersonNameComponents)ownerNameComponents;
- (NSString)itemIdentifier;
- (UTType)contentType;
- (id)fetchTags:(BOOL)a3;
- (id)nodesToObserve;
- (id)propertyAsArray:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsData:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsDate:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsDictionary:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsNSObject:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsNumber:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (id)shortDescription;
- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4;
- (unsigned)bladeRunnerFlags;
- (unsigned)nodePermissions:(unsigned int)a3 error:(id *)a4;
- (unsigned)volumeIs:(unsigned int)a3 error:(id *)a4;
- (void)synchronize;
@end

@implementation FINode

+ (id)providerDomainsContainer
{
  TGlobalNodes::AllProvidersNode(&v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

- (id)nodesToObserve
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = self;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (FINode)parent
{
  v2 = [(FINode *)self fileParent];
  v3 = [v2 presentationNode];

  return v3;
}

- (FINode)presentationNode
{
  v3 = [FIPresentationNodeMap presentationNodeForKeyNode:self];
  if (!v3)
  {
    v3 = self;
  }

  return v3;
}

+ (id)iCloudDefaultContainer
{
  if (ICloudDriveFPFSEnabled() && (iCloudDriveDomainIDForDataSeparated(0), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v3);

    v4 = DefaultContainerOfDomainWithID(&v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)iCloudLibrariesContainer
{
  TGlobalNodes::iCloudLibrariesContainerNode(&v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

+ (NSSet)protectedAppIdentifiers
{
  v2 = a1;
  objc_sync_enter(v2);
  if (sProtectedAppIdentifiers)
  {
    v3 = sProtectedAppIdentifiers;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

+ (id)appLibraryNodeForNode:(id)a3
{
  v3 = [a3 presentationNode];
  v4 = objc_cast<FIDSNode,FINode * {__strong}>(v3);

  v5 = [v4 fileURL];
  v6 = [v5 URLByStandardizingPath];
  v7 = [v6 path];
  v20.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v20, v7);

  v8 = +[FILocalStorageNode containerNodePathPrefix];
  v19.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v19, v8);

  v9 = TString::BeginsWith(&v20, &v19);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);

  if (v9)
  {
    v10 = [FILocalAppContainerCollection sharedInstance:v19.fString.fRef];
    if (([v10 isPopulated] & 1) == 0)
    {
      [v10 synchronizeWithOptions:0x1000000 async:0];
    }
  }

  else
  {
    v11 = iCloudDriveDomainIDForDataSeparated(0);
    if (!v11)
    {
      goto LABEL_18;
    }

    v14 = [FIProviderDomain rootURLForProviderDomainID:v11 cachePolicy:1 error:0, v19.fString.fRef, v20.fString.fRef];
    v15 = v14;
    if (!v14)
    {

      goto LABEL_17;
    }

    v16 = [v14 path];
    v19.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v19, v16);

    v17 = TString::BeginsWith(&v20, &v19);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);

    if (!v17)
    {
      goto LABEL_17;
    }
  }

  if (!v4)
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    if (v9)
    {
      objc_cast<FILocalAppContainerNode,FIDSNode * {__strong}>(v4);
    }

    else
    {
      objc_cast<FINode_ICloudAppLibrary,FIDSNode * {__strong}>(v4);
    }
    v11 = ;
    if (v11)
    {
      break;
    }

    v12 = [v4 parent];
    v13 = objc_cast<FIDSNode,FINode * {__strong}>(v12);

    v4 = v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v20.fString.fRef);

  return v11;
}

+ (NSString)currentHostAppIdentifier
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = sCurrentHostAppIdentifier;
  if (!sCurrentHostAppIdentifier)
  {
    sCurrentHostAppIdentifier = &stru_1F5F42870;

    v3 = sCurrentHostAppIdentifier;
  }

  v4 = v3;
  objc_sync_exit(v2);

  return v4;
}

+ (void)setCurrentHostAppIdentifier:(id)a3
{
  v7 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  v5 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v7);
  v6 = sCurrentHostAppIdentifier;
  sCurrentHostAppIdentifier = v5;

  objc_sync_exit(v4);
}

+ (void)setProtectedAppIdentifiers:(id)a3
{
  v12 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if ([sProtectedAppIdentifiers isEqual:v12])
  {
    objc_sync_exit(v4);
LABEL_7:

    goto LABEL_8;
  }

  v5 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v12);
  v6 = sProtectedAppIdentifiers;
  sProtectedAppIdentifiers = v5;

  objc_sync_exit(v4);
  v7 = pthread_main_np();
  v8 = [FILocalAppContainerCollection sharedInstanceCreateIfNeeded:0];
  [v8 synchronizeWithOptions:0x1000000 async:v7 != 0];

  v9 = iCloudDriveDomainIDForDataSeparated(0);

  if (v9)
  {
    v10 = +[FINode iCloudLibrariesContainer];
    [v10 synchronizeWithOptions:0x1000000 async:v7 != 0];
  }

  v11 = iCloudDriveDomainIDForDataSeparated(1);

  if (v11)
  {
    v4 = +[FINode dataSeparatedICloudLibrariesContainer];
    [v4 synchronizeWithOptions:0x1000000 async:v7 != 0];
    goto LABEL_7;
  }

LABEL_8:
}

- (FINode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FINode *)self init];
  v6 = [FIDSNode _makeWithCoder:v4];

  return v6;
}

+ (id)fiNodeFromURL:(id)a3
{
  v3 = a3;
  v7 = v3;
  v8 = 0;
  if (TNode::GetNodeFromURL(&v7, &v8, 0) || !TNodeFromFINode(v8))
  {
    v4 = 0;
  }

  else
  {
    v5 = TNodeFromFINode(v8);
    v4 = FINodeFromTNode(v5);
  }

  return v4;
}

+ (void)fiNodeFromItem:(id)a3 inFPv2Domain:(id)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = 0;
LABEL_4:
    v13 = [FIProviderDomain providerDomainForDomain:v8];
    if ([v13 isFPv2])
    {

      v14 = FPItemManagerInstance();
      v15 = [v7 itemID];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3321888768;
      v26[2] = __49__FINode_fiNodeFromItem_inFPv2Domain_completion___block_invoke;
      v26[3] = &__block_descriptor_56_ea8_32c62_ZTSKZ49__FINode_fiNodeFromItem_inFPv2Domain_completion__E3__0_e29_v24__0__NSArray_8__NSError_16l;
      v16 = v7;
      *buf = v16;
      v17 = v8;
      *&buf[8] = v17;
      v18 = MEMORY[0x1E692D6D0](v9);
      *&buf[16] = v18;
      v19 = v16;
      v27 = v19;
      v20 = v17;
      v28 = v20;
      v29 = MEMORY[0x1E692D6D0](v18);
      [v14 fetchParentsForItemID:v15 recursively:1 completionHandler:v26];

      v13 = v27;
    }

    else
    {
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-8072 userInfo:0];

      v22 = LogObj(4);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[FINode fiNodeFromItem:inFPv2Domain:completion:]";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        _os_log_impl(&dword_1E5674000, v22, OS_LOG_TYPE_ERROR, "%s expects an item in an FPv2 domain: %{public}@", buf, 0x16u);
      }

      v9[2](v9, 0, v21);
      v10 = v21;
    }

    goto LABEL_10;
  }

  v11 = FPProviderDomainClass();
  v12 = [v7 providerDomainID];
  v30 = 0;
  v8 = [v11 providerDomainWithID:v12 cachePolicy:1 error:&v30];
  v10 = v30;

  if (v8)
  {
    goto LABEL_4;
  }

  v24 = LogObj(4);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = [v7 providerDomainID];
    *buf = 138412546;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1E5674000, v24, OS_LOG_TYPE_ERROR, "Failed to get provider domain for %@: %@", buf, 0x16u);
  }

  v8 = 0;
  v9[2](v9, 0, v10);
LABEL_10:

  v23 = *MEMORY[0x1E69E9840];
}

void __49__FINode_fiNodeFromItem_inFPv2Domain_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v7;
  v42 = v8;
  if (v9)
  {
    v10 = LogObj(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) displayName];
      *&v43 = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v43, v11);

      v12 = SanitizedStr(&v43);
      *buf = 138543618;
      *&buf[4] = v12;
      v47 = 2114;
      *v48 = v9;
      _os_log_impl(&dword_1E5674000, v10, OS_LOG_TYPE_ERROR, "Failed to get the parent items for: %{public}@, error: %{public}@", buf, 0x16u);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v43);
    }

    (*(*(a1 + 48) + 16))();
    v13 = v9;
  }

  else
  {
    v14 = [v8 count];
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *&v43 = *(a1 + 40);
    v41 = v15;
    *(&v43 + 1) = v41;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(a1 + 32);
    }

    v44 = v16;
    v17 = +[FINode providerDomainsContainer];
    TNodeFromFINode(v17);
    v18 = [(FINode *)v17 iteratorWithOptions:4];
    v19 = [v18 first];
    if (!v19)
    {
LABEL_15:
      [FIProviderDomain providerDomainForDomain:v43, v41];
      objc_claimAutoreleasedReturnValue();
      v54[0] = v44 == 0;
      std::allocate_shared[abi:ne200100]<TFSInfo,std::allocator<TFSInfo>,FIProviderDomain * {__strong},FPItem * const {__strong}&,BOOL,0>();
    }

    while (1)
    {
      v20 = [(FINode *)v19 fpDomain];
      v21 = v20;
      if (!v20)
      {
        v3 = [MEMORY[0x1E695DFB0] null];
        v21 = v3;
      }

      [*(&v43 + 1) setObject:v21 forKeyedSubscript:v19];
      if (!v20)
      {
      }

      v22 = [v43 isEqual:v20];

      if (v22)
      {
        break;
      }

      v23 = [v18 next];

      v19 = v23;
      if (!v23)
      {
        goto LABEL_15;
      }
    }

    v24 = [v8 reverseObjectEnumerator];
    v25 = [v24 allObjects];
    v26 = MutableCopy<NSDictionary<NSString *,objc_object *>>(v25);

    [v26 addObject:*(a1 + 32)];
    if ([v26 count] == 1)
    {
      (*(*(a1 + 48) + 16))();
      v13 = 0;
    }

    else if (v19)
    {
      v27 = TNodeFromFINode(v19);
      IDContainerIteratorAdaptor<NSMutableArray<FPItem *>>::NSForwardIterator<NSMutableArray<FPItem *>>::NSForwardIterator(&v43, v26);
      IDContainerIteratorAdaptor<NSMutableArray<FPItem *>>::NSForwardIterator<NSMutableArray<FPItem *>>::NSForwardIterator(buf, &v43, 1);

      while (1)
      {
        IDContainerIteratorAdaptor<NSMutableArray<FPItem *>>::IDContainerIteratorAdaptor(&v43, -1, v26);
        if (*buf == v43)
        {
          v28 = v53 == v45;

          if (v28)
          {
            v13 = 0;
            goto LABEL_36;
          }
        }

        else
        {
        }

        v29 = *(*&v48[2] + 8 * v52);
        v30 = static_objc_cast<NSString,objc_object * {__strong}>(v29);

        TNode::FindFPv2Child(v27, v30, &v43);
        v27 = TNodeFromFINode(v43);

        if (!v27)
        {
          break;
        }

        v31 = v52;
        if (v52 >= v51 - 1)
        {
          v32 = [*buf countByEnumeratingWithState:&buf[8] objects:v50 count:4];
          v31 = -1;
          v51 = v32;
          v52 = -1;
        }

        if (v50[4] != *v49)
        {
          objc_enumerationMutation(*buf);
          v31 = v52;
        }

        v52 = v31 + 1;
        ++v53;
      }

      v33 = LogObj(4);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = +[FINode fiNodeFromItem:inFPv2Domain:completion:]::$_0::operator() const(NSArray<FPItem *> *,NSError *)::{lambda(NSArray<FPItem *> *,FPItem *)#1}::operator()(v26, v30);
        LODWORD(v43) = 138543362;
        *(&v43 + 4) = v34;
        _os_log_impl(&dword_1E5674000, v33, OS_LOG_TYPE_ERROR, "Failed to find FINodes in FPItem parent chain: '%{public}@'", &v43, 0xCu);
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-8062 userInfo:0];

      v27 = 0;
LABEL_36:

      v38 = *(a1 + 48);
      v39 = FINodeFromTNode(v27);
      (*(v38 + 16))(v38, v39, v13);
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-8062 userInfo:0];
      v35 = LogObj(4);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = *(a1 + 40);
        v37 = +[FINode fiNodeFromItem:inFPv2Domain:completion:]::$_0::operator() const(NSArray<FPItem *> *,NSError *)::{lambda(NSArray<FPItem *> *,FPItem *)#1}::operator()(v26, *(a1 + 32));
        *buf = 138543874;
        *&buf[4] = v36;
        v47 = 2114;
        *v48 = v37;
        *&v48[8] = 2114;
        v49 = v41;
        _os_log_impl(&dword_1E5674000, v35, OS_LOG_TYPE_ERROR, "Failed to find FINode for the domain. DS doesn't know about it yet: %{public}@. path: %{public}@, known domains: %{public}@", buf, 0x20u);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

+ (id)dataSeparatedICloudLibrariesContainer
{
  TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(&v5);
  v2 = TNodeFromFINode(v5);
  v3 = FINodeFromTNode(v2);

  return v3;
}

+ (id)dataSeparatedICloudDefaultContainer
{
  if (ICloudDriveFPFSEnabled() && (iCloudDriveDomainIDForDataSeparated(1), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v6.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v6, v3);

    v4 = DefaultContainerOfDomainWithID(&v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_iCloudDrive
{
  v2 = objc_alloc_init(FIICloudDrive);

  return v2;
}

+ (id)_dataSeparatedICloudDrive
{
  v2 = objc_alloc_init(FIDataSeparatedICloudDrive);

  return v2;
}

- (NSString)itemIdentifier
{
  v3 = [(FINode *)self propertyAsString:1868720740];
  if ([v3 isEqualToString:@"0.0"])
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s, %p", object_getClassName(self), self];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = ErrorWithOSStatus(-8058, 0);
  }

  return 0;
}

- (unsigned)volumeIs:(unsigned int)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = ErrorWithOSStatus(-8058, 0);
  }

  return 0;
}

- (unsigned)nodePermissions:(unsigned int)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = ErrorWithOSStatus(-8058, 0);
  }

  return 0;
}

- (NSNumber)childItemCount
{
  v3 = pthread_main_np() != 0;

  return [(FINode *)self propertyAsNumber:1667785588 async:v3 options:4 error:0];
}

- (NSArray)itemDecorations
{
  v2 = [(FINode *)self propertyAsArray:1684366194];
  v3 = static_objc_cast<NSString,objc_object * {__strong}>(v2);

  return v3;
}

- (unsigned)bladeRunnerFlags
{
  v3 = [(FINode *)self propertyAsNumber:1969385844];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 unsignedIntValue];
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSPersonNameComponents)ownerNameComponents
{
  v2 = [(FINode *)self propertyAsNSObject:1769171056];
  v3 = static_objc_cast<NSString,objc_object * {__strong}>(v2);

  return v3;
}

- (UTType)contentType
{
  v2 = [(FINode *)self propertyAsNSObject:1970566256];
  v3 = static_objc_cast<NSString,objc_object * {__strong}>(v2);

  if (!v3)
  {
    v3 = *MEMORY[0x1E6982E48];
  }

  return v3;
}

- (FINode)_uiParent
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = LogObj(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(FINode *)self description];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_ERROR, "FINode _uiParent is deprecated and will be removed in the near future: %{public}@", &v8, 0xCu);
  }

  v5 = [(FINode *)self parent];
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSObject)simplifiedFolderIcon
{
  v2 = [(FINode *)self propertyAsNSObject:1769171299];
  v3 = objc_cast<ISIcon,NSObject * {__strong}>(v2);

  if (v3)
  {
    v4 = [v3 ds_simplifiedFolderIcon];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)fetchTags:(BOOL)a3
{
  v3 = [(FINode *)self propertyAsArray:1718903156 async:!a3 options:0 error:0];
  v4 = static_objc_cast<NSString,objc_object * {__strong}>(v3);

  return v4;
}

- (NSArray)tags
{
  v3 = pthread_main_np() == 0;

  return [(FINode *)self fetchTags:v3];
}

- (id)propertyAsNumber:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsDate:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsArray:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsNSObject:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsDictionary:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)propertyAsBool:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (id)propertyAsData:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asNumber:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  v8 = a4;
  v9 = v8;
  if (a7)
  {
    if (v8)
    {
      v10 = -8051;
    }

    else
    {
      v10 = -8072;
    }

    *a7 = ErrorWithOSStatus(v10, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asDate:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asString:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asArray:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asDictionary:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asBool:(BOOL)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = ErrorWithOSStatus(-8051, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asData:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  v8 = a4;
  v9 = v8;
  if (a7)
  {
    if (v8)
    {
      v10 = -8051;
    }

    else
    {
      v10 = -8072;
    }

    *a7 = ErrorWithOSStatus(v10, 0);
  }

  return 0;
}

- (BOOL)setProperty:(unsigned int)a3 asObject:(id)a4 async:(BOOL)a5 options:(unsigned int)a6 error:(id *)a7
{
  v8 = a4;
  v9 = v8;
  if (a7)
  {
    if (v8)
    {
      v10 = -8051;
    }

    else
    {
      v10 = -8072;
    }

    *a7 = ErrorWithOSStatus(v10, 0);
  }

  return 0;
}

+ (id)sizeFolder:(id)a3
{
  v3 = [a1 sizeFolder:a3 forCopyInto:0 withDelegate:0];

  return v3;
}

+ (id)sizeFolder:(id)a3 forCopyInto:(id)a4 withDelegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v22[1] = 0;
  v22[2] = 0;
  v22[0] = v9;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = xmmword_1F5F3DF88;
  v17 = off_1F5F3DF98;
  v10 = _NodeSizingV2(v7, v8, &v16, v22, &v18);
  v11 = objc_alloc_init(FIFolderSize);
  v12 = v11;
  if (v10)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    error = v12->_error;
    v12->_error = v13;
  }

  else
  {
    v11->_totalItems = *(&v18 + 1);
    *&v11->_userVisibleItems = v19;
    *&v11->_compressionAdjustedLogicalBytes = v20;
    *&v11->_skippedItemCount = v21;
  }

  return v12;
}

- (BOOL)markAsUsed:(id *)a3
{
  if (a3)
  {
    *a3 = ErrorWithOSStatus(-8058, 0);
  }

  return 0;
}

- (void)synchronize
{
  v3 = pthread_main_np() != 0;

  [(FINode *)self synchronizeWithOptions:0 async:v3];
}

- (id)shortDescription
{
  v4.receiver = self;
  v4.super_class = FINode;
  v2 = [(FINode *)&v4 description];

  return v2;
}

+ (id)fiNodeFromItem:inFPv2Domain:completion:
{
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x1E695E480];
  v6 = *MEMORY[0x1E695E498];
  obj = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v21.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v21, obj);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&obj);
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::NSForwardIterator<NSArray<FPItem *>>::NSForwardIterator(&obj, v3);
  IDContainerIteratorAdaptor<NSArray<FPItem *>>::IDContainerIteratorAdaptor(v23, -1, v3);
  v7 = v4;
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  while (obj != v23[0] || v29 != v23[16])
  {
    v8 = *(v25[1] + 8 * v28);
    if ([v8 isEqualToItem:v7])
    {
      v9 = CFStringCreateWithBytesNoCopy(v5, "<<< '", 5, 0x8000100u, 0, v6);
      v35[0] = v9;
      v33.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v33, v9);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v35);
      v10 = [v8 displayName];
      v32.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v32, v10);

      fRef = v33.fString.fRef;
      v34.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      MutableCopy = CFStringCreateMutableCopy(v5, 0, fRef);
      CFRelease(&stru_1F5F42870);
      v34.fString.fRef = MutableCopy;
      TString::Append(&v34, &v32);
      v13 = CFStringCreateWithBytesNoCopy(v5, "' >>>", 5, 0x8000100u, 0, v6);
      v35[0] = v13;
      v31.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v31, v13);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v35);
      v14 = v34.fString.fRef;
      v30.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      v15 = CFStringCreateMutableCopy(v5, 0, v14);
      CFRelease(&stru_1F5F42870);
      v30.fString.fRef = v15;
      TString::Append(&v30, &v31);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v31.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v32.fString.fRef);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
    }

    else
    {
      v16 = [v8 displayName];
      v30.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v30, v16);
    }

    if (CFStringGetLength(theString) && CFStringGetLength(v30.fString.fRef))
    {
      TString::Append(&theString, &v21);
    }

    TString::Append(&theString, &v30);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v30.fString.fRef);
    v17 = v28;
    if (v28 >= v27 - 1)
    {
      v18 = [obj countByEnumeratingWithState:v25 objects:v26 count:4];
      v17 = -1;
      v27 = v18;
      v28 = -1;
    }

    if (v26[4] != *v25[2])
    {
      objc_enumerationMutation(obj);
      v17 = v28;
    }

    v28 = v17 + 1;
    ++v29;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
  v19 = SanitizedPath(&theString);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  return v19;
}

@end