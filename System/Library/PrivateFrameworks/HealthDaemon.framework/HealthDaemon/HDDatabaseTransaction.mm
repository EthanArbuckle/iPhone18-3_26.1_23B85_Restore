@interface HDDatabaseTransaction
- (BOOL)performWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler;
- (HDDatabase)database;
- (HDDatabaseTransaction)initWithDatabase:(id)database provider:(id)provider rootContext:(id)context;
- (id)databaseForEntity:(id)entity;
- (id)databaseForEntityClass:(Class)class;
- (id)databaseForEntityProtectionClass:(int64_t)class;
- (uint64_t)_resolveCacheScope:(uint64_t)result;
- (void)dealloc;
- (void)onCommit:(id)commit orRollback:(id)rollback;
- (void)requestTransactionInterruption;
- (void)requireRollback;
- (void)transactionDidEndWithError:(id)error;
@end

@implementation HDDatabaseTransaction

- (void)dealloc
{
  if (self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:45 description:@"HDDatabaseTransaction dealloc'd while active."];
  }

  v5.receiver = self;
  v5.super_class = HDDatabaseTransaction;
  [(HDDatabaseTransaction *)&v5 dealloc];
}

- (HDDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (HDDatabaseTransaction)initWithDatabase:(id)database provider:(id)provider rootContext:(id)context
{
  databaseCopy = database;
  providerCopy = provider;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"rootContext != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDDatabaseTransaction;
  v12 = [(HDDatabaseTransaction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_database, databaseCopy);
    objc_storeWeak(&v13->_databaseProvider, providerCopy);
    v14 = [contextCopy copy];
    rootContext = v13->_rootContext;
    v13->_rootContext = v14;
  }

  return v13;
}

- (id)databaseForEntityProtectionClass:(int64_t)class
{
  if (class == 1)
  {
    v4 = 56;
  }

  else
  {
    if (class != 2)
    {
      goto LABEL_6;
    }

    v4 = 64;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (id)databaseForEntity:(id)entity
{
  protectionClass = [objc_opt_class() protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:protectionClass];
}

- (id)databaseForEntityClass:(Class)class
{
  protectionClass = [(objc_class *)class protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:protectionClass];
}

- (uint64_t)_resolveCacheScope:(uint64_t)result
{
  if (result)
  {
    if (a2 == 2)
    {
      return 0;
    }

    else if (a2)
    {
      return 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((result + 8));
      configuration = [WeakRetained configuration];
      behavior = [configuration behavior];
      features = [behavior features];
      databaseStateCacheTransactionScoped = [features databaseStateCacheTransactionScoped];

      return databaseStateCacheTransactionScoped;
    }
  }

  return result;
}

- (BOOL)performWithContext:(id)context error:(id *)error block:(id)block inaccessibilityHandler:(id)handler
{
  v189 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  blockCopy = block;
  handlerCopy = handler;
  requiresProtectedData = [contextCopy requiresProtectedData];
  v156 = contextCopy;
  requiresWrite = [contextCopy requiresWrite];
  if (self->_performingMigration)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:107 description:@"Cannot peform a database transaction inside a database migration transaction"];
LABEL_7:
    v14 = 0;
    goto LABEL_120;
  }

  log = error;
  if (self->_isOutermostTransactionUnprotected & requiresProtectedData)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Cannot promote an unprotected transaction to a protected transaction", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:error code:107 description:@"Cannot promote an unprotected transaction to a protected transaction"];
    goto LABEL_7;
  }

  isActive = self->_isActive;
  if (self->_isActive)
  {
    spid = 0;
    v15 = 0.0;
  }

  else
  {
    self->_isActive = 1;
    self->_isOutermostTransactionUnprotected = requiresProtectedData ^ 1;
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_database);
    configuration = [WeakRetained configuration];
    behavior = [configuration behavior];
    features = [behavior features];
    databaseSemaphoreLogging = [features databaseSemaphoreLogging];

    if (databaseSemaphoreLogging)
    {
      v22 = *MEMORY[0x277CCC2A0];
      v23 = _HKLogSignpostIDGenerate();
      v24 = objc_loadWeakRetained(&self->_database);
      configuration2 = [v24 configuration];
      behavior2 = [configuration2 behavior];
      features2 = [behavior2 features];
      databaseSemaphoreLogging2 = [features2 databaseSemaphoreLogging];

      if (databaseSemaphoreLogging2)
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v30 = v29;
          v31 = v30;
          if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            currentThread = [MEMORY[0x277CCACC8] currentThread];
            [MEMORY[0x277CCACC8] threadPriority];
            v34 = v33;
            highPriority = [v156 highPriority];
            requiresWrite2 = [v156 requiresWrite];
            if (highPriority)
            {
              v37 = "high";
            }

            else
            {
              v37 = "default";
            }

            if (requiresWrite2)
            {
              v38 = "W";
            }

            else
            {
              v38 = "O";
            }

            *buf = 138413314;
            v172 = currentThread;
            v173 = 2048;
            v174 = v34;
            v175 = 2080;
            v176 = v37;
            v177 = 2080;
            v178 = v38;
            v179 = 2080;
            *v180 = dispatch_queue_get_label(0);
            _os_signpost_emit_with_name_impl(&dword_228986000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v23, "hddatabase-semaphore", "thread: %@, priority: %f (%s), R%s, queue: %s", buf, 0x34u);
          }
        }
      }

      spid = v23;
    }

    else
    {
      spid = 0;
    }

    v15 = Current;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke;
  aBlock[3] = &unk_278618968;
  v170 = handlerCopy;
  handlerCopy = _Block_copy(aBlock);
  if (!requiresProtectedData || self->_protectedDatabase)
  {
    v148 = 0;
    goto LABEL_29;
  }

  if (self->_unprotectedDatabase)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_unprotectedDatabase == nil"}];
  }

  v68 = objc_loadWeakRetained(&self->_databaseProvider);
  v168 = 0;
  v69 = [v68 checkOutProtectedDatabase:self error:&v168];
  v70 = v168;
  protectedDatabase = self->_protectedDatabase;
  self->_protectedDatabase = v69;

  v72 = self->_protectedDatabase == 0;
  v73 = objc_loadWeakRetained(&self->_database);
  v74 = v73;
  if (v72)
  {
    configuration3 = [v73 configuration];
    behavior3 = [configuration3 behavior];
    features3 = [behavior3 features];
    databaseSemaphoreLogging3 = [features3 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging3)
    {
      _HKInitializeLogging();
      v106 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v107 = v106;
        v108 = v107;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
        {
          localizedDescription = [v70 localizedDescription];
          *buf = 138412290;
          v172 = localizedDescription;
          _os_signpost_emit_with_name_impl(&dword_228986000, v108, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedDatabase: %@", buf, 0xCu);
        }
      }
    }

    v14 = (handlerCopy[2].super.isa)(handlerCopy, v70, log);
    goto LABEL_101;
  }

  configuration4 = [v73 configuration];
  behavior4 = [configuration4 behavior];
  features4 = [behavior4 features];
  databaseSemaphoreLogging4 = [features4 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging4)
  {
    _HKInitializeLogging();
    v79 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v80 = v79;
      v81 = v80;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v81, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out ProtectedDatabase", buf, 2u);
      }
    }
  }

  v82 = objc_loadWeakRetained(&self->_databaseProvider);
  v167 = v70;
  v83 = [v82 checkOutProtectedResources:self error:&v167];
  v84 = v167;

  protectedResources = self->_protectedResources;
  self->_protectedResources = v83;

  if (!self->_protectedResources)
  {
    v110 = objc_loadWeakRetained(&self->_databaseProvider);
    [v110 checkInDatabase:self->_protectedDatabase type:1 protectedResources:0];

    v111 = self->_protectedDatabase;
    self->_protectedDatabase = 0;

    v112 = objc_loadWeakRetained(&self->_database);
    configuration5 = [v112 configuration];
    behavior5 = [configuration5 behavior];
    features5 = [behavior5 features];
    databaseSemaphoreLogging5 = [features5 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging5)
    {
      _HKInitializeLogging();
      v117 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v118 = v117;
        v119 = v118;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
        {
          localizedDescription2 = [v84 localizedDescription];
          *buf = 138412290;
          v172 = localizedDescription2;
          _os_signpost_emit_with_name_impl(&dword_228986000, v119, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedResources: %@", buf, 0xCu);
        }
      }
    }

    v14 = (handlerCopy[2].super.isa)(handlerCopy, v84, log);
    v70 = v84;
LABEL_101:

    v57 = 0.0;
    v121 = v170;
LABEL_105:

    goto LABEL_106;
  }

  v86 = objc_loadWeakRetained(&self->_database);
  configuration6 = [v86 configuration];
  behavior6 = [configuration6 behavior];
  features6 = [behavior6 features];
  databaseSemaphoreLogging6 = [features6 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging6)
  {
    _HKInitializeLogging();
    v91 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v92 = v91;
      v93 = v92;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v93, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out ProtectedResources", buf, 2u);
      }
    }
  }

  [(HDSQLiteDatabase *)self->_protectedDatabase setCacheScope:[(HDDatabaseTransaction *)self _resolveCacheScope:?]];
  [(HDSQLiteDatabase *)self->_protectedDatabase setTransactionInterruptRequested:0];

  v148 = 1;
