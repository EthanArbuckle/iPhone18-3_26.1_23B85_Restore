@interface DACoreDAVAgent
- (DACoreDAVAgent)initWithAccount:(id)a3;
- (id)waiterID;
- (void)_cancelOptionsTimer;
- (void)_probeAndSyncWithBlock:(id)a3;
- (void)_serverProbeTimedOut;
- (void)dealloc;
@end

@implementation DACoreDAVAgent

- (DACoreDAVAgent)initWithAccount:(id)a3
{
  v4.receiver = self;
  v4.super_class = DACoreDAVAgent;
  return [(DAAgent *)&v4 initWithAccount:a3];
}

- (void)_cancelOptionsTimer
{
  v3 = [(DACoreDAVAgent *)self optionsTimeoutTimer];
  [v3 invalidate];

  [(DACoreDAVAgent *)self setOptionsTimeoutTimer:0];
}

- (void)dealloc
{
  [(DACoreDAVAgent *)self _cancelOptionsTimer];
  optionsProbe = self->_optionsProbe;
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:0];
  [(CoreDAVOptionsTask *)optionsProbe finishCoreDAVTaskWithError:v4];

  v5.receiver = self;
  v5.super_class = DACoreDAVAgent;
  [(DACoreDAVAgent *)&v5 dealloc];
}

- (void)_serverProbeTimedOut
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(DAAgent *)self account];
  v4 = [v3 taskManager];
  v5 = [v4 activeModalTask];

  v6 = DALoggingwithCategory();
  v7 = v6;
  if (v5)
  {
    v8 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v6, v8))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2424DF000, v7, v8, "The options task timer fired, but the task manager is modal. We'll wait until it drops modal before tearing down this task.", &v16, 2u);
    }
  }

  else
  {
    v9 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v6, v9))
    {
      v10 = [(DAAgent *)self account];
      v11 = [v10 principalURL];
      [MEMORY[0x277CF3AC8] defaultDAVProbeTimeout];
      v16 = 138412546;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_2424DF000, v7, v9, "We weren't able to reach the server at %@ within %lf seconds. Bailing out of this refresh early.", &v16, 0x16u);
    }

    [(DACoreDAVAgent *)self _cancelOptionsTimer];
    v13 = [(DACoreDAVAgent *)self optionsProbe];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFDB18] code:1 userInfo:0];
    [v13 finishCoreDAVTaskWithError:v14];

    [(DACoreDAVAgent *)self setOptionsProbe:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_probeAndSyncWithBlock:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DACoreDAVAgent *)self optionsProbe];

  if (v5)
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = [(DAAgent *)self account];
      v9 = [v8 principalURL];
      *buf = 138412290;
      v39 = v9;
      _os_log_impl(&dword_2424DF000, v6, v7, "Ignoring probe request for %@ as we already have one outstanding", buf, 0xCu);
    }

