@interface FILocalAppContainerNode
- (FILocalAppContainerNode)initWithAppContainerInfo:(const void *)a3;
- (FILocalAppContainerNode)initWithAppContainerRoot:(id)a3 documentsNode:(id)a4 appIdentifier:(id)a5;
- (NSString)description;
- (id)fileParent;
- (id)parent;
- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6;
- (void)dealloc;
- (void)dispatchEvent:(id)a3 forObserver:(id)a4;
@end

@implementation FILocalAppContainerNode

- (FILocalAppContainerNode)initWithAppContainerRoot:(id)a3 documentsNode:(id)a4 appIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v19.receiver = self;
    v19.super_class = FILocalAppContainerNode;
    v13 = [(FIProxyNode *)&v19 initWithSubject:v9];
    self = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_appIdentifier, a5);
      v14 = static_objc_cast<NSString,objc_object * {__strong}>(v8);
      containerRootNode = self->_containerRootNode;
      self->_containerRootNode = v14;

      if (!self->_containerRootNode)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v16 = +[FIPresentationNodeMap shared];
      [v16 registerPresentationNode:self forNode:self->_containerRootNode];

      v17 = +[FIPresentationNodeMap shared];
      [v17 registerPresentationNode:self forNode:v9];
    }

    self = self;
    v12 = self;
  }

LABEL_9:

  return v12;
}

- (void)dealloc
{
  if (self->_shouldStopAccessingSecurityScopedURL)
  {
    v3 = [(FPAppMetadata *)self->_metaData documentsURL];
    [v3 stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = FILocalAppContainerNode;
  [(FICustomNode *)&v4 dealloc];
}

- (FILocalAppContainerNode)initWithAppContainerInfo:(const void *)a3
{
  v4 = [(FILocalAppContainerNode *)self initWithAppContainerRoot:*a3 documentsNode:*(a3 + 1) appIdentifier:*(a3 + 2)];
  if ([(FIDSNode *)v4 asTNode])
  {
    objc_storeStrong(&v4->_metaData, *(a3 + 4));
    v5 = [(FPAppMetadata *)v4->_metaData documentsURL];
    v4->_shouldStopAccessingSecurityScopedURL = [v5 startAccessingSecurityScopedResource];

    v6 = [(FPAppMetadata *)v4->_metaData displayName];
    v11.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v11, v6);

    v10 = 11;
    v8 = 0;
    v9 = &v11;
    TNode::SetProperty([(FIDSNode *)v4 asTNode], 1886282093, &v9, &v8, 0, 0);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
  }

  return v4;
}

- (id)propertyAsString:(unsigned int)a3 async:(BOOL)a4 options:(unsigned int)a5 error:(id *)a6
{
  if (a3 == 1886282093 || a3 == 1684955501)
  {
    v7 = [(FPAppMetadata *)self->_metaData displayName];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FILocalAppContainerNode;
    v7 = [FIProxyNode propertyAsString:sel_propertyAsString_async_options_error_ async:? options:? error:?];
  }

  return v7;
}

- (void)dispatchEvent:(id)a3 forObserver:(id)a4
{
  v6 = a4;
  NodeEventFromNodeEventRef(a3, &v14);
  obj = self;
  v13 = v14;
  v7 = *TNodeEventPtr::operator->(&v14);
  v8 = TNodeFromFINode(&obj->super.super.super.super);
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

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FINode *)self displayName];
  v6 = [(FILocalAppContainerNode *)self documentsNode];
  v7 = [(FILocalAppContainerNode *)self appIdentifier];
  v8 = [v3 stringWithFormat:@"%@<%@>(proxyFor=%@, containerID=%@)", v4, v5, v6, v7];

  return v8;
}

@end