LABEL_29:
  unprotectedDatabase = self->_unprotectedDatabase;
  if (!unprotectedDatabase)
  {
    v40 = objc_loadWeakRetained(&self->_databaseProvider);
    v166 = 0;
    v41 = [v40 checkOutUnprotectedDatabase:self error:&v166];
    v42 = v166;
    v43 = self->_unprotectedDatabase;
    self->_unprotectedDatabase = v41;

    LODWORD(v40) = self->_unprotectedDatabase == 0;
    v44 = objc_loadWeakRetained(&self->_database);
    v45 = v44;
    if (v40)
    {
      configuration7 = [v44 configuration];
      behavior7 = [configuration7 behavior];
      features7 = [behavior7 features];
      databaseSemaphoreLogging7 = [features7 databaseSemaphoreLogging];

      if (databaseSemaphoreLogging7)
      {
        _HKInitializeLogging();
        v98 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v99 = v98;
          v100 = v99;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
          {
            localizedDescription3 = [v42 localizedDescription];
            *buf = 138412290;
            v172 = localizedDescription3;
            _os_signpost_emit_with_name_impl(&dword_228986000, v100, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout UnprotectedDatabase: %@", buf, 0xCu);
          }
        }
      }

      v14 = (handlerCopy[2].super.isa)(handlerCopy, v42, log);

      v57 = 0.0;
LABEL_103:
      if ((v148 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    configuration8 = [v44 configuration];
    behavior8 = [configuration8 behavior];
    features8 = [behavior8 features];
    databaseSemaphoreLogging8 = [features8 databaseSemaphoreLogging];

    if (databaseSemaphoreLogging8)
    {
      _HKInitializeLogging();
      v50 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v51 = v50;
        v52 = v51;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_228986000, v52, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "checked out UnprotectedDatabase", buf, 2u);
        }
      }
    }

    [(HDSQLiteDatabase *)self->_unprotectedDatabase setCacheScope:[(HDDatabaseTransaction *)self _resolveCacheScope:?]];
    [(HDSQLiteDatabase *)self->_unprotectedDatabase setTransactionInterruptRequested:0];
  }

  if (isActive)
  {
    v53 = 0;
  }

  else
  {
    statistics = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    v53 = statistics != 0;
  }

  if (requiresProtectedData)
  {
    v55 = 2;
  }

  else
  {
    v55 = 1;
  }

  v56 = [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:v55];
  v57 = 0.0;
  v58 = 0.0;
  if (v53)
  {
    v58 = CFAbsoluteTimeGetCurrent();
  }

  v59 = isActive;
  if (!isActive)
  {
    v57 = CFAbsoluteTimeGetCurrent();
    v59 = 0;
  }

  v165 = 0;
  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_322;
  v159[3] = &unk_27862EDB0;
  v161 = v55;
  v162 = requiresWrite;
  v159[4] = self;
  v164 = !v59;
  v163 = spid;
  v160 = blockCopy;
  v14 = [v56 performTransactionWithType:requiresWrite error:&v165 usingBlock:v159];
  v60 = v165;
  if (v53)
  {
    v61 = [[HDDatabaseTransactionStatistics alloc] _initWithStartTime:v58 endTime:CFAbsoluteTimeGetCurrent()];
    statistics2 = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    [statistics2 _addTransactionStatistics:v61];
  }

  if (v60)
  {
    v63 = 1;
  }

  else
  {
    v63 = v14;
  }

  if ((v63 & 1) == 0)
  {
    v60 = [MEMORY[0x277CCA9B8] hk_error:124 description:@"Transaction failure."];
  }

  if (v60)
  {
    v64 = *MEMORY[0x277CCC2A0];
    v65 = v60;
    v66 = v64;
    if (log)
    {
      v67 = v65;
      log->isa = v65;
    }

    else
    {
      _HKLogDroppedErrorWithReason();
    }
  }

  if (!unprotectedDatabase)
  {
    v123 = objc_loadWeakRetained(&self->_databaseProvider);
    [v123 checkInDatabase:self->_unprotectedDatabase type:0 protectedResources:0];

    v124 = self->_unprotectedDatabase;
    self->_unprotectedDatabase = 0;

    goto LABEL_103;
  }

  if (v148)
  {
LABEL_104:
    v125 = objc_loadWeakRetained(&self->_databaseProvider);
    [v125 checkInDatabase:self->_protectedDatabase type:1 protectedResources:self->_protectedResources];

    v126 = self->_protectedDatabase;
    self->_protectedDatabase = 0;

    v121 = self->_protectedResources;
    self->_protectedResources = 0;
    goto LABEL_105;
  }

