@interface PBUIDynamicProviderWrapper
- (PBUIDynamicProviderWrapper)initWithRootObject:(id)a3 portalProvider:(id)a4 snapshotProvider:(id)a5;
- (id)_portalProvider;
- (id)_snapshotProvider;
- (id)portalSourceForReplicaView:(id)a3;
- (id)registerPortalSourceObserver:(id)a3;
- (id)registerSnapshotSourceObserver:(id)a3;
- (id)snapshotSourceForObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setRootObject:(id)a3;
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

- (PBUIDynamicProviderWrapper)initWithRootObject:(id)a3 portalProvider:(id)a4 snapshotProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = PBUIDynamicProviderWrapper;
  v12 = [(PBUIDynamicProviderWrapper *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootObject, a3);
    v14 = MEMORY[0x223D62EE0](v10);
    makePortalProvider = v13->_makePortalProvider;
    v13->_makePortalProvider = v14;

    v16 = MEMORY[0x223D62EE0](v11);
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

- (void)setRootObject:(id)a3
{
  v13 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rootObject, a3);
    portalObserver = self->_portalObserver;
    if (portalObserver)
    {
      [(BSInvalidatable *)portalObserver invalidate];
      v6 = [(PBUIDynamicProviderWrapper *)self _portalProvider];
      v7 = [v6 registerPortalSourceObserver:self->_portalObservers];
      v8 = self->_portalObserver;
      self->_portalObserver = v7;

      [(PBUIReplicaSourceObserverBox *)self->_portalObservers setNeedsSourceUpdate];
    }

    snapshotObserver = self->_snapshotObserver;
    if (snapshotObserver)
    {
      [(BSInvalidatable *)snapshotObserver invalidate];
      v10 = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
      v11 = [v10 registerSnapshotSourceObserver:self->_snapshotObservers];
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

- (id)registerSnapshotSourceObserver:(id)a3
{
  v4 = a3;
  if (!self->_snapshotObserver)
  {
    v5 = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
    v6 = [v5 registerSnapshotSourceObserver:self->_snapshotObservers];
    snapshotObserver = self->_snapshotObserver;
    self->_snapshotObserver = v6;
  }

  v8 = [(PBUIReplicaSourceObserverBox *)self->_snapshotObservers registerSourceObserver:v4];

  return v8;
}

- (id)registerPortalSourceObserver:(id)a3
{
  v4 = a3;
  if (!self->_portalObserver)
  {
    v5 = [(PBUIDynamicProviderWrapper *)self _portalProvider];
    v6 = [v5 registerPortalSourceObserver:self->_portalObservers];
    portalObserver = self->_portalObserver;
    self->_portalObserver = v6;
  }

  v8 = [(PBUIReplicaSourceObserverBox *)self->_portalObservers registerSourceObserver:v4];

  return v8;
}

- (id)portalSourceForReplicaView:(id)a3
{
  v4 = a3;
  v5 = [(PBUIDynamicProviderWrapper *)self _portalProvider];
  v6 = [v5 portalSourceForReplicaView:v4];

  return v6;
}

- (id)snapshotSourceForObserver:(id)a3
{
  v4 = a3;
  v5 = [(PBUIDynamicProviderWrapper *)self _snapshotProvider];
  v6 = [v5 snapshotSourceForObserver:v4];

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