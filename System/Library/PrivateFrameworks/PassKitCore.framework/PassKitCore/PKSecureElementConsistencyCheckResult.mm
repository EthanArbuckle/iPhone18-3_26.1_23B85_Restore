@interface PKSecureElementConsistencyCheckResult
- (PKSecureElementConsistencyCheckResult)initWithCleanupActions:(int64_t)a3 resultsSummary:(id)a4 requestedActions:(id)a5 registeredRegions:(id)a6;
- (id)description;
@end

@implementation PKSecureElementConsistencyCheckResult

- (PKSecureElementConsistencyCheckResult)initWithCleanupActions:(int64_t)a3 resultsSummary:(id)a4 requestedActions:(id)a5 registeredRegions:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(PKSecureElementConsistencyCheckResult *)self init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v14;
    if (v10)
    {
      [v14 setObject:v10 forKeyedSubscript:@"state"];
    }

    if (v12)
    {
      [v15 setObject:v12 forKeyedSubscript:@"registeredRegions"];
    }

    v13->_cleanupActions = a3;
    v16 = [v15 copy];
    summary = v13->_summary;
    v13->_summary = v16;

    objc_storeStrong(&v13->_requestedActions, a5);
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKConsistencyCheckCleanupActionsToString(self->_cleanupActions);
  [v3 appendFormat:@"cleanupActions: '%@'; ", v4];

  [v3 appendFormat:@"registerRegions: '%@'; ", self->_registerRegions];
  [v3 appendFormat:@"requestedActions: '%@'; ", self->_requestedActions];
  [v3 appendFormat:@"summary: '%@'; ", self->_summary];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

@end