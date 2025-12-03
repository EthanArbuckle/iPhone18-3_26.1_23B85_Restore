@interface PSYSyncSessionUpdate
- (PSYSyncSessionUpdate)initWithOriginalSession:(id)session updatedSession:(id)updatedSession;
- (void)enumerateChangedActivitiesWithBlock:(id)block;
- (void)enumerateNewlyCompletedActivitiesWithBlock:(id)block;
- (void)enumerateNewlyRunningActivitiesWithBlock:(id)block;
@end

@implementation PSYSyncSessionUpdate

- (PSYSyncSessionUpdate)initWithOriginalSession:(id)session updatedSession:(id)updatedSession
{
  sessionCopy = session;
  updatedSessionCopy = updatedSession;
  v12.receiver = self;
  v12.super_class = PSYSyncSessionUpdate;
  v9 = [(PSYSyncSessionUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalSession, session);
    objc_storeStrong(&v10->_updatedSession, updatedSession);
  }

  return v10;
}

- (void)enumerateChangedActivitiesWithBlock:(id)block
{
  blockCopy = block;
  activities = [(PSYSyncSession *)self->_originalSession activities];
  v5 = [activities count];

  activities2 = [(PSYSyncSession *)self->_updatedSession activities];
  v7 = [activities2 count];

  if (v5 == v7 && v5 != 0)
  {
    v9 = 0;
    do
    {
      activities3 = [(PSYSyncSession *)self->_originalSession activities];
      v11 = [activities3 objectAtIndexedSubscript:v9];

      activities4 = [(PSYSyncSession *)self->_updatedSession activities];
      v13 = [activities4 objectAtIndexedSubscript:v9];

      if (([v11 isEqual:v13] & 1) == 0)
      {
        blockCopy[2](blockCopy, v11, v13);
      }

      ++v9;
    }

    while (v5 != v9);
  }
}

- (void)enumerateNewlyRunningActivitiesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PSYSyncSessionUpdate_enumerateNewlyRunningActivitiesWithBlock___block_invoke;
  v6[3] = &unk_2799FB8B8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PSYSyncSessionUpdate *)self enumerateChangedActivitiesWithBlock:v6];
}

void __65__PSYSyncSessionUpdate_enumerateNewlyRunningActivitiesWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (![v6 activityState] && objc_msgSend(v5, "activityState") == 1)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateNewlyCompletedActivitiesWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PSYSyncSessionUpdate_enumerateNewlyCompletedActivitiesWithBlock___block_invoke;
  v6[3] = &unk_2799FB8B8;
  v7 = blockCopy;
  v5 = blockCopy;
  [(PSYSyncSessionUpdate *)self enumerateChangedActivitiesWithBlock:v6];
}

void __67__PSYSyncSessionUpdate_enumerateNewlyCompletedActivitiesWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 activityState] != 2 && objc_msgSend(v5, "activityState") == 2)
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end