@interface CPLEngineBackupSyncTask
- (CPLEngineBackupSyncTask)initWithEngineLibrary:(id)library delegate:(id)delegate;
- (id)description;
@end

@implementation CPLEngineBackupSyncTask

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

- (CPLEngineBackupSyncTask)initWithEngineLibrary:(id)library delegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = CPLEngineBackupSyncTask;
  return [(CPLEngineForceSyncTask *)&v5 initWithScopeIdentifiers:MEMORY[0x1E695E0F0] engineLibrary:library filter:0 delegate:delegate];
}

@end