@interface BLTSectionInfoSyncCoordinator
- (BLTSectionInfoSyncCoordinator)initWithAlertingSectionIDs:(id)a3 infoProvider:(id)a4;
- (id)description;
- (id)effectiveSectionInfoForSectionIDIndex:(unint64_t)a3;
- (unint64_t)performSyncForSectionID:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)sectionInfoSendCompleted:(unint64_t)a3;
@end

@implementation BLTSectionInfoSyncCoordinator

- (BLTSectionInfoSyncCoordinator)initWithAlertingSectionIDs:(id)a3 infoProvider:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = BLTSectionInfoSyncCoordinator;
  v8 = [(BLTSectionInfoSyncCoordinator *)&v32 init];
  if (v8)
  {
    v9 = [v7 copy];
    infoProvider = v8->_infoProvider;
    v8->_infoProvider = v9;

    v11 = [v6 mutableCopy];
    alertingSectionIDs = v8->_alertingSectionIDs;
    v8->_alertingSectionIDs = v11;

    v13 = MEMORY[0x277CBEB38];
    v14 = [MEMORY[0x277CBEAC0] sharedKeySetForKeys:v6];
    v15 = [v13 dictionaryWithSharedKeySet:v14];
    alertingSectionState = v8->_alertingSectionState;
    v8->_alertingSectionState = v15;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v8->_alertingSectionIDs;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v18)
    {
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = objc_opt_new();
          [(NSMutableDictionary *)v8->_alertingSectionState setObject:v22 forKeyedSubscript:v21];
        }

        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v18);
    }

    objc_initWeak(&location, v8);
    v23 = BLTWorkQueue();
    objc_copyWeak(&v26, &location);
    v8->_stateHandler = os_state_add_handler();

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

_DWORD *__73__BLTSectionInfoSyncCoordinator_initWithAlertingSectionIDs_infoProvider___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [WeakRetained description];
  v5 = BLTStateDataWithTitleAndDescription(v3, v4);

  return v5;
}

- (void)dealloc
{
  stateHandler = self->_stateHandler;
  os_state_remove_handler();
  self->_stateHandler = 0;
  v4.receiver = self;
  v4.super_class = BLTSectionInfoSyncCoordinator;
  [(BLTSectionInfoSyncCoordinator *)&v4 dealloc];
}

- (unint64_t)performSyncForSectionID:(id)a3 queue:(id)a4 completion:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_alertingSectionState objectForKeyedSubscript:v8];
  v12 = v11;
  if (!v11 || [v11 state] == 2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__BLTSectionInfoSyncCoordinator_performSyncForSectionID_queue_completion___block_invoke;
    block[3] = &unk_278D314F0;
    v27 = v10;
    dispatch_async(v9, block);
    v13 = 3;
    v14 = v27;
    goto LABEL_4;
  }

  v17 = blt_settings_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_DEFAULT, "Section %@ hasn't completed sync'ing", buf, 0xCu);
  }

  [v12 setClientCompletion:v10];
  [v12 setClientQueue:v9];
  if ([v12 state] == 1)
  {
    goto LABEL_17;
  }

  v18 = blt_settings_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&dword_241FB3000, v18, OS_LOG_TYPE_DEFAULT, "Moving %@ to front of send queue", buf, 0xCu);
  }

  p_mostRecentIndex = &self->_mostRecentIndex;
  mostRecentIndex = self->_mostRecentIndex;
  p_alertingSectionIDs = &self->_alertingSectionIDs;
  if (mostRecentIndex >= [(NSMutableArray *)self->_alertingSectionIDs count])
  {
    v25 = blt_settings_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [BLTSectionInfoSyncCoordinator performSyncForSectionID:&self->_alertingSectionIDs queue:v25 completion:?];
    }

    goto LABEL_17;
  }

  v22 = [(NSMutableArray *)*p_alertingSectionIDs indexOfObject:v8];
  if (v22 == *p_mostRecentIndex + 1)
  {
LABEL_17:
    v13 = 2;
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [(NSMutableArray *)*p_alertingSectionIDs objectAtIndexedSubscript:?];
  [(NSMutableArray *)*p_alertingSectionIDs setObject:v24 atIndexedSubscript:v23];

  [(NSMutableArray *)*p_alertingSectionIDs setObject:v8 atIndexedSubscript:*p_mostRecentIndex + 1];
  v13 = 0;
LABEL_18:
  if (self->_mostRecentIndexSinceSync != self->_mostRecentIndex)
  {
    goto LABEL_5;
  }

  v14 = blt_settings_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v14, OS_LOG_TYPE_DEFAULT, "Section info sync coordinator has not completed sync'ing any sections since last call", buf, 2u);
  }

  v13 = 1;
LABEL_4:

LABEL_5:
  self->_mostRecentIndexSinceSync = self->_mostRecentIndex;

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)effectiveSectionInfoForSectionIDIndex:(unint64_t)a3
{
  self->_mostRecentIndex = a3;
  alertingSectionState = self->_alertingSectionState;
  v6 = [(NSMutableArray *)self->_alertingSectionIDs objectAtIndexedSubscript:?];
  v7 = [(NSMutableDictionary *)alertingSectionState objectForKeyedSubscript:v6];
  [v7 setState:1];

  infoProvider = self->_infoProvider;
  v9 = [(NSMutableArray *)self->_alertingSectionIDs objectAtIndexedSubscript:a3];
  v10 = infoProvider[2](infoProvider, v9);

  return v10;
}

- (void)sectionInfoSendCompleted:(unint64_t)a3
{
  alertingSectionState = self->_alertingSectionState;
  v4 = [(NSMutableArray *)self->_alertingSectionIDs objectAtIndexedSubscript:a3];
  v5 = [(NSMutableDictionary *)alertingSectionState objectForKeyedSubscript:v4];

  if ([v5 state] != 2)
  {
    [v5 setState:2];
    v6 = [v5 clientCompletion];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 clientQueue];

      if (v8)
      {
        v9 = [v5 clientQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __58__BLTSectionInfoSyncCoordinator_sectionInfoSendCompleted___block_invoke;
        block[3] = &unk_278D31428;
        v11 = v5;
        dispatch_async(v9, block);
      }
    }
  }
}

void __58__BLTSectionInfoSyncCoordinator_sectionInfoSendCompleted___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) clientCompletion];
  v1[2]();
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_alertingSectionState withName:@"alertingSectionState"];
  v5 = [v3 appendObject:self->_alertingSectionIDs withName:@"alertingSectionIDs"];
  v6 = [v3 appendUnsignedInteger:self->_mostRecentIndex withName:@"mostRecentIndex"];
  v7 = [v3 build];

  return v7;
}

- (void)performSyncForSectionID:(uint64_t *)a1 queue:(id *)a2 completion:(NSObject *)a3 .cold.1(uint64_t *a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = [*a2 count];
  v7 = 134218240;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_241FB3000, a3, OS_LOG_TYPE_ERROR, "Most recent index (%lu) has completed section sync count (%lu)", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end