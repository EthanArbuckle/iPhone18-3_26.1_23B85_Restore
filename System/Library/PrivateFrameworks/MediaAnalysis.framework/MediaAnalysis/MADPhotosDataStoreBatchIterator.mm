@interface MADPhotosDataStoreBatchIterator
+ (id)iteratorForFetchRequest:(id)request mangedObjectContext:(id)context batchSize:(unint64_t)size;
+ (id)iteratorForFetchRequest:(id)request photoLibrary:(id)library batchSize:(unint64_t)size;
- (MADPhotosDataStoreBatchIterator)initWithFetchRequest:(id)request mangedObjectContext:(id)context batchSize:(unint64_t)size;
- (id)nextObject;
@end

@implementation MADPhotosDataStoreBatchIterator

- (MADPhotosDataStoreBatchIterator)initWithFetchRequest:(id)request mangedObjectContext:(id)context batchSize:(unint64_t)size
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = MADPhotosDataStoreBatchIterator;
  v10 = [(MADPhotosDataStoreBatchIterator *)&v26 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if ([requestCopy fetchBatchSize] && objc_msgSend(requestCopy, "fetchBatchSize") != size && MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    fetchBatchSize = [requestCopy fetchBatchSize];
    *buf = 134218240;
    *&buf[4] = fetchBatchSize;
    *&buf[12] = 2048;
    *&buf[14] = size;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADPhotosDataStoreBatchIterator] overriding fetchBatchSize of %lu with %lu", buf, 0x16u);
  }

  [requestCopy setFetchBatchSize:size];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__74;
  v31 = __Block_byref_object_dispose__74;
  v32 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__MADPhotosDataStoreBatchIterator_initWithFetchRequest_mangedObjectContext_batchSize___block_invoke;
  v17[3] = &unk_1E8351E60;
  v18 = contextCopy;
  v20 = buf;
  v19 = requestCopy;
  v21 = &v22;
  v16 = 0;
  v12 = [v18 mad_performAndSaveChanges:v17 error:&v16];
  v13 = v16;
  if (v12)
  {
    objc_storeStrong(&v10->_objects, *(*&buf[8] + 40));
    objc_storeStrong(&v10->_moc, context);
    v10->_batchSize = size;
    v10->_batchIdx = -1;
    v10->_numBatches = (size + v23[3] - 1) / size;
  }

  else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v27 = 138412290;
    v28 = v13;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADPhotosDataStoreBatchIterator] fetch failed with error: %@", v27, 0xCu);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  if (!v12)
  {
    v14 = 0;
  }

  else
  {
LABEL_13:
    v14 = v10;
  }

  return v14;
}

BOOL __86__MADPhotosDataStoreBatchIterator_initWithFetchRequest_mangedObjectContext_batchSize___block_invoke(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
  LOBYTE(v4) = [v4 setQueryGenerationFromToken:v5 error:a2];

  if ((v4 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v13 = *a2;
      v14 = 138412290;
      v15 = v13;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[MADPhotosDataStoreBatchIterator] failed to set query generation, error: %@";
      goto LABEL_9;
    }

    return 0;
  }

  v6 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:a2];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*a2)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v10 = *a2;
      v14 = 138412290;
      v15 = v10;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "[MADPhotosDataStoreBatchIterator] failed fetching: %@";
LABEL_9:
      _os_log_impl(&dword_1C9B70000, v11, OS_LOG_TYPE_ERROR, v12, &v14, 0xCu);
      return 0;
    }

    return 0;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) count];
  return 1;
}

+ (id)iteratorForFetchRequest:(id)request mangedObjectContext:(id)context batchSize:(unint64_t)size
{
  contextCopy = context;
  requestCopy = request;
  v9 = [[MADPhotosDataStoreBatchIterator alloc] initWithFetchRequest:requestCopy mangedObjectContext:contextCopy batchSize:size];

  return v9;
}

+ (id)iteratorForFetchRequest:(id)request photoLibrary:(id)library batchSize:(unint64_t)size
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  libraryCopy = library;
  v9 = +[MADPhotosDataStoreClient sharedClient];
  v10 = [v9 persistentStoreCoordinatorForPhotoLibrary:libraryCopy];

  v11 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  v12 = v11;
  if (v11)
  {
    [v11 setPersistentStoreCoordinator:v10];
    [v12 setMergePolicy:*MEMORY[0x1E695D370]];
    v13 = [[MADPhotosDataStoreBatchIterator alloc] initWithFetchRequest:requestCopy mangedObjectContext:v12 batchSize:size];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      photoLibraryURL = [libraryCopy photoLibraryURL];
      path = [photoLibraryURL path];
      v17 = 138412290;
      v18 = path;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADPhotosDataStoreBatchIterator] Failed to create managed object context for photo library at %@", &v17, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

- (id)nextObject
{
  v3 = objc_autoreleasePoolPush();
  ++self->_batchIdx;
  if ([(NSManagedObjectContext *)self->_moc mad_hasChanges])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Accessing next managed object with pending changes in the moc. This prevents the context from being reset to purge rows from memory. Please ensure loop contents saves any changes before completing" userInfo:0];
    objc_exception_throw(v8);
  }

  currentBatch = self->_currentBatch;
  self->_currentBatch = 0;

  [(NSManagedObjectContext *)self->_moc mad_reset];
  moc = self->_moc;
  if (self->_batchIdx >= self->_numBatches)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__MADPhotosDataStoreBatchIterator_nextObject__block_invoke_2;
    v9[3] = &unk_1E8351E88;
    v9[4] = self;
    [(NSManagedObjectContext *)moc mad_performAndSaveChanges:v9 error:0];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__MADPhotosDataStoreBatchIterator_nextObject__block_invoke;
    v10[3] = &unk_1E834C010;
    v10[4] = self;
    [(NSManagedObjectContext *)moc performBlockAndWait:v10];
  }

  objc_autoreleasePoolPop(v3);
  v6 = self->_currentBatch;

  return v6;
}

void __45__MADPhotosDataStoreBatchIterator_nextObject__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = v3 * *(v2 + 16);
  v5 = v4 + v3;
  v6 = [*(v2 + 40) count];
  if (v5 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(*(a1 + 32) + 40) subarrayWithRange:{v4, v7 - v4}];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;
}

uint64_t __45__MADPhotosDataStoreBatchIterator_nextObject__block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 48) setQueryGenerationFromToken:0 error:a2];
  if ((v3 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = *a2;
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADPhotosDataStoreBatchIterator] failed to remove query generation, error: %@", &v6, 0xCu);
  }

  return v3;
}

@end