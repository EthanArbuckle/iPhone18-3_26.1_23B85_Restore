@interface CalDAVMergeUploadTaskGroup
- (CalDAVMergeUploadTaskGroup)initWithCalendar:(id)a3 principal:(id)a4 accountInfoProvider:(id)a5 taskManager:(id)a6;
- (void)_performBulkUpload;
- (void)_performRegularUpload;
- (void)cancelTaskGroup;
- (void)dealloc;
- (void)startTaskGroup;
@end

@implementation CalDAVMergeUploadTaskGroup

- (CalDAVMergeUploadTaskGroup)initWithCalendar:(id)a3 principal:(id)a4 accountInfoProvider:(id)a5 taskManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = CalDAVMergeUploadTaskGroup;
  v13 = [(CoreDAVTaskGroup *)&v16 initWithAccountInfoProvider:a5 taskManager:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_calendar, a3);
    objc_storeStrong(&v14->_principal, a4);
  }

  return v14;
}

- (void)dealloc
{
  [(CoreDAVTaskGroup *)self->_uploadTaskGroup cancelTaskGroup];
  v3.receiver = self;
  v3.super_class = CalDAVMergeUploadTaskGroup;
  [(CoreDAVTaskGroup *)&v3 dealloc];
}

- (void)_performBulkUpload
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD48]));
  v5 = [v3 logHandleForAccountInfoProvider:WeakRetained];

  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(CalDAVCalendar *)self->_calendar uuidsToAddActions];
      v8 = [v7 count];
      v9 = [(CalDAVCalendar *)self->_calendar hrefsToModDeleteActions];
      v10 = [v9 count];
      v11 = [(CalDAVCalendar *)self->_calendar calendarURL];
      *buf = 134218498;
      v36 = v8;
      v37 = 2048;
      v38 = v10;
      v39 = 2112;
      v40 = v11;
      _os_log_impl(&dword_242742000, v6, OS_LOG_TYPE_INFO, "Performing a bulk upload of %lu/%lu items to the server at %@", buf, 0x20u);
    }
  }

  v12 = [(CalDAVCalendar *)self->_calendar bulkRequests];
  v30 = [v12 objectForKey:*MEMORY[0x277CFDF70]];

  v13 = [v30 objectForKey:*MEMORY[0x277CFDF78]];
  v14 = [v13 integerValue];

  v15 = [v30 objectForKey:*MEMORY[0x277CFDF80]];
  v16 = [v15 integerValue];

  v17 = [(CalDAVCalendar *)self->_calendar ctag];
  if (self->_shouldTrySyncTokenForBulkUpload)
  {
    v18 = [(CalDAVCalendar *)self->_calendar syncToken];

    v17 = v18;
  }

  v19 = [CalDAVBulkUploadTaskGroup alloc];
  v20 = [(CalDAVCalendar *)self->_calendar calendarURL];
  v21 = [(CalDAVCalendar *)self->_calendar uuidsToAddActions];
  v22 = [(CalDAVCalendar *)self->_calendar hrefsToModDeleteActions];
  principal = self->_principal;
  v24 = [(CoreDAVTaskGroup *)self taskManager];
  v25 = [(CalDAVBulkUploadTaskGroup *)v19 initWithFolderURL:v20 checkCTag:v17 uuidsToAddActions:v21 hrefsToModDeleteActions:v22 context:0 accountInfoProvider:principal taskManager:v24];
  uploadTaskGroup = self->_uploadTaskGroup;
  self->_uploadTaskGroup = v25;

  if (v14)
  {
    if (v14 >= 25)
    {
      v27 = 25;
    }

    else
    {
      v27 = v14;
    }

    [(CoreDAVBulkUploadTaskGroup *)self->_uploadTaskGroup setMultiPutBatchMaxNumResources:v27];
  }

  if (v16)
  {
    [(CoreDAVBulkUploadTaskGroup *)self->_uploadTaskGroup setMultiPutBatchMaxSize:v16];
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, self->_uploadTaskGroup);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke;
  v31[3] = &unk_278D66918;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, buf);
  v28 = [(CalDAVMergeUploadTaskGroup *)self uploadTaskGroup];
  [v28 setCompletionBlock:v31];

  [(CoreDAVBulkUploadTaskGroup *)self->_uploadTaskGroup startTaskGroup];
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v29 = *MEMORY[0x277D85DE8];
}

