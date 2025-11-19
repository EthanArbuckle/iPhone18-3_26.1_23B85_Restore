@interface OSLogPersistence
- (BOOL)allowSensitive;
- (BOOL)streamChunks:(id)a3 andEntries:(id)a4 flags:(unsigned int)a5;
- (NSDictionary)statistics;
- (OSLogPersistence)init;
- (OSLogPersistenceDelegate)delegate;
- (int64_t)archiveState;
- (int64_t)archiveVersion;
- (void)_openFiles;
- (void)_openLocalPersistenceDir;
- (void)_openPath:(id)a3;
- (void)dealloc;
- (void)enumerateFromLastBootWithBlock:(id)a3;
- (void)enumerateFromStartDate:(id)a3 toEndDate:(id)a4 withBlock:(id)a5;
- (void)fetchFromStartDate:(id)a3 toEndDate:(id)a4;
- (void)setLogArchive:(id)a3;
- (void)setLogFile:(id)a3;
- (void)setPredicate:(id)a3;
@end

@implementation OSLogPersistence

- (OSLogPersistenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDictionary)statistics
{
  v43[8] = *MEMORY[0x277D85DE8];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v36 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x6010000000;
  v33 = &unk_22E08C481;
  memset(&v34, 0, sizeof(v34));
  rb_tree_init(&v34, &statistics_ops);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __30__OSLogPersistence_statistics__block_invoke;
  v29[3] = &unk_2787AE1B0;
  v29[4] = v37;
  v29[5] = v35;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __30__OSLogPersistence_statistics__block_invoke_2;
  v28[3] = &unk_2787AE1D8;
  v28[4] = &v30;
  v28[5] = v35;
  v28[6] = v37;
  [(OSLogPersistence *)self streamChunks:v29 andEntries:v28 flags:0];
  if (rb_tree_count((v31 + 4)))
  {
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:rb_tree_count((v31 + 4))];
    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:rb_tree_count((v31 + 4))];
    for (i = rb_tree_iterate((v31 + 4), 0, 1u); i; i = rb_tree_iterate((v31 + 4), i, 1u))
    {
      if (*(i + 133))
      {
        v42[0] = @"uuid";
        v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:i + 24];
        v43[0] = v4;
        v42[1] = @"path";
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:i + 40];
        v43[1] = v5;
        v42[2] = @"activityCreationCount";
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:**(i + 133)];
        v43[2] = v6;
        v42[3] = @"userActionCount";
        v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 24)];
        v43[3] = v7;
        v42[4] = @"logMessageCount";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 16)];
        v43[4] = v8;
        v42[5] = @"traceMessageCount";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 8)];
        v43[5] = v9;
        v42[6] = @"totalProcessPublicSize";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 56)];
        v43[6] = v10;
        v42[7] = @"totalProcessPrivateSize";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(i + 133) + 64)];
        v43[7] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:8];
        [v25 addObject:v12];
      }

      v40[0] = @"uuid";
      v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:i + 24];
      v41[0] = v27;
      v40[1] = @"path";
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:i + 40];
      v41[1] = v13;
      v40[2] = @"activityCreationCount";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 134)];
      v41[2] = v14;
      v40[3] = @"userActionCount";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 137)];
      v41[3] = v15;
      v40[4] = @"logMessageCount";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 136)];
      v41[4] = v16;
      v40[5] = @"traceMessageCount";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 135)];
      v41[5] = v17;
      v40[6] = @"tracePublicSize";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 138)];
      v41[6] = v18;
      v40[7] = @"logPublicSize";
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 139)];
      v41[7] = v19;
      v40[8] = @"logPrivateSize";
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(i + 140)];
      v41[8] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:9];
      [v26 addObject:v21];
    }

    v38[0] = @"perProcessStatistics";
    v38[1] = @"perSenderStatistics";
    v39[0] = v25;
    v39[1] = v26;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  }

  else
  {
    v22 = 0;
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v37, 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __30__OSLogPersistence_statistics__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __30__OSLogPersistence_statistics__block_invoke_2(void *a1, uint64_t a2)
{
  node = rb_tree_find_node((*(a1[4] + 8) + 32), *(a2 + 20));
  if (node)
  {
    v5 = node;
    v6 = node[133];
  }

  else
  {
    v5 = _os_trace_calloc_typed();
    if (*(a2 + 28))
    {
      __strlcpy_chk();
    }

    else
    {
      uuid_unparse_upper(*(a2 + 20), (v5 + 40));
    }

    uuid_copy((v5 + 24), *(a2 + 20));
    rb_tree_insert_node((*(a1[4] + 8) + 32), v5);
    v6 = _os_trace_calloc_typed();
    *(v5 + 1064) = v6;
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v7 = v6[8];
    v6[7] += **(*(*(a1[6] + 8) + 24) + 64);
    v6[8] = v7 + *(*(*(a1[6] + 8) + 24) + 80);
    *(*(a1[5] + 8) + 24) = 0;
  }

  v8 = *(a2 + 76);
  if (v8)
  {
    if (uuid_compare(v8, *(a2 + 20)))
    {
      v5 = rb_tree_find_node((*(a1[4] + 8) + 32), *(a2 + 76));
      if (!v5)
      {
        v5 = _os_trace_calloc_typed();
        v9 = *(a2 + 84);
        __strlcpy_chk();
        if (!*(v5 + 40))
        {
          uuid_unparse_upper(*(a2 + 76), (v5 + 40));
        }

        uuid_copy((v5 + 24), *(a2 + 76));
        rb_tree_insert_node((*(a1[4] + 8) + 32), v5);
      }
    }
  }

  v10 = *a2;
  if (*a2 > 767)
  {
    if (v10 == 768)
    {
      ++*(v5 + 1080);
      *(v5 + 1104) += *(a2 + 156);
      ++v6[1];
      v12 = *(a2 + 156);
      v6 += 4;
      goto LABEL_25;
    }

    if (v10 == 1024)
    {
      *(v5 + 1112) += *(a2 + 156);
      *(v5 + 1120) += *(a2 + 172);
      ++*(v5 + 1088);
      v11 = v6[6];
      v6[5] += *(a2 + 156);
      v6[6] = v11 + *(a2 + 172);
      v6 += 2;
      goto LABEL_23;
    }
  }

  else
  {
    if (v10 == 513)
    {
      ++*(v5 + 1072);
      goto LABEL_23;
    }

    if (v10 == 515)
    {
      ++*(v5 + 1096);
      v6 += 3;
LABEL_23:
      v12 = 1;
LABEL_25:
      *v6 += v12;
    }
  }

  return 1;
}

- (void)fetchFromStartDate:(id)a3 toEndDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__958;
    v17 = __Block_byref_object_dispose__959;
    v18 = objc_opt_new();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__OSLogPersistence_fetchFromStartDate_toEndDate___block_invoke;
    v10[3] = &unk_2787AE120;
    v12 = &v13;
    v10[4] = self;
    v9 = WeakRetained;
    v11 = v9;
    [(OSLogPersistence *)self enumerateFromStartDate:v6 toEndDate:v7 withBlock:v10];
    if ([v14[5] count])
    {
      [v9 persistence:self results:v14[5] error:0];
    }

    [v9 persistenceDidFinishReadingForStartDate:v6 endDate:v7];

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __49__OSLogPersistence_fetchFromStartDate_toEndDate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) addObject:a2];
  if ([*(*(*(a1 + 48) + 8) + 40) count] >= *(*(a1 + 32) + 72))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    result = [*(a1 + 40) persistence:? results:? error:?];
    if (!result)
    {
      return result;
    }

    [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
  }

  return 1;
}

