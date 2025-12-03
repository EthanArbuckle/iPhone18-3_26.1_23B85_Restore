@interface PBUIDynamicProviderWrapper
- (PBUIDynamicProviderWrapper)initWithRootObject:(id)object portalProvider:(id)provider snapshotProvider:(id)snapshotProvider;
- (id)_portalProvider;
- (id)_snapshotProvider;
- (id)portalSourceForReplicaView:(id)view;
- (id)registerPortalSourceObserver:(id)observer;
- (id)registerSnapshotSourceObserver:(id)observer;
- (id)snapshotSourceForObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)setRootObject:(id)object;
@end

@implementation PBUIDynamicProviderWrapper

- (id)_snapshotProvider
{
  if (self->_rootObject)
  {
    makeSnapshotProvider = self->_makeSnapshotProvider;
    if (makeSnapshotProvider)
    {
      makeSnapshotProvider = makeSnapshotProvider[2]();
      v2 = vars8;
    }
  }

  else
  {
    makeSnapshotProvider = 0;
  }

  return makeSnapshotProvider;
}

- (PBUIDynamicProviderWrapper)initWithRootObject:(id)object portalProvider:(id)provider snapshotProvider:(id)snapshotProvider
{
  objectCopy = object;
  providerCopy = provider;
  snapshotProviderCopy = snapshotProvider;
  v23.receiver = self;
  v23.super_class = PBUIDynamicProviderWrapper;
  v12 = [(PBUIDynamicProviderWrapper *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootObject, object);
    v14 = MEMORY[0x223D62EE0](providerCopy);
    makePortalProvider = v13->_makePortalProvider;
    v13->_makePortalProvider = v14;

    v16 = MEMORY[0x223D62EE0](snapshotProviderCopy);
    makeSnapshotProvider = v13->_makeSnapshotProvider;
    v13->_makeSnapshotProvider = v16;

    v18 = [[PBUIReplicaSourceObserverBox alloc] initWithIdentifier:@"DynamicPortalBox"];
    portalObservers = v13->_portalObservers;
    v13->_portalObservers = v18;

    v20 = [[PBUIReplicaSourceObserverBox alloc] initWithIdentifier:@"DynamicSnapshotBox"];
    snapshotObservers = v13->_snapshotObservers;
    v13->_snapshotObservers = v20;
  }

  return v13;
}

- (void)dealloc
{
  [(PBUIDynamicProviderWrapper *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBUIDynamicProviderWrapper;
  [(PBUIDynamicProviderWrapper *)&v3 dealloc];
}

- (void)setRootObject:(id)object
{
  objectCopy = object;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rootObject, object);
    portalObserver = self->_portalObserver;
    if (portalObserver)
    {
      [(BSInvalidatable *)portalObserver invalidate];
      _portalProvider = [(PBUIDynamicProviderWrapper *)self _portalProvider];
      v7 = [_portalProvider registerPortalSourceObserver:self->_portalObservers];
      v8 = self->_portalObserver;
      self->_portalObserver = v7;

      [(PBUIReplicaSourceObserverBox *)self->_portalObservers setNeedsSourceUpdate];
    }

    snapshotObserver = self->_snapshotObserver;
    if (snapshotObserver)
    {
      [(BSInvalidatable *)snapshotObserver invalidate];
      _snapshotProvider = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
      v11 = [_snapshotProvider registerSnapshotSourceObserver:self->_snapshotObservers];
      v12 = self->_snapshotObserver;
      self->_snapshotObserver = v11;

      [(PBUIReplicaSourceObserverBox *)self->_snapshotObservers setNeedsSourceUpdate];
    }
  }
}

- (id)_portalProvider
{
  if (self->_rootObject)
  {
    makePortalProvider = self->_makePortalProvider;
    if (makePortalProvider)
    {
      makePortalProvider = makePortalProvider[2]();
      v2 = vars8;
    }
  }

  else
  {
    makePortalProvider = 0;
  }

  return makePortalProvider;
}

- (id)registerSnapshotSourceObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_snapshotObserver)
  {
    _snapshotProvider = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
    v6 = [_snapshotProvider registerSnapshotSourceObserver:self->_snapshotObservers];
    snapshotObserver = self->_snapshotObserver;
    self->_snapshotObserver = v6;
  }

  v8 = [(PBUIReplicaSourceObserverBox *)self->_snapshotObservers registerSourceObserver:observerCopy];

  return v8;
}

- (id)registerPortalSourceObserver:(id)observer
{
  observerCopy = observer;
  if (!self->_portalObserver)
  {
    _portalProvider = [(PBUIDynamicProviderWrapper *)self _portalProvider];
    v6 = [_portalProvider registerPortalSourceObserver:self->_portalObservers];
    portalObserver = self->_portalObserver;
    self->_portalObserver = v6;
  }

  v8 = [(PBUIReplicaSourceObserverBox *)self->_portalObservers registerSourceObserver:observerCopy];

  return v8;
}

- (id)portalSourceForReplicaView:(id)view
{
  viewCopy = view;
  _portalProvider = [(PBUIDynamicProviderWrapper *)self _portalProvider];
  v6 = [_portalProvider portalSourceForReplicaView:viewCopy];

  return v6;
}

- (id)snapshotSourceForObserver:(id)observer
{
  observerCopy = observer;
  _snapshotProvider = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
  v6 = [_snapshotProvider snapshotSourceForObserver:observerCopy];

  return v6;
}

- (void)invalidate
{
  [(BSInvalidatable *)self->_portalObserver invalidate];
  [(BSInvalidatable *)self->_snapshotObserver invalidate];
  [(PBUIReplicaSourceObserverBox *)self->_portalObservers invalidate];
  snapshotObservers = self->_snapshotObservers;

  [(PBUIReplicaSourceObserverBox *)snapshotObservers invalidate];
}

@end