@interface CPLSharedRemapFixUpTask
- (CPLSharedRemapFixUpTask)initWithSharedCloudScopedIdentifier:(id)identifier realCloudScopedIdentifier:(id)scopedIdentifier privateCloudScopedIdentifier:(id)cloudScopedIdentifier proposedPrivateScopedIdentifier:(id)privateScopedIdentifier recordClass:(Class)class;
- (id)description;
@end

@implementation CPLSharedRemapFixUpTask

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  realCloudScopedIdentifier = self->_realCloudScopedIdentifier;
  privateCloudScopedIdentifier = self->_privateCloudScopedIdentifier;
  identifier = [(CPLScopedIdentifier *)self->_sharedCloudScopedIdentifier identifier];
  v7 = [v3 initWithFormat:@"[%@.sharingRecordScopedIdentifier = %@ instead of %@]", privateCloudScopedIdentifier, realCloudScopedIdentifier, identifier];

  return v7;
}

- (CPLSharedRemapFixUpTask)initWithSharedCloudScopedIdentifier:(id)identifier realCloudScopedIdentifier:(id)scopedIdentifier privateCloudScopedIdentifier:(id)cloudScopedIdentifier proposedPrivateScopedIdentifier:(id)privateScopedIdentifier recordClass:(Class)class
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  cloudScopedIdentifierCopy = cloudScopedIdentifier;
  privateScopedIdentifierCopy = privateScopedIdentifier;
  v20.receiver = self;
  v20.super_class = CPLSharedRemapFixUpTask;
  v17 = [(CPLSharedRemapFixUpTask *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sharedCloudScopedIdentifier, identifier);
    objc_storeStrong(&v18->_realCloudScopedIdentifier, scopedIdentifier);
    objc_storeStrong(&v18->_privateCloudScopedIdentifier, cloudScopedIdentifier);
    objc_storeStrong(&v18->_proposedPrivateScopedIdentifier, privateScopedIdentifier);
    objc_storeStrong(&v18->_recordClass, class);
  }

  return v18;
}

@end