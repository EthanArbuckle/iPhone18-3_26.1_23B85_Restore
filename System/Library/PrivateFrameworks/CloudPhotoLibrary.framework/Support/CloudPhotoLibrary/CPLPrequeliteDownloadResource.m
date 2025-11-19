@interface CPLPrequeliteDownloadResource
- (CPLPrequeliteDownloadResource)initWithResource:(id)a3;
- (CPLPrequeliteDownloadResource)resourceWithDownloadQueue:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation CPLPrequeliteDownloadResource

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CPLPrequeliteDownloadResource;
  v6 = [(CPLPrequeliteDownloadResource *)&v14 init];
  if (v6)
  {
    v6->_position = [v5 integerAtIndex:0];
    v6->_scopeIndex = [v5 integerAtIndex:1];
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

    v6->_fileSize = [v5 unsignedIntegerAtIndex:6];
    v6->_taskIdentifier = [v5 integerAtIndex:7];
    v6->_retryCount = [v5 intAtIndex:8];
    v6->_status = [v5 intAtIndex:9];
    v6->_intent = [v5 intAtIndex:10];
  }

  return v6;
}

- (CPLPrequeliteDownloadResource)initWithResource:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CPLPrequeliteDownloadResource;
  v5 = [(CPLPrequeliteDownloadResource *)&v18 init];
  if (v5)
  {
    v6 = [v4 itemScopedIdentifier];
    v7 = [v6 scopeIndex];
    v5->_scopeIndex = v7;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BFDA0();
    }

    v8 = [v6 identifier];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = v8;

    v5->_resourceType = [v4 resourceType];
    v10 = [v4 identity];
    v11 = [v10 fingerPrint];
    fingerPrint = v5->_fingerPrint;
    v5->_fingerPrint = v11;

    v13 = [v4 identity];
    v14 = [v13 fileUTI];
    fileUTI = v5->_fileUTI;
    v5->_fileUTI = v14;

    v16 = [v4 identity];
    v5->_fileSize = [v16 fileSize];

    v5->_taskIdentifier = [v4 _backgroundDownloadTaskIdentifier];
    v5->_intent = 1;
  }

  return v5;
}

- (CPLPrequeliteDownloadResource)resourceWithDownloadQueue:(id)a3
{
  v4 = [a3 scopedIdentifierForLocalIdentifier:self->_itemIdentifier scopeIndex:self->_scopeIndex];
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