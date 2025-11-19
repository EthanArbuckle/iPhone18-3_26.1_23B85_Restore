@interface CPLEngineBackupSyncTask
- (CPLEngineBackupSyncTask)initWithEngineLibrary:(id)a3 delegate:(id)a4;
- (id)description;
@end

@implementation CPLEngineBackupSyncTask

- (id)description
{
  v3 = [(CPLEngineForceSyncTask *)self _phaseDescription];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = [(CPLForceSyncTask *)self taskIdentifier];
  v7 = v6;
  if (v3)
  {
    v8 = [v4 initWithFormat:@"<%@ %@ (%@)>", v5, v6, v3];
  }

  else
  {
    v8 = [v4 initWithFormat:@"<%@ %@>", v5, v6, v11];
  }

  v9 = v8;

  return v9;
}

- (CPLEngineBackupSyncTask)initWithEngineLibrary:(id)a3 delegate:(id)a4
{
  v5.receiver = self;
  v5.super_class = CPLEngineBackupSyncTask;
  return [(CPLEngineForceSyncTask *)&v5 initWithScopeIdentifiers:MEMORY[0x1E695E0F0] engineLibrary:a3 filter:0 delegate:a4];
}

@end