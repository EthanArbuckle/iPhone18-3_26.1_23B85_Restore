@interface FICompoundNode
- (BOOL)isPopulated;
- (BOOL)isValid;
- (BOOL)markAsUsed:(id *)used;
- (BOOL)requiresFPOperations;
- (FICompoundNode)initWithFINodes:(id)nodes;
- (FICompoundNode)initWithNodes:(id)nodes;
- (FICompoundNode)initWithNodes:(id)nodes subject:(id)subject;
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
- (unint64_t)nodeIs:(unint64_t)is error:(id *)error;
- (void)dispatchEvent:(id)event forObserver:(id)observer;
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
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    fileURL = [subjectNode fileURL];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    fileURL = [(FIDSNode *)&v7 fileURL];
  }

  return fileURL;
}

- (id)fpDomain
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    fpDomain = [subjectNode fpDomain];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    fpDomain = [(FIDSNode *)&v7 fpDomain];
  }

  return fpDomain;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = FICompoundNode;
  shortDescription = [(FIDSNode *)&v10 shortDescription];
  subjectNode = [(FICompoundNode *)self subjectNode];
  shortDescription2 = [subjectNode shortDescription];
  nodes = [(FICompoundNode *)self nodes];
  v8 = [v3 stringWithFormat:@"<%@ (%@, %ld sub-nodes)>", shortDescription, shortDescription2, objc_msgSend(nodes, "count")];

  return v8;
}

- (BOOL)isValid
{
  nodesWithSubject = [(FICompoundNode *)self nodesWithSubject];
  IDContainerIteratorAdaptor<NSArray<FINode *>>::NSForwardIterator<NSArray<FINode *>>::NSForwardIterator(v11, nodesWithSubject);
  IDContainerIteratorAdaptor<NSArray<FINode *>>::IDContainerIteratorAdaptor(v10, -1, nodesWithSubject);
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
    isValid = [v4 isValid];

    if ((isValid & 1) == 0)
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
  nodes = [(FICompoundNode *)self nodes];
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v5 = [nodes setByAddingObject:subjectNode];

    nodes = v5;
  }

  allObjects = [nodes allObjects];

  return allObjects;
}

- (FICompoundNode)initWithNodes:(id)nodes
{
  nodesCopy = nodes;
  v9.receiver = self;
  v9.super_class = FICompoundNode;
  v5 = [(FICustomNode *)&v9 init];
  v6 = Copy<NSMutableArray<FILocalAppContainerNode *>>(nodesCopy);
  nodes = v5->_nodes;
  v5->_nodes = v6;

  return v5;
}

- (FICompoundNode)initWithNodes:(id)nodes subject:(id)subject
{
  subjectCopy = subject;
  v7 = [(FICompoundNode *)self initWithNodes:nodes];
  subjectNode = v7->_subjectNode;
  v7->_subjectNode = subjectCopy;

  return v7;
}

- (FICompoundNode)initWithFINodes:(id)nodes
{
  v4 = [MEMORY[0x1E695DFD8] setWithArray:nodes];
  v5 = [(FICompoundNode *)self initWithNodes:v4];

  return v5;
}

- (id)fpItem
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    fpItem = [subjectNode fpItem];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    fpItem = [(FIDSNode *)&v7 fpItem];
  }

  return fpItem;
}

- (id)fiDomain
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    fiDomain = [subjectNode fiDomain];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    fiDomain = [(FIDSNode *)&v7 fiDomain];
  }

  return fiDomain;
}

- (BOOL)requiresFPOperations
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    requiresFPOperations = [subjectNode requiresFPOperations];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    return [(FINode *)&v7 requiresFPOperations];
  }

  return requiresFPOperations;
}

- (id)enumeratorError
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  subjectNode = [(FICompoundNode *)selfCopy subjectNode];
  v4 = subjectNode;
  if (subjectNode)
  {
    enumeratorError = [subjectNode enumeratorError];
  }

  else
  {
    v17.receiver = selfCopy;
    v17.super_class = FICompoundNode;
    enumeratorError = [(FIDSNode *)&v17 enumeratorError];
  }

  enumeratorError2 = enumeratorError;

  if (!enumeratorError2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    nodes = [(FICompoundNode *)selfCopy nodes];
    v8 = [nodes countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = *v14;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(nodes);
        }

        enumeratorError2 = [*(*(&v13 + 1) + 8 * v10) enumeratorError];
        if (enumeratorError2)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [nodes countByEnumeratingWithState:&v13 objects:v18 count:16];
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
      enumeratorError2 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return enumeratorError2;
}

