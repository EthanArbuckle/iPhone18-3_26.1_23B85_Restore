@interface LiveFSFPSearchEnumeratorHelper
+ (id)criteriaForQuery:(id)a3;
+ (id)newForQuery:(id)a3 withExtension:(id)a4;
- (id)copySearchCompletionBlock;
- (id)copySearchResultBlock;
- (id)initForQuery:(id)a3 withExtension:(id)a4;
- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4;
- (void)finallyEnumerateItemsForObserver:(id)a3 inRange:(_NSRange)a4;
- (void)scheduleReaders;
- (void)start;
- (void)waitForSearchResultsForObserver:(id)a3 startingAtPage:(id)a4;
@end

@implementation LiveFSFPSearchEnumeratorHelper

- (id)initForQuery:(id)a3 withExtension:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = *MEMORY[0x277CC6348];
  v24 = 0;
  v10 = [v8 itemForIdentifier:v9 error:&v24];
  v11 = v24;
  if (v10)
  {
    v23.receiver = self;
    v23.super_class = LiveFSFPSearchEnumeratorHelper;
    v12 = [(LiveFSFPEnumeratorHelper *)&v23 initForExtension:v8 item:v10];
    if (v12)
    {
      v13 = livefs_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPSearchEnumeratorHelper initForQuery:withExtension:];
      }

      objc_storeStrong(v12 + 9, a3);
      v14 = dispatch_queue_create("search work queue", 0);
      v15 = v12[11];
      v12[11] = v14;

      v16 = objc_opt_new();
      v17 = v12[10];
      v12[10] = v16;

      v18 = objc_opt_new();
      v19 = v12[12];
      v12[12] = v18;
    }

    self = v12;
    v20 = self;
  }

  else
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPSearchEnumeratorHelper initForQuery:withExtension:];
    }

    v20 = 0;
  }

  return v20;
}

+ (id)newForQuery:(id)a3 withExtension:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initForQuery:v7 withExtension:v6];

  return v8;
}

+ (id)criteriaForQuery:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D23D70]];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v3 filename];
    v7 = [v3 allowedContentTypes];
    *buf = 136315650;
    v25 = "+[LiveFSFPSearchEnumeratorHelper criteriaForQuery:]";
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s: filename '%@' allowed '%@'", buf, 0x20u);
  }

  v8 = [v3 filename];
  v9 = v8;
  if (v8)
  {
    v23 = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v4 setObject:v10 forKey:*MEMORY[0x277D23D60]];
  }

  v11 = [v3 allowedContentTypes];
  if (([v11 containsObject:@"public.item"] & 1) == 0)
  {
    v12 = [v3 allowedPathExtensions];
    if (v12)
    {
      v13 = objc_opt_new();
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __51__LiveFSFPSearchEnumeratorHelper_criteriaForQuery___block_invoke;
      v21 = &unk_27981A628;
      v14 = v13;
      v22 = v14;
      [v12 enumerateObjectsUsingBlock:&v18];
      v15 = livefs_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_DEFAULT, "Content types %@ gave names %@", buf, 0x16u);
      }

      if ([v14 count])
      {
        [v4 setObject:v14 forKey:*MEMORY[0x277D23D68]];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

void __51__LiveFSFPSearchEnumeratorHelper_criteriaForQuery___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [@"." stringByAppendingString:a2];
  [v2 addObject:v3];
}

- (void)scheduleReaders
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_pendingReaderBlocks copy];
  [(NSMutableArray *)self->_pendingReaderBlocks removeAllObjects];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_INFO, "Starting to schedule readers %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__LiveFSFPSearchEnumeratorHelper_scheduleReaders__block_invoke;
  v7[3] = &unk_27981A650;
  v7[4] = self;
  [v3 enumerateObjectsUsingBlock:v7];
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "Done scheduling", buf, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)copySearchResultBlock
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke;
  v6[3] = &unk_27981A6C8;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v3 = MEMORY[0x259C563F0](v6);
  v4 = [v3 copy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = livefs_std_log();
  v11 = v10;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[LiveFSFPSearchEnumeratorHelper copySearchResultBlock]_block_invoke";
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: got paths %@", buf, 0x16u);
    }

    v12 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_37;
    block[3] = &unk_27981A6A0;
    v17 = v7;
    v13 = v8;
    v21 = a4;
    v14 = *(a1 + 32);
    v18 = v13;
    v19 = v14;
    v20 = WeakRetained;
    dispatch_async(v12, block);

    v11 = v17;
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_cold_1();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_37(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_2;
  v7[3] = &unk_27981A678;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 64);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  v10 = &v12;
  [v2 enumerateObjectsUsingBlock:v7];

  if (*(v13 + 24) == 1)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "Added some, waking", v6, 2u);
    }

    [*(a1 + 56) scheduleReaders];
  }

  _Block_object_dispose(&v12, 8);
}

