@interface FILocalAppContainerCollection
+ (id)appContainerForDocumentsNode:(id)a3;
+ (id)sharedInstanceCreateIfNeeded:(BOOL)a3;
- (BOOL)isPopulated;
- (BOOL)populate;
- (FILocalAppContainerCollection)init;
- (id).cxx_construct;
- (id)_appContainerForDocumentsNode:(id)a3;
- (id)appContainerForDocumentsNode:(id)a3;
- (id)fileParent;
- (id)nodesForSizing;
- (id)parent;
- (id)populate;
- (void)dealloc;
@end

@implementation FILocalAppContainerCollection

- (void)dealloc
{
  [*(self + 15) setDelegate:0];
  v3.receiver = self;
  v3.super_class = FILocalAppContainerCollection;
  [(FICustomNode *)&v3 dealloc];
}

- (FILocalAppContainerCollection)init
{
  v10.receiver = self;
  v10.super_class = FILocalAppContainerCollection;
  v2 = [(FICustomNode *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(v2 + 16);
    *(v2 + 16) = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(v2 + 17);
    *(v2 + 17) = v5;

    TNode::SetInitialPopulationDeferred([(FIDSNode *)v2 asTNode]);
    v7 = [objc_opt_class() sharedRegistry];
    v8 = *(v2 + 15);
    *(v2 + 15) = v7;
  }

  return v2;
}

- (id)parent
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = sLocalStorageNode;
  objc_sync_exit(v2);

  return v3;
}

- (id)fileParent
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = [sLocalStorageNode storageNode];
  objc_sync_exit(v2);

  return v3;
}

+ (id)sharedInstanceCreateIfNeeded:(BOOL)a3
{
  v3 = a3;
  std::mutex::lock(&+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sLock);
  v4 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
  if (v3 && !+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton)
  {
    v5 = objc_alloc_init(FILocalAppContainerCollection);
    v6 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
    +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton = v5;

    v4 = +[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sSingleton;
  }

  v7 = v4;
  std::mutex::unlock(&+[FILocalAppContainerCollection sharedInstanceCreateIfNeeded:]::sLock);

  return v7;
}

+ (id)appContainerForDocumentsNode:(id)a3
{
  v4 = a3;
  v5 = [a1 sharedInstanceCreateIfNeeded:0];
  v6 = [v5 appContainerForDocumentsNode:v4];

  return v6;
}

- (id)appContainerForDocumentsNode:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 152));
  v5 = [(FILocalAppContainerCollection *)self _appContainerForDocumentsNode:v4];
  std::mutex::unlock((self + 152));

  return v5;
}

- (id)_appContainerForDocumentsNode:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = 0;
    goto LABEL_27;
  }

  v7 = atomic_load(self + 105);
  if ((v7 & 1) == 0)
  {
    v8 = atomic_load(self + 104);
    if (v8)
    {
      do
      {
        v9 = LogObj(7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_DEBUG, "AppContainerCollection waiting for population to complete", buf, 2u);
        }

        v10 = atomic_load(self + 104);
      }

      while ((v10 & 1) != 0);
    }
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = *(self + 16);
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = *v29;
LABEL_10:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      v16 = [v15 documentsNode];
      v17 = v16 == v4;

      if (v17)
      {
        goto LABEL_25;
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = *(self + 17);
  v6 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v6)
  {
    v18 = *v25;
LABEL_18:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v24 + 1) + 8 * v19);
      v20 = [v15 documentsNode];
      v21 = v20 == v4;

      if (v21)
      {
        break;
      }

      if (v6 == ++v19)
      {
        v6 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v6 = v15;
  }

LABEL_26:

