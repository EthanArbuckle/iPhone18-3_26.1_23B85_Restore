@interface PSYSyncSessionUpdate
- (PSYSyncSessionUpdate)initWithOriginalSession:(id)a3 updatedSession:(id)a4;
- (void)enumerateChangedActivitiesWithBlock:(id)a3;
- (void)enumerateNewlyCompletedActivitiesWithBlock:(id)a3;
- (void)enumerateNewlyRunningActivitiesWithBlock:(id)a3;
@end

@implementation PSYSyncSessionUpdate

- (PSYSyncSessionUpdate)initWithOriginalSession:(id)a3 updatedSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PSYSyncSessionUpdate;
  v9 = [(PSYSyncSessionUpdate *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalSession, a3);
    objc_storeStrong(&v10->_updatedSession, a4);
  }

  return v10;
}

- (void)enumerateChangedActivitiesWithBlock:(id)a3
{
  v14 = a3;
  v4 = [(PSYSyncSession *)self->_originalSession activities];
  v5 = [v4 count];

  v6 = [(PSYSyncSession *)self->_updatedSession activities];
  v7 = [v6 count];

  if (v5 == v7 && v5 != 0)
  {
    v9 = 0;
    do
    {
      v10 = [(PSYSyncSession *)self->_originalSession activities];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [(PSYSyncSession *)self->_updatedSession activities];
      v13 = [v12 objectAtIndexedSubscript:v9];

      if (([v11 isEqual:v13] & 1) == 0)
      {
        v14[2](v14, v11, v13);
      }

      ++v9;
    }

    while (v5 != v9);
  }
}

- (void)enumerateNewlyRunningActivitiesWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PSYSyncSessionUpdate_enumerateNewlyRunningActivitiesWithBlock___block_invoke;
  v6[3] = &unk_2799FB8B8;
  v7 = v4;
  v5 = v4;
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

- (void)enumerateNewlyCompletedActivitiesWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__PSYSyncSessionUpdate_enumerateNewlyCompletedActivitiesWithBlock___block_invoke;
  v6[3] = &unk_2799FB8B8;
  v7 = v4;
  v5 = v4;
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