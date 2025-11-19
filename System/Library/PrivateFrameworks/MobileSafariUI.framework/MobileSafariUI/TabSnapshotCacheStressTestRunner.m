@interface TabSnapshotCacheStressTestRunner
- (TabSnapshotCacheStressTestRunnerDelegate)delegate;
- (id)_mutableOrderedSetOfUUIDsWithCount:(unint64_t)a3;
- (id)_mutatedUUIDsFromUUIDs:(id)a3;
- (void)_runIteration;
- (void)start;
- (void)tabSnapshotCache:(id)a3 didCacheSnapshotWithIdentifier:(id)a4;
- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5;
@end

@implementation TabSnapshotCacheStressTestRunner

- (id)_mutableOrderedSetOfUUIDsWithCount:(unint64_t)a3
{
  for (i = [MEMORY[0x277CBEB40] orderedSet];
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    [i addObject:v5];
  }

  return i;
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  if (!start_temporaryCacheDirectoryURL)
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 temporaryDirectory];
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 globallyUniqueString];
    v7 = [v4 URLByAppendingPathComponent:v6 isDirectory:1];
    v8 = start_temporaryCacheDirectoryURL;
    start_temporaryCacheDirectoryURL = v7;
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [start_temporaryCacheDirectoryURL absoluteString];
  [v9 _web_createDirectoryAtPathWithIntermediateDirectories:v10 attributes:0];

  v11 = [TabSnapshotCache alloc];
  v12 = [(TabSnapshotCache *)v11 initWithThumbnailCacheDirectoryURL:start_temporaryCacheDirectoryURL];
  cache = self->_cache;
  self->_cache = v12;

  srand(1u);
  v14 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    iterations = self->_iterations;
    v16 = 134217984;
    v17 = iterations;
    _os_log_impl(&dword_215819000, v14, OS_LOG_TYPE_INFO, "TabSnapshotCacheStressTest starting with %lu iterations", &v16, 0xCu);
  }

  [(TabSnapshotCacheStressTestRunner *)self _runIteration];
}

- (id)_mutatedUUIDsFromUUIDs:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 count];
    v7 = rand() % v6;
    v8 = rand() % (v6 - v7);
    v9 = [MEMORY[0x277CBEB40] orderedSetWithOrderedSet:v5 range:v7 copyItems:{v8, 0}];
    v10 = [(TabSnapshotCacheStressTestRunner *)self _mutableOrderedSetOfUUIDsWithCount:rand() % (501 - v8)];
    [v9 unionOrderedSet:v10];
  }

  else
  {
    v9 = [(TabSnapshotCacheStressTestRunner *)self _mutableOrderedSetOfUUIDsWithCount:rand() % 501];
  }

  return v9;
}

- (void)_runIteration
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_iterations + 1;
  self->_iterations = v3;
  maxIterations = self->_maxIterations;
  v5 = WBS_LOG_CHANNEL_PREFIXPerformanceTest();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3 <= maxIterations)
  {
    if (v6)
    {
      iterations = self->_iterations;
      v12 = 134217984;
      v13 = iterations;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "TabSnapshotCacheStressTest iteration %lu", &v12, 0xCu);
    }

    v9 = [(TabSnapshotCacheStressTestRunner *)self _mutatedUUIDsFromUUIDs:self->_currentUUIDs];
    currentUUIDs = self->_currentUUIDs;
    self->_currentUUIDs = v9;

    [(TabSnapshotCache *)self->_cache setIdentifiersToCache:self->_currentUUIDs forDelegate:self];
    [(TabSnapshotCache *)self->_cache setUpdating:1 forDelegate:self];
    v11 = [(NSMutableOrderedSet *)self->_currentUUIDs count];
    self->_cachesUntilNextIteration = rand() % v11 + 1;
  }

  else
  {
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_215819000, v5, OS_LOG_TYPE_INFO, "TabSnapshotCacheStressTest finished", &v12, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained tabSnapshotCacheStressTestRunnerDidFinish:self];
  }
}

- (void)tabSnapshotCache:(id)a3 didCacheSnapshotWithIdentifier:(id)a4
{
  cachesUntilNextIteration = self->_cachesUntilNextIteration;
  if (cachesUntilNextIteration)
  {
    self->_cachesUntilNextIteration = cachesUntilNextIteration - 1;
  }

  else
  {
    [(TabSnapshotCacheStressTestRunner *)self _runIteration:a3];
  }
}

- (void)tabSnapshotCache:(id)a3 requestSnapshotWithIdentifier:(id)a4 completion:(id)a5
{
  v6 = a4;
  v7 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__TabSnapshotCacheStressTestRunner_tabSnapshotCache_requestSnapshotWithIdentifier_completion___block_invoke;
  v10[3] = &unk_2781D56B0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __94__TabSnapshotCacheStressTestRunner_tabSnapshotCache_requestSnapshotWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v8.width = 1024.0;
  v8.height = 768.0;
  UIGraphicsBeginImageContext(v8);
  v2 = [MEMORY[0x277D75348] purpleColor];
  [v2 set];

  CurrentContext = UIGraphicsGetCurrentContext();
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = 1024.0;
  v9.size.height = 768.0;
  CGContextFillRect(CurrentContext, v9);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v4 = [objc_alloc(MEMORY[0x277D28DA8]) initWithIdentifier:*(a1 + 32)];
  v5 = [objc_alloc(MEMORY[0x277D28D98]) initWithImage:v6 metadata:v4];
  (*(*(a1 + 40) + 16))();
}

- (TabSnapshotCacheStressTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end