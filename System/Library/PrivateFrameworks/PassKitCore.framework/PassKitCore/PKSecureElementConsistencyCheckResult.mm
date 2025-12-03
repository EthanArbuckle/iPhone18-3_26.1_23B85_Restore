@interface PKSecureElementConsistencyCheckResult
- (PKSecureElementConsistencyCheckResult)initWithCleanupActions:(int64_t)actions resultsSummary:(id)summary requestedActions:(id)requestedActions registeredRegions:(id)regions;
- (id)description;
@end

@implementation PKSecureElementConsistencyCheckResult

- (PKSecureElementConsistencyCheckResult)initWithCleanupActions:(int64_t)actions resultsSummary:(id)summary requestedActions:(id)requestedActions registeredRegions:(id)regions
{
  summaryCopy = summary;
  requestedActionsCopy = requestedActions;
  regionsCopy = regions;
  v13 = [(PKSecureElementConsistencyCheckResult *)self init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v14;
    if (summaryCopy)
    {
      [v14 setObject:summaryCopy forKeyedSubscript:@"state"];
    }

    if (regionsCopy)
    {
      [v15 setObject:regionsCopy forKeyedSubscript:@"registeredRegions"];
    }

    v13->_cleanupActions = actions;
    v16 = [v15 copy];
    summary = v13->_summary;
    v13->_summary = v16;

    objc_storeStrong(&v13->_requestedActions, requestedActions);
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