LABEL_106:
  if (isActive)
  {
    goto LABEL_120;
  }

  v127 = v156;
  v128 = CFAbsoluteTimeGetCurrent() - v57;
  if (v57 - v15 > 5.0)
  {
    v129 = @"start";
    goto LABEL_112;
  }

  if (v57 > 0.0 && v128 > 5.0)
  {
    v129 = @"work";
LABEL_112:
    _HKInitializeLogging();
    v130 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      loga = v130;
      v131 = HKDiagnosticStringFromDuration();
      v152 = HKDiagnosticStringFromDuration();
      v132 = HKDiagnosticStringFromDuration();
      requiresWrite3 = [v127 requiresWrite];
      requiresProtectedData2 = [v127 requiresProtectedData];
      highPriority2 = [v127 highPriority];
      cacheScope = [v127 cacheScope];
      journalType = [v127 journalType];
      label = dispatch_queue_get_label(0);
      *buf = 138545666;
      v172 = v129;
      v173 = 2114;
      v174 = v131;
      v175 = 2114;
      v176 = v152;
      v177 = 2114;
      v178 = v132;
      v179 = 1024;
      *v180 = requiresWrite3;
      *&v180[4] = 1024;
      *&v180[6] = requiresProtectedData2;
      v181 = 1024;
      v182 = highPriority2;
      v183 = 2048;
      v184 = cacheScope;
      v185 = 2048;
      v186 = journalType;
      v187 = 2082;
      v188 = label;
      _os_log_impl(&dword_228986000, loga, OS_LOG_TYPE_DEFAULT, "Long database transaction %{public}@ duration: duration=%{public}@, wait=%{public}@, work=%{public}@, write=%{BOOL}d, protected=%{BOOL}d, priority=%{BOOL}d, cache=%ld, journal=%ld, queue=%{public}s", buf, 0x5Au);
    }
  }

  *&self->_isActive = 0;
  v138 = objc_loadWeakRetained(&self->_database);
  configuration9 = [v138 configuration];
  behavior9 = [configuration9 behavior];
  features9 = [behavior9 features];
  databaseSemaphoreLogging9 = [features9 databaseSemaphoreLogging];

  if (databaseSemaphoreLogging9)
  {
    _HKInitializeLogging();
    v143 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v144 = v143;
      v145 = v144;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v144))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v145, OS_SIGNPOST_INTERVAL_END, spid, "hddatabase-semaphore", "", buf, 2u);
      }
    }
  }