- (void)enumerateFromLastBootWithBlock:(id)a3
{
  v4 = a3;
  if (!self->_index)
  {
    [(OSLogPersistence *)self _openFiles];
  }

  v5 = [(OSLogPersistence *)self allowSensitive];
  options = self->_options;
  index = self->_index;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__OSLogPersistence_enumerateFromLastBootWithBlock___block_invoke;
  v11[3] = &unk_2787AE0F8;
  if ((options & 3) != 0)
  {
    v8 = !v5 & 0xFFFFFFFD | (2 * (options & 1)) | 4;
  }

  else
  {
    v8 = !v5 & 0xFFFFFFFD | (2 * (options & 1));
  }

  v9 = v8 & 0xFFFFFFBF | (((options >> 5) & 1) << 6);
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [(_OSLogIndex *)index enumerateEntriesFromLastBootWithOptions:v9 usingBlock:v11];
}

uint64_t __51__OSLogPersistence_enumerateFromLastBootWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [OSActivityEvent activityEventFromStreamEntry:a2];
  v4 = *(*(a1 + 32) + 64);
  if (v4 && ([v4 evaluateWithObject:v3] & 1) == 0)
  {
    ++*(*(a1 + 32) + 128);
    v5 = 1;
  }

  else
  {
    v5 = (*(*(a1 + 40) + 16))();
  }

  return v5;
}

