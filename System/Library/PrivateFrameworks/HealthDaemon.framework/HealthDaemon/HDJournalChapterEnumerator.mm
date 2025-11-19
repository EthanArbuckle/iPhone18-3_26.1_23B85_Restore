@interface HDJournalChapterEnumerator
+ (id)_journalChaptersForURL:(int)a3 sorted:(void *)a4 error:;
+ (id)_lightweightDirectoryEnumeratorForURL:(uint64_t)a1;
+ (id)journalChaptersForURL:(id)a3 error:(id *)a4;
+ (id)nextJournalChapterNameForURL:(id)a3;
+ (int64_t)journalChapterCountForURL:(id)a3;
- (BOOL)hasJournalChapters;
- (BOOL)hasMoreJournalChapters;
- (BOOL)loadSortedJournalChaptersWithError:(id *)a3;
- (HDJournalChapterEnumerator)init;
- (HDJournalChapterEnumerator)initWithPath:(id)a3;
- (HDJournalChapterEnumerator)initWithURL:(id)a3;
- (HDJournalChapterEnumeratorTestsDelegate)unitTestDelegate;
- (id)_openJournalChapters:(id)a3 error:(id *)a4;
- (id)nextOpenJournalChapterError:(id *)a3;
- (int64_t)maxAllowedOpenJournalChapterCount;
- (void)closeJournalChapters;
- (void)dealloc;
@end

@implementation HDJournalChapterEnumerator

- (HDJournalChapterEnumerator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDJournalChapterEnumerator)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDJournalChapterEnumerator;
  v5 = [(HDJournalChapterEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

- (HDJournalChapterEnumerator)initWithPath:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v5 = [(HDJournalChapterEnumerator *)self initWithURL:v4];

  return v5;
}

- (void)dealloc
{
  [(HDJournalChapterEnumerator *)self closeJournalChapters];
  v3.receiver = self;
  v3.super_class = HDJournalChapterEnumerator;
  [(HDJournalChapterEnumerator *)&v3 dealloc];
}

- (BOOL)hasJournalChapters
{
  if (self->_hasLoadedPersistedJournalNames)
  {
    return self->_totalJournalChapterCount > 0;
  }

  v3 = [HDJournalChapterEnumerator _lightweightDirectoryEnumeratorForURL:?];
  v4 = [v3 nextObject];
  v2 = v4 != 0;

  return v2;
}

+ (id)_lightweightDirectoryEnumeratorForURL:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 enumeratorAtURL:v2 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:21 errorHandler:&__block_literal_global_96];

  return v4;
}

- (void)closeJournalChapters
{
  v19 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = self;
    _os_log_debug_impl(&dword_228986000, v3, OS_LOG_TYPE_DEBUG, "%@ closing all open journal chapters", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_openJournalChapters;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8++) close];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  openJournalChapters = self->_openJournalChapters;
  self->_openJournalChapters = 0;

  remainingJournalChapters = self->_remainingJournalChapters;
  self->_remainingJournalChapters = 0;

  self->_hasLoadedPersistedJournalNames = 0;
  self->_totalJournalChapterCount = 0;
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadSortedJournalChaptersWithError:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [HDJournalChapterEnumerator _journalChaptersForURL:1 sorted:a3 error:?];
  if (v4)
  {
    objc_storeStrong(&self->_remainingJournalChapters, v4);
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    openJournalChapters = self->_openJournalChapters;
    self->_openJournalChapters = v5;

    self->_hasLoadedPersistedJournalNames = 1;
    self->_totalJournalChapterCount = [v4 count];
    self->_currentIndex = 0;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    URL = self->_URL;
    v11 = v7;
    v12 = [(NSURL *)URL path];
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = [v4 count];
    v19 = 1024;
    v20 = v4 != 0;
    _os_log_debug_impl(&dword_228986000, v11, OS_LOG_TYPE_DEBUG, "%@ for path:%@ loaded (%lu) journal chapter names with success:%{BOOL}d", &v13, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 != 0;
}

+ (id)_journalChaptersForURL:(int)a3 sorted:(void *)a4 error:
{
  v42[3] = *MEMORY[0x277D85DE8];
  v27 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *MEMORY[0x277CBE868];
  v7 = *MEMORY[0x277CBE838];
  v42[0] = *MEMORY[0x277CBE868];
  v42[1] = v7;
  v42[2] = *MEMORY[0x277CBE7B0];
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__89;
  v39 = __Block_byref_object_dispose__89;
  v40 = 0;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke;
  v34[3] = &unk_278620680;
  v34[4] = &v35;
  v9 = [v8 enumeratorAtURL:v27 includingPropertiesForKeys:v28 options:5 errorHandler:v34];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v11)
  {
    v12 = *v31;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        v15 = [v14 getResourceValue:&v29 forKey:v6 error:a4];
        v16 = v29;
        v17 = v16;
        if ((v15 & 1) == 0)
        {

          v22 = 0;
          goto LABEL_23;
        }

        if ([v16 BOOLValue])
        {
          v18 = [[HDDatabaseJournalDatabase alloc] initWithURL:v14];
        }

        else
        {
          v18 = [[HDDatabaseLegacyJournalFile alloc] initWithURL:v14];
        }

        [v5 addObject:v18];
      }

      v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (a3)
  {
    [v5 sortUsingComparator:&__block_literal_global_324_3];
  }

  v19 = v36[5];
  v20 = v19;
  if (v19)
  {
    if (a4)
    {
      v21 = v19;
      *a4 = v20;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v36[5])
  {
    v23 = 0;
  }

  else
  {
    v23 = v5;
  }

  v22 = v23;
LABEL_23:

  _Block_object_dispose(&v35, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)nextOpenJournalChapterError:(id *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if (!self->_hasLoadedPersistedJournalNames)
  {
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_228986000, v5, OS_LOG_TYPE_FAULT, "_hasLoadedPersistedJournalNames", buf, 2u);
    }

    goto LABEL_7;
  }

  if (self->_currentIndex == self->_totalJournalChapterCount || ![(NSMutableArray *)self->_remainingJournalChapters count]&& ![(NSMutableArray *)self->_openJournalChapters count])
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "Finished processing journal chapters", buf, 2u);
    }

