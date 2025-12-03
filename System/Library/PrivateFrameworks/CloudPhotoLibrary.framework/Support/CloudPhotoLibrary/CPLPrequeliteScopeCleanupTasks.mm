@interface CPLPrequeliteScopeCleanupTasks
- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error;
- (BOOL)deleteCleanupTaskForScopeWithIndex:(int64_t)index error:(id *)error;
- (BOOL)hasCleanupTasks;
- (BOOL)hasCleanupTasksWithScopeIndex:(int64_t)index;
- (BOOL)initializeStorage;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (id)status;
- (int64_t)nextCleanupTaskScopeIndexOfType:(unint64_t *)type;
@end

@implementation CPLPrequeliteScopeCleanupTasks

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteScopeCleanupTasks;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"scopeIndex INTEGER NOT NULL error:scopeType INTEGER NOT NULL, scopeIdentifier STRING NOT NULL", 0];
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  if (version == 40)
  {
    return [(CPLPrequeliteStorage *)self createStorage];
  }

  else
  {
    return 1;
  }
}

- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, scopeType, scopeIdentifier) VALUES (%ld, %lu, %@)", mainTable, index, type, identifierCopy}];

  if (error && (v14 & 1) == 0)
  {
    *error = [pqlConnection lastError];
  }

  return v14;
}

- (int64_t)nextCleanupTaskScopeIndexOfType:(unint64_t *)type
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplFetch:{@"SELECT scopeIndex, scopeType FROM %@ LIMIT 1", mainTable}];

  if ([v8 next])
  {
    do
    {
      v9 = [v8 integerAtIndex:0];
      *type = [v8 unsignedIntegerAtIndex:1];
    }

    while (([v8 next] & 1) != 0);
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (BOOL)deleteCleanupTaskForScopeWithIndex:(int64_t)index error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld", mainTable, index}];

  if (error && (v10 & 1) == 0)
  {
    *error = [pqlConnection lastError];
  }

  return v10;
}

- (BOOL)hasCleanupTasks
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableHasRecords:mainTable];

  return v5;
}

- (BOOL)hasCleanupTasksWithScopeIndex:(int64_t)index
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  index = [PQLFormatInjection formatInjection:@"scopeIndex = %ld", index];
  v8 = [pqStore table:mainTable hasRecordsMatchingQuery:index];

  return v8;
}

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  if (v5)
  {
    v6 = [NSString stringWithFormat:@"%lu scope indexes to clean", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end