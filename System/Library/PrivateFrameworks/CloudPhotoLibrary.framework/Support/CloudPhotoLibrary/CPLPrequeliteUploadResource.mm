@interface CPLPrequeliteUploadResource
- (CPLPrequeliteUploadResource)initWithResource:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
- (id)resource;
@end

@implementation CPLPrequeliteUploadResource

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CPLPrequeliteUploadResource;
  v6 = [(CPLPrequeliteUploadResource *)&v16 init];
  if (v6)
  {
    v6->_position = [v5 integerAtIndex:0];
    v6->_pendingCount = [v5 integerAtIndex:1];
    v7 = [v5 stringAtIndex:2];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v6->_resourceType = [v5 intAtIndex:3];
    v9 = [v5 stringAtIndex:4];
    fingerPrint = v6->_fingerPrint;
    v6->_fingerPrint = v9;

    v11 = [v5 stringAtIndex:5];
    fileUTI = v6->_fileUTI;
    v6->_fileUTI = v11;

    v13 = [v5 stringAtIndex:6];
    originalPath = v6->_originalPath;
    v6->_originalPath = v13;

    v6->_available = [v5 intAtIndex:7] != 0;
    v6->_retryCount = [v5 intAtIndex:8];
    v6->_status = [v5 intAtIndex:9];
  }

  return v6;
}

- (CPLPrequeliteUploadResource)initWithResource:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CPLPrequeliteUploadResource;
  v5 = [(CPLPrequeliteUploadResource *)&v21 init];
  if (v5)
  {
    v6 = [v4 itemScopedIdentifier];
    v7 = [v6 identifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v7;

    v5->_resourceType = [v4 resourceType];
    v9 = [v4 identity];
    v10 = [v9 fingerPrint];
    fingerPrint = v5->_fingerPrint;
    v5->_fingerPrint = v10;

    v12 = [v4 identity];
    v13 = [v12 fileUTI];
    fileUTI = v5->_fileUTI;
    v5->_fileUTI = v13;

    v15 = [v4 identity];
    v16 = [v15 fileURL];
    v17 = [v16 path];
    originalPath = v5->_originalPath;
    v5->_originalPath = v17;

    v19 = [v4 identity];
    v5->_available = [v19 isAvailable];
  }

  return v5;
}

- (id)resource
{
  v3 = objc_alloc_init(CPLResourceIdentity);
  [v3 setFingerPrint:self->_fingerPrint];
  [v3 setFileUTI:self->_fileUTI];
  originalPath = self->_originalPath;
  if (originalPath)
  {
    v5 = [NSURL fileURLWithPath:originalPath isDirectory:0];
    [v3 setFileURL:v5];
  }

  [v3 setAvailable:self->_available];
  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    v7 = itemIdentifier;
    v8 = [CPLScopedIdentifier alloc];
    v9 = [v8 initWithScopeIdentifier:CPLPrimaryScopeIdentifier identifier:self->_itemIdentifier];
  }

  else
  {
    v9 = 0;
  }

  v10 = [[CPLResource alloc] initWithResourceIdentity:v3 itemScopedIdentifier:v9 resourceType:self->_resourceType];

  return v10;
}

@end