LABEL_120:

  v146 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (*(v6 + 16))(v6, v5, a3);
  }

  else
  {
    v8 = v5;
    if (v8)
    {
      if (a3)
      {
        v9 = v8;
        *a3 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_322(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) == 2)
  {
    v5 = [*(a1 + 32) unprotectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_2;
    v14[3] = &unk_27862ED88;
    v17 = *(a1 + 72);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v16 = v6;
    v15 = v8;
    v9 = [v5 performTransactionWithType:v7 error:a3 usingBlock:v14];

    return v9;
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 40) + 16);

    return v13();
  }
}

uint64_t __79__HDDatabaseTransaction_performWithContext_error_block_inaccessibilityHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained configuration];
  v4 = [v3 behavior];
  v5 = [v4 features];
  if (![v5 databaseSemaphoreLogging])
  {

LABEL_8:
    goto LABEL_9;
  }

  v6 = *(a1 + 56);

  if (v6 == 1)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v8 = v7;
      WeakRetained = v8;
      v9 = *(a1 + 48);
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, WeakRetained, OS_SIGNPOST_EVENT, v9, "hddatabase-semaphore", "outermost transaction block start", buf, 2u);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = *(a1 + 32);
  v11 = (*(*(a1 + 40) + 16))();
  v12 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v13 = [v12 configuration];
  v14 = [v13 behavior];
  v15 = [v14 features];
  if (![v15 databaseSemaphoreLogging])
  {

LABEL_16:
    return v11;
  }

  v16 = *(a1 + 56);

  if (v16 == 1)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC2A0];
    if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
    {
      v18 = v17;
      v12 = v18;
      v19 = *(a1 + 48);
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_228986000, v12, OS_SIGNPOST_EVENT, v19, "hddatabase-semaphore", "outermost transaction block complete", v21, 2u);
      }

      goto LABEL_16;
    }
  }

  return v11;
}

