@interface FICompoundNode
- (BOOL)isPopulated;
- (BOOL)isValid;
- (BOOL)markAsUsed:(id *)a3;
- (BOOL)requiresFPOperations;
- (FICompoundNode)initWithFINodes:(id)a3;
- (FICompoundNode)initWithNodes:(id)a3;
- (FICompoundNode)initWithNodes:(id)a3 subject:(id)a4;
- (id).cxx_construct;
- (id)copyProgress;
- (id)downloadProgress;
- (id)enumeratorError;
- (id)fiDomain;
- (id)fileParent;
- (id)fileURL;
- (id)fpDomain;
- (id)fpItem;
- (id)longDescription;
- (id)nodesWithSubject;
- (id)parent;
- (id)shortDescription;
- (id)source;
- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4;
- (void)dispatchEvent:(id)a3 forObserver:(id)a4;
- (void)dispatchEvent:forObserver:;
- (void)inlineProgressCancel;
@end

@implementation FICompoundNode

- (id).cxx_construct
{
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 34) = 1065353216;
  return self;
}

- (id)fileURL
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fileURL];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 fileURL];
  }

  return v5;
}

- (id)fpDomain
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fpDomain];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 fpDomain];
  }

  return v5;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = FICompoundNode;
  v4 = [(FIDSNode *)&v10 shortDescription];
  v5 = [(FICompoundNode *)self subjectNode];
  v6 = [v5 shortDescription];
  v7 = [(FICompoundNode *)self nodes];
  v8 = [v3 stringWithFormat:@"<%@ (%@, %ld sub-nodes)>", v4, v6, objc_msgSend(v7, "count")];

  return v8;
}

- (BOOL)isValid
{
  v2 = [(FICompoundNode *)self nodesWithSubject];
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v11, v2);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v10, -1, v2);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(&v13, v11);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v12, v10);
  while (1)
  {
    v3 = v12[0];
    if (v13 == v12[0] && v18 == v12[16])
    {
      break;
    }

    v4 = *(v14[1] + 8 * v17);
    v5 = [v4 isValid];

    if ((v5 & 1) == 0)
    {
      v8 = 0;
      v3 = v12[0];
      goto LABEL_12;
    }

    v6 = v17;
    if (v17 >= v16 - 1)
    {
      v7 = [v13 countByEnumeratingWithState:v14 objects:v15 count:4];
      v6 = -1;
      v16 = v7;
      v17 = -1;
    }

    if (v15[4] != *v14[2])
    {
      objc_enumerationMutation(v13);
      v6 = v17;
    }

    v17 = v6 + 1;
    ++v18;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (id)nodesWithSubject
{
  v3 = [(FICompoundNode *)self nodes];
  v4 = [(FICompoundNode *)self subjectNode];
  if (v4)
  {
    v5 = [v3 setByAddingObject:v4];

    v3 = v5;
  }

  v6 = [v3 allObjects];

  return v6;
}

- (FICompoundNode)initWithNodes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FICompoundNode;
  v5 = [(FICustomNode *)&v9 init];
  v6 = Copy<NSMutableArray<FILocalAppContainerNode *>>(v4);
  nodes = v5->_nodes;
  v5->_nodes = v6;

  return v5;
}

- (FICompoundNode)initWithNodes:(id)a3 subject:(id)a4
{
  v6 = a4;
  v7 = [(FICompoundNode *)self initWithNodes:a3];
  subjectNode = v7->_subjectNode;
  v7->_subjectNode = v6;

  return v7;
}

- (FICompoundNode)initWithFINodes:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v5 = [(FICompoundNode *)self initWithNodes:v4];

  return v5;
}

- (id)fpItem
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fpItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 fpItem];
  }

  return v5;
}

- (id)fiDomain
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fiDomain];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 fiDomain];
  }

  return v5;
}

- (BOOL)requiresFPOperations
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 requiresFPOperations];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    return [(FINode *)&v7 requiresFPOperations];
  }

  return v5;
}

- (id)enumeratorError
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  v3 = [(FICompoundNode *)v2 subjectNode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 enumeratorError];
  }

  else
  {
    v17.receiver = v2;
    v17.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v17 enumeratorError];
  }

  v6 = v5;

  if (!v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(FICompoundNode *)v2 nodes];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = *v14;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v6 = [*(*(&v13 + 1) + 8 * v10) enumeratorError];
        if (v6)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v6 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)inlineProgressCancel
{
  v3 = [(FICompoundNode *)self subjectNode];
  v4 = v3;
  if (v3)
  {
    [v3 inlineProgressCancel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FICompoundNode;
    [(FIDSNode *)&v9 inlineProgressCancel];
  }

  v5 = [(FICompoundNode *)self nodes];
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(&obj, v5);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v10, -1, v5);
  while (obj != v10[0] || v16 != v10[16])
  {
    v6 = *(v12[1] + 8 * v15);
    [v6 inlineProgressCancel];

    v7 = v15;
    if (v15 >= v14 - 1)
    {
      v8 = [obj countByEnumeratingWithState:v12 objects:v13 count:4];
      v7 = -1;
      v14 = v8;
      v15 = -1;
    }

    if (v13[4] != *v12[2])
    {
      objc_enumerationMutation(obj);
      v7 = v15;
    }

    v15 = v7 + 1;
    ++v16;
  }
}

