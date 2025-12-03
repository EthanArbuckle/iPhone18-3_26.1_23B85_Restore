@interface COMeshNodeStateTrackerSet
- (COMeshNodeStateTrackerSet)init;
- (id)description;
- (id)nodeStateTrackerForNode:(id)node;
- (id)nodeStateTrackersWithStatus:(int64_t)status;
- (void)_withLock:(id)lock;
- (void)addNodeStateTracker:(id)tracker;
- (void)enumerateNodeStateTrackersOfStatus:(int64_t)status usingBlock:(id)block;
- (void)enumerateNodeStateTrackersUsingBlock:(id)block;
- (void)removeAllNodeStateTrackers;
- (void)removeNodeStateTrackerForNode:(id)node;
- (void)setNodeDormant:(id)dormant withState:(unint64_t)state error:(id)error;
@end

@implementation COMeshNodeStateTrackerSet

- (COMeshNodeStateTrackerSet)init
{
  v6.receiver = self;
  v6.super_class = COMeshNodeStateTrackerSet;
  v2 = [(COMeshNodeStateTrackerSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    trackers = v2->_trackers;
    v2->_trackers = v3;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  trackers = [(COMeshNodeStateTrackerSet *)self trackers];
  v7 = [trackers description];
  v8 = [v3 stringWithFormat:@"<%@: %p, trackers = %@>", v5, self, v7];

  return v8;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addNodeStateTracker:(id)tracker
{
  trackerCopy = tracker;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__COMeshNodeStateTrackerSet_addNodeStateTracker___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = trackerCopy;
  v5 = trackerCopy;
  [(COMeshNodeStateTrackerSet *)self _withLock:v6];
}

void __49__COMeshNodeStateTrackerSet_addNodeStateTracker___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trackers];
  v5 = [v2 mutableCopy];

  v3 = *(a1 + 40);
  v4 = [v3 node];
  [v5 setObject:v3 forKey:v4];

  [*(a1 + 32) setTrackers:v5];
}

- (id)nodeStateTrackerForNode:(id)node
{
  nodeCopy = node;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__COMeshNodeStateTrackerSet_nodeStateTrackerForNode___block_invoke;
  v8[3] = &unk_278E15A18;
  v10 = &v11;
  v8[4] = self;
  v5 = nodeCopy;
  v9 = v5;
  [(COMeshNodeStateTrackerSet *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __53__COMeshNodeStateTrackerSet_nodeStateTrackerForNode___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) trackers];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeNodeStateTrackerForNode:(id)node
{
  nodeCopy = node;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__COMeshNodeStateTrackerSet_removeNodeStateTrackerForNode___block_invoke;
  v6[3] = &unk_278E156B0;
  v6[4] = self;
  v7 = nodeCopy;
  v5 = nodeCopy;
  [(COMeshNodeStateTrackerSet *)self _withLock:v6];
}

void __59__COMeshNodeStateTrackerSet_removeNodeStateTrackerForNode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) trackers];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*(a1 + 40)];
  [*(a1 + 32) setTrackers:v3];
}

- (void)removeAllNodeStateTrackers
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__COMeshNodeStateTrackerSet_removeAllNodeStateTrackers__block_invoke;
  v2[3] = &unk_278E15AB8;
  v2[4] = self;
  [(COMeshNodeStateTrackerSet *)self _withLock:v2];
}

void __55__COMeshNodeStateTrackerSet_removeAllNodeStateTrackers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  [v1 setTrackers:v2];
}

- (id)nodeStateTrackersWithStatus:(int64_t)status
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__COMeshNodeStateTrackerSet_nodeStateTrackersWithStatus___block_invoke;
  v10[3] = &unk_278E17FD8;
  v10[4] = self;
  statusCopy = status;
  v6 = v5;
  v11 = v6;
  [(COMeshNodeStateTrackerSet *)self _withLock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __57__COMeshNodeStateTrackerSet_nodeStateTrackersWithStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__COMeshNodeStateTrackerSet_nodeStateTrackersWithStatus___block_invoke_2;
  v3[3] = &unk_278E163D8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateNodeStateTrackersOfStatus:v1 usingBlock:v3];
}

- (void)setNodeDormant:(id)dormant withState:(unint64_t)state error:(id)error
{
  dormantCopy = dormant;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__COMeshNodeStateTrackerSet_setNodeDormant_withState_error___block_invoke;
  v12[3] = &unk_278E18000;
  v12[4] = self;
  v13 = dormantCopy;
  v14 = errorCopy;
  stateCopy = state;
  v10 = errorCopy;
  v11 = dormantCopy;
  [(COMeshNodeStateTrackerSet *)self _withLock:v12];
}

void __60__COMeshNodeStateTrackerSet_setNodeDormant_withState_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) trackers];
  v3 = [v2 objectForKey:*(a1 + 40)];

  [v3 setState:*(a1 + 56)];
  [v3 setStatus:2];
  v4 = COCoreLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CBEAA8];
    [v3 lastHeard];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    v7 = [v3 node];
    v9 = 138412546;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_244378000, v4, OS_LOG_TYPE_DEFAULT, "Going dormant since last heard at %@ on %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodeStateTrackersUsingBlock:(id)block
{
  blockCopy = block;
  trackers = [(COMeshNodeStateTrackerSet *)self trackers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__COMeshNodeStateTrackerSet_enumerateNodeStateTrackersUsingBlock___block_invoke;
  v7[3] = &unk_278E18028;
  v8 = blockCopy;
  v6 = blockCopy;
  [trackers enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)enumerateNodeStateTrackersOfStatus:(int64_t)status usingBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__COMeshNodeStateTrackerSet_enumerateNodeStateTrackersOfStatus_usingBlock___block_invoke;
  v8[3] = &unk_278E18050;
  v9 = blockCopy;
  statusCopy = status;
  v7 = blockCopy;
  [(COMeshNodeStateTrackerSet *)self enumerateNodeStateTrackersUsingBlock:v8];
}

void __75__COMeshNodeStateTrackerSet_enumerateNodeStateTrackersOfStatus_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end