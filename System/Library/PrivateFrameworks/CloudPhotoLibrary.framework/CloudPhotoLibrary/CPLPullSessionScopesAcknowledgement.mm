@interface CPLPullSessionScopesAcknowledgement
- (BOOL)applyToStore:(id)store error:(id *)error;
- (BOOL)discardFromStore:(id)store error:(id *)error;
- (CPLPullSessionScopesAcknowledgement)initWithCoder:(id)coder;
- (CPLPullSessionScopesAcknowledgement)initWithStore:(id)store scopesChangeBatch:(id)batch;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPullSessionScopesAcknowledgement

- (BOOL)discardFromStore:(id)store error:(id *)error
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionScopesAcknowledgement;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:store error:error];
}

- (BOOL)applyToStore:(id)store error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CPLPullSessionScopesAcknowledgement;
  if ([(CPLChangeSessionUpdate *)&v13 applyToStore:storeCopy error:error])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLPushSessionOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        scopesChangeBatch = self->_scopesChangeBatch;
        *buf = 138412290;
        v15 = scopesChangeBatch;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEBUG, "Client acknowledged scope changes %@", buf, 0xCu);
      }
    }

    scopes = [storeCopy scopes];
    v10 = [scopes clientAcknowledgedScopeChanges:self->_scopesChangeBatch error:error];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionScopesAcknowledgement;
  coderCopy = coder;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_scopesChangeBatch forKey:{@"scb", v5.receiver, v5.super_class}];
}

- (CPLPullSessionScopesAcknowledgement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPLPullSessionScopesAcknowledgement;
  v5 = [(CPLChangeSessionUpdate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scb"];
    scopesChangeBatch = v5->_scopesChangeBatch;
    v5->_scopesChangeBatch = v6;
  }

  return v5;
}

- (CPLPullSessionScopesAcknowledgement)initWithStore:(id)store scopesChangeBatch:(id)batch
{
  batchCopy = batch;
  v11.receiver = self;
  v11.super_class = CPLPullSessionScopesAcknowledgement;
  v8 = [(CPLChangeSessionUpdate *)&v11 initWithStore:store];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scopesChangeBatch, batch);
  }

  return v9;
}

@end