void __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained error];

  if (!v3)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 uuidToHREF];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke_2;
    v44[3] = &unk_278D66D90;
    objc_copyWeak(&v45, (a1 + 40));
    [v7 enumerateKeysAndObjectsUsingBlock:v44];

    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 hrefToETag];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke_3;
    v42[3] = &unk_278D66D90;
    objc_copyWeak(&v43, (a1 + 40));
    [v9 enumerateKeysAndObjectsUsingBlock:v42];

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 nextCTag];

    if (v11)
    {
      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = [v12 nextCTag];
      v14 = objc_loadWeakRetained((a1 + 40));
      v15 = [v14 calendar];
      [v15 setCtag:v13];
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 validCTag];

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    v3 = 0;
LABEL_20:
    v36 = objc_loadWeakRetained((a1 + 40));
    [v36 finishCoreDAVTaskGroupWithError:v3 delegateCallbackBlock:0];
    goto LABEL_21;
  }

  v4 = [v3 domain];
  if (([v4 isEqualToString:*MEMORY[0x277CFDB80]] & 1) == 0)
  {

    goto LABEL_20;
  }

  v5 = [v3 code];

  if (v5 != 412)
  {
    goto LABEL_20;
  }

LABEL_9:
  v18 = objc_loadWeakRetained((a1 + 40));
  if ([v18 shouldTrySyncTokenForBulkUpload])
  {
LABEL_18:

    goto LABEL_19;
  }

  v41 = objc_loadWeakRetained((a1 + 40));
  v19 = [v41 calendar];
  v20 = [v19 syncToken];
  if (![v20 length])
  {

    goto LABEL_18;
  }

  v40 = objc_loadWeakRetained((a1 + 40));
  v21 = [v40 calendar];
  v22 = [v21 syncToken];
  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = [v23 calendar];
  v25 = [v24 ctag];
  v39 = [v22 isEqualToString:v25];

  if (v39)
  {
LABEL_19:
    v37 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CalDAVErrorDomain" code:1 userInfo:0];

    v3 = v37;
    goto LABEL_20;
  }

  v26 = [MEMORY[0x277CFDC18] sharedLogging];
  v27 = [v26 logHandleForAccountInfoProvider:0];
  v28 = v27;
  if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v29 = objc_loadWeakRetained((a1 + 40));
    v30 = [v29 calendar];
    v31 = [v30 ctag];
    v32 = objc_loadWeakRetained((a1 + 40));
    v33 = [v32 calendar];
    v34 = [v33 syncToken];
    *buf = 138543618;
    v47 = v31;
    v48 = 2114;
    v49 = v34;
    _os_log_impl(&dword_242742000, v28, OS_LOG_TYPE_INFO, "Bulk upload failed with a precondition error for ctag %{public}@, but we have sync-token %{public}@ that just might work. Retrying with that value.", buf, 0x16u);
  }

  v35 = objc_loadWeakRetained((a1 + 40));
  [v35 setShouldTrySyncTokenForBulkUpload:1];

  v36 = objc_loadWeakRetained((a1 + 40));
  [v36 _performBulkUpload];
LABEL_21:

  v38 = *MEMORY[0x277D85DE8];
}

void __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained calendar];
  [v7 setURL:v5 forResourceWithUUID:v6];
}

void __48__CalDAVMergeUploadTaskGroup__performBulkUpload__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained calendar];
  [v7 setEtag:v5 forItemAtURL:v6];
}