- (void)inlineProgressCancel
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  v4 = subjectNode;
  if (subjectNode)
  {
    [subjectNode inlineProgressCancel];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FICompoundNode;
    [(FIDSNode *)&v9 inlineProgressCancel];
  }

  nodes = [(FICompoundNode *)self nodes];
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(&obj, nodes);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v10, -1, nodes);
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
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    downloadProgress = [subjectNode downloadProgress];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    downloadProgress = [(FIDSNode *)&v7 downloadProgress];
  }

  return downloadProgress;
}

- (id)copyProgress
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    copyProgress = [subjectNode copyProgress];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    copyProgress = [(FIDSNode *)&v7 copyProgress];
  }

  return copyProgress;
}

- (BOOL)isPopulated
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    subjectNode2 = [(FICompoundNode *)self subjectNode];
    isPopulated = [subjectNode2 isPopulated];

    if (isPopulated)
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

  nodes = [(FICompoundNode *)self nodes];
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v16, nodes);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v15, -1, nodes);
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
    isPopulated2 = [v9 isPopulated];

    if ((isPopulated2 & 1) == 0)
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
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    fileParent = [subjectNode fileParent];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    fileParent = [(FIDSNode *)&v7 fileParent];
  }

  return fileParent;
}

- (id)parent
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v4 = subjectNode;
    parent = [subjectNode parent];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FICompoundNode;
    parent = [(FINode *)&v7 parent];
  }

  return parent;
}

- (id)source
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (!subjectNode)
  {
    v5.receiver = self;
    v5.super_class = FICompoundNode;
    subjectNode = [(FINode *)&v5 source];
  }

  return subjectNode;
}

- (unint64_t)nodeIs:(unint64_t)is error:(id *)error
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v8 = subjectNode;
    v9 = [subjectNode nodeIs:is error:error];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FICompoundNode;
    return [(FIDSNode *)&v11 nodeIs:is error:error];
  }

  return v9;
}

- (BOOL)markAsUsed:(id *)used
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  if (subjectNode)
  {
    v6 = subjectNode;
    v7 = [subjectNode markAsUsed:used];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FICompoundNode;
    return [(FIDSNode *)&v9 markAsUsed:used];
  }

  return v7;
}

- (id)longDescription
{
  subjectNode = [(FICompoundNode *)self subjectNode];
  nodes = [(FICompoundNode *)self nodes];
  if (algorithm_extras::contains<NSSet<FINode *> * {__strong},FINode * {__strong}>(&nodes, &subjectNode))
  {
    [subjectNode shortDescription];
  }

  else
  {
    [subjectNode longDescription];
  }
  v3 = ;
  v4 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "\n\t", 2, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v21 = v4;
  v16.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v16, v4);
  v5 = TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::NSForwardIterator<NSSet<FINode *>>::NSForwardIterator(v5, nodes);
  IDContainerIteratorAdaptor<NSSet<FINode *>>::IDContainerIteratorAdaptor(v20, -1, nodes);
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  while (v21 != v20[0] || v26 != v20[16])
  {
    v6 = *(v22[1] + 8 * v25);
    longDescription = [v6 longDescription];
    v27.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v27, longDescription);

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
  longDescription2 = [(FINode *)&v15 longDescription];
  v12 = [nodes count];
  theString = [v10 stringWithFormat:@"<%@ (%@, %ld sub-nodes):\n\t%@>", longDescription2, v3, v12, theString];

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

  return theString;
}

- (void)dispatchEvent:(id)event forObserver:(id)observer
{
  observerCopy = observer;
  NodeEventFromNodeEventRef(event, &v27);
  selfCopy = self;
  v26 = v27;
  v7 = selfCopy;
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
            [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
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
          [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
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
          [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
        }
      }

      goto LABEL_32;
    }

LABEL_14:
    v9 = v7;
    objc_sync_enter(v9);
    if (!v9[16].super.isa)
    {
      [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
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
        [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
      }

      goto LABEL_32;
    }

LABEL_29:
    [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
  }

  v9 = v7;
  objc_sync_enter(v9);
  v23 = *(TNodeEventPtr::operator->(&v27) + 8);
  nodes = [(FINode *)v9 nodes];
  v12 = MutableCopyAs<NSMutableSet<FINode *>,NSSet<FINode *>>(nodes);

  [v12 removeObject:v23];
  objc_storeStrong(&v9[20].super.isa, v12);
  subjectNode = [(FINode *)v9 subjectNode];

  if (subjectNode == v23)
  {
    [FICompoundNode dispatchEvent:forObserver:]::$_6::operator()(&selfCopy);
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
    [(FIDSNode *)&v15 dispatchEvent:location forObserver:observerCopy];
  }

  TNodeEventPtr::~TNodeEventPtr(&location);

  TNodeEventPtr::~TNodeEventPtr(&v26);
  TNodeEventPtr::~TNodeEventPtr(&v27);
}

- (void)dispatchEvent:forObserver:
{
  v1 = self + 1;
  v2 = TNodeFromFINode(*self);
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