LABEL_7:
    v6 = 0;
    goto LABEL_36;
  }

  if ([(NSMutableArray *)self->_openJournalChapters count])
  {
    v8 = [(NSMutableArray *)self->_openJournalChapters firstObject];
    [(NSMutableArray *)self->_openJournalChapters removeObjectAtIndex:0];
    [v8 close];
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
    {
      openJournalChapters = self->_openJournalChapters;
      v30 = v9;
      *buf = 138412546;
      v33 = self;
      v34 = 2048;
      v35 = [(NSMutableArray *)openJournalChapters count];
      _os_log_debug_impl(&dword_228986000, v30, OS_LOG_TYPE_DEBUG, "%@ Closing journal chapter at index 0. Current open count is %ld", buf, 0x16u);
    }
  }

  if (!self->_cachedError)
  {
    v31 = 0;
    if ([(NSMutableArray *)self->_remainingJournalChapters count]&& (v10 = [(HDJournalChapterEnumerator *)self maxAllowedOpenJournalChapterCount], v11 = v10 - [(NSMutableArray *)self->_openJournalChapters count], v11 >= 1))
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
      v13 = v11 + 1;
      do
      {
        if (![(NSMutableArray *)self->_remainingJournalChapters count])
        {
          break;
        }

        v14 = [(NSMutableArray *)self->_remainingJournalChapters firstObject];
        [v12 addObject:v14];

        [(NSMutableArray *)self->_remainingJournalChapters removeObjectAtIndex:0];
        --v13;
      }

      while (v13 > 1);
      v15 = [(HDJournalChapterEnumerator *)self unitTestDelegate];

      if (v15)
      {
        v16 = [(HDJournalChapterEnumerator *)self unitTestDelegate];
        v17 = [v16 _unitTest_openJournalChapters:v12 error:&v31];
      }

      else
      {
        v17 = [(HDJournalChapterEnumerator *)self _openJournalChapters:v12 error:&v31];
      }

      v19 = [v17 count];
      v20 = [v12 count];
      [(NSMutableArray *)self->_openJournalChapters addObjectsFromArray:v17];

      v21 = v31;
      v18 = v21;
      if (v19 != v20)
      {
        v22 = [v21 copy];
        cachedError = self->_cachedError;
        self->_cachedError = v22;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v6 = [(NSMutableArray *)self->_openJournalChapters firstObject];
  if (v6)
  {
    ++self->_currentIndex;
  }

  else
  {
    v24 = self->_cachedError;
    if (v24)
    {
      if (a3)
      {
        v25 = v24;
        *a3 = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    [(HDJournalChapterEnumerator *)self closeJournalChapters];
  }

  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v33 = self;
    v34 = 2112;
    v35 = v6;
    _os_log_debug_impl(&dword_228986000, v26, OS_LOG_TYPE_DEBUG, "%@ next journal chapter is %@", buf, 0x16u);
  }

LABEL_36:
  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)hasMoreJournalChapters
{
  if (self->_hasLoadedPersistedJournalNames)
  {
    LOBYTE(self) = self->_currentIndex < self->_totalJournalChapterCount;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v4 = *MEMORY[0x277CCC2A0];
    LODWORD(self) = os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT);
    if (self)
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_228986000, v4, OS_LOG_TYPE_FAULT, "_hasLoadedPersistedJournalNames", v6, 2u);
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (id)_openJournalChapters:(id)a3 error:(id *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = MEMORY[0x277CCC2A0];
  v8 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEBUG))
  {
    v20 = v8;
    *buf = 138412546;
    v29 = self;
    v30 = 2048;
    v31 = [v6 count];
    _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "%@: Will open %ld journal chapters", buf, 0x16u);
  }

  if ([v6 count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (![v15 openForReadingWithError:{a4, v23}])
          {

            v17 = 0;
            goto LABEL_16;
          }

          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    _HKInitializeLogging();
    v16 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      v21 = v16;
      v22 = [v9 count];
      *buf = 138412546;
      v29 = self;
      v30 = 2048;
      v31 = v22;
      _os_log_debug_impl(&dword_228986000, v21, OS_LOG_TYPE_DEBUG, "%@: Did open %ld journal chapters", buf, 0x16u);
    }

    v17 = v9;
LABEL_16:
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 description:@"Trying to open journal chapters without providing any to open"];
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)journalChaptersForURL:(id)a3 error:(id *)a4
{
  v4 = [(HDJournalChapterEnumerator *)a1 _journalChaptersForURL:a3 sorted:0 error:a4];
  v5 = [v4 copy];

  return v5;
}

