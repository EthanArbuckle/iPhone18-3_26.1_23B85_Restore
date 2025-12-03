@interface CalDAVMultiMoveWithFallbackTaskGroup
- (void)_completedPropFindTask:(id)task intermediateETag:(id)tag intermediateScheduleTag:(id)scheduleTag destinationFilename:(id)filename;
- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block;
@end

@implementation CalDAVMultiMoveWithFallbackTaskGroup

- (void)_setTagsForDestinationEntityAtURL:(id)l fromTaskResponseHeaders:(id)headers completionBlock:(id)block
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  headersCopy = headers;
  blockCopy = block;
  v28 = lCopy;
  v30 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:lCopy];
  v29 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _eTagFromTaskResponseHeaders:headersCopy];
  v10 = [headersCopy CDVObjectForKeyCaseInsensitive:@"schedule-tag"];
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v12 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v12));
  v14 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v42 = v29;
      _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~ Response included etag %{public}@, but we're ignoring it and nilling etag because we got a schedule-tag.", buf, 0xCu);
    }

    destinationEntityScheduleTags = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
    [destinationEntityScheduleTags setObject:v10 forKey:v30];

    mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
    v17 = objc_loadWeakRetained((&self->super.super.super.isa + v12));
    v18 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v17];

    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v18, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", buf, 2u);
    }

    if (blockCopy)
    {
      blockCopy[2]();
    }
  }

  else
  {
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~ No schedule-tag returned! PROPFINDing for the etag/schedule-tag...", buf, 2u);
    }

    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    v20 = objc_alloc(MEMORY[0x277CFDBE8]);
    v21 = [v20 initWithNameSpace:*MEMORY[0x277CFDEF8] name:*MEMORY[0x277CFDF20] parseClass:objc_opt_class()];
    [v19 addObject:v21];
    if ([(CalDAVMultiMoveWithFallbackTaskGroup *)self isAutoScheduleSupported])
    {
      v22 = objc_alloc(MEMORY[0x277CFDBE8]);
      v23 = [v22 initWithNameSpace:*MEMORY[0x277CFDDC0] name:@"schedule-tag" parseClass:objc_opt_class()];
      [v19 addObject:v23];
    }

    v24 = [objc_alloc(MEMORY[0x277CFDC68]) initWithPropertiesToFind:v19 atURL:v28 withDepth:2];
    accountInfoProvider = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v24 setAccountInfoProvider:accountInfoProvider];

    objc_initWeak(buf, self);
    objc_initWeak(&location, v24);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __114__CalDAVMultiMoveWithFallbackTaskGroup__setTagsForDestinationEntityAtURL_fromTaskResponseHeaders_completionBlock___block_invoke;
    v32[3] = &unk_278D66DD8;
    objc_copyWeak(&v38, buf);
    objc_copyWeak(&v39, &location);
    v33 = v29;
    v34 = 0;
    v35 = v30;
    selfCopy = self;
    v37 = blockCopy;
    [v24 setCompletionBlock:v32];
    [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v24];
    taskManager = [(CoreDAVTaskGroup *)self taskManager];
    [taskManager submitQueuedCoreDAVTask:v24];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  v27 = *MEMORY[0x277D85DE8];
}

