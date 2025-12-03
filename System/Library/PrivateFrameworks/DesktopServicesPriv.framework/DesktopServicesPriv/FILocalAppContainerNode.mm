@interface FILocalAppContainerNode
- (FILocalAppContainerNode)initWithAppContainerInfo:(const void *)info;
- (FILocalAppContainerNode)initWithAppContainerRoot:(id)root documentsNode:(id)node appIdentifier:(id)identifier;
- (NSString)description;
- (id)fileParent;
- (id)parent;
- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (void)dealloc;
- (void)dispatchEvent:(id)event forObserver:(id)observer;
@end

@implementation FILocalAppContainerNode

- (FILocalAppContainerNode)initWithAppContainerRoot:(id)root documentsNode:(id)node appIdentifier:(id)identifier
{
  rootCopy = root;
  nodeCopy = node;
  identifierCopy = identifier;
  v11 = identifierCopy;
  selfCopy = 0;
  if (rootCopy && nodeCopy && identifierCopy)
  {
    v19.receiver = self;
    v19.super_class = FILocalAppContainerNode;
    v13 = [(FIProxyNode *)&v19 initWithSubject:nodeCopy];
    self = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_appIdentifier, identifier);
      v14 = static_objc_cast<NSString,objc_object * {__strong}>(rootCopy);
      containerRootNode = self->_containerRootNode;
      self->_containerRootNode = v14;

      if (!self->_containerRootNode)
      {
        selfCopy = 0;
        goto LABEL_9;
      }

      v16 = +[FIPresentationNodeMap shared];
      [v16 registerPresentationNode:self forNode:self->_containerRootNode];

      v17 = +[FIPresentationNodeMap shared];
      [v17 registerPresentationNode:self forNode:nodeCopy];
    }

    self = self;
    selfCopy = self;
  }

LABEL_9:

  return selfCopy;
}

- (void)dealloc
{
  if (self->_shouldStopAccessingSecurityScopedURL)
  {
    documentsURL = [(FPAppMetadata *)self->_metaData documentsURL];
    [documentsURL stopAccessingSecurityScopedResource];
  }

  v4.receiver = self;
  v4.super_class = FILocalAppContainerNode;
  [(FICustomNode *)&v4 dealloc];
}

- (FILocalAppContainerNode)initWithAppContainerInfo:(const void *)info
{
  v4 = [(FILocalAppContainerNode *)self initWithAppContainerRoot:*info documentsNode:*(info + 1) appIdentifier:*(info + 2)];
  if ([(FIDSNode *)v4 asTNode])
  {
    objc_storeStrong(&v4->_metaData, *(info + 4));
    documentsURL = [(FPAppMetadata *)v4->_metaData documentsURL];
    v4->_shouldStopAccessingSecurityScopedURL = [documentsURL startAccessingSecurityScopedResource];

    displayName = [(FPAppMetadata *)v4->_metaData displayName];
    v11.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v11, displayName);

    v10 = 11;
    v8 = 0;
    v9 = &v11;
    TNode::SetProperty([(FIDSNode *)v4 asTNode], 1886282093, &v9, &v8, 0, 0);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
  }

  return v4;
}

- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  if (string == 1886282093 || string == 1684955501)
  {
    displayName = [(FPAppMetadata *)self->_metaData displayName];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = FILocalAppContainerNode;
    displayName = [FIProxyNode propertyAsString:sel_propertyAsString_async_options_error_ async:? options:? error:?];
  }

  return displayName;
}

- (void)dispatchEvent:(id)event forObserver:(id)observer
{
  observerCopy = observer;
  NodeEventFromNodeEventRef(event, &v14);
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
  storageNode = [sLocalStorageNode storageNode];
  objc_sync_exit(v2);

  return storageNode;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  displayName = [(FINode *)self displayName];
  documentsNode = [(FILocalAppContainerNode *)self documentsNode];
  appIdentifier = [(FILocalAppContainerNode *)self appIdentifier];
  v8 = [v3 stringWithFormat:@"%@<%@>(proxyFor=%@, containerID=%@)", v4, displayName, documentsNode, appIdentifier];

  return v8;
}

@end