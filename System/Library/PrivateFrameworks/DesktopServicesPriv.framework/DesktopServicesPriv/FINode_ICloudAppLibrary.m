@interface FINode_ICloudAppLibrary
- (BOOL)isValid;
- (FINode)documentsFolder;
- (NSString)appIdentifier;
- (id).cxx_construct;
- (id)nodeToMoveOrDelete;
- (id)nodesToObserve;
- (id)parent;
- (id)updateDocumentsFolder;
- (void)dealloc;
- (void)dispatchEvent:(id)a3 forObserver:(id)a4;
@end

@implementation FINode_ICloudAppLibrary

- (void)dealloc
{
  v3 = +[FIPresentationNodeMap shared];
  [v3 unregisterAllForPresentationNode:self];

  v4.receiver = self;
  v4.super_class = FINode_ICloudAppLibrary;
  [(FINode_ICloudAppLibrary *)&v4 dealloc];
}

- (BOOL)isValid
{
  v8.receiver = self;
  v8.super_class = FINode_ICloudAppLibrary;
  if (![(FIDSNode *)&v8 isValid])
  {
    return 0;
  }

  v3 = [(FIDSNode *)self asTNode];
  v4 = TNode::ParentLock(v3);
  os_unfair_lock_lock(v4);
  TNodePtr::TNodePtr(&v7, *(v3 + 6));
  os_unfair_lock_unlock(v4);
  v5 = TNodeFromFINode(v7.fFINode) != 0;

  return v5;
}

- (NSString)appIdentifier
{
  if (!CFStringGetLength(self->_appIdentifier.fString.fRef))
  {
    v3 = [(FIDSNode *)self fpItem];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 fp_appContainerBundleIdentifier];
      if (self->_appIdentifier.fString.fRef != v5)
      {
        TString::SetStringRefAsImmutable(&self->_appIdentifier, v5);
      }
    }
  }

  v6 = self->_appIdentifier.fString.fRef;

  return v6;
}

- (id)updateDocumentsFolder
{
  if ([(FINode_ICloudAppLibrary *)self isValid])
  {
    v3 = [(FIDSNode *)self fileURL];
    v4 = [FINode fiNodeFromURL:v3];

    v5 = self;
    objc_sync_enter(v5);
    objc_storeWeak(&v5->_documentsFolder, v4);
    objc_sync_exit(v5);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FINode)documentsFolder
{
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_documentsFolder);
  objc_sync_exit(v2);

  if (!WeakRetained || ([WeakRetained isValid] & 1) == 0)
  {
    v4 = [(FINode_ICloudAppLibrary *)v2 updateDocumentsFolder];

    WeakRetained = v4;
  }

  return WeakRetained;
}

- (id)parent
{
  v2 = [(FINode_ICloudAppLibrary *)self documentsFolder];
  v3 = [v2 fileParent];
  v4 = [v3 parent];

  return v4;
}

- (id)nodeToMoveOrDelete
{
  v2 = [(FINode_ICloudAppLibrary *)self documentsFolder];
  v3 = [v2 fileParent];

  return v3;
}

- (id)nodesToObserve
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(FINode_ICloudAppLibrary *)self documentsFolder];
  if (!v3)
  {
    v4 = LogObj(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [(FINode *)self displayName];
      v10.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v10, v5);

      v6 = SanitizedStr(&v10);
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_ERROR, "Documents folder is nil for '%{public}@' returning empty nodes to observe", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
    }
  }

  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0, v10.fString.fRef}];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)dispatchEvent:(id)a3 forObserver:(id)a4
{
  v6 = a4;
  NodeEventFromNodeEventRef(a3, &v14);
  obj = self;
  v13 = v14;
  v7 = *TNodeEventPtr::operator->(&v14);
  v8 = TNodeFromFINode(&obj->super.super);
  v9 = *(TNodeEventPtr::operator->(&v13) + 64);
  v17 = v9;
  if (v9)
  {
    TDSNotifier::AddPtrReference(v9);
  }

  v10 = *v9;
  v11 = *(v9 + 1);
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  TNodePtr::TNodePtr(&v16, v8);
  TNodePtr::TNodePtr(&v15, v8);
  TDSNotifier::Make();
}

- (id).cxx_construct
{
  self->_appIdentifier.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  return self;
}

@end