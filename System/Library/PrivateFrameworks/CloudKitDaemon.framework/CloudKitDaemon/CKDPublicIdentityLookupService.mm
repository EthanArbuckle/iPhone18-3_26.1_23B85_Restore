@interface CKDPublicIdentityLookupService
- (CKDContainer)container;
- (CKDPublicIdentityLookupService)initWithContainer:(id)a3;
- (void)configureRequest:(id)a3;
- (void)removeCacheForLookupInfos:(id)a3;
- (void)scheduleRequest:(id)a3;
@end

@implementation CKDPublicIdentityLookupService

- (CKDPublicIdentityLookupService)initWithContainer:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CKDPublicIdentityLookupService;
  v5 = [(CKDPublicIdentityLookupService *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
    v9 = objc_msgSend_publicIdentitiesDiskCache(v4, v7, v8);
    cache = v6->_cache;
    v6->_cache = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.cloudkit.PILSQueue", v11);
    queue = v6->_queue;
    v6->_queue = v12;
  }

  return v6;
}

- (void)scheduleRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Starting lookup for request %@", buf, 0xCu);
  }

  if (objc_msgSend_isCancelled(v4, v6, v7))
  {
    objc_msgSend_finishWithError_(v4, v8, 0);
  }

  else
  {
    objc_msgSend_configureRequest_(self, v8, v4);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253AD958;
    block[3] = &unk_278545A00;
    v12 = v4;
    dispatch_async(queue, block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)configureRequest:(id)a3
{
  v25 = a3;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_serverConfig(v7, v8, v9);
  v13 = objc_msgSend_containerID(v7, v11, v12);
  v15 = objc_msgSend_maxBatchSize_(v10, v14, v13);

  if (v15 || (objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_maxBatchSize(v18, v19, v20), v18, v15))
  {
    objc_msgSend_setFetchBatchSize_(v25, v16, v15);
  }

  else
  {
    v22 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v21);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v22, v23, a2, self, @"CKDPublicIdentityLookupService.m", 61, @"Batch size is zero, we won't make any progress");

    objc_msgSend_setFetchBatchSize_(v25, v24, 0);
  }
}

- (void)removeCacheForLookupInfos:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        cache = self->_cache;
        WeakRetained = objc_loadWeakRetained(&self->_container);
        objc_msgSend_removeCachedValueForLookupInfo_container_(cache, v13, v10, WeakRetained);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v14, &v16, v20, 16);
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end