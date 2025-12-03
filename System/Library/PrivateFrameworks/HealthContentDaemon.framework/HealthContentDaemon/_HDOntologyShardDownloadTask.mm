@interface _HDOntologyShardDownloadTask
- (BOOL)_handleResponse:(id)response task:(id)task;
- (_HDOntologyShardDownloadTask)init;
- (id)initForEntry:(id)entry downloader:(id)downloader session:(id)session group:(id)group;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)resume;
@end

@implementation _HDOntologyShardDownloadTask

- (_HDOntologyShardDownloadTask)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)initForEntry:(id)entry downloader:(id)downloader session:(id)session group:(id)group
{
  entryCopy = entry;
  downloaderCopy = downloader;
  sessionCopy = session;
  groupCopy = group;
  v19.receiver = self;
  v19.super_class = _HDOntologyShardDownloadTask;
  v15 = [(_HDOntologyShardDownloadTask *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entry, entry);
    objc_storeStrong(&v16->_downloader, downloader);
    objc_storeStrong(&v16->_session, session);
    objc_storeStrong(&v16->_group, group);
    error = v16->_error;
    v16->_error = 0;
  }

  return v16;
}

- (void)resume
{
  v3 = MEMORY[0x277CCAD20];
  availableURL = [(HKOntologyShardRegistryEntry *)self->_entry availableURL];
  v6 = [v3 requestWithURL:availableURL];

  v5 = [(NSURLSession *)self->_session downloadTaskWithRequest:v6];
  [v5 setDelegate:self];
  dispatch_group_enter(self->_group);
  [v5 resume];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  taskCopy = task;
  response = [taskCopy response];
  v10 = [(_HDOntologyShardDownloadTask *)self _handleResponse:response task:taskCopy];

  if (v10)
  {
    updateCoordinator = [(HDOntologyShardDownloader *)self->_downloader updateCoordinator];
    shardRegistry = [updateCoordinator shardRegistry];

    entry = self->_entry;
    v29 = 0;
    v14 = [shardRegistry stageShardFileWithLocalURL:lCopy entry:entry error:&v29];
    v15 = v29;
    if (v14)
    {
      v20 = [(HKOntologyShardRegistryEntry *)self->_entry copyWithAvailableState:2];
      downloader = self->_downloader;
      v30 = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      v28 = 0;
      v23 = [(HDOntologyShardDownloader *)downloader _persistStagedEntries:v22 error:&v28];
      v18 = v28;

      if ((v23 & 1) == 0)
      {
        _HKInitializeLogging();
        v24 = HKLogHealthOntology();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy2 = self;
          v33 = 2114;
          v34 = v20;
          v35 = 2114;
          v36 = v18;
          _os_log_error_impl(&dword_2514A1000, v24, OS_LOG_TYPE_ERROR, "%{public}@: Failed to insert updated entry %{public}@: %{public}@", buf, 0x20u);
        }

        v25 = [(NSError *)v18 copy];
        error = self->_error;
        self->_error = v25;
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogHealthOntology();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = self->_entry;
        *buf = 138543874;
        selfCopy2 = self;
        v33 = 2114;
        v34 = v27;
        v35 = 2114;
        v36 = v15;
        _os_log_error_impl(&dword_2514A1000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Failed to stage shard file for entry %{public}@: %{public}@", buf, 0x20u);
      }

      v17 = [(NSError *)v15 copy];
      v18 = self->_error;
      self->_error = v17;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    _HKInitializeLogging();
    v9 = HKLogHealthOntology();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_HDOntologyShardDownloadTask URLSession:errorCopy task:v9 didCompleteWithError:?];
    }

    v10 = [errorCopy copy];
    error = self->_error;
    self->_error = v10;
  }

  else
  {
    response = [taskCopy response];
    [(_HDOntologyShardDownloadTask *)self _handleResponse:response task:taskCopy];
  }

  dispatch_group_leave(self->_group);
}

- (BOOL)_handleResponse:(id)response task:(id)task
{
  responseCopy = response;
  taskCopy = task;
  statusCode = [responseCopy statusCode];
  v9 = statusCode - 200;
  if ((statusCode - 200) >= 0x64)
  {
    v10 = statusCode;
    _HKInitializeLogging();
    v11 = HKLogHealthOntology();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_HDOntologyShardDownloadTask *)self _handleResponse:v10 task:v11];
    }

    v12 = MEMORY[0x277CCA9B8];
    currentRequest = [taskCopy currentRequest];
    v14 = [v12 hk_HTTPErrorRepresentingResponse:responseCopy request:currentRequest];
    error = self->_error;
    self->_error = v14;
  }

  return v9 < 0x64;
}

- (void)URLSession:(uint64_t)a1 task:(uint64_t)a2 didCompleteWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2514A1000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch shard file with error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_handleResponse:(NSObject *)a3 task:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:a2];
  v8 = 138543874;
  v9 = a1;
  v10 = 2048;
  v11 = a2;
  v12 = 2114;
  v13 = v6;
  _os_log_error_impl(&dword_2514A1000, a3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch shard file with status code %ld, %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end