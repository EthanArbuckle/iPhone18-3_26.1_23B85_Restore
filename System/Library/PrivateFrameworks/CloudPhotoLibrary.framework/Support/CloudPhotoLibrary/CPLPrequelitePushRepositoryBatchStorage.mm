@interface CPLPrequelitePushRepositoryBatchStorage
- (BOOL)checkInWithError:(id *)a3;
- (BOOL)checkOutWithError:(id *)a3;
- (BOOL)hasChangesInScopeWithIdentifier:(id)a3;
- (BOOL)removeChange:(id)a3 error:(id *)a4;
- (CPLPrequelitePushRepository)pushRepository;
- (CPLPrequelitePushRepositoryBatchStorage)initWithPushRepository:(id)a3 priority:(unint64_t)a4;
- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4;
- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5;
- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4;
- (id)allChangesWithScopeIdentifier:(id)a3;
- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4;
- (id)changeWithScopedIdentifier:(id)a3;
@end

@implementation CPLPrequelitePushRepositoryBatchStorage

- (CPLPrequelitePushRepositoryBatchStorage)initWithPushRepository:(id)a3 priority:(unint64_t)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = CPLPrequelitePushRepositoryBatchStorage;
  v7 = [(CPLPrequelitePushRepositoryBatchStorage *)&v22 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pushRepository, v6);
    v9 = [v6 mainTable];
    pushRepositoryTable = v8->_pushRepositoryTable;
    v8->_pushRepositoryTable = v9;

    v8->_priority = a4;
    if (a4 == -1)
    {
      v16 = v8->_pushRepositoryTable;
      enumerationTable = v8->_enumerationTable;
      v8->_enumerationTable = v16;
    }

    else
    {
      v11 = [NSString alloc];
      v12 = [(CPLPrequeliteTable *)v8->_pushRepositoryTable tableName];
      enumerationTable = [v11 initWithFormat:@"%@_%lu", v12, a4];

      v14 = [CPLPrequeliteTable tableWithName:enumerationTable];
      v15 = v8->_enumerationTable;
      v8->_enumerationTable = v14;
    }

    v17 = [v6 abstractObject];
    v18 = [v17 engineStore];
    v19 = [v18 outgoingResources];
    outgoingResources = v8->_outgoingResources;
    v8->_outgoingResources = v19;
  }

  return v8;
}

- (BOOL)checkOutWithError:(id *)a3
{
  ++self->_checkOutCount;
  if (self->_viewIsCreated)
  {
    v3 = 0;
    v4 = 1;
  }

  else if (self->_pushRepositoryTable == self->_enumerationTable)
  {
    v3 = 0;
    v4 = 1;
    self->_viewIsCreated = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
    v8 = [WeakRetained pqStore];
    v9 = [v8 pqlConnection];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_1001749DC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CPLPrequeliteTable *)self->_enumerationTable tableName];
        v12 = objc_loadWeakRetained(&self->_pushRepository);
        v13 = [v12 mainTable];
        v14 = [v13 tableName];
        priority = self->_priority;
        *buf = 138543874;
        v24 = v11;
        v25 = 2112;
        v26 = v14;
        v27 = 2048;
        v28 = priority;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating view %{public}@ for %@ with priority %lu", buf, 0x20u);
      }
    }

    v16 = [[NSString alloc] initWithFormat:@"priority = %lu", self->_priority];
    v17 = [PQLRawInjection alloc];
    v18 = [v16 dataUsingEncoding:4];
    v19 = [v17 initWithData:v18];

    v4 = [v9 cplExecute:{@"CREATE TEMP VIEW %@ AS SELECT rowid, class, scopeIndex, identifier, changeType, relatedIdentifier, secondaryIdentifier, dequeueOrder, trashed, uploadIdentifier, flags, priority, trustLevel, serializedRecord FROM %@ WHERE %@", self->_enumerationTable, self->_pushRepositoryTable, v19}];
    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v3 = [v9 lastError];
    }

    self->_viewIsCreated = v4;
    if (a3)
    {
      v20 = v4;
    }

    else
    {
      v20 = 1;
    }

    if ((v20 & 1) == 0)
    {
      v21 = v3;
      v4 = 0;
      *a3 = v3;
    }
  }

  return v4;
}

- (BOOL)checkInWithError:(id *)a3
{
  checkOutCount = self->_checkOutCount;
  if (!checkOutCount)
  {
    sub_1001C5650(self, a2);
  }

  self->_checkOutCount = checkOutCount - 1;
  return 1;
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v6 = [WeakRetained changeWithScopedIdentifier:v4];

  return v6;
}

- (id)allChangesWithClass:(Class)a3 scopeIdentifier:(id)a4 changeType:(unint64_t)a5
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v10 = [WeakRetained allChangesWithClass:a3 scopeIdentifier:v8 changeType:a5 table:self->_enumerationTable];

  return v10;
}

- (id)allNonDeletedChangesWithClass:(Class)a3 scopeIdentifier:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allNonDeletedChangesWithClass:a3 scopeIdentifier:v6 table:self->_enumerationTable];

  return v8;
}

- (id)allChangesWithClass:(Class)a3 relatedScopedIdentifier:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allChangesWithClass:a3 relatedScopedIdentifier:v6 table:self->_pushRepositoryTable];

  return v8;
}

- (id)allChangesWithClass:(Class)a3 secondaryScopedIdentifier:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [WeakRetained allChangesWithClass:a3 secondaryScopedIdentifier:v6 table:self->_pushRepositoryTable];

  return v8;
}

- (id)allChangesWithScopeIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v6 = [WeakRetained allChangesWithScopeIdentifier:v4 table:self->_enumerationTable];

  return v6;
}

- (BOOL)removeChange:(id)a3 error:(id *)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  v8 = [v6 scopedIdentifier];

  LOBYTE(a4) = [WeakRetained deleteChangeWithScopedIdentifier:v8 error:a4];
  return a4;
}

- (BOOL)hasChangesInScopeWithIdentifier:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);
  LOBYTE(self) = [WeakRetained hasChangesInScopeWithIdentifier:v4 table:self->_enumerationTable];

  return self;
}

- (CPLPrequelitePushRepository)pushRepository
{
  WeakRetained = objc_loadWeakRetained(&self->_pushRepository);

  return WeakRetained;
}

@end