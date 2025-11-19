@interface CalDAVMultiMoveWithFallbackTaskGroup
- (void)_completedPropFindTask:(id)a3 intermediateETag:(id)a4 intermediateScheduleTag:(id)a5 destinationFilename:(id)a6;
- (void)_setTagsForDestinationEntityAtURL:(id)a3 fromTaskResponseHeaders:(id)a4 completionBlock:(id)a5;
@end

@implementation CalDAVMultiMoveWithFallbackTaskGroup

- (void)_setTagsForDestinationEntityAtURL:(id)a3 fromTaskResponseHeaders:(id)a4 completionBlock:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v31 = a5;
  v28 = v8;
  v30 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self filenameFromURL:v8];
  v29 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self _eTagFromTaskResponseHeaders:v9];
  v10 = [v9 CDVObjectForKeyCaseInsensitive:@"schedule-tag"];
  v11 = [MEMORY[0x277CFDC18] sharedLogging];
  v12 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v12));
  v14 = [v11 logHandleForAccountInfoProvider:WeakRetained];

  if (v10)
  {
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v42 = v29;
      _os_log_impl(&dword_242742000, v14, OS_LOG_TYPE_INFO, "[multi-move] ~ Response included etag %{public}@, but we're ignoring it and nilling etag because we got a schedule-tag.", buf, 0xCu);
    }

    v15 = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
    [v15 setObject:v10 forKey:v30];

    v16 = [MEMORY[0x277CFDC18] sharedLogging];
    v17 = objc_loadWeakRetained((&self->super.super.super.isa + v12));
    v18 = [v16 logHandleForAccountInfoProvider:v17];

    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v18, OS_LOG_TYPE_INFO, "[multi-move] ~ Finished setting tags for moved CalDAV entity", buf, 2u);
    }

    if (v31)
    {
      v31[2]();
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
    v25 = [(CoreDAVTaskGroup *)self accountInfoProvider];
    [v24 setAccountInfoProvider:v25];

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
    v36 = self;
    v37 = v31;
    [v24 setCompletionBlock:v32];
    [*(&self->super.super.super.isa + *MEMORY[0x277CFDD58]) addObject:v24];
    v26 = [(CoreDAVTaskGroup *)self taskManager];
    [v26 submitQueuedCoreDAVTask:v24];

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

- (void)_completedPropFindTask:(id)a3 intermediateETag:(id)a4 intermediateScheduleTag:(id)a5 destinationFilename:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x277CFDC18] sharedLogging];
  v13 = *MEMORY[0x277CFDD48];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v15 = [v12 logHandleForAccountInfoProvider:WeakRetained];

  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v71 = "[CalDAVMultiMoveWithFallbackTaskGroup _completedPropFindTask:intermediateETag:intermediateScheduleTag:destinationFilename:]";
    _os_log_impl(&dword_242742000, v15, OS_LOG_TYPE_INFO, "[multi-move] ~ %{public}s", buf, 0xCu);
  }

  v16 = [v9 error];
  v17 = [MEMORY[0x277CFDC18] sharedLogging];
  v18 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v19 = [v17 logHandleForAccountInfoProvider:v18];

  if (v16)
  {
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v19, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Error during PROPFIND.", buf, 2u);
    }

    v20 = [MEMORY[0x277CFDC18] sharedLogging];
    v21 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v22 = [v20 logHandleForAccountInfoProvider:v21];

    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v16;
      _os_log_impl(&dword_242742000, v22, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %@;", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CFDC18] sharedLogging];
    v24 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v25 = [v23 logHandleForAccountInfoProvider:v24];

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

  v69 = v11;

  v23 = [v9 responseHeaders];

  v68 = v10;
  if (!v23)
  {
    v25 = 0;
LABEL_49:
    v49 = @"No ETag found by PROPFIND";
    goto LABEL_50;
  }

  v26 = [v9 responseHeaders];
  v23 = [v26 CDVObjectForKeyCaseInsensitive:*MEMORY[0x277CFDB30]];

  if (v23)
  {
    v27 = [MEMORY[0x277CFDC18] sharedLogging];
    v28 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v29 = [v27 logHandleForAccountInfoProvider:v28];

    if (v29 && os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v71 = v23;
      _os_log_impl(&dword_242742000, v29, OS_LOG_TYPE_INFO, "[multi-move] ~ found etag node: %{public}@", buf, 0xCu);
    }

    v30 = v23;
  }

  v31 = [v9 responseHeaders];
  v25 = [v31 CDVObjectForKeyCaseInsensitive:@"schedule-tag"];

  if (v25)
  {
    v32 = [MEMORY[0x277CFDC18] sharedLogging];
    v33 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v34 = [v32 logHandleForAccountInfoProvider:v33];

    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v71 = v25;
      _os_log_impl(&dword_242742000, v34, OS_LOG_TYPE_INFO, "[multi-move] ~ found scheduleTag node: %{public}@", buf, 0xCu);
    }

    v35 = v25;
    v10 = v68;
  }

  if (!v23)
  {
    goto LABEL_49;
  }

  if (!v10 || [v23 isEqualToString:v10])
  {
    v36 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self sourceEntityETags];
    v37 = [v36 objectForKey:v69];

    if (![v23 length] && !v25)
    {
      goto LABEL_47;
    }

    v67 = v37;
    v38 = [MEMORY[0x277CFDC18] sharedLogging];
    v39 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v40 = [v38 logHandleForAccountInfoProvider:v39];

    if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242742000, v40, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting etag return value.", buf, 2u);
    }

    v41 = [(CoreDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityETags];
    [v41 setObject:v23 forKey:v69];

    if (v25)
    {
      v42 = [MEMORY[0x277CFDC18] sharedLogging];
      v43 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v44 = [v42 logHandleForAccountInfoProvider:v43];

      if (v44 && os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v44, OS_LOG_TYPE_INFO, "[multi-move] ~ We got a scheduleTag, so ignoring etag", buf, 2u);
      }

      v45 = [MEMORY[0x277CFDC18] sharedLogging];
      v46 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v47 = [v45 logHandleForAccountInfoProvider:v46];

      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v47, OS_LOG_TYPE_INFO, "[multi-move] ~ Setting scheduleTag return value.", buf, 2u);
      }

      v48 = [(CalDAVMultiMoveWithFallbackTaskGroup *)self destinationEntityScheduleTags];
      [v48 setObject:v25 forKey:v69];
      goto LABEL_44;
    }

    if ([v67 isEqualToString:v23])
    {
      v48 = [MEMORY[0x277CFDC18] sharedLogging];
      v57 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v58 = [v48 logHandleForAccountInfoProvider:v57];

      v37 = v67;
      v10 = v68;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v71 = v67;
        _os_log_impl(&dword_242742000, v58, OS_LOG_TYPE_INFO, "[multi-move] ~ Resulting etag is unchanged from original: %{public}@", buf, 0xCu);
      }

      goto LABEL_46;
    }

    v10 = v68;
    if (!v68)
    {
      v48 = [MEMORY[0x277CFDC18] sharedLogging];
      v65 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
      v66 = [v48 logHandleForAccountInfoProvider:v65];

      if (v66 && os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_242742000, v66, OS_LOG_TYPE_INFO, "[multi-move] ~ New etag differs from old etag -- MOVE returned no ETag, but PROPFIND gave us a good new value.", buf, 2u);
      }

      goto LABEL_45;
    }

    v59 = [v68 isEqualToString:v23];
    v48 = [MEMORY[0x277CFDC18] sharedLogging];
    v60 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
    v61 = [v48 logHandleForAccountInfoProvider:v60];

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
    v10 = v68;
LABEL_45:
    v37 = v67;
LABEL_46:

LABEL_47:
    v11 = v69;
    goto LABEL_57;
  }

  v49 = @"New ETag found by PROPFIND didn't match non-nil intermediate ETag returned by MOVE";
LABEL_50:
  v50 = [MEMORY[0x277CFDC18] sharedLogging];
  v51 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v52 = [v50 logHandleForAccountInfoProvider:v51];

  if (v52 && os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v71 = v49;
    _os_log_impl(&dword_242742000, v52, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ %{public}@", buf, 0xCu);
  }

  v53 = [MEMORY[0x277CFDC18] sharedLogging];
  v54 = objc_loadWeakRetained((&self->super.super.super.isa + v13));
  v55 = [v53 logHandleForAccountInfoProvider:v54];

  v10 = v68;
  if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242742000, v55, OS_LOG_TYPE_DEFAULT, "[multi-move] ~ Returing ETag and ScheduleTag of nil", buf, 2u);
  }

  v11 = v69;
  v16 = 0;
LABEL_57:

  v56 = *MEMORY[0x277D85DE8];
}

@end