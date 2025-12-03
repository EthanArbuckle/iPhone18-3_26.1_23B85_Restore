@interface CPLPrequeliteOutgoingResource
- (CPLPrequeliteOutgoingResource)initWithResource:(id)resource uploadIdentifier:(id)identifier;
- (CPLPrequeliteOutgoingResource)resourceWithOutgoingResources:(id)resources;
- (CPLPrequeliteOutgoingResource)resourceWithScopeIdentifier:(id)identifier;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation CPLPrequeliteOutgoingResource

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v16.receiver = self;
  v16.super_class = CPLPrequeliteOutgoingResource;
  v6 = [(CPLPrequeliteOutgoingResource *)&v16 init];
  if (v6)
  {
    v6->_scopeIndex = [setCopy integerAtIndex:0];
    v7 = [setCopy stringAtIndex:1];
    itemIdentifier = v6->_itemIdentifier;
    v6->_itemIdentifier = v7;

    v6->_resourceType = [setCopy intAtIndex:2];
    v9 = [setCopy stringAtIndex:3];
    fingerPrint = v6->_fingerPrint;
    v6->_fingerPrint = v9;

    v11 = [setCopy stringAtIndex:4];
    fileUTI = v6->_fileUTI;
    v6->_fileUTI = v11;

    v6->_fileKind = [setCopy intAtIndex:5];
    v6->_fileSize = [setCopy unsignedIntegerAtIndex:6];
    v13 = [setCopy stringAtIndex:7];
    uploadIdentifier = v6->_uploadIdentifier;
    v6->_uploadIdentifier = v13;
  }

  return v6;
}

- (CPLPrequeliteOutgoingResource)initWithResource:(id)resource uploadIdentifier:(id)identifier
{
  resourceCopy = resource;
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = CPLPrequeliteOutgoingResource;
  v9 = [(CPLPrequeliteOutgoingResource *)&v28 init];
  if (v9)
  {
    itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
    scopeIndex = [itemScopedIdentifier scopeIndex];
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BE10C(a2, v9);
    }

    v9->_scopeIndex = scopeIndex;
    identifier = [itemScopedIdentifier identifier];
    v13 = [identifier copy];
    itemIdentifier = v9->_itemIdentifier;
    v9->_itemIdentifier = v13;

    v9->_resourceType = [resourceCopy resourceType];
    identity = [resourceCopy identity];
    fingerPrint = [identity fingerPrint];
    v17 = [fingerPrint copy];
    fingerPrint = v9->_fingerPrint;
    v9->_fingerPrint = v17;

    fileUTI = [identity fileUTI];
    v20 = [fileUTI copy];
    fileUTI = v9->_fileUTI;
    v9->_fileUTI = v20;

    if (v9->_fileUTI)
    {
      v22 = [UTType typeWithIdentifier:?];
      v23 = v22;
      if (v9->_resourceType != 1)
      {
LABEL_13:
        v9->_fileSize = [identity fileSize];
        v25 = [identifierCopy copy];
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

- (CPLPrequeliteOutgoingResource)resourceWithOutgoingResources:(id)resources
{
  v4 = [resources scopedIdentifierForLocalIdentifier:self->_itemIdentifier scopeIndex:self->_scopeIndex];
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

- (CPLPrequeliteOutgoingResource)resourceWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:identifierCopy identifier:self->_itemIdentifier];

  v6 = objc_alloc_init(CPLResourceIdentity);
  [v6 setFingerPrint:self->_fingerPrint];
  [v6 setFileUTI:self->_fileUTI];
  [v6 setFileSize:self->_fileSize];
  [v6 setAvailable:1];
  v7 = [[CPLResource alloc] initWithResourceIdentity:v6 itemScopedIdentifier:v5 resourceType:self->_resourceType];

  return v7;
}

@end