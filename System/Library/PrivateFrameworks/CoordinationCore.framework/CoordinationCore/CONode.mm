@interface CONode
+ (id)descriptionForState:(int64_t)state;
+ (id)statusFromState:(int64_t)state;
- (COClusterMemberRoleSnapshot)memberSnapshot;
- (COConstituent)remote;
- (CONode)initWithRecord:(id)record executionContext:(id)context delegate:(id)delegate;
- (CONodeDelegate)delegate;
- (NSUUID)HomeKitIdentifier;
- (int64_t)state;
- (void)_resetElectionRelatedInformation;
- (void)_withLock:(id)lock;
- (void)discoveryRecordAdded:(id)added;
- (void)discoveryRecordRemoved:(id)removed;
- (void)resetBackoffInformation;
- (void)setBackoffTimer:(id)timer;
- (void)setHomeKitIdentifier:(id)identifier;
- (void)setMemberSnapshot:(id)snapshot;
- (void)setRemote:(id)remote;
- (void)setState:(int64_t)state;
@end

@implementation CONode

- (CONode)initWithRecord:(id)record executionContext:(id)context delegate:(id)delegate
{
  recordCopy = record;
  contextCopy = context;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = CONode;
  v11 = [(CONode *)&v25 init];
  if (v11)
  {
    constituentForMe = [contextCopy constituentForMe];
    objc_storeStrong(&v11->_meConstituent, constituentForMe);
    iDSIdentifier = [recordCopy IDSIdentifier];
    v14 = [iDSIdentifier copy];
    IDSIdentifier = v11->_IDSIdentifier;
    v11->_IDSIdentifier = v14;

    homeKitIdentifier = [recordCopy HomeKitIdentifier];
    v17 = [homeKitIdentifier copy];
    HomeKitIdentifier = v11->_HomeKitIdentifier;
    v11->_HomeKitIdentifier = v17;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v11->_remote, constituentForMe);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = 0;
LABEL_6:
        v11->_connectionType = v19;
LABEL_7:
        v20 = objc_alloc_init(COElectionInfo);
        lastElectionInfoSent = v11->_lastElectionInfoSent;
        v11->_lastElectionInfoSent = v20;

        v22 = objc_alloc_init(COElectionInfo);
        lastElectionInfoReceived = v11->_lastElectionInfoReceived;
        v11->_lastElectionInfoReceived = v22;

        goto LABEL_8;
      }
    }

    v19 = 1;
    goto LABEL_6;
  }

LABEL_8:

  return v11;
}

- (void)setBackoffTimer:(id)timer
{
  timerCopy = timer;
  backoffTimer = self->_backoffTimer;
  p_backoffTimer = &self->_backoffTimer;
  v6 = backoffTimer;
  v9 = timerCopy;
  if (backoffTimer != timerCopy)
  {
    if (v6)
    {
      dispatch_source_cancel(v6);
    }

    objc_storeStrong(p_backoffTimer, timer);
    if (*p_backoffTimer)
    {
      dispatch_resume(*p_backoffTimer);
    }
  }
}

- (int64_t)state
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __15__CONode_state__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CONode *)self _withLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setState:(int64_t)state
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __19__CONode_setState___block_invoke;
  v3[3] = &unk_278E17CC8;
  v3[4] = self;
  v3[5] = state;
  [(CONode *)self _withLock:v3];
}

- (void)setMemberSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__CONode_setMemberSnapshot___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = snapshotCopy;
  v5 = snapshotCopy;
  [(CONode *)self _withLock:v6];
}

- (COClusterMemberRoleSnapshot)memberSnapshot
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __24__CONode_memberSnapshot__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CONode *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setRemote:(id)remote
{
  remoteCopy = remote;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__CONode_setRemote___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = remoteCopy;
  v5 = remoteCopy;
  [(CONode *)self _withLock:v6];
}

- (COConstituent)remote
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __16__CONode_remote__block_invoke;
  v4[3] = &unk_278E15638;
  v4[4] = self;
  v4[5] = &v5;
  [(CONode *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (NSUUID)HomeKitIdentifier
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__CONode_HomeKitIdentifier__block_invoke;
  v8[3] = &unk_278E15638;
  v8[4] = self;
  v8[5] = &v9;
  [(CONode *)self _withLock:v8];
  v3 = v10[5];
  if (!v3)
  {
    delegate = [(CONode *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate reconcileNode];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__CONode_HomeKitIdentifier__block_invoke_2;
      v7[3] = &unk_278E15638;
      v7[4] = self;
      v7[5] = &v9;
      [(CONode *)self _withLock:v7];
    }

    v3 = v10[5];
  }

  v5 = v3;
  _Block_object_dispose(&v9, 8);

  return v5;
}

- (void)setHomeKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__CONode_setHomeKitIdentifier___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  [(CONode *)self _withLock:v6];
}

- (void)discoveryRecordAdded:(id)added
{
  addedCopy = added;
  homeKitIdentifier = [(CONode *)self HomeKitIdentifier];

  if (!homeKitIdentifier)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __31__CONode_discoveryRecordAdded___block_invoke;
    v10 = &unk_278E156B0;
    selfCopy = self;
    v12 = addedCopy;
    [(CONode *)self _withLock:&v7];
  }

  v6 = [(CONode *)self discoveryType:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 |= 2uLL;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v6 |= 1uLL;
      if (![(CONode *)self connectionType])
      {
        [(CONode *)self setConnectionType:1];
      }
    }
  }

  [(CONode *)self setDiscoveryType:v6];
}

uint64_t __31__CONode_discoveryRecordAdded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) HomeKitIdentifier];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)discoveryRecordRemoved:(id)removed
{
  if ([removed producesElectionCapableTransport])
  {

    [(CONode *)self _resetElectionRelatedInformation];
  }
}

- (void)resetBackoffInformation
{
  [(CONode *)self setBackoffResponse:0];
  [(CONode *)self setLastElectionInfoReceived:0];
  [(CONode *)self setLastElectionInfoSent:0];

  [(CONode *)self setBackoffBucket:0];
}

- (void)_resetElectionRelatedInformation
{
  [(CONode *)self setLastElectionInfoSent:0];
  [(CONode *)self setLastElectionInfoReceived:0];
  [(CONode *)self setOutstandingProbe:0];
  [(CONode *)self setPendingPing:0];
  [(CONode *)self setDiscoveryType:0];
  [(CONode *)self setConnectionType:0];

  [(CONode *)self resetBackoffInformation];
}

+ (id)descriptionForState:(int64_t)state
{
  if (state > 0xE)
  {
    return 0;
  }

  else
  {
    return off_278E17CE8[state];
  }
}

+ (id)statusFromState:(int64_t)state
{
  if (state > 0xE)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_278E17D60[state];
  }
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (CONodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end