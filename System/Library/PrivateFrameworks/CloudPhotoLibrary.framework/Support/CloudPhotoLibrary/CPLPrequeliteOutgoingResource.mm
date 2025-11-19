@interface CPLPrequeliteOutgoingResource
- (CPLPrequeliteOutgoingResource)initWithResource:(id)a3 uploadIdentifier:(id)a4;
- (CPLPrequeliteOutgoingResource)resourceWithOutgoingResources:(id)a3;
- (CPLPrequeliteOutgoingResource)resourceWithScopeIdentifier:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation CPLPrequeliteOutgoingResource

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CPLPrequeliteOutgoingResource;
  v6 = [(CPLPrequeliteOutgoingResource *)&v16 init];
  if (v6)
  {
    v6->_scopeIndex = [v5 integerAtIndex:0];
    v7 = [v5 stringAtIndex:1];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v6->_resourceType = [v5 intAtIndex:2];
    v9 = [v5 stringAtIndex:3];
    fingerPrint = v6->_fingerPrint;
    v6->_fingerPrint = v9;

    v11 = [v5 stringAtIndex:4];
    fileUTI = v6->_fileUTI;
    v6->_fileUTI = v11;

    v6->_fileKind = [v5 intAtIndex:5];
    v6->_fileSize = [v5 unsignedIntegerAtIndex:6];
    v13 = [v5 stringAtIndex:7];
    uploadIdentifier = v6->_uploadIdentifier;
    v6->_uploadIdentifier = v13;
  }

  return v6;
}

- (CPLPrequeliteOutgoingResource)initWithResource:(id)a3 uploadIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CPLPrequeliteOutgoingResource;
  v9 = [(CPLPrequeliteOutgoingResource *)&v28 init];
  if (v9)
  {
    v10 = [v7 itemScopedIdentifier];
    v11 = [v10 scopeIndex];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BE10C(a2, v9);
    }

    v9->_scopeIndex = v11;
    v12 = [v10 identifier];
    v13 = [v12 copy];
    itemIdentifier = v9->_itemIdentifier;
    v9->_itemIdentifier = v13;

    v9->_resourceType = [v7 resourceType];
    v15 = [v7 identity];
    v16 = [v15 fingerPrint];
    v17 = [v16 copy];
    fingerPrint = v9->_fingerPrint;
    v9->_fingerPrint = v17;

    v19 = [v15 fileUTI];
    v20 = [v19 copy];
    fileUTI = v9->_fileUTI;
    v9->_fileUTI = v20;

    if (v9->_fileUTI)
    {
      v22 = [UTType typeWithIdentifier:?];
      v23 = v22;
      if (v9->_resourceType != 1)
      {
LABEL_13:
        v9->_fileSize = [v15 fileSize];
        v25 = [v8 copy];
        uploadIdentifier = v9->_uploadIdentifier;
        v9->_uploadIdentifier = v25;

        goto LABEL_14;
      }

      if (v22)
      {
        if ([v22 conformsToType:UTTypeImage])
        {
          v9->_fileKind = 0;
          goto LABEL_13;
        }

        if ([v23 conformsToType:UTTypeMovie])
        {
          v24 = 1;
          goto LABEL_11;
        }

LABEL_10:
        v24 = 2;
LABEL_11:
        v9->_fileKind = v24;
        goto LABEL_13;
      }
    }

    else if (v9->_resourceType != 1)
    {
      v23 = 0;
      goto LABEL_13;
    }

    v23 = 0;
    goto LABEL_10;
  }

LABEL_14:

  return v9;
}

- (CPLPrequeliteOutgoingResource)resourceWithOutgoingResources:(id)a3
{
  v4 = [a3 scopedIdentifierForLocalIdentifier:self->_itemIdentifier scopeIndex:self->_scopeIndex];
  if (!v4)
  {
    v4 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:@"<DELETED_SCOPE>" identifier:self->_itemIdentifier scopeIndex:self->_scopeIndex];
  }

  v5 = objc_alloc_init(CPLResourceIdentity);
  [v5 setFingerPrint:self->_fingerPrint];
  [v5 setFileUTI:self->_fileUTI];
  [v5 setFileSize:self->_fileSize];
  [v5 setAvailable:1];
  v6 = [[CPLResource alloc] initWithResourceIdentity:v5 itemScopedIdentifier:v4 resourceType:self->_resourceType];

  return v6;
}

- (CPLPrequeliteOutgoingResource)resourceWithScopeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v4 identifier:self->_itemIdentifier];

  v6 = objc_alloc_init(CPLResourceIdentity);
  [v6 setFingerPrint:self->_fingerPrint];
  [v6 setFileUTI:self->_fileUTI];
  [v6 setFileSize:self->_fileSize];
  [v6 setAvailable:1];
  v7 = [[CPLResource alloc] initWithResourceIdentity:v6 itemScopedIdentifier:v5 resourceType:self->_resourceType];

  return v7;
}

@end