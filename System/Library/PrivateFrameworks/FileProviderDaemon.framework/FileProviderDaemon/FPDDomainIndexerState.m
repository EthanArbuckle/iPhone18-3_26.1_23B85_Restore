@interface FPDDomainIndexerState
- (FPDDomainIndexerState)initWithSupportURL:(id)a3;
- (id)getFileRedonationRequests;
- (void)archiveLastDropData;
- (void)dumpStateTo:(id)a3;
- (void)loadPersistedState;
- (void)recordIndexDropReason:(unint64_t)a3;
- (void)setBoolValue:(BOOL)a3 atURL:(id)a4;
- (void)setDroppedIndex:(BOOL)a3;
- (void)setNeedsAuth:(BOOL)a3;
- (void)setNeedsIndexing:(BOOL)a3;
- (void)unarchiveLastDropData:(id)a3;
@end

@implementation FPDDomainIndexerState

- (FPDDomainIndexerState)initWithSupportURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(FPDDomainIndexerState *)a2 initWithSupportURL:?];
  }

  if (([v5 isFileURL] & 1) == 0)
  {
    [(FPDDomainIndexerState *)a2 initWithSupportURL:?];
  }

  v16.receiver = self;
  v16.super_class = FPDDomainIndexerState;
  v6 = [(FPDDomainIndexerState *)&v16 init];
  if (v6)
  {
    v7 = [v5 URLByAppendingPathComponent:@"needs-index" isDirectory:0];
    needsIndexingURL = v6->_needsIndexingURL;
    v6->_needsIndexingURL = v7;

    v9 = [v5 URLByAppendingPathComponent:@"dropped-index" isDirectory:0];
    droppedIndexURL = v6->_droppedIndexURL;
    v6->_droppedIndexURL = v9;

    v11 = [v5 URLByAppendingPathComponent:@"needs-auth" isDirectory:0];
    needsAuthURL = v6->_needsAuthURL;
    v6->_needsAuthURL = v11;

    v6->_timesIndexWasDropSinceLastStart = 0;
    v13 = [v5 URLByAppendingPathComponent:@"last-drop-data" isDirectory:0];
    lastDropDataURL = v6->_lastDropDataURL;
    v6->_lastDropDataURL = v13;
  }

  return v6;
}

- (void)dumpStateTo:(id)a3
{
  v14 = a3;
  if ([(FPDDomainIndexerState *)self needsAuth])
  {
    v4 = @"yes";
  }

  else
  {
    v4 = @"no";
  }

  [v14 write:{@"      needs-auth:     %@\n", v4}];
  if ([(FPDDomainIndexerState *)self needsIndexing])
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  [v14 write:{@"      needs-indexing: %@\n", v5}];
  if ([(FPDDomainIndexerState *)self droppedIndex]|| ([(FPDDomainIndexerState *)self lastDropDate], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [v14 write:@"      + drop info:\n"];
    [v14 write:{@"         drops-since-start: %lu\n", -[FPDDomainIndexerState timesIndexWasDropSinceLastStart](self, "timesIndexWasDropSinceLastStart")}];
    if ([(FPDDomainIndexerState *)self droppedIndex])
    {
      v7 = @"yes";
    }

    else
    {
      v7 = @"no";
    }

    [v14 write:{@"         index-is-dropped:  %@\n", v7}];
    v8 = [(FPDDomainIndexerState *)self lastDropDate];
    v9 = [v8 description];
    v10 = v9;
    v11 = @"na";
    if (v9)
    {
      v11 = v9;
    }

    [v14 write:{@"         last-drop-date:    %@\n", v11}];

    [(FPDDomainIndexerState *)self lastDropReason];
    v12 = FPHumanReadableDropReason();
    [v14 write:{@"         last-drop-reason:  %@\n", v12}];
  }

  [v14 write:@"      + telemetry info:\n"];
  v13 = [(FPDDomainIndexerState *)self fileRedonationRequests];
  [v14 write:{@"         count of files requested for redonation in the last day: %d\n", objc_msgSend(v13, "dailyValue")}];
}

- (void)unarchiveLastDropData:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = a3;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v21 = 0;
    v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v5 error:&v21];

    v12 = v21;
    if (v11)
    {
      v13 = NSStringFromSelector(sel_lastDropDate);
      v14 = [v11 objectForKeyedSubscript:v13];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&self->_lastDropDate, v14);
      }

      v15 = NSStringFromSelector(sel_lastDropReason);
      v16 = [v11 objectForKeyedSubscript:v15];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_lastDropReason = [v16 unsignedIntegerValue];
      }

      v17 = NSStringFromSelector(sel_fileRedonationRequests);
      v18 = [v11 objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [[FPDDailyTelemetryCounter alloc] initWithData:v18];
      }

      else
      {
        v19 = 0;
      }

      fileRedonationRequests = self->_fileRedonationRequests;
      self->_fileRedonationRequests = v19;
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [FPDDomainIndexerState unarchiveLastDropData:v12];
      }
    }
  }
}