- (void)_performRegularUpload
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD48]));
  v6 = [v4 logHandleForAccountInfoProvider:WeakRetained];

  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(CalDAVCalendar *)self->_calendar uuidsToAddActions];
      v9 = [v8 count];
      v10 = [(CalDAVCalendar *)self->_calendar hrefsToModDeleteActions];
      v11 = [v10 count];
      v12 = [(CalDAVCalendar *)self->_calendar calendarURL];
      *buf = 134218498;
      v36 = v9;
      v37 = 2048;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      _os_log_impl(&dword_242742000, v7, OS_LOG_TYPE_INFO, "Performing PUT uploads of %lu/%lu items to the server at %@", buf, 0x20u);
    }
  }

  v13 = [(CalDAVCalendar *)self->_calendar uuidsToAddActions];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke;
  v32[3] = &unk_278D66D60;
  v32[4] = self;
  v14 = v3;
  v33 = v14;
  [v13 enumerateKeysAndObjectsUsingBlock:v32];

  v15 = [(CalDAVCalendar *)self->_calendar hrefsToModDeleteActions];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_3;
  v30[3] = &unk_278D66D60;
  v30[4] = self;
  v16 = v14;
  v31 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v30];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    v21 = MEMORY[0x277CFDD58];
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        v24 = [(CoreDAVTaskGroup *)self taskManager];
        [v24 submitQueuedCoreDAVTask:v23];

        [*(&self->super.super.isa + *v21) addObject:v23];
        ++v22;
      }

      while (v19 != v22);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 context];
  v8 = [v7 serverID];
  v9 = [CalDAVPutCalendarItemTask alloc];
  v10 = [v7 dataPayload];
  v11 = [*(a1 + 32) dataContentType];
  v12 = [(CoreDAVPostOrPutTask *)v9 initWithDataPayload:v10 dataContentType:v11 atURL:v8 previousETag:0];

  v13 = [*(a1 + 32) accountInfoProvider];
  [(CalDAVPutCalendarItemTask *)v12 setAccountInfoProvider:v13];

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_2;
  v15[3] = &unk_278D66B18;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  v14 = v8;
  v16 = v14;
  [(CalDAVPutCalendarItemTask *)v12 setCompletionBlock:v15];
  [*(a1 + 40) addObject:v12];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 calendar];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 nextETag];
    [v5 setEtag:v7 forItemAtURL:*(a1 + 32)];
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 outstandingTasks];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v9 removeObject:v10];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 outstandingTasks];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    [v14 finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
  }
}

void __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = [v6 context];
  v9 = [CalDAVPutCalendarItemTask alloc];
  v10 = [v8 dataPayload];
  v11 = [*(a1 + 32) dataContentType];
  v12 = [v8 syncKey];
  v13 = [(CoreDAVPostOrPutTask *)v9 initWithDataPayload:v10 dataContentType:v11 atURL:v7 previousETag:v12];

  v14 = [*(a1 + 32) accountInfoProvider];
  [(CalDAVPutCalendarItemTask *)v13 setAccountInfoProvider:v14];

  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, v13);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_4;
  v16[3] = &unk_278D66B18;
  objc_copyWeak(&v18, &from);
  objc_copyWeak(&v19, &location);
  v15 = v7;
  v17 = v15;
  [(CalDAVPutCalendarItemTask *)v13 setCompletionBlock:v16];
  [*(a1 + 40) addObject:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__CalDAVMergeUploadTaskGroup__performRegularUpload__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 48));
    v5 = [v4 calendar];
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 nextETag];
    [v5 setEtag:v7 forItemAtURL:*(a1 + 32)];
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 outstandingTasks];
  v10 = objc_loadWeakRetained((a1 + 40));
  [v9 removeObject:v10];

  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 outstandingTasks];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    [v14 finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
  }
}

- (void)startTaskGroup
{
  v3 = [(CalDAVCalendar *)self->_calendar uuidsToAddActions];
  if ([v3 count])
  {

LABEL_4:
    v6 = [(CalDAVCalendar *)self->_calendar bulkRequests];
    v10 = [v6 objectForKey:*MEMORY[0x277CFDF70]];

    if (v10)
    {
      [(CalDAVMergeUploadTaskGroup *)self _performBulkUpload];
    }

    else
    {
      [(CalDAVMergeUploadTaskGroup *)self _performRegularUpload];
    }

    return;
  }

  v4 = [(CalDAVCalendar *)self->_calendar hrefsToModDeleteActions];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277CFDC18] sharedLogging];
  WeakRetained = objc_loadWeakRetained((&self->super.super.isa + *MEMORY[0x277CFDD48]));
  v9 = [v7 logHandleForAccountInfoProvider:WeakRetained];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_INFO, "There's nothing for CalDAVMergeUploadTaskGroup to do. Exiting early", buf, 2u);
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:0 delegateCallbackBlock:0];
}

- (void)cancelTaskGroup
{
  [(CoreDAVTaskGroup *)self->_uploadTaskGroup cancelTaskGroup];
  v3.receiver = self;
  v3.super_class = CalDAVMergeUploadTaskGroup;
  [(CoreDAVTaskGroup *)&v3 cancelTaskGroup];
}

@end