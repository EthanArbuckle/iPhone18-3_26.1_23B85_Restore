@interface CPLSharedRemapFixUpTask
- (CPLSharedRemapFixUpTask)initWithSharedCloudScopedIdentifier:(id)a3 realCloudScopedIdentifier:(id)a4 privateCloudScopedIdentifier:(id)a5 proposedPrivateScopedIdentifier:(id)a6 recordClass:(Class)a7;
- (id)description;
@end

@implementation CPLSharedRemapFixUpTask

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  realCloudScopedIdentifier = self->_realCloudScopedIdentifier;
  privateCloudScopedIdentifier = self->_privateCloudScopedIdentifier;
  v6 = [(CPLScopedIdentifier *)self->_sharedCloudScopedIdentifier identifier];
  v7 = [v3 initWithFormat:@"[%@.sharingRecordScopedIdentifier = %@ instead of %@]", privateCloudScopedIdentifier, realCloudScopedIdentifier, v6];

  return v7;
}

- (CPLSharedRemapFixUpTask)initWithSharedCloudScopedIdentifier:(id)a3 realCloudScopedIdentifier:(id)a4 privateCloudScopedIdentifier:(id)a5 proposedPrivateScopedIdentifier:(id)a6 recordClass:(Class)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = CPLSharedRemapFixUpTask;
  v17 = [(CPLSharedRemapFixUpTask *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sharedCloudScopedIdentifier, a3);
    objc_storeStrong(&v18->_realCloudScopedIdentifier, a4);
    objc_storeStrong(&v18->_privateCloudScopedIdentifier, a5);
    objc_storeStrong(&v18->_proposedPrivateScopedIdentifier, a6);
    objc_storeStrong(&v18->_recordClass, a7);
  }

  return v18;
}

@end