- (void)archiveLastDropData
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] [Indexer] Can't persist index drop reason, error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadPersistedState
{
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self->_needsIndexingURL];
  self->_needsIndexing = v3 != 0;

  v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self->_droppedIndexURL];
  self->_droppedIndex = v4 != 0;

  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self->_needsAuthURL];
  self->_needsAuth = v5 != 0;

  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:self->_lastDropDataURL];
  [(FPDDomainIndexerState *)self unarchiveLastDropData:v6];
}

- (void)recordIndexDropReason:(unint64_t)a3
{
  [(FPDDomainIndexerState *)self setTimesIndexWasDropSinceLastStart:[(FPDDomainIndexerState *)self timesIndexWasDropSinceLastStart]+ 1];
  [(FPDDomainIndexerState *)self setLastDropReason:a3];
  v5 = [MEMORY[0x1E695DF00] now];
  [(FPDDomainIndexerState *)self setLastDropDate:v5];

  [(FPDDomainIndexerState *)self archiveLastDropData];
}

- (id)getFileRedonationRequests
{
  fileRedonationRequests = self->_fileRedonationRequests;
  if (fileRedonationRequests)
  {
    v4 = [fileRedonationRequests dailyValue];
    fileRedonationRequests = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v2 = vars8;
  }

  return fileRedonationRequests;
}

- (void)setBoolValue:(BOOL)a3 atURL:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = v6;
  if (v4)
  {
    v8 = [v5 URLByDeletingLastPathComponent];
    v15 = 0;
    [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v15];
    v9 = v15;

    v10 = [MEMORY[0x1E695DEF0] data];
    v14 = v9;
    v11 = [v10 writeToURL:v5 options:0 error:&v14];
    v12 = v14;

    if ((v11 & 1) == 0)
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [FPDDomainIndexerState setBoolValue:v12 atURL:?];
      }
    }
  }

  else
  {
    [v6 removeItemAtURL:v5 error:0];
    v12 = 0;
  }
}

- (void)setNeedsIndexing:(BOOL)a3
{
  if (self->_needsIndexing != a3)
  {
    needsIndexingURL = self->_needsIndexingURL;
    [FPDDomainIndexerState setBoolValue:"setBoolValue:atURL:" atURL:?];
    self->_needsIndexing = a3;
  }
}

- (void)setDroppedIndex:(BOOL)a3
{
  if (self->_droppedIndex != a3)
  {
    droppedIndexURL = self->_droppedIndexURL;
    [FPDDomainIndexerState setBoolValue:"setBoolValue:atURL:" atURL:?];
    self->_droppedIndex = a3;
  }
}

- (void)setNeedsAuth:(BOOL)a3
{
  if (self->_needsAuth != a3)
  {
    needsAuthURL = self->_needsAuthURL;
    [FPDDomainIndexerState setBoolValue:"setBoolValue:atURL:" atURL:?];
    self->_needsAuth = a3;
  }
}

- (void)initWithSupportURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDDomainIndexerState.m" lineNumber:182 description:@"Tried to initialize FPDDomainIndexerState with nil supportURL"];
}

- (void)initWithSupportURL:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDDomainIndexerState.m" lineNumber:183 description:{@"Tried to initialize FPDDomainIndexerState with a non file URL, which is not supported"}];
}

- (void)unarchiveLastDropData:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] [Indexer] Can't load index drop reason, error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBoolValue:(void *)a1 atURL:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_4_5(&dword_1CEFC7000, v2, v3, "[ERROR] [Indexer] Can't persist BOOL value, error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end