LABEL_27:
  v22 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)populate
{
  v75 = *MEMORY[0x1E69E9840];
  v43 = atomic_exchange(self + 104, 1u);
  if ((v43 & 1) == 0)
  {
    v3 = LogObj(7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_INFO, "AppCollection sync started", buf, 2u);
    }

    memset(v62, 0, sizeof(v62));
    v4 = atomic_load(self + 105);
    v5 = [(FINode *)self nodeRef];
    v7 = TNode::NodeFromNodeRef(v5, v6);
    TNodePtr::TNodePtr(&v61, v7);
    v42 = v4;
    v8 = self;
    v55 = v8;
    v56 = v61.fFINode;
    LOBYTE(v57) = (v4 & 1) == 0;
    *(&v57 + 1) = v62;
    v58 = v8;
    TNodePtr::TNodePtr(&v59, &v56);
    v60 = v57;

    if ((v4 & 1) == 0)
    {
      buf[0] = 0;
      v9 = TNodeFromFINode(v61.fFINode);
      TNode::HandleSyncStarted(v9, 0x800000, buf);
    }

    TNode::StPopulating::StPopulating(v54, &v61, 0);
    v52 = 0;
    v53 = 0;
    v10 = [*(v8 + 15) listOfMonitoredApps];
    TContainerFetcher::FetchContainersAndDocumentsFolders(&v52, v10, &v50);

    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    obj = +[FINode protectedAppIdentifiers];
    v11 = +[FINode currentHostAppIdentifier];
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&theString, v11);

    std::mutex::lock((v8 + 152));
    objc_storeStrong(v8 + 18, obj);
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(v8 + 16)];
    [v12 unionSet:*(v8 + 17)];
    v14 = v50;
    v13 = v51;
    while (v14 != v13)
    {
      v15 = *(v14 + 8);
      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(buf, v12);
      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::IDContainerIteratorAdaptor(&v64, -1, v12);
      while (*buf != v64.fFINode || v74 != v65)
      {
        v16 = *(v69 + 8 * v73);
        v17 = [v16 documentsNode];
        v18 = v17 == v15;

        if (v18)
        {
          break;
        }

        v19 = v73;
        if (v73 >= v72 - 1)
        {
          v20 = [*buf countByEnumeratingWithState:&buf[8] objects:v71 count:4];
          v19 = -1;
          v72 = v20;
          v73 = -1;
        }

        if (v71[4] != *v70)
        {
          objc_enumerationMutation(*buf);
          v19 = v73;
        }

        v73 = v19 + 1;
        ++v74;
      }

      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator<NSMutableSet<FILocalAppContainerNode *>>::NSForwardIterator(v63, buf);

      IDContainerIteratorAdaptor<NSMutableSet<FILocalAppContainerNode *>>::IDContainerIteratorAdaptor(buf, -1, v12);
      if (v63[0] == *buf)
      {
        v21 = v63[16] == v74;

        if (v21)
        {

          v22 = 0;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v22 = *(v63[2] + v63[15]);

LABEL_21:
      if (*(v14 + 40) == 1)
      {
        v23 = *(v14 + 16);
        v24 = [obj containsObject:v23];

        if (v24)
        {
          v25 = 0;
LABEL_26:
          *(v14 + 40) = v25;
        }
      }

      else if (CFStringGetLength(theString))
      {
        v25 = CFEqual(theString, *(v14 + 16)) != 0;
        goto LABEL_26;
      }

      if (v22)
      {
        v26 = [*(v8 + 17) containsObject:v22];
        v27 = v26;
        if (*(v14 + 40) == 1)
        {
          [v12 removeObject:v22];
          [v44 addObject:v22];
          if (v27)
          {
            [*(v8 + 17) removeObject:v22];
            TNodePtr::TNodePtr(&v64, [v22 asTNode]);
            TNodeEvent::CreateNodeEvent(3, &v64.fFINode, 0, buf);
            TNodeEventPtrs::AddEvent(v62, &v61, buf);
            TNodeEventPtr::~TNodeEventPtr(buf);
          }
        }

        else if (v26)
        {
          [v12 removeObject:v22];
        }

        else
        {
          [*(v8 + 17) addObject:v22];
        }
      }

      else
      {
        v28 = [[FILocalAppContainerNode alloc] initWithAppContainerInfo:v14];
        v29 = v28;
        if (v28)
        {
          if (*(v14 + 40) == 1)
          {
            v30 = [(FINode *)v28 nodeRef];
            v32 = TNode::NodeFromNodeRef(v30, v31);
            TNodePtr::TNodePtr(buf, v32);
            [v44 addObject:v29];
            TNodeEvent::CreateNodeEvent(3, buf, 0, &v64);
            TNodeEventPtrs::AddEvent(v62, &v61, &v64.fFINode);
            TNodeEventPtr::~TNodeEventPtr(&v64.fFINode);
          }

          else
          {
            [*(v8 + 17) addObject:v28];
          }
        }
      }

      v14 += 48;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = v12;
    v34 = [v33 countByEnumeratingWithState:&v46 objects:v67 count:16];
    if (v34)
    {
      v35 = *v47;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v46 + 1) + 8 * i);
          TNodePtr::TNodePtr(&v64, [v37 asTNode]);
          TNodeEvent::CreateNodeEvent(4, &v64.fFINode, 0, buf);
          TNodeEventPtrs::AddEvent(v62, &v61, buf);
          TNodeEventPtr::~TNodeEventPtr(buf);

          v38 = LogObj(7);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = [v37 displayName];
            *buf = 138412290;
            *&buf[4] = v39;
            _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_DEBUG, "Local storage node removed %@", buf, 0xCu);
          }
        }

        v34 = [v33 countByEnumeratingWithState:&v46 objects:v67 count:16];
      }

      while (v34);
    }

    objc_storeStrong(v8 + 16, v44);
    if (v42)
    {
      TNodeEvent::CreateNodeEvent(20, &v61.fFINode, 0, buf);
      TNodeEventPtrs::AddEvent(v62, &v61, buf);
      TNodeEventPtr::~TNodeEventPtr(buf);
    }

    std::mutex::unlock((v8 + 152));
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);

    *buf = &v50;
    std::vector<TAppContainerInfo>::__destroy_vector::operator()[abi:ne200100](buf);

    TNode::StPopulating::~StPopulating(v54);
    StDefer<[FILocalAppContainerCollection populate]::$_1>::~StDefer(&v58);

    *buf = v62;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v40 = *MEMORY[0x1E69E9840];
  return (v43 & 1) == 0;
}

- (id)populate
{
  v2 = LogObj(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E5674000, v2, OS_LOG_TYPE_INFO, "AppCollection sync finished", v5, 2u);
  }

  atomic_store(1u, *a1 + 105);
  atomic_store(0, *a1 + 104);
  if (*(a1 + 16) == 1)
  {
    [*(*a1 + 15) setDelegate:?];
    v3 = TNodeFromFINode(a1[1]);
    TNode::HandleSyncCompleted(v3, 0x800000);
  }

  else
  {
    TNodeEventPtrs::SendNotifications(a1[3]);
  }

  return a1;
}

- (BOOL)isPopulated
{
  v2 = [(FIDSNode *)self asTNode];

  return TNode::IsPopulated(v2);
}

- (id)nodesForSizing
{
  std::mutex::lock((self + 152));
  v3 = Copy<NSMutableArray<FILocalAppContainerNode *>>(*(self + 16));
  std::mutex::unlock((self + 152));

  return v3;
}

- (id).cxx_construct
{
  *(self + 104) = 0;
  *(self + 105) = 0;
  *(self + 14) = 0;
  *(self + 19) = 850045863;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 26) = 0;
  return self;
}

@end