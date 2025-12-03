@interface CPLPrequeliteDownloadResource
- (CPLPrequeliteDownloadResource)initWithResource:(id)resource;
- (CPLPrequeliteDownloadResource)resourceWithDownloadQueue:(id)queue;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation CPLPrequeliteDownloadResource

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v14.receiver = self;
  v14.super_class = CPLPrequeliteDownloadResource;
  v6 = [(CPLPrequeliteDownloadResource *)&v14 init];
  if (v6)
  {
    v6->_position = [setCopy integerAtIndex:0];
    v6->_scopeIndex = [setCopy integerAtIndex:1];
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

    v6->_fileSize = [setCopy unsignedIntegerAtIndex:6];
    v6->_taskIdentifier = [setCopy integerAtIndex:7];
    v6->_retryCount = [setCopy intAtIndex:8];
    v6->_status = [setCopy intAtIndex:9];
    v6->_intent = [setCopy intAtIndex:10];
  }

  return v6;
}

- (CPLPrequeliteDownloadResource)initWithResource:(id)resource
{
  resourceCopy = resource;
  v18.receiver = self;
  v18.super_class = CPLPrequeliteDownloadResource;
  v5 = [(CPLPrequeliteDownloadResource *)&v18 init];
  if (v5)
  {
    itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
    scopeIndex = [itemScopedIdentifier scopeIndex];
    v5->_scopeIndex = scopeIndex;
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BFDA0();
    }

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
    v5->_fileSize = [identity3 fileSize];

    v5->_taskIdentifier = [resourceCopy _backgroundDownloadTaskIdentifier];
    v5->_intent = 1;
  }

  return v5;
}

- (CPLPrequeliteDownloadResource)resourceWithDownloadQueue:(id)queue
{
  v4 = [queue scopedIdentifierForLocalIdentifier:self->_itemIdentifier scopeIndex:self->_scopeIndex];
  if (v4)
  {
    v5 = objc_alloc_init(CPLResourceIdentity);
    [v5 setFingerPrint:self->_fingerPrint];
    [v5 setFileUTI:self->_fileUTI];
    [v5 setFileSize:self->_fileSize];
    v6 = [[CPLResource alloc] initWithResourceIdentity:v5 itemScopedIdentifier:v4 resourceType:self->_resourceType];
    [v6 _setBackgroundDownloadTaskIdentifier:self->_taskIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end