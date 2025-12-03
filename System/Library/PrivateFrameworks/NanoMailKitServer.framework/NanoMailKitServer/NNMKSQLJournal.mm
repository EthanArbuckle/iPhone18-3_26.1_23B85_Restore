@interface NNMKSQLJournal
- (BOOL)appendSQLStatement:(id)statement;
- (NNMKSQLJournal)initWithPath:(id)path;
- (id)_journalFilesEnumerator;
- (id)_nextFilePath;
- (id)_sortedJournalFiles;
- (unint64_t)_currentFilesCount;
- (void)_flush;
- (void)deleteJournalFiles;
- (void)flushIfNeeded;
- (void)mergeUsingBlock:(id)block;
@end

@implementation NNMKSQLJournal

- (NNMKSQLJournal)initWithPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = NNMKSQLJournal;
  v6 = [(NNMKSQLJournal *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_directoryPath, path);
    v8 = dispatch_queue_create("com.apple.NanoMailKit.SQLJournal", 0);
    journalQueue = v7->_journalQueue;
    v7->_journalQueue = v8;

    v7->_filesCount = [(NNMKSQLJournal *)v7 _currentFilesCount];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtPath:v7->_directoryPath withIntermediateDirectories:1 attributes:MEMORY[0x277CBEC10] error:0];
  }

  return v7;
}

- (BOOL)appendSQLStatement:(id)statement
{
  statementCopy = statement;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__NNMKSQLJournal_appendSQLStatement___block_invoke;
  block[3] = &unk_279936570;
  v9 = statementCopy;
  v10 = &v11;
  block[4] = self;
  v6 = statementCopy;
  dispatch_sync(journalQueue, block);
  LOBYTE(journalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return journalQueue;
}

void __37__NNMKSQLJournal_appendSQLStatement___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isJournalOverflow])
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __37__NNMKSQLJournal_appendSQLStatement___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  else
  {
    if (!*(*(a1 + 32) + 16))
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v3 = *(a1 + 32);
      v4 = *(v3 + 16);
      *(v3 + 16) = v2;
    }

    v5 = [*(a1 + 40) dataUsingEncoding:4];
    v6 = [v5 length];
    [*(*(a1 + 32) + 16) appendBytes:&v6 length:8];
    [*(*(a1 + 32) + 16) appendData:v5];
    if ([*(*(a1 + 32) + 16) length] >= 0xA00000)
    {
      [*(a1 + 32) _flush];
    }
  }
}

- (void)flushIfNeeded
{
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__NNMKSQLJournal_flushIfNeeded__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(journalQueue, block);
}

void *__31__NNMKSQLJournal_flushIfNeeded__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[2])
  {
    return [result _flush];
  }

  return result;
}

- (void)mergeUsingBlock:(id)block
{
  blockCopy = block;
  [(NNMKSQLJournal *)self flushIfNeeded];
  journalQueue = self->_journalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__NNMKSQLJournal_mergeUsingBlock___block_invoke;
  v7[3] = &unk_279936598;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(journalQueue, v7);
}

void __34__NNMKSQLJournal_mergeUsingBlock___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  if ([*(a1 + 32) isJournalOverflow])
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __34__NNMKSQLJournal_mergeUsingBlock___block_invoke_cold_1(v2);
    }
  }

  else
  {
    [*v2 _sortedJournalFiles];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v34 = 0u;
    v28 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v28)
    {
      v25 = 0;
      v27 = *v32;
      *&v3 = 138543874;
      v24 = v3;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v31 + 1) + 8 * i);
          v6 = [*(*v2 + 1) stringByAppendingPathComponent:{v5, v24}];
          v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
          v8 = v7;
          if (v7)
          {
            v30 = 0;
            if ([v7 length])
            {
              v9 = 0;
              while (1)
              {
                v10 = v9 + 8;
                if (v9 + 8 > [v8 length])
                {
                  break;
                }

                [v8 getBytes:&v30 range:{v9, 8}];
                v11 = v30 + v10;
                if (v11 > [v8 length])
                {
                  v18 = qword_28144D620;
                  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v36 = v5;
                    _os_log_error_impl(&dword_25B19F000, v18, OS_LOG_TYPE_ERROR, "Error reading journal file - invalid length. (Path: %{public}@).", buf, 0xCu);
                  }

                  goto LABEL_22;
                }

                v12 = [v8 subdataWithRange:{v9 + 8, v30}];
                v9 = v30 + v10;
                v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
                (*(*(a1 + 40) + 16))();

                if (v9 >= [v8 length])
                {
                  goto LABEL_22;
                }
              }

              v15 = __logCategories;
              if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
              {
                v16 = v15;
                v17 = [v8 length];
                *buf = v24;
                v36 = v5;
                v37 = 2048;
                v38 = v9;
                v39 = 2048;
                v40 = v17;
                _os_log_error_impl(&dword_25B19F000, v16, OS_LOG_TYPE_ERROR, "Error journal file has data at the end of it that is smaller than NSUInteger of new data. (Path: %{public}@) cursor: %lu data length: %lu.", buf, 0x20u);
              }
            }