- (id)downloadProgress
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 downloadProgress];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 downloadProgress];
  }

  return v5;
}

- (id)copyProgress
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copyProgress];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 copyProgress];
  }

  return v5;
}

- (BOOL)isPopulated
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = [(FICompoundNode *)self subjectNode];
    v5 = [v4 isPopulated];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = FICompoundNode;
    if ([(FIDSNode *)&v14 isPopulated])
    {
      return 1;
    }
  }

  v7 = [(FICompoundNode *)self nodes];
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v16, v7);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v15, -1, v7);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(&v18, v16);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v17, v15);
  while (1)
  {
    v8 = v17[0];
    if (v18 == v17[0] && v23 == v17[16])
    {
      break;
    }

    v9 = *(v19[1] + 8 * v22);
    v10 = [v9 isPopulated];

    if ((v10 & 1) == 0)
    {
      v6 = 0;
      v8 = v17[0];
      goto LABEL_16;
    }

    v11 = v22;
    if (v22 >= v21 - 1)
    {
      v12 = [v18 countByEnumeratingWithState:v19 objects:v20 count:4];
      v11 = -1;
      v21 = v12;
      v22 = -1;
    }

    if (v20[4] != *v19[2])
    {
      objc_enumerationMutation(v18);
      v11 = v22;
    }

    v22 = v11 + 1;
    ++v23;
  }

  v6 = 1;
LABEL_16:

  return v6;
}

- (id)fileParent
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 fileParent];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FIDSNode *)&v7 fileParent];
  }

  return v5;
}

- (id)parent
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 parent];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    v5 = [(FINode *)&v7 parent];
  }

  return v5;
}

- (id)source
{
  v3 = [(FICompoundNode *)self subjectNode];
  if (!v3)
  {
    v5.receiver = self;
    v5.super_class = FICompoundNode;
    v3 = [(FINode *)&v5 source];
  }

  return v3;
}

- (unint64_t)nodeIs:(unint64_t)a3 error:(id *)a4
{
  v7 = [(FICompoundNode *)self subjectNode];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 nodeIs:a3 error:a4];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FICompoundNode;
    return [(FIDSNode *)&v11 nodeIs:a3 error:a4];
  }

  return v9;
}

- (BOOL)markAsUsed:(id *)a3
{
  v5 = [(FICompoundNode *)self subjectNode];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 markAsUsed:a3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FICompoundNode;
    return [(FIDSNode *)&v9 markAsUsed:a3];
  }

  return v7;
}

- (id)longDescription
{
  v19 = [(FICompoundNode *)self subjectNode];
  v18 = [(FICompoundNode *)self nodes];
  if (algorithm_extras::contains<NSSet<FINode *> * {__strong},FINode * {__strong}>(&v18, &v19))
  {
    [v19 shortDescription];
  }

  else
  {
    [v19 longDescription];
  }
  v3 = ;
  v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "\n\t", 2, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v21 = v4;
  v16.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v16, v4);
  v5 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v5, v18);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v20, -1, v18);
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  while (v21 != v20[0] || v26 != v20[16])
  {
    v6 = *(v22[1] + 8 * v25);
    v7 = [v6 longDescription];
    v27.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v27, v7);

    if (CFStringGetLength(theString) && CFStringGetLength(v27.fString.fRef))
    {
      TString::Append(&theString, &v16);
    }

    TString::Append(&theString, &v27);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v27.fString.fRef);
    v8 = v25;
    if (v25 >= v24 - 1)
    {
      v9 = [(TString *)v21 countByEnumeratingWithState:v22 objects:v23 count:4];
      v8 = -1;
      v24 = v9;
      v25 = -1;
    }

    if (v23[4] != *v22[2])
    {
      objc_enumerationMutation(v21);
      v8 = v25;
    }

    v25 = v8 + 1;
    ++v26;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
  v10 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = FICompoundNode;
  v11 = [(FINode *)&v15 longDescription];
  v12 = [v18 count];
  v13 = [v10 stringWithFormat:@"<%@ (%@, %ld sub-nodes):\n\t%@>", v11, v3, v12, theString];

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  return v13;
}

