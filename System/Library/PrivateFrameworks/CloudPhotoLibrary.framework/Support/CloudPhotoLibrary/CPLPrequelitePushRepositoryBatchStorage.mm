@interface CPLPrequelitePushRepositoryBatchStorage
- (BOOL)checkInWithError:(id *)error;
- (BOOL)checkOutWithError:(id *)error;
- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier;
- (BOOL)removeChange:(id)change error:(id *)error;
- (CPLPrequelitePushRepository)pushRepository;
- (CPLPrequelitePushRepositoryBatchStorage)initWithPushRepository:(id)repository priority:(unint64_t)priority;
- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier;
- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type;
- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier;
- (id)allChangesWithScopeIdentifier:(id)identifier;
- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier;
- (id)changeWithScopedIdentifier:(id)identifier;
@end

@implementation CPLPrequelitePushRepositoryBatchStorage

- (CPLPrequelitePushRepositoryBatchStorage)initWithPushRepository:(id)repository priority:(unint64_t)priority
{
  repositoryCopy = repository;
  v22.receiver = self;
  v22.super_class = CPLPrequelitePushRepositoryBatchStorage;
  v7 = [(CPLPrequelitePushRepositoryBatchStorage *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pushRepository, repositoryCopy);
    mainTable = [repositoryCopy mainTable];
    pushRepositoryTable = v8->_pushRepositoryTable;
    v8->_pushRepositoryTable = mainTable;

    v8->_priority = priority;
    if (priority == -1)
    {
      v16 = v8->_pushRepositoryTable;
      enumerationTable = v8->_enumerationTable;
      v8->_enumerationTable = v16;
    }

    else
    {
      v11 = [NSString alloc];
      tableName = [(CPLPrequeliteTable *)v8->_pushRepositoryTable tableName];
      enumerationTable = [v11 initWithFormat:@"%@_%lu", tableName, priority];

      v14 = [CPLPrequeliteTable tableWithName:enumerationTable];
      v15 = v8->_enumerationTable;
      v8->_enumerationTable = v14;
    }

    abstractObject = [repositoryCopy abstractObject];
    engineStore = [abstractObject engineStore];
    outgoingResources = [engineStore outgoingResources];
    outgoingResources = v8->_outgoingResources;
    v8->_outgoingResources = outgoingResources;
  }

  return v8;
}

- (BOOL)checkOutWithError:(id *)error
{
  ++self->_checkOutCount;
  if (self->_viewIsCreated)
  {
    lastError = 0;
    v4 = 1;
  }

  else if (self->_pushRepositoryTable == self->_enumerationTable)
  {
    lastError = 0;
    v4 = 1;
    self->_viewIsCreated = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
    pqStore = [WeakRetained pqStore];
    pqlConnection = [pqStore pqlConnection];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_1001749DC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        tableName = [(CPLPrequeliteTable *)self->_enumerationTable tableName];
        v12 = objc_loadWeakRetained(&self->_pushRepository);
        mainTable = [v12 mainTable];
        tableName2 = [mainTable tableName];
        priority = self->_priority;
        *buf = 138543874;
        v24 = tableName;
        v25 = 2112;
        v26 = tableName2;
        v27 = 2048;
        v28 = priority;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating view %{public}@ for %@ with priority %lu", buf, 0x20u);
      }
    }

    v16 = [[NSString alloc] initWithFormat:@"priority = %lu", self->_priority];
    v17 = [PQLRawInjection alloc];
    v18 = [v16 dataUsingEncoding:4];
    v19 = [v17 initWithData:v18];

    v4 = [pqlConnection cplExecute:{@"CREATE TEMP VIEW %@ AS SELECT rowid, class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@", self->_enumerationTable, self->_pushRepositoryTable, v19}];
    if (v4)
    {
      lastError = 0;
    }

    else
    {
      lastError = [pqlConnection lastError];
    }

    self->_viewIsCreated = v4;
    if (error)
    {
      v20 = v4;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      v21 = lastError;
      v4 = 0;
      *error = lastError;
    }
  }

  return v4;
}

- (BOOL)checkInWithError:(id *)error
{
  checkOutCount = self->_checkOutCount;
  if (!checkOutCount)
  {
    sub_1001C5650(self, a2);
  }

  self->_checkOutCount = checkOutCount - 1;
  return 1;
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v6 = [WeakRetained changeWithScopedIdentifier:identifierCopy];

  return v6;
}

- (id)allChangesWithClass:(Class)class scopeIdentifier:(id)identifier changeType:(unint64_t)type
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v10 = [WeakRetained allChangesWithClass:class scopeIdentifier:identifierCopy changeType:type table:self->_enumerationTable];

  return v10;
}

- (id)allNonDeletedChangesWithClass:(Class)class scopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allNonDeletedChangesWithClass:class scopeIdentifier:identifierCopy table:self->_enumerationTable];

  return v8;
}

- (id)allChangesWithClass:(Class)class relatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allChangesWithClass:class relatedScopedIdentifier:identifierCopy table:self->_pushRepositoryTable];

  return v8;
}

- (id)allChangesWithClass:(Class)class secondaryScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allChangesWithClass:class secondaryScopedIdentifier:identifierCopy table:self->_pushRepositoryTable];

  return v8;
}

- (id)allChangesWithScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v6 = [WeakRetained allChangesWithScopeIdentifier:identifierCopy table:self->_enumerationTable];

  return v6;
}

- (BOOL)removeChange:(id)change error:(id *)error
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  scopedIdentifier = [changeCopy scopedIdentifier];

  LOBYTE(error) = [WeakRetained deleteChangeWithScopedIdentifier:scopedIdentifier error:error];
  return error;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  LOBYTE(self) = [WeakRetained hasChangesInScopeWithIdentifier:identifierCopy table:self->_enumerationTable];

  return self;
}

- (CPLPrequelitePushRepository)pushRepository
{
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);

  return WeakRetained;
}

@end