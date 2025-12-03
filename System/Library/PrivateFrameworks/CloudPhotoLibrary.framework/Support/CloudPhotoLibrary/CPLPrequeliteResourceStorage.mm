@interface CPLPrequeliteResourceStorage
- (BOOL)_refreshLargestResourceSizeWithError:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)error;
- (BOOL)releaseIdentity:(id)identity lastReference:(BOOL *)reference isTrackedOriginal:(BOOL)original error:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (BOOL)retainIdentity:(id)identity isTrackedOriginal:(BOOL)original error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteResourceStorage)initWithAbstractObject:(id)object;
- (id)status;
- (unint64_t)retainCountForIdentity:(id)identity;
- (unint64_t)totalOriginalResourceSize;
- (unint64_t)totalResourceSize;
- (void)enumerateIdentitiesWithBlock:(id)block;
@end

@implementation CPLPrequeliteResourceStorage

- (CPLPrequeliteResourceStorage)initWithAbstractObject:(id)object
{
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceStorage;
  v3 = [(CPLPrequeliteStorage *)&v14 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"totalSize" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType integerType];
    v8 = [v3 variableWithName:@"totalOriginalSize" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;

    v10 = +[CPLPrequeliteType integerType];
    v11 = [v3 variableWithName:@"largestResourceSize" type:v10];
    v12 = *(v3 + 52);
    *(v3 + 52) = v11;
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteResourceStorage;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"identifierForStorage TEXT UNIQUE NOT NULL error:retainCount INTEGER NOT NULL, size INTEGER, CHECK(retainCount > 0)", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F148 error:0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalSizeVar + 4) defaultValue:&off_10028F148 error:0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalOriginalSizeVar + 4) defaultValue:&off_10028F148 error:0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"identifierForStorage" error:0];
            if (initializeStorage)
            {
              LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexWithName:@"size" withDefinition:@"size DESC" condition:@"size IS NOT NULL" unique:0 error:0];
            }
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceStorage;
  v5 = [(CPLPrequeliteStorage *)&v14 upgradeStorageToVersion:?];
  if (v5)
  {
    if (version != 91)
    {
      if (version != 25)
      {
        if (version == 20)
        {
          pqStore = [(CPLPrequeliteStorage *)self pqStore];
          mainTable = [(CPLPrequeliteStorage *)self mainTable];
          v8 = [pqStore tableCountOfRecords:mainTable];

          if (v8)
          {
            sub_1001C1C1C(self);
          }
        }

        goto LABEL_14;
      }

      if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalSizeVar + 4) defaultValue:&off_10028F148 error:0];
        return v5;
      }

LABEL_14:
      LOBYTE(v5) = 1;
      return v5;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_14;
    }

    v5 = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalOriginalSizeVar + 4) defaultValue:&off_10028F148 error:0];
    if (v5)
    {
      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore2 pqlConnection];

      mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
      v12 = [pqlConnection execute:{@"ALTER TABLE %@ ADD COLUMN size INTEGER DEFAULT NULL", mainTable2}];

      if (v12)
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexWithName:@"size" withDefinition:@"size DESC" condition:@"size IS NOT NULL" unique:0 error:0];
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (BOOL)openWithError:(id *)error
{
  v12.receiver = self;
  v12.super_class = CPLPrequeliteResourceStorage;
  v4 = [(CPLPrequeliteStorage *)&v12 openWithError:error];
  if (v4)
  {
    abstractObject = [(CPLPrequeliteResourceStorage *)self abstractObject];
    engineStore = [abstractObject engineStore];

    v7 = [NSNumber numberWithUnsignedLongLong:[(CPLPrequeliteResourceStorage *)self totalResourceSize]];
    [engineStore predictSyncSessionValue:v7 ofType:CPLSyncSessionPredictionTypeUploadResourceSize];

    v8 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_totalOriginalSizeVar + 4)];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &off_10028F148;
    }

    [engineStore predictSyncSessionValue:v10 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  return v4;
}

