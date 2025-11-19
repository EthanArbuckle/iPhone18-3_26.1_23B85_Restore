@interface CPLPrequeliteResourceStorage
- (BOOL)_refreshLargestResourceSizeWithError:(id *)a3;
- (BOOL)initializeStorage;
- (BOOL)openWithError:(id *)a3;
- (BOOL)releaseIdentity:(id)a3 lastReference:(BOOL *)a4 isTrackedOriginal:(BOOL)a5 error:(id *)a6;
- (BOOL)resetWithError:(id *)a3;
- (BOOL)retainIdentity:(id)a3 isTrackedOriginal:(BOOL)a4 error:(id *)a5;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteResourceStorage)initWithAbstractObject:(id)a3;
- (id)status;
- (unint64_t)retainCountForIdentity:(id)a3;
- (unint64_t)totalOriginalResourceSize;
- (unint64_t)totalResourceSize;
- (void)enumerateIdentitiesWithBlock:(id)a3;
@end

@implementation CPLPrequeliteResourceStorage

- (CPLPrequeliteResourceStorage)initWithAbstractObject:(id)a3
{
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceStorage;
  v3 = [(CPLPrequeliteStorage *)&v14 initWithAbstractObject:a3];
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
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"identifierForStorage TEXT UNIQUE NOT NULL error:retainCount INTEGER NOT NULL, size INTEGER, CHECK(retainCount > 0)", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F148 error:0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalSizeVar + 4) defaultValue:&off_10028F148 error:0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createVariable:*(&self->_totalOriginalSizeVar + 4) defaultValue:&off_10028F148 error:0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"identifierForStorage" error:0];
            if (v3)
            {
              LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"size" withDefinition:@"size DESC" condition:@"size IS NOT NULL" unique:0 error:0];
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)upgradeStorageToVersion:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceStorage;
  v5 = [(CPLPrequeliteStorage *)&v14 upgradeStorageToVersion:?];
  if (v5)
  {
    if (a3 != 91)
    {
      if (a3 != 25)
      {
        if (a3 == 20)
        {
          v6 = [(CPLPrequeliteStorage *)self pqStore];
          v7 = [(CPLPrequeliteStorage *)self mainTable];
          v8 = [v6 tableCountOfRecords:v7];

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
      v9 = [(CPLPrequeliteStorage *)self pqStore];
      v10 = [v9 pqlConnection];

      v11 = [(CPLPrequeliteStorage *)self mainTable];
      v12 = [v10 execute:{@"ALTER TABLE %@ ADD COLUMN size INTEGER DEFAULT NULL", v11}];

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

- (BOOL)openWithError:(id *)a3
{
  v12.receiver = self;
  v12.super_class = CPLPrequeliteResourceStorage;
  v4 = [(CPLPrequeliteStorage *)&v12 openWithError:a3];
  if (v4)
  {
    v5 = [(CPLPrequeliteResourceStorage *)self abstractObject];
    v6 = [v5 engineStore];

    v7 = [NSNumber numberWithUnsignedLongLong:[(CPLPrequeliteResourceStorage *)self totalResourceSize]];
    [v6 predictSyncSessionValue:v7 ofType:CPLSyncSessionPredictionTypeUploadResourceSize];

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

    [v6 predictSyncSessionValue:v10 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  return v4;
}

- (BOOL)retainIdentity:(id)a3 isTrackedOriginal:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self pqStore];
  v10 = [v9 pqlConnection];

  v11 = [v8 identityForStorage];
  v12 = [v8 fileSize];
  if (v12 <= +[CPLResource largeResourceSizeThreshold])
  {
    v13 = 0;
  }

  else
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 fileSize]);
  }

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v10 cplExecute:{@"INSERT OR IGNORE INTO %@ VALUES (%@, 1, %@)", v14, v11, v13}];

  if (!v15)
  {
    if (!a5)
    {
      LOBYTE(v17) = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (![v10 changes])
  {
    v16 = [(CPLPrequeliteStorage *)self mainTable];
    LOBYTE(v17) = [v10 cplExecute:{@"UPDATE %@ SET retainCount = retainCount + 1 WHERE identifierForStorage = %@", v16, v11}];

    if (!a5 || (v17 & 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    [v10 lastCPLError];
    *a5 = LOBYTE(v17) = 0;
    goto LABEL_12;
  }

  v17 = sub_1001C1294(self, [v8 fileSize], a5);
  if (v17 && v6)
  {
    LOBYTE(v17) = sub_1001C1324(self, [v8 fileSize]);
  }

LABEL_12:

  return v17;
}

- (BOOL)releaseIdentity:(id)a3 lastReference:(BOOL *)a4 isTrackedOriginal:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [v10 identityForStorage];
  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v12 cplExecute:{@"UPDATE OR IGNORE %@ SET retainCount = retainCount - 1 WHERE identifierForStorage = %@", v14, v13}];

  if (!v15)
  {
    goto LABEL_5;
  }

  if (![v12 changes])
  {
    v17 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [v12 cplExecute:{@"DELETE FROM %@ WHERE identifierForStorage = %@", v17, v13}];

    if (v18)
    {
      v19 = sub_1001C1394(self, [v10 fileSize], a6);
      if (v7 && v19)
      {
        if ((sub_1001C1620(self, [v10 fileSize]) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (!v19)
      {
        goto LABEL_12;
      }

      v16 = 1;
      *a4 = 1;
      goto LABEL_13;
    }

LABEL_5:
    if (a6)
    {
      [v12 lastCPLError];
      *a6 = v16 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  *a4 = 0;
  v16 = 1;
LABEL_13:

  return v16;
}

- (unint64_t)retainCountForIdentity:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [v4 identityForStorage];

  v8 = objc_opt_class();
  v9 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [v6 cplFetchObjectOfClass:v8 sql:{@"SELECT retainCount FROM %@ WHERE identifierForStorage = %@", v9, v7}];

  v11 = [v10 unsignedIntegerValue];
  return v11;
}

- (BOOL)_refreshLargestResourceSizeWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = objc_opt_class();
  v8 = [(CPLPrequeliteStorage *)self mainTable];
  v9 = [v6 fetchObjectOfClass:v7 sql:{@"SELECT MAX(size) FROM %@ WHERE size IS NOT NULL", v8}];

  v10 = [(CPLPrequeliteStorage *)self setValue:v9 forVariable:*(&self->_totalOriginalSizeVar + 4) error:a3];
  if (v10)
  {
    v11 = [(CPLPrequeliteResourceStorage *)self abstractObject];
    v12 = [v11 engineStore];
    v13 = v12;
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = &off_10028F148;
    }

    [v12 predictSyncSessionValue:v14 ofType:CPLSyncSessionPredictionTypeLargestResourceSize];
  }

  return v10;
}

- (unint64_t)totalResourceSize
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (unint64_t)totalOriginalResourceSize
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_totalSizeVar + 4)];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)resetWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"DELETE FROM %@", v7}];

  if (v8)
  {
    sub_1001C1CD0(self, a3);
  }

  else if (a3)
  {
    v9 = [(CPLPrequeliteStorage *)self pqStore];
    v10 = [v9 pqlConnection];
    *a3 = [v10 lastError];
  }

  return v8;
}

- (id)status
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [v3 tableCountOfRecords:v4];

  v6 = [(CPLPrequeliteResourceStorage *)self totalResourceSize];
  if (v5 | v6)
  {
    v7 = [NSByteCountFormatter stringFromByteCount:v6 countStyle:1];
    v8 = [NSString stringWithFormat:@"%lu cached resources - %@", v5, v7];
  }

  else
  {
    v8 = @"0 cached resources";
  }

  return v8;
}

- (void)enumerateIdentitiesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplFetch:{@"SELECT identifierForStorage FROM %@", v7}];

  if (v8)
  {
    v18 = v6;
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
            v4[2](v4, v15, &v23);
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

    v6 = v18;
    goto LABEL_21;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10016A144();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [v6 lastCPLError];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't get an enumerator for retained identifies: %@", buf, 0xCu);
    }

LABEL_21:
  }
}

@end