uint64_t __114__CalDAVMultiMoveWithFallbackTaskGroup__setTagsForDestinationEntityAtURL_fromTaskResponseHeaders_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained outstandingTasks];
  v4 = objc_loadWeakRetained((a1 + 80));
  [v3 removeObject:v4];

  v5 = objc_loadWeakRetained((a1 + 72));
  v6 = objc_loadWeakRetained((a1 + 80));
  [v5 _completedPropFindTask:v6 intermediateETag:*(a1 + 32) intermediateScheduleTag:*(a1 + 40) destinationFilename:*(a1 + 48)];

  v7 = [MEMORY[0x277CFDC18] sharedLogging];
  v8 = objc_loadWeakRetained((*(a1 + 56) + *MEMORY[0x277CFDD48]));
  v9 = [v7 logHandleForAccountInfoProvider:v8];

  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_242742000, v9, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", v11, 2u);
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_completedPropFindTask:(id)task intermediateETag:(id)tag intermediateScheduleTag:(id)scheduleTag destinationFilename:(id)filename
{
  v72 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  tagCopy = tag;
  filenameCopy = filename;
  mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
  v13 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v15 = [mEMORY[0x277CFDC18] logHandleForAccountInfoProvider:WeakRetained];

  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v71 = "[CalDAVMultiMoveWithFallbackTaskGroup _completedPropFindTask:intermediateETag:intermediateScheduleTag:destinationFilename:]";
    _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_INFO, "[multi-move] ~ %{public}s", buf, 0xCu);
  }

  error = [taskCopy error];
  mEMORY[0x277CFDC18]2 = [MEMORY[0x277CFDC18] sharedLogging];
  v18 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v19 = [mEMORY[0x277CFDC18]2 logHandleForAccountInfoProvider:v18];

  if (error)
  {
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v19, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Error during PROPFIND.", buf, 2u);
    }

    mEMORY[0x277CFDC18]3 = [MEMORY[0x277CFDC18] sharedLogging];
    v21 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v22 = [mEMORY[0x277CFDC18]3 logHandleForAccountInfoProvider:v21];

    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = error;
      _os_log_impl(&dword_242742000, v22, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %@;", buf, 0xCu);
    }

    mEMORY[0x277CFDC18]4 = [MEMORY[0x277CFDC18] sharedLogging];
    v24 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v25 = [mEMORY[0x277CFDC18]4 logHandleForAccountInfoProvider:v24];

    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v25, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Returing ETag and ScheduleTag of nil", buf, 2u);
    }

    goto LABEL_57;
  }

  if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v19, OS_LOG_TYPE_INFO, "[multi-move] ~ PROPFIND success", buf, 2u);
  }

  v69 = filenameCopy;

  mEMORY[0x277CFDC18]4 = [taskCopy responseHeaders];

  v68 = tagCopy;
  if (!mEMORY[0x277CFDC18]4)
  {
    v25 = 0;
LABEL_49:
    v49 = @"No ETag found by PROPFIND";
    goto LABEL_50;
  }

  responseHeaders = [taskCopy responseHeaders];
  mEMORY[0x277CFDC18]4 = [responseHeaders CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  if (mEMORY[0x277CFDC18]4)
  {
    mEMORY[0x277CFDC18]5 = [MEMORY[0x277CFDC18] sharedLogging];
    v28 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v29 = [mEMORY[0x277CFDC18]5 logHandleForAccountInfoProvider:v28];

    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v71 = mEMORY[0x277CFDC18]4;
      _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_INFO, "[multi-move] ~ found etag node: %{public}@", buf, 0xCu);
    }

    v30 = mEMORY[0x277CFDC18]4;
  }

  responseHeaders2 = [taskCopy responseHeaders];
  v25 = [responseHeaders2 CDVObjectForKeyCaseInsensitive:@"schedule-tag"];

  if (v25)
  {
    mEMORY[0x277CFDC18]6 = [MEMORY[0x277CFDC18] sharedLogging];
    v33 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v34 = [mEMORY[0x277CFDC18]6 logHandleForAccountInfoProvider:v33];

    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v71 = v25;
      _os_log_impl(&dword_242742000, v34, OS_LOG_TYPE_INFO, "[multi-move] ~ found scheduleTag node: %{public}@", buf, 0xCu);
    }

    v35 = v25;
    tagCopy = v68;
  }

  if (!mEMORY[0x277CFDC18]4)
  {
    goto LABEL_49;
  }

  if (!tagCopy || [mEMORY[0x277CFDC18]4 isEqualToString:tagCopy])
  {
    sourceEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
    v37 = [sourceEntityETags objectForKey:v69];

    if (![mEMORY[0x277CFDC18]4 length] && !v25)
    {
      goto LABEL_47;
    }

    v67 = v37;
    mEMORY[0x277CFDC18]7 = [MEMORY[0x277CFDC18] sharedLogging];
    v39 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v40 = [mEMORY[0x277CFDC18]7 logHandleForAccountInfoProvider:v39];

    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v40, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting etag return value.", buf, 2u);
    }

    destinationEntityETags = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityETags];
    [destinationEntityETags setObject:mEMORY[0x277CFDC18]4 forKey:v69];

    if (v25)
    {
      mEMORY[0x277CFDC18]8 = [MEMORY[0x277CFDC18] sharedLogging];
      v43 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v44 = [mEMORY[0x277CFDC18]8 logHandleForAccountInfoProvider:v43];

      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v44, OS_LOG_TYPE_INFO, "[multi-move] ~ We got a scheduleTag, so ignoring etag", buf, 2u);
      }

      mEMORY[0x277CFDC18]9 = [MEMORY[0x277CFDC18] sharedLogging];
      v46 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v47 = [mEMORY[0x277CFDC18]9 logHandleForAccountInfoProvider:v46];

      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v47, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting scheduleTag return value.", buf, 2u);
      }

      destinationEntityScheduleTags = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
      [destinationEntityScheduleTags setObject:v25 forKey:v69];
      goto LABEL_44;
    }

    if ([v67 isEqualToString:mEMORY[0x277CFDC18]4])
    {
      destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
      v57 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v58 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v57];

      v37 = v67;
      tagCopy = v68;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v71 = v67;
        _os_log_impl(&dword_242742000, v58, OS_LOG_TYPE_INFO, "[multi-move] ~ Resulting etag is unchanged from original: %{public}@", buf, 0xCu);
      }

      goto LABEL_46;
    }

    tagCopy = v68;
    if (!v68)
    {
      destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
      v65 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v66 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v65];

      if (v66 && os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v66, OS_LOG_TYPE_INFO, "[multi-move] ~ New etag differs from old etag -- MOVE returned no ETag, but PROPFIND gave us a good new value.", buf, 2u);
      }

      goto LABEL_45;
    }

    v59 = [v68 isEqualToString:mEMORY[0x277CFDC18]4];
    destinationEntityScheduleTags = [MEMORY[0x277CFDC18] sharedLogging];
    v60 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v61 = [destinationEntityScheduleTags logHandleForAccountInfoProvider:v60];

    if (v59)
    {
      if (!v61 || !os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v62 = "[multi-move] ~ New etag differs from old etag -- MOVE returned an ETag and PROPFIND gave us the same one.";
      v63 = v61;
      v64 = OS_LOG_TYPE_INFO;
    }

    else
    {
      if (!v61 || !os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_77;
      }

      *buf = 0;
      v62 = "[multi-move] After MOVE and PROPFIND: something is wrong, there's no new etag, there's no schedule tag";
      v63 = v61;
      v64 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&dword_242742000, v63, v64, v62, buf, 2u);
LABEL_77:

LABEL_44:
    tagCopy = v68;
LABEL_45:
    v37 = v67;
LABEL_46:

LABEL_47:
    filenameCopy = v69;
    goto LABEL_57;
  }

  v49 = @"New ETag found by PROPFIND didn't match non-nil intermediate ETag returned by MOVE";
LABEL_50:
  mEMORY[0x277CFDC18]10 = [MEMORY[0x277CFDC18] sharedLogging];
  v51 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v52 = [mEMORY[0x277CFDC18]10 logHandleForAccountInfoProvider:v51];

  if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = v49;
    _os_log_impl(&dword_242742000, v52, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %{public}@", buf, 0xCu);
  }

  mEMORY[0x277CFDC18]11 = [MEMORY[0x277CFDC18] sharedLogging];
  v54 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v55 = [mEMORY[0x277CFDC18]11 logHandleForAccountInfoProvider:v54];

  tagCopy = v68;
  if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v55, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Returing ETag and ScheduleTag of nil", buf, 2u);
  }

  filenameCopy = v69;
  error = 0;
LABEL_57:

  v56 = *MEMORY[0x277D85DE8];
}

@end