- (void)dispatchEvent:(id)a3 forObserver:(id)a4
{
  v6 = a4;
  NodeEventFromNodeEventRef(a3, &v27);
  v25 = self;
  v26 = v27;
  v7 = v25;
  TNodeEventPtr::TNodeEventPtr(&location, 0);
  v8 = *TNodeEventPtr::operator->(&v27);
  if (v8 > 5)
  {
    if (v8 > 8)
    {
      if (v8 == 9)
      {
        v9 = v7;
        objc_sync_enter(v9);
        if (v9[16].super.isa)
        {
          isa = v9[18].super.isa;
          LOBYTE(v9[18].super.isa) = 1;
          if ((isa & 1) == 0)
          {
            [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
          }
        }
      }

      else
      {
        if (v8 != 20)
        {
          goto LABEL_29;
        }

        v9 = v7;
        objc_sync_enter(v9);
        if (!v9[16].super.isa)
        {
          [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
        }
      }

      goto LABEL_32;
    }

    if (v8 != 6)
    {
      if (v8 != 8)
      {
        goto LABEL_29;
      }

      v9 = v7;
      objc_sync_enter(v9);
      if (v9[16].super.isa)
      {
        v16 = *(TNodeEventPtr::operator->(&v27) + 8);
        std::__hash_table<FINode * {__strong},std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,std::allocator<FINode * {__strong}>>::__erase_unique<FINode * {__strong}>(&v9[13].super.isa, &v16);

        if (!v9[16].super.isa)
        {
          [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
        }
      }

      goto LABEL_32;
    }

LABEL_14:
    v9 = v7;
    objc_sync_enter(v9);
    if (!v9[16].super.isa)
    {
      [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
    }

    goto LABEL_32;
  }

  if ((v8 - 3) < 2)
  {
    goto LABEL_14;
  }

  if (v8 != 1)
  {
    if (v8 == 2)
    {
      v9 = v7;
      objc_sync_enter(v9);
      [(FINode *)v9 subjectNode];
      if (objc_claimAutoreleasedReturnValue())
      {
        [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
      }

      goto LABEL_32;
    }

LABEL_29:
    [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
  }

  v9 = v7;
  objc_sync_enter(v9);
  v23 = *(TNodeEventPtr::operator->(&v27) + 8);
  v11 = [(FINode *)v9 nodes];
  v12 = MutableCopyAs<NSMutableSet<FINode *>,NSSet<FINode *>>(v11);

  [v12 removeObject:v23];
  objc_storeStrong(&v9[20].super.isa, v12);
  v13 = [(FINode *)v9 subjectNode];

  if (v13 == v23)
  {
    [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&v25);
  }

  if (v9[16].super.isa)
  {
    std::__hash_table<FINode * {__strong},std::hash<FINode * {__strong}>,std::equal_to<FINode * {__strong}>,std::allocator<FINode * {__strong}>>::__erase_unique<FINode * {__strong}>(&v9[13].super.isa, &v23);
    if (!v9[16].super.isa)
    {
      v14 = TNodeFromFINode(v9);
      TNodePtr::TNodePtr(&v21, v14);
      obj.fData.__impl_.__index = 0;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&obj);
      obj.fData.__impl_.__index = 4;
      obj.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 0;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      TNodeEvent::CreateNodeEvent(8, &v21.fFINode, 0, &obj, &v18, &v17, &v22);
      objc_storeStrong(&location, v22);
      TNodeEventPtr::~TNodeEventPtr(&v22);
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v17);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      TPropertyValue::~TPropertyValue(&obj);
    }
  }

LABEL_32:
  objc_sync_exit(v9);

  if (TNodeEventPtr::operator->(&location))
  {
    v15.receiver = v7;
    v15.super_class = FICompoundNode;
    [(FIDSNode *)&v15 dispatchEvent:location forObserver:v6];
  }

  TNodeEventPtr::~TNodeEventPtr(&location);

  TNodeEventPtr::~TNodeEventPtr(&v26);
  TNodeEventPtr::~TNodeEventPtr(&v27);
}

- (void)dispatchEvent:forObserver:
{
  v1 = a1 + 1;
  v2 = TNodeFromFINode(*a1);
  v3 = *(TNodeEventPtr::operator->(v1) + 64);
  v8 = v3;
  if (v3)
  {
    TDSNotifier::AddPtrReference(v3);
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  v9 = v4;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  TNodePtr::TNodePtr(&v7, v2);
  TNodePtr::TNodePtr(&v6, v2);
  TDSNotifier::Make();
}

@end