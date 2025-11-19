@interface CPLPullSessionScopesAcknowledgement
- (BOOL)applyToStore:(id)a3 error:(id *)a4;
- (BOOL)discardFromStore:(id)a3 error:(id *)a4;
- (CPLPullSessionScopesAcknowledgement)initWithCoder:(id)a3;
- (CPLPullSessionScopesAcknowledgement)initWithStore:(id)a3 scopesChangeBatch:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPLPullSessionScopesAcknowledgement

- (BOOL)discardFromStore:(id)a3 error:(id *)a4
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionScopesAcknowledgement;
  return [(CPLChangeSessionUpdate *)&v5 discardFromStore:a3 error:a4];
}

- (BOOL)applyToStore:(id)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPLPullSessionScopesAcknowledgement;
  if ([(CPLChangeSessionUpdate *)&v13 applyToStore:v6 error:a4])
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

    v9 = [v6 scopes];
    v10 = [v9 clientAcknowledgedScopeChanges:self->_scopesChangeBatch error:a4];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPLPullSessionScopesAcknowledgement;
  v4 = a3;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_scopesChangeBatch forKey:{@"scb", v5.receiver, v5.super_class}];
}

- (CPLPullSessionScopesAcknowledgement)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLPullSessionScopesAcknowledgement;
  v5 = [(CPLChangeSessionUpdate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scb"];
    scopesChangeBatch = v5->_scopesChangeBatch;
    v5->_scopesChangeBatch = v6;
  }

  return v5;
}

- (CPLPullSessionScopesAcknowledgement)initWithStore:(id)a3 scopesChangeBatch:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CPLPullSessionScopesAcknowledgement;
  v8 = [(CPLChangeSessionUpdate *)&v11 initWithStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scopesChangeBatch, a4);
  }

  return v9;
}

@end