void __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v11 = a2;
  v5 = [v11 fileSystemRepresentation];
  if (v5 && *v5 && *v5 != 46 && !strstr(v5, "/."))
  {
    v6 = objc_opt_new();
    [v6 setPath:v11];
    v7 = [v6 path];
    v8 = [v7 lastPathComponent];
    [v6 setFilename:v8];

    v9 = [*(a1 + 32) bytes] + (*(a1 + 56) * a3);
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(v9 + 96) + *(v9 + 104) * 0.000000001];
    [v6 setModTime:v10];

    [*(*(a1 + 40) + 80) addObject:v6];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)copySearchCompletionBlock
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke;
  v6[3] = &unk_27981A718;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v3 = MEMORY[0x259C563F0](v6);
  v4 = [v3 copy];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[11];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44;
    block[3] = &unk_27981A6F0;
    v9 = a2;
    block[4] = *(a1 + 32);
    block[5] = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = livefs_std_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__LiveFSFPSearchEnumeratorHelper_copySearchResultBlock__block_invoke_cold_1();
    }
  }
}

uint64_t __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(a1 + 48);
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_1(a1, v2, v5);
    }

    v6 = 3;
  }

  else
  {
    v6 = 2;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_2(a1, v5);
    }
  }

  [*(a1 + 40) setState:v6];
  return [*(a1 + 40) scheduleReaders];
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2_cold_1(a1, a2, v4);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

- (void)finallyEnumerateItemsForObserver:(id)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_opt_new();
  v22 = location;
  if ([(LiveFSFPEnumeratorHelper *)self state]== 2)
  {
    v9 = [(NSMutableArray *)self->searchResults count];
    if (v9 <= location)
    {
      [v7 finishEnumeratingUpToPage:0];
      goto LABEL_16;
    }

    v10 = (location + 64);
    v11 = v9 > v10;
    if (v9 <= v10)
    {
      length = v9 - location;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(LiveFSFPEnumeratorHelper *)self state];
    searchResults = self->searchResults;
    *buf = 134219008;
    v24 = self;
    v25 = 1024;
    v26 = v13;
    v27 = 2048;
    v28 = location;
    v29 = 2048;
    v30 = length;
    v31 = 2048;
    v32 = searchResults;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_INFO, "enumerator helper[%p]: state %d range: %lu -> %lu out of %p,", buf, 0x30u);
  }

  v15 = [(NSMutableArray *)self->searchResults subarrayWithRange:location, length];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke;
  v20[3] = &unk_27981A790;
  v20[4] = self;
  v16 = v8;
  v21 = v16;
  [v15 enumerateObjectsUsingBlock:v20];
  v17 = livefs_std_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_INFO, "Built results %@", buf, 0xCu);
  }

  [v7 didEnumerateItems:v16];
  if (v11)
  {
    v22 = location + 64;
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v22 length:4];
    [v7 finishEnumeratingUpToPage:v18];
  }

  else
  {
    [v7 finishEnumeratingUpToPage:0];
  }

LABEL_16:
  v19 = *MEMORY[0x277D85DE8];
}

void __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v3 path];
  v6 = [*(a1 + 32) enumeratedItem];
  v7 = [v4 itemAtPath:v5 parent:v6];

  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = livefs_std_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke_cold_1(v3, v8);
    }
  }
}

