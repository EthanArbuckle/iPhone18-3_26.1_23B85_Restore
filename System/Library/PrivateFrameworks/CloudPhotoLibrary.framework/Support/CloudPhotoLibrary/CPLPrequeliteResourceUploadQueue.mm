@interface CPLPrequeliteResourceUploadQueue
- (BOOL)discardResource:(id)resource currentlyStoredResource:(id *)storedResource lastReference:(BOOL *)reference error:(id *)error;
- (BOOL)discardResource:(id)resource discardedResource:(id *)discardedResource error:(id *)error;
- (CPLPrequeliteResourceUploadQueue)initWithStore:(id)store table:(id)table;
- (id)_enqueuedResourceForResource:(id)resource;
- (id)queuedResourceForResource:(id)resource pendingCount:(unint64_t *)count;
@end

@implementation CPLPrequeliteResourceUploadQueue

- (CPLPrequeliteResourceUploadQueue)initWithStore:(id)store table:(id)table
{
  storeCopy = store;
  tableCopy = table;
  v12.receiver = self;
  v12.super_class = CPLPrequeliteResourceUploadQueue;
  v9 = [(CPLPrequeliteResourceUploadQueue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_table, table);
  }

  return v10;
}

- (id)_enqueuedResourceForResource:(id)resource
{
  resourceCopy = resource;
  pqStore = [(CPLPrequeliteResourceUploadQueue *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v7 = objc_opt_class();
  mainTable = [(CPLPrequeliteResourceUploadQueue *)self mainTable];
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  identifier = [itemScopedIdentifier identifier];
  resourceType = [resourceCopy resourceType];

  v12 = [pqlConnection cplFetchObjectOfClass:v7 sql:{@"SELECT position, pendingCount, itemIdentifier, resourceType, fingerPrint, fileUTI, originalPath, available, retryCount, status FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i", mainTable, identifier, resourceType}];

  return v12;
}

- (id)queuedResourceForResource:(id)resource pendingCount:(unint64_t *)count
{
  v5 = [(CPLPrequeliteResourceUploadQueue *)self _enqueuedResourceForResource:resource];
  v6 = v5;
  if (v5)
  {
    *count = [v5 pendingCount];
    resource = [v6 resource];
  }

  else
  {
    resource = 0;
  }

  return resource;
}

- (BOOL)discardResource:(id)resource discardedResource:(id *)discardedResource error:(id *)error
{
  v8 = 0;
  v6 = [(CPLPrequeliteResourceUploadQueue *)self discardResource:resource currentlyStoredResource:discardedResource lastReference:&v8 error:error];
  if (v6 && (v8 & 1) == 0)
  {
    *discardedResource = 0;
  }

  return v6;
}

- (BOOL)discardResource:(id)resource currentlyStoredResource:(id *)storedResource lastReference:(BOOL *)reference error:(id *)error
{
  resourceCopy = resource;
  pqStore = [(CPLPrequeliteResourceUploadQueue *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteResourceUploadQueue *)self mainTable];
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  identifier = [itemScopedIdentifier identifier];
  v16 = [pqlConnection cplExecute:{@"UPDATE OR IGNORE %@ SET pendingCount = pendingCount - 1 WHERE itemIdentifier = %@ AND resourceType = %i", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType")}];

  if (!v16)
  {
    v20 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (!v20)
    {
      [pqlConnection lastCPLError];
      *error = v20 = 0;
    }

    goto LABEL_14;
  }

  changes = [pqlConnection changes];
  v18 = [(CPLPrequeliteResourceUploadQueue *)self _enqueuedResourceForResource:resourceCopy];
  v19 = v18;
  if (changes)
  {
    *storedResource = [v18 resource];
    *reference = 0;

    v20 = 1;
    goto LABEL_14;
  }

  if (v18)
  {
    mainTable2 = [(CPLPrequeliteResourceUploadQueue *)self mainTable];
    itemScopedIdentifier2 = [resourceCopy itemScopedIdentifier];
    identifier2 = [itemScopedIdentifier2 identifier];
    v24 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i", mainTable2, identifier2, objc_msgSend(resourceCopy, "resourceType")}];

    if (v24)
    {
      *storedResource = [v19 resource];
      v20 = 1;
      *reference = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  if (error)
  {
    goto LABEL_12;
  }

LABEL_14:

  return v20;
}

@end