+ (id)nextJournalChapterNameForURL:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDJournalChapterEnumerator *)a1 _lightweightDirectoryEnumeratorForURL:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (!v6)
  {
    v17 = 0;
LABEL_25:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%05ld.log", v17];
    goto LABEL_26;
  }

  v7 = v6;
  v8 = *v23;
  v9 = 0xFFFFFFFF80000000;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v22 + 1) + 8 * i) URLByDeletingPathExtension];
      v12 = [v11 lastPathComponent];

      if ([v12 length])
      {
        v13 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v12];
        *buf = 0;
        if ([v13 scanInteger:buf])
        {
          if (*buf <= v9)
          {
            v14 = v9;
          }

          else
          {
            v14 = *buf;
          }

          if (v9 == 0xFFFFFFFF80000000)
          {
            v9 = *buf;
          }

          else
          {
            v9 = v14;
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v22 objects:v29 count:16];
  }

  while (v7);
  if (v9 < 99999)
  {
    if (v9 >= 0)
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_25;
  }

  _HKInitializeLogging();
  v15 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
  {
    v20 = v15;
    v21 = [v4 path];
    *buf = 134218242;
    *&buf[4] = v9;
    v27 = 2114;
    v28 = v21;
    _os_log_fault_impl(&dword_228986000, v20, OS_LOG_TYPE_FAULT, "Encountered journal index %ld in %{public}@; dropping changes", buf, 0x16u);
  }

  v16 = 0;
LABEL_26:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (int64_t)journalChapterCountForURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HDJournalChapterEnumerator *)a1 _lightweightDirectoryEnumeratorForURL:a3];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = v5;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        --v8;
      }

      while (v8);
      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __68__HDJournalChapterEnumerator__lightweightDirectoryEnumeratorForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Error enumerating journal chapter /'%@/': %@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"Error enumerating journal chapter /'%@/'", a2];
  v8 = [MEMORY[0x277CCA9B8] hk_error:102 description:v7 underlyingError:v6];

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return 0;
}

uint64_t __66__HDJournalChapterEnumerator__journalChaptersForURL_sorted_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (int64_t)maxAllowedOpenJournalChapterCount
{
  if (self->_maxAllowedOpenJournalChapterCount)
  {
    return self->_maxAllowedOpenJournalChapterCount;
  }

  else
  {
    return 50;
  }
}

- (HDJournalChapterEnumeratorTestsDelegate)unitTestDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_unitTestDelegate);

  return WeakRetained;
}

@end