- (void)onCommit:(id)commit orRollback:(id)rollback
{
  commitCopy = commit;
  rollbackCopy = rollback;
  if (!self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:330 description:@"Must be in a transaction"];
  }

  if (commitCopy)
  {
    onCommitBlocks = self->_onCommitBlocks;
    if (!onCommitBlocks)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = self->_onCommitBlocks;
      self->_onCommitBlocks = v9;

      onCommitBlocks = self->_onCommitBlocks;
    }

    v11 = [commitCopy copy];
    v12 = _Block_copy(v11);
    [(NSMutableArray *)onCommitBlocks addObject:v12];
  }

  if (rollbackCopy)
  {
    onRollbackBlocks = self->_onRollbackBlocks;
    if (!onRollbackBlocks)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = self->_onRollbackBlocks;
      self->_onRollbackBlocks = v14;

      onRollbackBlocks = self->_onRollbackBlocks;
    }

    v16 = [rollbackCopy copy];
    v17 = _Block_copy(v16);
    [(NSMutableArray *)onRollbackBlocks addObject:v17];
  }
}

- (void)transactionDidEndWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (self->_isActive)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"!_isActive"}];
  }

  if (errorCopy)
  {
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v6 = self->_onRollbackBlocks;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v17 + 1) + 8 * i) + 16))();
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v6 = self->_onCommitBlocks;
    v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v21 + 1) + 8 * j) + 16))();
        }

        v10 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }
  }

  onCommitBlocks = self->_onCommitBlocks;
  self->_onCommitBlocks = 0;

  onRollbackBlocks = self->_onRollbackBlocks;
  self->_onRollbackBlocks = 0;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestTransactionInterruption
{
  [(HDSQLiteDatabase *)self->_protectedDatabase setTransactionInterruptRequested:1];
  unprotectedDatabase = self->_unprotectedDatabase;

  [(HDSQLiteDatabase *)unprotectedDatabase setTransactionInterruptRequested:1];
}

- (void)requireRollback
{
  [(HDSQLiteDatabase *)self->_protectedDatabase requireRollback];
  unprotectedDatabase = self->_unprotectedDatabase;

  [(HDSQLiteDatabase *)unprotectedDatabase requireRollback];
}

@end