- (void)enumerateFromStartDate:(id)a3 toEndDate:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v8 timeIntervalSince1970];
  if (v11 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    [v8 timeIntervalSince1970];
    v13 = (v12 * 1000000000.0);
  }

  [v9 timeIntervalSince1970];
  if (v14 <= 0.0)
  {
    v16 = 0;
  }

  else
  {
    [v9 timeIntervalSince1970];
    v16 = (v15 * 1000000000.0);
  }

  if (!self->_index)
  {
    [(OSLogPersistence *)self _openFiles];
  }

  if (v16 < v13 || v16 == 0)
  {
    v16 = -1;
  }

  v18 = [(OSLogPersistence *)self allowSensitive];
  options = self->_options;
  v20 = !v18 & 0xFFFFFFFD | (2 * (options & 1));
  index = self->_index;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__OSLogPersistence_enumerateFromStartDate_toEndDate_withBlock___block_invoke;
  v24[3] = &unk_2787AE0F8;
  if ((options & 3) != 0)
  {
    v22 = v20 | 4;
  }

  else
  {
    v22 = v20;
  }

  v24[4] = self;
  v25 = v10;
  v23 = v10;
  [(_OSLogIndex *)index enumerateEntriesFrom:v13 to:v16 options:v22 usingBlock:v24];
}

uint64_t __63__OSLogPersistence_enumerateFromStartDate_toEndDate_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [OSActivityEvent activityEventFromStreamEntry:a2];
  v4 = v3 != 0;
  if (*(*(a1 + 32) + 64))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v4 = [*(*(a1 + 32) + 64) evaluateWithObject:v3];
  }

  if (v4)
  {
    v6 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    ++*(*(a1 + 32) + 128);
    v6 = 1;
  }

  return v6;
}

- (BOOL)streamChunks:(id)a3 andEntries:(id)a4 flags:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  *__error() = 3;
  _chunk_support_context_init(v17);
  *&v18 = v9;
  *(&v18 + 1) = v8;
  LODWORD(v17[0]) = a5;
  index = self->_index;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__OSLogPersistence_streamChunks_andEntries_flags___block_invoke;
  v12[3] = &unk_2787AE0D0;
  v12[4] = &v13;
  v12[5] = v17;
  [(_OSLogIndex *)index enumerateFilesUsingBlock:v12];
  _chunk_support_context_clear(v17);
  LOBYTE(a5) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return a5;
}

