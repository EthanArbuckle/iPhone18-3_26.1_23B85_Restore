@interface HDDatabaseTransaction
- (BOOL)performWithContext:(id)a3 error:(id *)a4 block:(id)a5 inaccessibilityHandler:(id)a6;
- (HDDatabase)database;
- (HDDatabaseTransaction)initWithDatabase:(id)a3 provider:(id)a4 rootContext:(id)a5;
- (id)databaseForEntity:(id)a3;
- (id)databaseForEntityClass:(Class)a3;
- (id)databaseForEntityProtectionClass:(int64_t)a3;
- (uint64_t)_resolveCacheScope:(uint64_t)result;
- (void)dealloc;
- (void)onCommit:(id)a3 orRollback:(id)a4;
- (void)requestTransactionInterruption;
- (void)requireRollback;
- (void)transactionDidEndWithError:(id)a3;
@end

@implementation HDDatabaseTransaction

- (void)dealloc
{
  if (self->_isActive)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:45 description:@"HDDatabaseTransaction dealloc'd while active."];
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

- (HDDatabaseTransaction)initWithDatabase:(id)a3 provider:(id)a4 rootContext:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"rootContext != nil"}];
  }

  v18.receiver = self;
  v18.super_class = HDDatabaseTransaction;
  v12 = [(HDDatabaseTransaction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_database, v9);
    objc_storeWeak(&v13->_databaseProvider, v10);
    v14 = [v11 copy];
    rootContext = v13->_rootContext;
    v13->_rootContext = v14;
  }

  return v13;
}

- (id)databaseForEntityProtectionClass:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = 56;
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_6;
    }

    v4 = 64;
  }

  a2 = *(&self->super.isa + v4);
LABEL_6:

  return a2;
}

- (id)databaseForEntity:(id)a3
{
  v4 = [objc_opt_class() protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:v4];
}

- (id)databaseForEntityClass:(Class)a3
{
  v4 = [(objc_class *)a3 protectionClass];

  return [(HDDatabaseTransaction *)self databaseForEntityProtectionClass:v4];
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
      v3 = [WeakRetained configuration];
      v4 = [v3 behavior];
      v5 = [v4 features];
      v6 = [v5 databaseStateCacheTransactionScoped];

      return v6;
    }
  }

  return result;
}

- (BOOL)performWithContext:(id)a3 error:(id *)a4 block:(id)a5 inaccessibilityHandler:(id)a6
{
  v189 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v157 = a5;
  v158 = a6;
  v12 = [v11 requiresProtectedData];
  v156 = v11;
  v155 = [v11 requiresWrite];
  if (self->_performingMigration)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 description:@"Cannot peform a database transaction inside a database migration transaction"];
