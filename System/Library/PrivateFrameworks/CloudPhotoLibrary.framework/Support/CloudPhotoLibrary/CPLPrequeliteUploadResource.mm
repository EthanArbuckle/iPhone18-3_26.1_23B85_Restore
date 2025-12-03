@interface CPLPrequeliteUploadResource
- (CPLPrequeliteUploadResource)initWithResource:(id)resource;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
- (id)resource;
@end

@implementation CPLPrequeliteUploadResource

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v16.receiver = self;
  v16.super_class = CPLPrequeliteUploadResource;
  v6 = [(CPLPrequeliteUploadResource *)&v16 init];
  if (v6)
  {
    v6->_position = [setCopy integerAtIndex:0];
    v6->_pendingCount = [setCopy integerAtIndex:1];
    v7 = [setCopy stringAtIndex:2];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v6->_resourceType = [setCopy intAtIndex:3];
    v9 = [setCopy stringAtIndex:4];
    fingerPrint = v6->_fingerPrint;
    v6->_fingerPrint = v9;

    v11 = [setCopy stringAtIndex:5];
    fileUTI = v6->_fileUTI;
    v6->_fileUTI = v11;

    v13 = [setCopy stringAtIndex:6];
    originalPath = v6->_originalPath;
    v6->_originalPath = v13;

    v6->_available = [setCopy intAtIndex:7] != 0;
    v6->_retryCount = [setCopy intAtIndex:8];
    v6->_status = [setCopy intAtIndex:9];
  }

  return v6;
}

- (CPLPrequeliteUploadResource)initWithResource:(id)resource
{
  resourceCopy = resource;
  v21.receiver = self;
  v21.super_class = CPLPrequeliteUploadResource;
  v5 = [(CPLPrequeliteUploadResource *)&v21 init];
  if (v5)
  {
    itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
    identifier = [itemScopedIdentifier identifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = identifier;

    v5->_resourceType = [resourceCopy resourceType];
    identity = [resourceCopy identity];
    fingerPrint = [identity fingerPrint];
    fingerPrint = v5->_fingerPrint;
    v5->_fingerPrint = fingerPrint;

    identity2 = [resourceCopy identity];
    fileUTI = [identity2 fileUTI];
    fileUTI = v5->_fileUTI;
    v5->_fileUTI = fileUTI;

    identity3 = [resourceCopy identity];
    fileURL = [identity3 fileURL];
    path = [fileURL path];
    originalPath = v5->_originalPath;
    v5->_originalPath = path;

    identity4 = [resourceCopy identity];
    v5->_available = [identity4 isAvailable];
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