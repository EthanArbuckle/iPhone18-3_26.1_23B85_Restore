@interface TabSnapshotCacheEntry
- (BOOL)isPendingUpdate;
- (TabSnapshotCacheEntry)initWithIdentifier:(id)a3 isGroup:(BOOL)a4;
- (TabSnapshotCacheEntryStateObserving)stateObserver;
- (id)debugDescription;
- (void)setState:(int64_t)a3;
- (void)setUpdatingState:(BOOL)a3;
@end

@implementation TabSnapshotCacheEntry

- (TabSnapshotCacheEntry)initWithIdentifier:(id)a3 isGroup:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v14.receiver = self;
  v14.super_class = TabSnapshotCacheEntry;
  v8 = [(TabSnapshotCacheEntry *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_group = v4;
    if (v4)
    {
      v10 = [MEMORY[0x277CBEB58] set];
      groupMembers = v9->_groupMembers;
      v9->_groupMembers = v10;
    }

    v9->_state = 0;
    v12 = v9;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = self->_identifier;
  snapshot = self->_snapshot;
  state = self->_state;
  if (state > 4)
  {
    v9 = @"Empty";
  }

  else
  {
    v9 = off_2781DC828[state];
  }

  if (self->_updatingState)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_stateUpdateCancelled)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_group)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = v11;
  v14 = v10;
  v15 = [v3 stringWithFormat:@"<%@: %p identifier = %@; snapshot = %@; state = %@; isUpdatingState = %@; stateUpdateCancelled = %@; isGroup = %@>", v5, self, identifier, snapshot, v9, v14, v13, v12];;

  return v15;
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
    [WeakRetained tabSnapshotCacheEntryDidUpdateState:self];
  }
}

- (void)setUpdatingState:(BOOL)a3
{
  if (self->_updatingState != a3)
  {
    self->_updatingState = a3;
    WeakRetained = objc_loadWeakRetained(&self->_stateObserver);
    [WeakRetained tabSnapshotCacheEntryDidUpdateState:self];
  }
}

- (BOOL)isPendingUpdate
{
  state = self->_state;
  if ((state - 2) >= 2)
  {
    return state || self->_updatingState;
  }

  else
  {
    return 0;
  }
}

- (TabSnapshotCacheEntryStateObserving)stateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_stateObserver);

  return WeakRetained;
}

@end