@interface GKUpdateGroupNotifier
- (GKUpdateGroupNotifier)init;
- (GKUpdateGroupNotifier)retain;
- (void)addUpdate:(id)a3 error:(id)a4;
- (void)addUpdatesFromGroup:(id)a3;
- (void)dealloc;
- (void)release;
- (void)updateError:(id)a3;
@end

@implementation GKUpdateGroupNotifier

- (GKUpdateGroupNotifier)init
{
  v4.receiver = self;
  v4.super_class = GKUpdateGroupNotifier;
  v2 = [(GKUpdateGroupNotifier *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v2->_updateQueue = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  objc_storeWeak(&self->_group, 0);

  v3.receiver = self;
  v3.super_class = GKUpdateGroupNotifier;
  [(GKUpdateGroupNotifier *)&v3 dealloc];
}

- (GKUpdateGroupNotifier)retain
{
  [(NSLock *)self->_lock lock];
  v5.receiver = self;
  v5.super_class = GKUpdateGroupNotifier;
  [(GKUpdateGroupNotifier *)&v5 retain];
  if (objc_loadWeak(&self->_group) && [(GKUpdateGroupNotifier *)self retainCount]>= 2)
  {
    Weak = objc_loadWeak(&self->_group);
    dispatch_group_enter(Weak[3]);
  }

  [(NSLock *)self->_lock unlock];
  return self;
}

- (void)release
{
  v3 = self->_lock;
  [(NSLock *)v3 lock];
  if (objc_loadWeak(&self->_group) && [(GKUpdateGroupNotifier *)self retainCount]>= 2)
  {
    Weak = objc_loadWeak(&self->_group);
    dispatch_group_leave(Weak[3]);
  }

  v5.receiver = self;
  v5.super_class = GKUpdateGroupNotifier;
  [(GKUpdateGroupNotifier *)&v5 release];
  [(NSLock *)v3 unlock];
}

- (void)updateError:(id)a3
{
  if (a3)
  {
    if (!self->_error)
    {
      [(GKUpdateGroupNotifier *)self setError:?];
      if (![objc_loadWeak(&self->_group) error])
      {
        Weak = objc_loadWeak(&self->_group);

        [Weak setError:a3];
      }
    }
  }
}

- (void)addUpdate:(id)a3 error:(id)a4
{
  if (!a4 || self->_error)
  {
    [(NSLock *)self->_lock lock];
    v6 = [(GKUpdateGroupNotifier *)self retainCount];
    v11 = _Block_copy(a3);
    [(NSMutableArray *)self->_updateQueue addObject:?];
    v7 = [(GKUpdateGroupNotifier *)self retainCount];
    [(NSLock *)self->_lock unlock];
    if (v6 != v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"update block is not allowed to reference notifier"];
      v10 = [v8 stringWithFormat:@"%@ (retainCount == afterRetainCount)\n[%s (%s:%d)]", v9, "-[GKUpdateGroupNotifier addUpdate:error:]", objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKUpdateGroup+NoARC.m"), "lastPathComponent"), "UTF8String"), 118];
      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
    }
  }

  else
  {

    [(GKUpdateGroupNotifier *)self updateError:a4];
  }
}

- (void)addUpdatesFromGroup:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__GKUpdateGroupNotifier_addUpdatesFromGroup___block_invoke;
  v3[3] = &unk_2785DE138;
  v3[4] = a3;
  v3[5] = self;
  [a3 join:v3];
}

uint64_t __45__GKUpdateGroupNotifier_addUpdatesFromGroup___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) updateCount];
  if (result >= 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__GKUpdateGroupNotifier_addUpdatesFromGroup___block_invoke_2;
    v5[3] = &unk_2785DE110;
    v5[4] = v3;
    return [v4 addUpdate:v5 error:{objc_msgSend(v3, "error")}];
  }

  return result;
}

@end