LABEL_7:
    v14 = 0;
    goto LABEL_120;
  }

  log = a4;
  if (self->_isOutermostTransactionUnprotected & v12)
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Cannot promote an unprotected transaction to a protected transaction", buf, 2u);
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:107 description:@"Cannot promote an unprotected transaction to a protected transaction"];
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
    self->_isOutermostTransactionUnprotected = v12 ^ 1;
    Current = CFAbsoluteTimeGetCurrent();
    WeakRetained = objc_loadWeakRetained(&self->_database);
    v18 = [WeakRetained configuration];
    v19 = [v18 behavior];
    v20 = [v19 features];
    v21 = [v20 databaseSemaphoreLogging];

    if (v21)
    {
      v22 = *MEMORY[0x277CCC2A0];
      v23 = _HKLogSignpostIDGenerate();
      v24 = objc_loadWeakRetained(&self->_database);
      v25 = [v24 configuration];
      v26 = [v25 behavior];
      v27 = [v26 features];
      v28 = [v27 databaseSemaphoreLogging];

      if (v28)
      {
        _HKInitializeLogging();
        v29 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v30 = v29;
          v31 = v30;
          if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            v32 = [MEMORY[0x277CCACC8] currentThread];
            [MEMORY[0x277CCACC8] threadPriority];
            v34 = v33;
            v35 = [v156 highPriority];
            v36 = [v156 requiresWrite];
            if (v35)
            {
              v37 = "high";
            }

            else
            {
              v37 = "default";
            }

            if (v36)
            {
              v38 = "W";
            }

            else
            {
              v38 = "O";
            }

            *buf = 138413314;
            v172 = v32;
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
  v170 = v158;
  v158 = _Block_copy(aBlock);
  if (!v12 || self->_protectedDatabase)
  {
    v148 = 0;
    goto LABEL_29;
  }

  if (self->_unprotectedDatabase)
  {
    v122 = [MEMORY[0x277CCA890] currentHandler];
    [v122 handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"_unprotectedDatabase == nil"}];
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
    v102 = [v73 configuration];
    v103 = [v102 behavior];
    v104 = [v103 features];
    v105 = [v104 databaseSemaphoreLogging];

    if (v105)
    {
      _HKInitializeLogging();
      v106 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v107 = v106;
        v108 = v107;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
        {
          v109 = [v70 localizedDescription];
          *buf = 138412290;
          v172 = v109;
          _os_signpost_emit_with_name_impl(&dword_228986000, v108, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedDatabase: %@", buf, 0xCu);
        }
      }
    }

    v14 = (v158[2].super.isa)(v158, v70, log);
    goto LABEL_101;
  }

  v75 = [v73 configuration];
  v76 = [v75 behavior];
  v77 = [v76 features];
  v78 = [v77 databaseSemaphoreLogging];

  if (v78)
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
    v113 = [v112 configuration];
    v114 = [v113 behavior];
    v115 = [v114 features];
    v116 = [v115 databaseSemaphoreLogging];

    if (v116)
    {
      _HKInitializeLogging();
      v117 = *MEMORY[0x277CCC2A0];
      if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
      {
        v118 = v117;
        v119 = v118;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
        {
          v120 = [v84 localizedDescription];
          *buf = 138412290;
          v172 = v120;
          _os_signpost_emit_with_name_impl(&dword_228986000, v119, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout ProtectedResources: %@", buf, 0xCu);
        }
      }
    }

    v14 = (v158[2].super.isa)(v158, v84, log);
    v70 = v84;
LABEL_101:

    v57 = 0.0;
    v121 = v170;
LABEL_105:

    goto LABEL_106;
  }

  v86 = objc_loadWeakRetained(&self->_database);
  v87 = [v86 configuration];
  v88 = [v87 behavior];
  v89 = [v88 features];
  v90 = [v89 databaseSemaphoreLogging];

  if (v90)
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
      v94 = [v44 configuration];
      v95 = [v94 behavior];
      v96 = [v95 features];
      v97 = [v96 databaseSemaphoreLogging];

      if (v97)
      {
        _HKInitializeLogging();
        v98 = *MEMORY[0x277CCC2A0];
        if (os_signpost_enabled(*MEMORY[0x277CCC2A0]))
        {
          v99 = v98;
          v100 = v99;
          if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
          {
            v101 = [v42 localizedDescription];
            *buf = 138412290;
            v172 = v101;
            _os_signpost_emit_with_name_impl(&dword_228986000, v100, OS_SIGNPOST_EVENT, spid, "hddatabase-semaphore", "unable to checkout UnprotectedDatabase: %@", buf, 0xCu);
          }
        }
      }

      v14 = (v158[2].super.isa)(v158, v42, log);

      v57 = 0.0;
LABEL_103:
      if ((v148 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_104;
    }

    v46 = [v44 configuration];
    v47 = [v46 behavior];
    v48 = [v47 features];
    v49 = [v48 databaseSemaphoreLogging];

    if (v49)
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
    v54 = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    v53 = v54 != 0;
  }

  if (v12)
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
  v162 = v155;
  v159[4] = self;
  v164 = !v59;
  v163 = spid;
  v160 = v157;
  v14 = [v56 performTransactionWithType:v155 error:&v165 usingBlock:v159];
  v60 = v165;
  if (v53)
  {
    v61 = [[HDDatabaseTransactionStatistics alloc] _initWithStartTime:v58 endTime:CFAbsoluteTimeGetCurrent()];
    v62 = [(HDDatabaseTransactionContext *)self->_rootContext statistics];
    [v62 _addTransactionStatistics:v61];
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
      v149 = [v127 requiresWrite];
      v133 = [v127 requiresProtectedData];
      v134 = [v127 highPriority];
      v135 = [v127 cacheScope];
      v136 = [v127 journalType];
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
      *v180 = v149;
      *&v180[4] = 1024;
      *&v180[6] = v133;
      v181 = 1024;
      v182 = v134;
      v183 = 2048;
      v184 = v135;
      v185 = 2048;
      v186 = v136;
      v187 = 2082;
      v188 = label;
      _os_log_impl(&dword_228986000, loga, OS_LOG_TYPE_DEFAULT, "Long database transaction %{public}@ duration: duration=%{public}@, wait=%{public}@, work=%{public}@, write=%{BOOL}d, protected=%{BOOL}d, priority=%{BOOL}d, cache=%ld, journal=%ld, queue=%{public}s", buf, 0x5Au);
    }
  }

  *&self->_isActive = 0;
  v138 = objc_loadWeakRetained(&self->_database);
  v139 = [v138 configuration];
  v140 = [v139 behavior];
  v141 = [v140 features];
  v142 = [v141 databaseSemaphoreLogging];

  if (v142)
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

- (void)onCommit:(id)a3 orRollback:(id)a4
{
  v19 = a3;
  v7 = a4;
  if (!self->_isActive)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:330 description:@"Must be in a transaction"];
  }

  if (v19)
  {
    onCommitBlocks = self->_onCommitBlocks;
    if (!onCommitBlocks)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = self->_onCommitBlocks;
      self->_onCommitBlocks = v9;

      onCommitBlocks = self->_onCommitBlocks;
    }

    v11 = [v19 copy];
    v12 = _Block_copy(v11);
    [(NSMutableArray *)onCommitBlocks addObject:v12];
  }

  if (v7)
  {
    onRollbackBlocks = self->_onRollbackBlocks;
    if (!onRollbackBlocks)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v15 = self->_onRollbackBlocks;
      self->_onRollbackBlocks = v14;

      onRollbackBlocks = self->_onRollbackBlocks;
    }

    v16 = [v7 copy];
    v17 = _Block_copy(v16);
    [(NSMutableArray *)onRollbackBlocks addObject:v17];
  }
}

- (void)transactionDidEndWithError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_isActive)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HDDatabaseTransaction.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"!_isActive"}];
  }

  if (v5)
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