LABEL_8:

    v13 = +[DARefreshManager sharedManager];
    [v13 delegateDidCompleteRefresh:self];
    goto LABEL_9;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@Probe", v12];

  v14 = [MEMORY[0x277CF3A10] sharedBabysitter];
  v15 = [v14 registerAccount:self forOperationWithName:v13];

  v16 = DALoggingwithCategory();
  v17 = v16;
  if (v15)
  {
    v18 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v16, v18))
    {
      v19 = [(DAAgent *)self account];
      v20 = [v19 principalURL];
      [MEMORY[0x277CF3AC8] defaultDAVProbeTimeout];
      *buf = 138412546;
      v39 = v20;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(&dword_2424DF000, v17, v18, "Probing the host at %@ to see if we have a good enough network connection. We'll wait up to %lf seconds.", buf, 0x16u);
    }

    v22 = objc_alloc(MEMORY[0x277CFDC48]);
    v23 = [(DAAgent *)self account];
    v24 = [v23 principalURL];
    v25 = [v22 initWithURL:v24];

    v26 = [(DAAgent *)self account];
    [v25 setAccountInfoProvider:v26];

    objc_initWeak(buf, self);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__DACoreDAVAgent__probeAndSyncWithBlock___block_invoke;
    v34[3] = &unk_278D52DF0;
    objc_copyWeak(&v37, buf);
    v36 = v4;
    v6 = v13;
    v35 = v6;
    [v25 setCompletionBlock:v34];
    v27 = MEMORY[0x277CBEBB8];
    [MEMORY[0x277CF3AC8] defaultDAVProbeTimeout];
    v28 = [v27 scheduledTimerWithTimeInterval:self target:sel__serverProbeTimedOut selector:0 userInfo:1 repeats:?];
    [(DACoreDAVAgent *)self setOptionsTimeoutTimer:v28];

    [(DACoreDAVAgent *)self setOptionsProbe:v25];
    v29 = [(DAAgent *)self account];
    v30 = [v29 taskManager];
    v31 = [(DACoreDAVAgent *)self optionsProbe];
    [v30 submitQueuedCoreDAVTask:v31];

    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);

    goto LABEL_8;
  }

  v33 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v16, v33))
  {
    *buf = 138412290;
    v39 = self;
    _os_log_impl(&dword_2424DF000, v17, v33, "The babysitter has put this account in timeout, so giving up on this probe sync. %@", buf, 0xCu);
  }

  (*(v4 + 2))(v4, 0);
LABEL_9:

  v32 = *MEMORY[0x277D85DE8];
}

void __41__DACoreDAVAgent__probeAndSyncWithBlock___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _cancelOptionsTimer];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 optionsProbe];
  v5 = [v4 error];
  v6 = [v5 domain];
  v7 = [v6 isEqualToString:*MEMORY[0x277CFDB18]];
  if (!v7)
  {
LABEL_5:
    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = [v12 optionsProbe];
    v14 = [v13 error];
    ShouldTurnOnReachability = statusAndErrorIndicateWeShouldTurnOnReachability();

    v11 = ShouldTurnOnReachability;
    v9 = v38;
    v8 = v40;
    v10 = v36;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = [v8 optionsProbe];
  v10 = [v9 error];
  if ([v10 code] != 1)
  {
    v36 = v10;
    v38 = v9;
    v40 = v8;
    goto LABEL_5;
  }

  v11 = 1;
LABEL_6:

LABEL_7:
  if (v11)
  {
    v16 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v16, v17))
    {
      v39 = objc_loadWeakRetained((a1 + 48));
      v37 = [v39 account];
      v18 = [v37 accountDescription];
      v19 = objc_loadWeakRetained((a1 + 48));
      v20 = [v19 account];
      v21 = [v20 host];
      v22 = objc_loadWeakRetained((a1 + 48));
      v23 = [v22 optionsProbe];
      v24 = [v23 error];
      *buf = 138412802;
      v42 = v18;
      v43 = 2112;
      v44 = v21;
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&dword_2424DF000, v16, v17, "Account %@ couldn't reach the server at %@: %@", buf, 0x20u);
    }

    v25 = +[DARefreshManager sharedManager];
    v26 = objc_loadWeakRetained((a1 + 48));
    [v25 delegateDidCompleteRefresh:v26];

    v27 = objc_loadWeakRetained((a1 + 48));
    [v27 setOptionsProbe:0];
  }

  else
  {
    v28 = objc_loadWeakRetained((a1 + 48));
    [v28 setOptionsProbe:0];

    v27 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v27, v29))
    {
      v30 = objc_loadWeakRetained((a1 + 48));
      v31 = [v30 account];
      v32 = [v31 host];
      *buf = 138412290;
      v42 = v32;
      _os_log_impl(&dword_2424DF000, v27, v29, "We were able to reach the server at %@. Continuing with the refresh", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  v33 = [MEMORY[0x277CF3A10] sharedBabysitter];
  v34 = objc_loadWeakRetained((a1 + 48));
  [v33 unregisterAccount:v34 forOperationWithName:*(a1 + 32)];

  v35 = *MEMORY[0x277D85DE8];
}

- (id)waiterID
{
  v2 = [(DAAgent *)self account];
  v3 = [v2 accountID];

  return v3;
}

@end