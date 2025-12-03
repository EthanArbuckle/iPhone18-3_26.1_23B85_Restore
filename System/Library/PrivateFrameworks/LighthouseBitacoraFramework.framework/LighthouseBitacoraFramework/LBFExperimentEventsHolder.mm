@interface LBFExperimentEventsHolder
- (BOOL)dumpFetchedEvents;
- (LBFExperimentEventsHolder)initWithExperimentOrTaskId:(id)id;
- (id)ensureDeploymentEventsHolder:(id)holder;
- (id)fetchedEventsInDictionaries;
@end

@implementation LBFExperimentEventsHolder

- (LBFExperimentEventsHolder)initWithExperimentOrTaskId:(id)id
{
  idCopy = id;
  v10.receiver = self;
  v10.super_class = LBFExperimentEventsHolder;
  v6 = [(LBFExperimentEventsHolder *)&v10 init];
  if (v6)
  {
    LBFLoggingUtilsInit();
    objc_storeStrong(&v6->_experimentOrTaskId, id);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deploymentEventsHolders = v6->_deploymentEventsHolders;
    v6->_deploymentEventsHolders = v7;
  }

  return v6;
}

- (id)ensureDeploymentEventsHolder:(id)holder
{
  holderCopy = holder;
  v8 = objc_msgSend_objectForKey_(self->_deploymentEventsHolders, v5, holderCopy, v6, v7);
  if (!v8)
  {
    v9 = [LBFDeploymentEventsHolder alloc];
    v8 = objc_msgSend_initWithExperimentOrTaskId_deploymentId_(v9, v10, self->_experimentOrTaskId, holderCopy, v11);
    objc_msgSend_setValue_forKey_(self->_deploymentEventsHolders, v12, v8, holderCopy, v13);
  }

  v14 = v8;

  return v14;
}

- (BOOL)dumpFetchedEvents
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    experimentOrTaskId = self->_experimentOrTaskId;
    *buf = 138412290;
    v27 = experimentOrTaskId;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "dumpFetchedEvents experimentId %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = objc_msgSend_allValues(self->_deploymentEventsHolders, v4, v5, v6, v7, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v21, v25, 16);
  if (v11)
  {
    v16 = v11;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_dumpFetchedEvents(*(*(&v21 + 1) + 8 * v18++), v12, v13, v14, v15);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v21, v25, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    experimentOrTaskId = self->_experimentOrTaskId;
    *buf = 138412290;
    v32 = experimentOrTaskId;
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "dumpFetchedEvents experimentId %@", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = objc_msgSend_allValues(self->_deploymentEventsHolders, v5, v6, v7, v8, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v30, 16);
  if (v12)
  {
    v17 = v12;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v10);
        }

        v20 = objc_msgSend_fetchedEventsInDictionaries(*(*(&v26 + 1) + 8 * i), v13, v14, v15, v16);
        objc_msgSend_addObjectsFromArray_(v3, v21, v20, v22, v23);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v26, v30, 16);
    }

    while (v17);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v3;
}

@end