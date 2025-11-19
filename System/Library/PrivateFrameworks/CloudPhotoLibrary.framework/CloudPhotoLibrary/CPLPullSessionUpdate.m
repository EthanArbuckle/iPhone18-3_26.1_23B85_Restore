@interface CPLPullSessionUpdate
- (BOOL)applyToStore:(id)a3 error:(id *)a4;
- (BOOL)discardFromStore:(id)a3 error:(id *)a4;
- (CPLPullSessionUpdate)initWithCoder:(id)a3;
- (CPLPullSessionUpdate)initWithStore:(id)a3 expandedClientBatch:(id)a4 expandedCloudBatch:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLPullSessionUpdate

- (BOOL)discardFromStore:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionUpdate;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:a3 error:a4];
}

- (BOOL)applyToStore:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = CPLPullSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v17 applyToStore:v6 error:a4])
  {
    v7 = [v6 pullQueue];
    if (![v7 popNextBatchWithError:a4])
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

    v10 = [v6 cloudCache];
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

    v13 = [v10 applyBatch:self->_cloudBatch isFinal:1 direction:2 withError:a4];

    if (v13)
    {
      [v7 notifyClientDidAcknowledgeBatch:self->_clientBatch];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionUpdate;
  v4 = a3;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_clientBatch forKey:{@"cli", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_cloudBatch forKey:@"clo"];
}

- (CPLPullSessionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CPLPullSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cli"];
    clientBatch = v5->_clientBatch;
    v5->_clientBatch = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clo"];
    cloudBatch = v5->_cloudBatch;
    v5->_cloudBatch = v8;
  }

  return v5;
}

- (CPLPullSessionUpdate)initWithStore:(id)a3 expandedClientBatch:(id)a4 expandedCloudBatch:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CPLPullSessionUpdate;
  v11 = [(CPLChangeSessionUpdate *)&v15 initWithStore:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_clientBatch, a4);
    objc_storeStrong(&v12->_cloudBatch, a5);
    v13 = [v8 pullQueue];
    [v13 notifyClientWillAcknowledgeBatch:v12->_clientBatch];
  }

  return v12;
}

@end