- (BOOL)retainIdentity:(id)identity isTrackedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  identityCopy = identity;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  identityForStorage = [identityCopy identityForStorage];
  fileSize = [identityCopy fileSize];
  if (fileSize <= +[CPLResource largeResourceSizeThreshold])
  {
    v13 = 0;
  }

  else
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [identityCopy fileSize]);
  }

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [pqlConnection cplExecute:{@"INSERT OR IGNORE INTO %@ VALUES (%@, 1, %@)", mainTable, identityForStorage, v13}];

  if (!v15)
  {
    if (!error)
    {
      LOBYTE(v17) = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (![pqlConnection changes])
  {
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    LOBYTE(v17) = [pqlConnection cplExecute:{@"UPDATE %@ SET retainCount = retainCount + 1 WHERE identifierForStorage = %@", mainTable2, identityForStorage}];

    if (!error || (v17 & 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    [pqlConnection lastCPLError];
    *error = LOBYTE(v17) = 0;
    goto LABEL_12;
  }

  v17 = sub_1001C1294(self, [identityCopy fileSize], error);
  if (v17 && originalCopy)
  {
    LOBYTE(v17) = sub_1001C1324(self, [identityCopy fileSize]);
  }

LABEL_12:

  return v17;
}

- (BOOL)releaseIdentity:(id)identity lastReference:(BOOL *)reference isTrackedOriginal:(BOOL)original error:(id *)error
{
  originalCopy = original;
  identityCopy = identity;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  identityForStorage = [identityCopy identityForStorage];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [pqlConnection cplExecute:{@"UPDATE OR IGNORE %@ SET retainCount = retainCount - 1 WHERE identifierForStorage = %@", mainTable, identityForStorage}];

  if (!v15)
  {
    goto LABEL_5;
  }

  if (![pqlConnection changes])
  {
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE identifierForStorage = %@", mainTable2, identityForStorage}];

    if (v18)
    {
      v19 = sub_1001C1394(self, [identityCopy fileSize], error);
      if (originalCopy && v19)
      {
        if ((sub_1001C1620(self, [identityCopy fileSize]) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (!v19)
      {
        goto LABEL_12;
      }

      v16 = 1;
      *reference = 1;
      goto LABEL_13;
    }

LABEL_5:
    if (error)
    {
      [pqlConnection lastCPLError];
      *error = v16 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  *reference = 0;
  v16 = 1;
LABEL_13:

  return v16;
}

- (unint64_t)retainCountForIdentity:(id)identity
{
  identityCopy = identity;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  identityForStorage = [identityCopy identityForStorage];

  v8 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqlConnection cplFetchObjectOfClass:v8 sql:{@"SELECT retainCount FROM %@ WHERE identifierForStorage = %@", mainTable, identityForStorage}];

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (BOOL)_refreshLargestResourceSizeWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v7 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [pqlConnection fetchObjectOfClass:v7 sql:{@"SELECT MAX(size) FROM %@ WHERE size IS NOT NULL", mainTable}];

  v10 = [(CPLPrequeliteStorage *)self setValue:v9 forVariable:*(&self->_totalOriginalSizeVar + 4) error:error];
  if (v10)
  {
    abstractObject = [(CPLPrequeliteResourceStorage *)self abstractObject];
    engineStore = [abstractObject engineStore];
    v13 = engineStore;
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = &off_10028F148;
    }

    [engineStore predictSyncSessionValue:v14 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  return v10;
}

- (unint64_t)totalResourceSize
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)totalOriginalResourceSize
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_totalSizeVar + 4)];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (BOOL)resetWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"DELETE FROM %@", mainTable}];

  if (v8)
  {
    sub_1001C1CD0(self, error);
  }

  else if (error)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection2 = [pqStore2 pqlConnection];
    *error = [pqlConnection2 lastError];
  }

  return v8;
}

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  totalResourceSize = [(CPLPrequeliteResourceStorage *)self totalResourceSize];
  if (v5 | totalResourceSize)
  {
    v7 = [NSByteCountFormatter stringFromByteCount:totalResourceSize countStyle:1];
    v8 = [NSString stringWithFormat:@"%lu cached resources - %@", v5, v7];
  }

  else
  {
    v8 = @"0 cached resources";
  }

  return v8;
}

- (void)enumerateIdentitiesWithBlock:(id)block
{
  blockCopy = block;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplFetch:{@"SELECT identifierForStorage FROM %@", mainTable}];

  if (v8)
  {
    v18 = pqlConnection;
    [v8 enumerateObjectsOfClass:objc_opt_class()];
    v23 = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v22 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [CPLResourceIdentity identityFromStoredIdentity:v14];
          if (v15)
          {
            blockCopy[2](blockCopy, v15, &v23);
            if (v23)
            {
              [v9 close];

              goto LABEL_20;
            }
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v16 = sub_10016A144();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't read identity from storage: %@", buf, 0xCu);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v11);
    }

LABEL_20:

    pqlConnection = v18;
    goto LABEL_21;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10016A144();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      lastCPLError = [pqlConnection lastCPLError];
      *buf = 138412290;
      v25 = lastCPLError;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't get an enumerator for retained identifies: %@", buf, 0xCu);
    }

LABEL_21:
  }
}

@end