LABEL_22:
            v19 = [MEMORY[0x277CCAA00] defaultManager];
            v29 = 0;
            v20 = [v19 removeItemAtPath:v6 error:&v29];
            v21 = v29;

            if ((v20 & 1) == 0)
            {
              v25 = [v5 longLongValue];
              v22 = qword_28144D620;
              if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v36 = v5;
                v37 = 2114;
                v38 = v21;
                _os_log_error_impl(&dword_25B19F000, v22, OS_LOG_TYPE_ERROR, "Error deleting journal file after applying. (Path: %{public}@, Error: %{public}@).", buf, 0x16u);
              }
            }
          }

          else
          {
            v14 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v36 = v5;
              _os_log_error_impl(&dword_25B19F000, v14, OS_LOG_TYPE_ERROR, "Error reading journal file from file system. (Path: %{public}@).", buf, 0xCu);
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v28);
    }

    else
    {
      v25 = 0;
    }

    *(*v2 + 4) = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)deleteJournalFiles
{
  [(NNMKSQLJournal *)self flushIfNeeded];
  journalQueue = self->_journalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__NNMKSQLJournal_deleteJournalFiles__block_invoke;
  block[3] = &unk_279935CB0;
  block[4] = self;
  dispatch_sync(journalQueue, block);
}

void __36__NNMKSQLJournal_deleteJournalFiles__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __36__NNMKSQLJournal_deleteJournalFiles__block_invoke_cold_1();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = a1;
  v2 = [*(a1 + 32) _journalFilesEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CCAA00] defaultManager];
        v16 = 0;
        v9 = [v8 removeItemAtURL:v7 error:&v16];
        v10 = v16;

        if ((v9 & 1) == 0)
        {
          v11 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            v12 = v11;
            v13 = [v7 lastPathComponent];
            *buf = 138543618;
            v22 = v13;
            v23 = 2114;
            v24 = v10;
            _os_log_error_impl(&dword_25B19F000, v12, OS_LOG_TYPE_ERROR, "Error deleting journal file. (Path: %{public}@, Error: %{public}@).", buf, 0x16u);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v4);
  }

  *(*(v15 + 32) + 32) = 0;
  v14 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_currentFilesCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _journalFilesEnumerator = [(NNMKSQLJournal *)self _journalFilesEnumerator];
  v3 = [_journalFilesEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(_journalFilesEnumerator);
        }

        lastPathComponent = [*(*(&v11 + 1) + 8 * i) lastPathComponent];
        if ([lastPathComponent compare:v4] == 1)
        {
          v8 = lastPathComponent;

          v4 = v8;
        }
      }

      v3 = [_journalFilesEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);

    if (!v4)
    {
      v3 = 0;
      goto LABEL_14;
    }

    v3 = [v4 longLongValue] + 1;
    _journalFilesEnumerator = v4;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_journalFilesEnumerator
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:self->_directoryPath];
  if (v2)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8[0] = *MEMORY[0x277CBE8E8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    v5 = [defaultManager enumeratorAtURL:v2 includingPropertiesForKeys:v4 options:5 errorHandler:&__block_literal_global_8];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __41__NNMKSQLJournal__journalFilesEnumerator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    __41__NNMKSQLJournal__journalFilesEnumerator__block_invoke_cold_1();
  }

  return 1;
}

- (void)_flush
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Error flushing journal file. (Path: %{public}@ - Error: %{public}@).", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_nextFilePath
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.15lu", self->_filesCount];
  v4 = [(NSString *)self->_directoryPath stringByAppendingPathComponent:v3];

  return v4;
}

- (id)_sortedJournalFiles
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager contentsOfDirectoryAtPath:self->_directoryPath error:0];

  v5 = [v4 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  return v5;
}

void __37__NNMKSQLJournal_appendSQLStatement___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __34__NNMKSQLJournal_mergeUsingBlock___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 32);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__NNMKSQLJournal__journalFilesEnumerator__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end