uint64_t __50__OSLogPersistence_streamChunks_andEntries_flags___block_invoke(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  v8 = *(a1 + 40);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 1;
  *(v8 + 4) = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v13 = ___os_activity_stream_mapped_file_block_invoke;
  v14 = &unk_2787AEA48;
  v15 = &v18;
  v16 = a3;
  v17 = v8;
  do
  {
    if (a4 - v7 < 0x10)
    {
      break;
    }

    v9 = *(a3 + v7 + 8);
    if (a4 - v7 - 16 < v9)
    {
      break;
    }

    if (!v13(v12))
    {
      break;
    }

    v7 = (v7 + v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v7 - 1 < a4);
  *(v8 + 4) = -1;
  v10 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  *(*(*(a1 + 32) + 8) + 24) = v10;
  return *(*(*(a1 + 32) + 8) + 24);
}

- (int64_t)archiveState
{
  result = self->_version;
  if (result)
  {
    v3 = [result state];
    if (v3 > 3)
    {
      return 2;
    }

    else
    {
      return qword_22E0818E0[v3];
    }
  }

  return result;
}

- (int64_t)archiveVersion
{
  version = self->_version;
  if (version)
  {
    return [(_OSLogVersioning *)version version];
  }

  else
  {
    return -1;
  }
}

- (BOOL)allowSensitive
{
  if ((self->_options & 0x40000000) != 0)
  {
    return 0;
  }

  if (geteuid() && !self->_logArchive)
  {
    return self->_logFile != 0;
  }

  return 1;
}

- (void)setPredicate:(id)a3
{
  v15 = a3;
  if (v15)
  {
    v4 = [[_OSLogPredicateMapper alloc] initWithPredicate:v15 andValidate:0];
    v5 = [_OSLogLegacyPredicateMapper alloc];
    v6 = [(_OSLogPredicateMapper *)v4 mappedPredicate];
    v7 = [(_OSLogPredicateMapper *)v5 initWithPredicate:v6];

    v8 = [(_OSLogPredicateMapper *)v7 mappedPredicate];

    if (!v8)
    {
      v11 = MEMORY[0x277CBEAD8];
      v12 = [(_OSLogPredicateMapper *)v7 validationErrors];
      v13 = [v12 componentsJoinedByString:@"\n"];
      v14 = [v11 exceptionWithName:@"OSLogInvalidPredicateException" reason:v13 userInfo:0];

      objc_exception_throw(v14);
    }

    v9 = [(_OSLogPredicateMapper *)v7 mappedPredicate];
    predicate = self->_predicate;
    self->_predicate = v9;

    if (([(_OSLogPredicateMapper *)v4 flags]& 2) != 0)
    {
      self->_options |= 1uLL;
    }

    if (([(_OSLogPredicateMapper *)v4 flags]& 1) != 0)
    {
      self->_options |= 3uLL;
    }
  }

  else
  {
    v4 = self->_predicate;
    self->_predicate = 0;
  }
}

- (void)setLogArchive:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  if ([v5 isFileURL])
  {
    v7 = [v5 path];
    v8 = [v7 pathExtension];
    v9 = [v8 isEqualToString:@"logarchive"];

    if (v9)
    {
      if ([v6 fileExistsAtPath:v7 isDirectory:&v15])
      {
        if (v15)
        {
          objc_storeStrong(&self->_logArchive, a3);
          [(OSLogPersistence *)self _openFiles];

          goto LABEL_6;
        }

        v10 = MEMORY[0x277CBEAD8];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log archive named '%@' is not a package.", v7];
        v12 = @"Log archive is not a package.";
      }

      else
      {
        v10 = MEMORY[0x277CBEAD8];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log archive named '%@' not found.", v7];
        v12 = @"File not Found";
      }
    }

    else
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File name does not end with .logarchive (%@)", v7];
      v12 = @"Invalid archive provided";
    }

    v13 = [v10 exceptionWithName:v12 reason:v11 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

LABEL_6:
}

- (void)setLogFile:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  if (([v5 isFileURL] & 1) == 0)
  {
    [(OSLogPersistence *)self _openFiles];
    goto LABEL_7;
  }

  v7 = [v5 path];
  v8 = [v7 pathExtension];
  v9 = [v8 isEqualToString:@"tracev3"];

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"File name does not end with .tracev3 (%@)", v7];
    v12 = @"Invalid file provided";
    goto LABEL_11;
  }

  if (([v6 fileExistsAtPath:v7 isDirectory:&v15] & 1) == 0)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log file named '%@' not found.", v7];
    v12 = @"File not Found";
    goto LABEL_11;
  }

  if (v15 == 1)
  {
    v10 = MEMORY[0x277CBEAD8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Log file named '%@' is not a regular file.", v7];
    v12 = @"File is not a regular file.";
LABEL_11:
    v13 = [v10 exceptionWithName:v12 reason:v11 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  objc_storeStrong(&self->_logFile, a3);
  [(OSLogPersistence *)self _openFiles];

LABEL_7:
}

- (void)dealloc
{
  [(_OSLogCollectionReference *)self->_oslcr close];
  v3.receiver = self;
  v3.super_class = OSLogPersistence;
  [(OSLogPersistence *)&v3 dealloc];
}

- (OSLogPersistence)init
{
  v3.receiver = self;
  v3.super_class = OSLogPersistence;
  result = [(OSLogPersistence *)&v3 init];
  if (result)
  {
    result->_batchSize = 1000;
    result->_verbose = 0;
  }

  return result;
}

- (void)_openFiles
{
  v3 = MEMORY[0x277CCACA8];
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  v12 = [v3 stringWithUTF8String:_os_trace_persist_path];
  logFile = self->_logFile;
  if (logFile || self->_logArchive)
  {
    v5 = [(NSURL *)logFile path];
    if ([v5 isEqualToString:v12])
    {
    }

    else
    {
      v6 = [(NSURL *)self->_logArchive path];
      v7 = [v6 isEqualToString:v12];

      if (!v7)
      {
        v8 = [(NSURL *)self->_logArchive path];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = [(NSURL *)self->_logFile path];
        }

        v11 = v10;

        [(OSLogPersistence *)self _openPath:v11];
        goto LABEL_13;
      }
    }
  }

  [(OSLogPersistence *)self _openLocalPersistenceDir];
LABEL_13:
}

- (void)_openPath:(id)a3
{
  v27 = a3;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
  v5 = [v27 hasSuffix:@".logarchive"];
  [(_OSLogCollectionReference *)self->_oslcr close];
  v6 = [_OSLogCollectionReference referenceWithURL:v4 error:0];
  oslcr = self->_oslcr;
  self->_oslcr = v6;

  v8 = [[_OSLogVersioning alloc] initWithCollection:self->_oslcr error:0];
  version = self->_version;
  self->_version = v8;

  if ([(_OSLogVersioning *)self->_version state]== 3)
  {
    [(_OSLogVersioning *)self->_version performDestructiveUpdates:0];
  }

  if ([(_OSLogVersioning *)self->_version state]== 1)
  {
    v10 = [(_OSLogCollectionReference *)self->_oslcr timesyncReference];

    if (!v10)
    {
      [(_OSLogCollectionReference *)self->_oslcr close];
      v11 = [_OSLogCollectionReference referenceWithURL:v4 error:0];
      v12 = self->_oslcr;
      self->_oslcr = v11;
    }

    v13 = [[_OSLogIndex alloc] initWithCollection:self->_oslcr buildLocalIndex:v5];
    index = self->_index;
    self->_index = v13;

    if ((v5 & 1) == 0)
    {
      v15 = open([v27 fileSystemRepresentation], 0);
      v16 = [[_OSLogChunkFile alloc] initWithFileDescriptor:v15 error:0];
      if (v16)
      {
        [(_OSLogIndex *)self->_index insertChunkStore:v16];
      }

      if (close(v15) == -1)
      {
        v25 = *__error();
        v26 = *__error();
        if (v25 == 9)
        {
          qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_27DA527A8 = v26;
          __break(1u);
          return;
        }

        _os_assumes_log();
      }
    }

    v17 = [(_OSLogIndex *)self->_index persistStartWalltime];
    v18 = [(_OSLogIndex *)self->_index specialStartWalltime];
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v19 / 0x3B9ACA00)];
    startDate = self->_startDate;
    self->_startDate = v20;

    objc_storeStrong(&self->_sparseDataStart, self->_startDate);
    v22 = [(_OSLogIndex *)self->_index endWalltime];
    v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v22 / 0x3B9ACA00)];
    endDate = self->_endDate;
    self->_endDate = v23;
  }
}

