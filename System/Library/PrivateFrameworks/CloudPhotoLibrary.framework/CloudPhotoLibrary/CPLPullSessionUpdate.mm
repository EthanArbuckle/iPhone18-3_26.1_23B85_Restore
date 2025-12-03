@interface CPLPullSessionUpdate
- (BOOL)applyToStore:(id)store error:(id *)error;
- (BOOL)discardFromStore:(id)store error:(id *)error;
- (CPLPullSessionUpdate)initWithCoder:(id)coder;
- (CPLPullSessionUpdate)initWithStore:(id)store expandedClientBatch:(id)batch expandedCloudBatch:(id)cloudBatch;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPullSessionUpdate

- (BOOL)discardFromStore:(id)store error:(id *)error
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionUpdate;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:store error:error];
}

- (BOOL)applyToStore:(id)store error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = CPLPullSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v17 applyToStore:storeCopy error:error])
  {
    pullQueue = [storeCopy pullQueue];
    if (![pullQueue popNextBatchWithError:error])
    {
      goto LABEL_14;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLPushSessionOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        clientBatch = self->_clientBatch;
        *buf = 138412290;
        v19 = clientBatch;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_DEBUG, "Applying to client cache %@", buf, 0xCu);
      }
    }

    cloudCache = [storeCopy cloudCache];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = __CPLPushSessionOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        cloudBatch = self->_cloudBatch;
        *buf = 138412290;
        v19 = cloudBatch;
        _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_DEBUG, "Committing to cloud cache %@", buf, 0xCu);
      }
    }

    v13 = [cloudCache applyBatch:self->_cloudBatch isFinal:1 direction:2 withError:error];

    if (v13)
    {
      [pullQueue notifyClientDidAcknowledgeBatch:self->_clientBatch];
      v14 = 1;
    }

    else
    {
LABEL_14:
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionUpdate;
  coderCopy = coder;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_clientBatch forKey:{@"cli", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_cloudBatch forKey:@"clo"];
}

- (CPLPullSessionUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CPLPullSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cli"];
    clientBatch = v5->_clientBatch;
    v5->_clientBatch = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clo"];
    cloudBatch = v5->_cloudBatch;
    v5->_cloudBatch = v8;
  }

  return v5;
}

- (CPLPullSessionUpdate)initWithStore:(id)store expandedClientBatch:(id)batch expandedCloudBatch:(id)cloudBatch
{
  storeCopy = store;
  batchCopy = batch;
  cloudBatchCopy = cloudBatch;
  v15.receiver = self;
  v15.super_class = CPLPullSessionUpdate;
  v11 = [(CPLChangeSessionUpdate *)&v15 initWithStore:storeCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientBatch, batch);
    objc_storeStrong(&v12->_cloudBatch, cloudBatch);
    pullQueue = [storeCopy pullQueue];
    [pullQueue notifyClientWillAcknowledgeBatch:v12->_clientBatch];
  }

  return v12;
}

@end