- (void)waitForSearchResultsForObserver:(id)a3 startingAtPage:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(LiveFSFPEnumeratorHelper *)self state];
    v10 = [v7 isEqual:*MEMORY[0x277CC6328]];
    v11 = [v7 isEqual:*MEMORY[0x277CC6320]];
    *buf = 136315906;
    *&buf[4] = "[LiveFSFPSearchEnumeratorHelper waitForSearchResultsForObserver:startingAtPage:]";
    *&buf[12] = 1024;
    *&buf[14] = v9;
    *&buf[18] = 1024;
    *&buf[20] = v10;
    LOWORD(v34) = 1024;
    *(&v34 + 2) = v11;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "%s: entered state %d page issbn %d, issbd %d", buf, 0x1Eu);
  }

  if (![(LiveFSFPEnumeratorHelper *)self state])
  {
    [(LiveFSFPSearchEnumeratorHelper *)self start];
  }

  if ([(LiveFSFPEnumeratorHelper *)self state]== 3)
  {
    v12 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
    [v6 finishEnumeratingWithError:v12];
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPSearchEnumeratorHelper waitForSearchResultsForObserver:startingAtPage:];
    }
  }

  else
  {
    if ([v7 isEqual:*MEMORY[0x277CC6328]] & 1) != 0 || (objc_msgSend(v7, "isEqual:", *MEMORY[0x277CC6320]))
    {
      LODWORD(v14) = 0;
    }

    else if ([v7 length] != 4 || (v21 = v7, v14 = *objc_msgSend(v7, "bytes"), (v14 & 0x3F) != 0) || -[NSMutableArray count](self->searchResults, "count") <= v14)
    {
      v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
      [v6 finishEnumeratingWithError:v22];

      goto LABEL_18;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      searchResults = self->searchResults;
      *buf = 134218752;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      v34 = 64;
      LOWORD(v35) = 2048;
      *(&v35 + 2) = searchResults;
      _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_INFO, "enumerator helper[%p]: range: %lu -> %lu out of %p,", buf, 0x2Au);
    }

    if ([(LiveFSFPEnumeratorHelper *)self state]== 2 || [(NSMutableArray *)self->searchResults count]>= (v14 + 64))
    {
      [(LiveFSFPSearchEnumeratorHelper *)self finallyEnumerateItemsForObserver:v6 inRange:v14, 64];
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v34 = __Block_byref_object_copy__51;
      *&v35 = __Block_byref_object_dispose__52;
      *(&v35 + 1) = 0;
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __81__LiveFSFPSearchEnumeratorHelper_waitForSearchResultsForObserver_startingAtPage___block_invoke;
      v26 = &unk_27981A7B8;
      v29 = buf;
      v27 = self;
      v32 = v14;
      v28 = v6;
      v30 = v14;
      v31 = 64;
      v17 = MEMORY[0x259C563F0](&v23);
      objc_storeWeak((*&buf[8] + 40), v17);
      pendingReaderBlocks = self->_pendingReaderBlocks;
      v19 = MEMORY[0x259C563F0](v17);
      [(NSMutableArray *)pendingReaderBlocks addObject:v19, v23, v24, v25, v26, v27];

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&v35 + 1);
    }
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

void __81__LiveFSFPSearchEnumeratorHelper_waitForSearchResultsForObserver_startingAtPage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (!WeakRetained || [*(a1 + 32) state] == 3)
  {
    v2 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:89];
    [*(a1 + 40) finishEnumeratingWithError:v2];
LABEL_4:

    goto LABEL_9;
  }

  if ([*(a1 + 32) state] != 2)
  {
    v3 = (*(a1 + 72) + 64);
    if ([*(*(a1 + 32) + 80) count] < v3)
    {
      v4 = *(*(a1 + 32) + 96);
      v2 = MEMORY[0x259C563F0](WeakRetained);
      [v4 addObject:v2];
      goto LABEL_4;
    }
  }

  [*(a1 + 32) finallyEnumerateItemsForObserver:*(a1 + 40) inRange:{*(a1 + 56), *(a1 + 64)}];
LABEL_9:
}

- (void)enumerateItemsForObserver:(id)a3 startingAtPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  searchWorkQueue = self->_searchWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__LiveFSFPSearchEnumeratorHelper_enumerateItemsForObserver_startingAtPage___block_invoke;
  block[3] = &unk_27981A7E0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(searchWorkQueue, block);
}

- (void)initForQuery:withExtension:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, v0, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: Creating search enumerator", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initForQuery:withExtension:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_1(uint64_t a1, unsigned int *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [*(*(a1 + 32) + 72) searchContainerItemIdentifier];
  v6 = *a2;
  OUTLINED_FUNCTION_0();
  v10 = 1024;
  v11 = v7;
  _os_log_error_impl(&dword_255FE9000, a3, OS_LOG_TYPE_ERROR, "Search %@ ended with error %d", v9, 0x12u);

  v8 = *MEMORY[0x277D85DE8];
}

void __59__LiveFSFPSearchEnumeratorHelper_copySearchCompletionBlock__block_invoke_44_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(*(a1 + 32) + 72) searchContainerItemIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, a2, OS_LOG_TYPE_DEBUG, "Search %@ completed", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __39__LiveFSFPSearchEnumeratorHelper_start__block_invoke_2_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5[0] = 67109378;
  v5[1] = a2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "Error %d starting search %@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

void __75__LiveFSFPSearchEnumeratorHelper_finallyEnumerateItemsForObserver_inRange___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v5 = 136315394;
  v6 = "[LiveFSFPSearchEnumeratorHelper finallyEnumerateItemsForObserver:inRange:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "%s: unable to find item at path %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)waitForSearchResultsForObserver:startingAtPage:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_255FE9000, v0, OS_LOG_TYPE_DEBUG, "enumerator helper[%p]: returning ECANCELED", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end