- (void)_openLocalPersistenceDir
{
  options = self->_options;
  if ((~LODWORD(self->_options) & 0xCLL) != 0)
  {
    v4 = [_OSLogCollectionReference localDBRefWithError:0];
    oslcr = self->_oslcr;
    self->_oslcr = v4;

    v6 = [[_OSLogVersioning alloc] initWithCollection:self->_oslcr error:0];
    version = self->_version;
    self->_version = v6;

    v8 = tmpfile();
    if (v8)
    {
      v9 = v8;
      v10 = 2;
      if ((options & 8) == 0)
      {
        v10 = 3;
      }

      if ((options & 4) != 0)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = fileno(v8);
      if (!OSLogCaptureInflightBuffersToFile(v12, v11, 0) || (v13 = lseek(v12, 0, 2), v14 = mmap(0, v13, 1, 2, v12, 0), v14 == -1))
      {
        v21 = 0;
      }

      else
      {
        v21 = [[_OSLogChunkMemory alloc] initWithBytes:v14 size:v13 deallocator:&__block_literal_global_1004];
      }

      fclose(v9);
      v15 = [[_OSLogIndex alloc] initWithCollection:self->_oslcr buildLocalIndex:(options & 4) == 0];
      index = self->_index;
      self->_index = v15;

      if (v21)
      {
        [(_OSLogIndex *)self->_index insertChunkStore:v21];
      }

      v17 = [MEMORY[0x277CBEAA8] distantPast];
      startDate = self->_startDate;
      self->_startDate = v17;

      objc_storeStrong(&self->_sparseDataStart, self->_startDate);
      v19 = [MEMORY[0x277CBEAA8] date];
      endDate = self->_endDate;
      self->_endDate = v19;
    }
  }
}

@end