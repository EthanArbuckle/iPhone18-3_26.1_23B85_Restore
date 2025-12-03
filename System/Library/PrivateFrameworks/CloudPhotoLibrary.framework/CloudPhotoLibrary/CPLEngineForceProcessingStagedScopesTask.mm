@interface CPLEngineForceProcessingStagedScopesTask
- (CPLEngineForceProcessingStagedScopesTask)initWithEngineLibrary:(id)library delegate:(id)delegate;
- (id)description;
@end

@implementation CPLEngineForceProcessingStagedScopesTask

- (id)description
{
  _phaseDescription = [(CPLEngineForceSyncTask *)self _phaseDescription];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  taskIdentifier = [(CPLForceSyncTask *)self taskIdentifier];
  v7 = taskIdentifier;
  if (_phaseDescription)
  {
    v8 = [v4 initWithFormat:@"<%@ %@ (%@)>", v5, taskIdentifier, _phaseDescription];
  }

  else
  {
    v8 = [v4 initWithFormat:@"<%@ %@>", v5, taskIdentifier, v11];
  }

  v9 = v8;

  return v9;
}

- (CPLEngineForceProcessingStagedScopesTask)initWithEngineLibrary:(id)library delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CPLEngineForceProcessingStagedScopesTask;
  return [(CPLEngineForceSyncTask *)&v5 initWithScopeIdentifiers:MEMORY[0x1E695E0F0] engineLibrary:library filter:0 delegate:delegate];
}

@end