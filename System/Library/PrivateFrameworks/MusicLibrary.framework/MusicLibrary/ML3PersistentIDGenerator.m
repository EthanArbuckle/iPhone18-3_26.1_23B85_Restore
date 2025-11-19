@interface ML3PersistentIDGenerator
- (ML3PersistentIDGenerator)initWithDatabaseConnection:(id)a3 tableName:(id)a4;
- (int64_t)nextPersistentID;
- (void)_calculateNewRun;
@end

@implementation ML3PersistentIDGenerator

- (void)_calculateNewRun
{
  v30[1] = *MEMORY[0x277D85DE8];
  do
  {
    v3 = arc4random();
    self->_currentPersistentID = (arc4random() >> 1) | (v3 << 31);
    connection = self->_connection;
    validateStartingPersistentIdSQL = self->_validateStartingPersistentIdSQL;
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    v30[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    v8 = [(ML3DatabaseConnection *)connection executeQuery:validateStartingPersistentIdSQL withParameters:v7];

    v9 = [v8 int64ValueForFirstRowAndColumn];
    currentPersistentID = self->_currentPersistentID;
    if (v9 == currentPersistentID)
    {
      currentPersistentID = 0;
    }

    self->_currentPersistentID = currentPersistentID;

    v11 = self->_currentPersistentID;
  }

  while (!v11 || v11 == 0x7FFFFFFFFFFFFFFFLL);
  v12 = self->_connection;
  nextUsedPersistentIdSQL = self->_nextUsedPersistentIdSQL;
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  v29 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v16 = [(ML3DatabaseConnection *)v12 executeQuery:nextUsedPersistentIdSQL withParameters:v15];

  v17 = [v16 int64ValueForFirstRowAndColumn];
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  if (v17)
  {
    v18 = v17;
  }

  self->_nextUsedPersistentID = v18;
  v19 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    tableName = self->_tableName;
    v21 = self->_currentPersistentID;
    nextUsedPersistentID = self->_nextUsedPersistentID;
    v23 = 138543874;
    v24 = tableName;
    v25 = 2048;
    v26 = v21;
    v27 = 2048;
    v28 = nextUsedPersistentID;
    _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Calculated new run starting for table '%{public}@' at %lli until %lli", &v23, 0x20u);
  }
}

- (int64_t)nextPersistentID
{
  result = self->_currentPersistentID;
  if (!result || result == self->_nextUsedPersistentID)
  {
    [(ML3PersistentIDGenerator *)self _calculateNewRun];
    result = self->_currentPersistentID;
  }

  self->_currentPersistentID = result + 1;
  return result;
}

- (ML3PersistentIDGenerator)initWithDatabaseConnection:(id)a3 tableName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ML3PersistentIDGenerator;
  v9 = [(ML3PersistentIDGenerator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_tableName, a4);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM %@ WHERE ROWID = ?", v8];
    validateStartingPersistentIdSQL = v10->_validateStartingPersistentIdSQL;
    v10->_validateStartingPersistentIdSQL = v11;

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM %@ WHERE ROWID > ? LIMIT 1", v8];
    nextUsedPersistentIdSQL = v10->_nextUsedPersistentIdSQL;
    v10->_nextUsedPersistentIdSQL = v13;
  }

  return v10;
}

@end