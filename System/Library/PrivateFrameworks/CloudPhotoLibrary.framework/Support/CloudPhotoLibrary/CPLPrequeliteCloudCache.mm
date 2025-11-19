@interface CPLPrequeliteCloudCache
- (BOOL)_deleteRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)_hasRecordWithScopedIdentifier:(id)a3 isStaged:(BOOL *)a4;
- (BOOL)_insertFinalRecordWithScopedIdentifier:(id)a3 className:(id)a4 relatedIdentifier:(id)a5 secondaryIdentifier:(id)a6 otherScopeIndex:(int64_t)a7 serializedRecord:(id)a8 confirmed:(BOOL)a9 error:(id *)a10;
- (BOOL)_insertStagedRecordWithScopedIdentifier:(id)a3 className:(id)a4 relatedIdentifier:(id)a5 secondaryIdentifier:(id)a6 otherScopeIndex:(int64_t)a7 serializedRecord:(id)a8 error:(id *)a9;
- (BOOL)_updateFinalRecordWithScopedIdentifer:(id)a3 relatedIdentifier:(id)a4 secondaryIdentifier:(id)a5 otherScopeIndex:(int64_t)a6 serializedRecord:(id)a7 confirmed:(BOOL)a8 error:(id *)a9;
- (BOOL)_updateStagedRecordWithScopedIdentifer:(id)a3 relatedIdentifier:(id)a4 secondaryIdentifier:(id)a5 otherScopeIndex:(int64_t)a6 serializedRecord:(id)a7 error:(id *)a8;
- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)a3 error:(id *)a4;
- (BOOL)addRecord:(id)a3 isFinal:(BOOL)a4 error:(id *)a5;
- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)confirmAllRecordsWithError:(id *)a3;
- (BOOL)deleteRecordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4 error:(id *)a5;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6;
- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)discardStagedChangesWithScopeFilter:(id)a3 error:(id *)a4;
- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)a3;
- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)a3;
- (BOOL)hasRecordWithScopedIdentifier:(id)a3;
- (BOOL)initializeStorage;
- (BOOL)popCloudScopedIdentifiersToCheck:(id *)a3 otherScopeIndex:(int64_t)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7;
- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)a3 newScopedIdentifier:(id)a4 error:(id *)a5;
- (BOOL)updateStagedRecord:(id)a3 error:(id *)a4;
- (BOOL)upgradeStorageToVersion:(int64_t)a3;
- (CPLPrequeliteCloudCache)initWithAbstractObject:(id)a3;
- (id)_recordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4 isFinal:(BOOL)a5;
- (id)_relatedIdentifierForRecordWithIdentifier:(id)a3;
- (id)additionalStatusForScopeWithIndex:(int64_t)a3 baseRecordCount:(int64_t)a4;
- (id)allRecordsIsFinal:(BOOL)a3;
- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)a3;
- (id)recordWithScopedIdentifier:(id)a3 isConfirmed:(BOOL *)a4 isStaged:(BOOL *)a5;
- (id)recordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4 isConfirmed:(BOOL *)a5;
- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (int64_t)_otherScopeIndexForRecord:(id)a3;
- (unint64_t)_countOfUnconfirmedRecords;
- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (unint64_t)countOfUnacknowledgesRecords;
- (void)_updateOtherScopeIdentifierInRecord:(id)a3 otherScopeIndex:(int64_t)a4;
- (void)transactionDidFinish;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLPrequeliteCloudCache

- (void)writeTransactionDidSucceed
{
  v2.receiver = self;
  v2.super_class = CPLPrequeliteCloudCache;
  [(CPLPrequeliteStorage *)&v2 writeTransactionDidSucceed];
}

- (void)transactionDidFinish
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteCloudCache;
  [(CPLPrequeliteStorage *)&v4 transactionDidFinish];
  *(&self->_perTransactionOtherScopeIdentifier + 4) = 0;
  v3 = *(&self->super._shouldUpgradeSchema + 1);
  *(&self->super._shouldUpgradeSchema + 1) = 0;
}

- (CPLPrequeliteCloudCache)initWithAbstractObject:(id)a3
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteCloudCache;
  return [(CPLPrequeliteStorage *)&v4 initWithAbstractObject:a3];
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteCloudCache;
  v3 = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (v3)
  {
    v3 = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"state INTEGER DEFAULT 0 error:scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, class TEXT NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, serializedRecord DATA DEFAULT NULL, stagedRelatedIdentifier TEXT, stagedSecondaryIdentifier TEXT, stagedSerializedRecord DATA DEFAULT NULL, localScopeIndex INTEGER DEFAULT 0, otherScopeIndex INTEGER DEFAULT 0, stagedOtherScopeIndex INTEGER DEFAULT 0, confirmed INTEGER NOT NULL DEFAULT 1", 0];
    if (v3)
    {
      v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (v3)
      {
        v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0];
        if (v3)
        {
          v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0];
          if (v3)
          {
            v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"stagedRelatedScopedIdentifier" withDefinition:@"stagedRelatedIdentifier unique:scopeIndex" error:0, 0];
            if (v3)
            {
              v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"stagedSecondaryScopedIdentifier" withDefinition:@"stagedSecondaryIdentifier unique:scopeIndex" error:0, 0];
              if (v3)
              {
                v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedState" withDefinition:@"state unique:scopeIndex" error:0, 0];
                if (v3)
                {
                  v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"confirmed" error:0];
                  if (v3)
                  {
                    v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
                    if (v3)
                    {
                      v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
                      if (v3)
                      {
                        v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"localScopeIndex" error:0];
                        if (v3)
                        {
                          v3 = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0];
                          if (v3)
                          {
                            LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"stagedOtherScopeIndex" error:0];
                          }
                        }
                      }
                    }
                  }
                }
              }
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
  v44.receiver = self;
  v44.super_class = CPLPrequeliteCloudCache;
  if (![(CPLPrequeliteStorage *)&v44 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (a3 > 52)
  {
    if (a3 != 53)
    {
      if (a3 == 63)
      {
        if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v9 = sub_10015B0E8();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = [(CPLPrequeliteStorage *)self mainTable];
              *buf = 138412546;
              v47 = v10;
              v48 = 2048;
              v49 = 63;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding localScopeIndex column", buf, 0x16u);
            }
          }

          v11 = [(CPLPrequeliteStorage *)self pqStore];
          v12 = [v11 pqlConnection];

          v13 = [(CPLPrequeliteStorage *)self mainTable];
          v14 = [v12 cplExecute:{@"ALTER TABLE %@ ADD COLUMN localScopeIndex INTEGER DEFAULT 0", v13}];

          if (v14 && [(CPLPrequeliteStorage *)self createIndexOnColumn:@"localScopeIndex" error:0])
          {
            v15 = [(CPLPrequeliteCloudCache *)self abstractObject];
            v16 = [v15 engineStore];
            v17 = [v16 scopes];

            v18 = [(CPLPrequeliteCloudCache *)self abstractObject];
            v19 = [v18 engineStore];
            v20 = [v19 idMapping];
            v21 = [v20 platformObject];
            v39 = [v21 mainTable];

            v22 = [(CPLPrequeliteStorage *)self pqStore];
            v23 = [v22 clientCache];
            v38 = [v23 mainTable];

            v24 = [(CPLPrequeliteStorage *)self mainTable];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            obj = [v17 enumeratorForScopesIncludeInactive:0];
            v25 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v25)
            {
              v26 = v25;
              v36 = v17;
              v27 = *v41;
              while (2)
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v41 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v40 + 1) + 8 * i);
                  v30 = objc_autoreleasePoolPush();
                  v31 = [v29 localIndex];
                  if (![v12 execute:{@"UPDATE %@ SET localScopeIndex = %ld WHERE identifier IN (SELECT cloudIdentifier FROM %@, %@ WHERE scopeIndex = %ld AND localIdentifier = identifier AND stableScopeIndex = %ld) AND scopeIndex = %ld", v24, v31, v39, v38, v31, objc_msgSend(v29, "stableIndex"), objc_msgSend(v29, "cloudIndex")}])
                  {
                    objc_autoreleasePoolPop(v30);
                    v5 = 0;
                    goto LABEL_56;
                  }

                  v32 = [v12 changes];
                  if (v32 >= 1)
                  {
                    v33 = v32;
                    v34 = [(CPLPrequeliteStorage *)self pqStore];
                    v35 = [v29 scopeIdentifier];
                    [v34 recordUpgradeEvent:{@"Acknowledged %lld records in cloud cache for %@", v33, v35}];
                  }

                  objc_autoreleasePoolPop(v30);
                }

                v26 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }

              v5 = 1;
LABEL_56:
              v17 = v36;
            }
          }

          else
          {
            v5 = 0;
          }
        }
      }

      else if (a3 == 72 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        sub_1001BE7CC(self, buf);
        return buf[0];
      }

      return v5;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"relatedIdentifier" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"secondaryIdentifier" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"stagedRelatedIdentifier" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"stagedSecondaryIdentifier" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"state" error:0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"stagedRelatedScopedIdentifier" withDefinition:@"stagedRelatedIdentifier unique:scopeIndex" error:0, 0])
    {
      return [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedState" withDefinition:@"state unique:scopeIndex" error:0, 0];
    }

    return 0;
  }

  if (a3 > 38)
  {
    if (a3 != 52)
    {
      if (a3 == 39)
      {
        sub_1001BE6B4(self, buf);
        return buf[0];
      }

      return v5;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    v6 = @"scopeIndex";
    return [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
  }

  if (a3 == 20)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    v6 = @"class";
    return [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
  }

  if (a3 == 22)
  {
    sub_1001BE958(self, buf);
    return buf[0];
  }

  return v5;
}

- (BOOL)_hasRecordWithScopedIdentifier:(id)a3 isStaged:(BOOL *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    *a4 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10015B260;
    v16[3] = &unk_10027B748;
    v16[4] = a4;
    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v6 identifier];
    v14 = [v11 cplFetchObject:v16 sql:{@"SELECT identifier, state FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v12, v13, v9}];

    v8 = v14 != 0;
  }

  return v8;
}

- (int64_t)_otherScopeIndexForRecord:(id)a3
{
  v4 = a3;
  if ([v4 supportsSharingScopedIdentifier] && (objc_msgSend(v4, "sharingScopeIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v4 setSharingScopeIdentifier:0];
    if (*(&self->super._shouldUpgradeSchema + 1) && [v6 isEqualToString:?])
    {
      v7 = *(&self->_perTransactionOtherScopeIdentifier + 4);
    }

    else
    {
      objc_storeStrong((&self->super._shouldUpgradeSchema + 1), v6);
      v8 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v6];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = 0;
      }

      else
      {
        v7 = v8;
      }

      *(&self->_perTransactionOtherScopeIdentifier + 4) = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateOtherScopeIdentifierInRecord:(id)a3 otherScopeIndex:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v11 = v6;
    v8 = [v6 supportsSharingScopedIdentifier];
    v7 = v11;
    if (v8)
    {
      if (*(&self->_perTransactionOtherScopeIdentifier + 4) != a4)
      {
        *(&self->_perTransactionOtherScopeIdentifier + 4) = a4;
        v9 = [(CPLPrequeliteStorage *)self scopeIdentifierForCloudScopeIndex:a4];
        v10 = *(&self->super._shouldUpgradeSchema + 1);
        *(&self->super._shouldUpgradeSchema + 1) = v9;

        v7 = v11;
      }

      [v7 setSharingScopeIdentifier:*(&self->super._shouldUpgradeSchema + 1)];
      v7 = v11;
    }
  }
}

- (BOOL)_updateFinalRecordWithScopedIdentifer:(id)a3 relatedIdentifier:(id)a4 secondaryIdentifier:(id)a5 otherScopeIndex:(int64_t)a6 serializedRecord:(id)a7 confirmed:(BOOL)a8 error:(id *)a9
{
  v9 = a8;
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v16];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a9)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v16];
      *a9 = v15 = 0;
    }
  }

  else
  {
    v21 = v20;
    v32 = v17;
    v33 = v19;
    v22 = [v16 scopeIdentifier];
    v23 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v22];

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BEB5C(v16, a2, self);
    }

    v24 = [(CPLPrequeliteStorage *)self pqStore];
    v25 = [v24 pqlConnection];

    v26 = [(CPLPrequeliteStorage *)self mainTable];
    v27 = [v16 identifier];
    v31 = v23;
    v17 = v32;
    if (v9)
    {
      v28 = @"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@, otherScopeIndex = %ld, localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld";
    }

    else
    {
      v28 = @"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@, otherScopeIndex = %ld, confirmed = 0, localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld";
    }

    v29 = [v25 cplExecute:{v28, v26, v33, v32, v18, a6, v31, v27, v21}];

    if (v29)
    {
      v15 = 1;
      v19 = v33;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEAB0();
      }

      v19 = v33;
      if (a9)
      {
        [v25 lastCPLError];
        *a9 = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

- (BOOL)_updateStagedRecordWithScopedIdentifer:(id)a3 relatedIdentifier:(id)a4 secondaryIdentifier:(id)a5 otherScopeIndex:(int64_t)a6 serializedRecord:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v14];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a8)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v14];
      *a8 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v18;
    v21 = [(CPLPrequeliteStorage *)self pqStore];
    v22 = [v21 pqlConnection];

    v23 = [(CPLPrequeliteStorage *)self mainTable];
    v24 = [v14 identifier];
    v19 = [v22 cplExecute:{@"UPDATE %@ SET stagedSerializedRecord = %@, stagedRelatedIdentifier = %@, stagedSecondaryIdentifier = %@, stagedOtherScopeIndex = %ld, state = %d WHERE identifier = %@ AND scopeIndex = %ld", v23, v17, v15, v16, a6, 0, v24, v20}];

    if ((v19 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEC50();
      }

      if (a8)
      {
        *a8 = [v22 lastCPLError];
      }
    }
  }

  return v19;
}

- (BOOL)_insertFinalRecordWithScopedIdentifier:(id)a3 className:(id)a4 relatedIdentifier:(id)a5 secondaryIdentifier:(id)a6 otherScopeIndex:(int64_t)a7 serializedRecord:(id)a8 confirmed:(BOOL)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v16];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a10)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v16];
      *a10 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = v21;
    v32 = v17;
    v24 = [v16 scopeIdentifier];
    v25 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v24];

    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BEDA8(v16, a2, self);
    }

    v26 = [(CPLPrequeliteStorage *)self pqStore];
    v27 = [v26 pqlConnection];

    v28 = [(CPLPrequeliteStorage *)self mainTable];
    v29 = [v16 identifier];
    v31 = v25;
    v17 = v32;
    v22 = [v27 cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, relatedIdentifier, secondaryIdentifier, serializedRecord, state, confirmed, otherScopeIndex, localScopeIndex) VALUES (%ld, %@, %@, %@, %@, %@, %d, %d, %ld, %ld)", v28, v23, v29, v32, v18, v19, v20, 1, a9, a7, v31}];

    if ((v22 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BECFC();
      }

      if (a10)
      {
        *a10 = [v27 lastCPLError];
      }
    }
  }

  return v22;
}

- (BOOL)_insertStagedRecordWithScopedIdentifier:(id)a3 className:(id)a4 relatedIdentifier:(id)a5 secondaryIdentifier:(id)a6 otherScopeIndex:(int64_t)a7 serializedRecord:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v15];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a9)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v15];
      *a9 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = v20;
    v23 = [(CPLPrequeliteStorage *)self pqStore];
    v24 = [v23 pqlConnection];

    v25 = [(CPLPrequeliteStorage *)self mainTable];
    v26 = [v15 identifier];
    v21 = [v24 cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedSerializedRecord, stagedOtherScopeIndex, confirmed) VALUES (%ld, %@, %@, %@, %@, %@, %ld, 1)", v25, v22, v26, v16, v17, v18, v19, a7}];

    if ((v21 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEE9C();
      }

      if (a9)
      {
        *a9 = [v24 lastCPLError];
      }
    }
  }

  return v21;
}

- (BOOL)_deleteRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v6 identifier];
    v8 = [v11 cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v12, v13, v9}];

    if ((v8 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEF48();
      }

      if (a4)
      {
        *a4 = [v11 lastCPLError];
      }
    }
  }

  return v8;
}

- (BOOL)addRecord:(id)a3 isFinal:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [v8 scopedIdentifier];
  v10 = [v8 relatedIdentifier];
  v11 = [v8 secondaryIdentifier];
  v12 = [v8 copy];
  [v12 clearIdentifiers];
  [v12 prepareForStorage];
  v13 = [(CPLPrequeliteCloudCache *)self _otherScopeIndexForRecord:v12];
  v14 = [CPLArchiver archivedDataWithRootObject:v12];
  if (v14)
  {
    v25 = 0;
    if ([(CPLPrequeliteCloudCache *)self _hasRecordWithScopedIdentifier:v9 isStaged:&v25])
    {
      if (v6)
      {
        v15 = [(CPLPrequeliteCloudCache *)self _updateFinalRecordWithScopedIdentifer:v9 relatedIdentifier:v10 secondaryIdentifier:v11 otherScopeIndex:v13 serializedRecord:v14 confirmed:0 error:a5];
      }

      else
      {
        v15 = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:v9 relatedIdentifier:v10 secondaryIdentifier:v11 otherScopeIndex:v13 serializedRecord:v14 error:a5];
      }

      LOBYTE(a5) = v15;
    }

    else
    {
      v24 = v10;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (v6)
      {
        if ([v8 supportsResources])
        {
          v23 = [v8 resources];
          v19 = [v23 count] == 0;
        }

        else
        {
          v19 = 1;
        }

        LOBYTE(v22) = v19;
        v20 = [(CPLPrequeliteCloudCache *)self _insertFinalRecordWithScopedIdentifier:v9 className:v18 relatedIdentifier:v24 secondaryIdentifier:v11 otherScopeIndex:v13 serializedRecord:v14 confirmed:v22 error:a5];
      }

      else
      {
        v20 = [(CPLPrequeliteCloudCache *)self _insertStagedRecordWithScopedIdentifier:v9 className:v18 relatedIdentifier:v24 secondaryIdentifier:v11 otherScopeIndex:v13 serializedRecord:v14 error:a5];
      }

      LOBYTE(a5) = v20;

      v10 = v24;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BEFF4();
    }

    if (a5)
    {
      v16 = [(CPLPrequeliteCloudCache *)self abstractObject];
      *a5 = [CPLErrors unableToSerializeRecordError:v8 inStorage:v16];

      LOBYTE(a5) = 0;
    }
  }

  return a5;
}

- (BOOL)updateStagedRecord:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 scopedIdentifier];
  v8 = [v6 relatedIdentifier];
  v9 = [v6 secondaryIdentifier];
  v10 = [v6 copy];
  [v10 clearIdentifiers];
  [v10 prepareForStorage];
  v11 = [(CPLPrequeliteCloudCache *)self _otherScopeIndexForRecord:v10];
  v12 = [CPLArchiver archivedDataWithRootObject:v10];
  if (v12)
  {
    LOBYTE(a4) = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:v7 relatedIdentifier:v8 secondaryIdentifier:v9 otherScopeIndex:v11 serializedRecord:v12 error:a4];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BEFF4();
    }

    if (a4)
    {
      v13 = [(CPLPrequeliteCloudCache *)self abstractObject];
      *a4 = [CPLErrors unableToSerializeRecordError:v6 inStorage:v13];

      LOBYTE(a4) = 0;
    }
  }

  return a4;
}

- (BOOL)deleteRecordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v13 = 0;
  v9 = [(CPLPrequeliteCloudCache *)self _hasRecordWithScopedIdentifier:v8 isStaged:&v13];
  if (v6)
  {
    if (v9)
    {
      if (v13 == 1)
      {
        v10 = [(CPLPrequeliteCloudCache *)self _updateFinalRecordWithScopedIdentifer:v8 relatedIdentifier:0 secondaryIdentifier:0 otherScopeIndex:0 serializedRecord:0 confirmed:1 error:a5];
      }

      else
      {
        v10 = [(CPLPrequeliteCloudCache *)self _deleteRecordWithScopedIdentifier:v8 error:a5];
      }

      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v10 = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:v8 relatedIdentifier:0 secondaryIdentifier:0 otherScopeIndex:0 serializedRecord:0 error:a5];
LABEL_9:
    v11 = v10;
    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (id)recordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4 isConfirmed:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10015C454;
    v18[3] = &unk_10027B770;
    v22 = a4;
    v19 = v8;
    v20 = self;
    v21 = a5;
    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v19 identifier];
    v10 = [v13 cplFetchObject:v18 sql:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, confirmed FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v14, v15, v11}];

    v16 = +[NSNull null];

    if (v10 == v16)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)recordWithScopedIdentifier:(id)a3 isConfirmed:(BOOL *)a4 isStaged:(BOOL *)a5
{
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [v12 pqlConnection];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10015C748;
    v18[3] = &unk_10027B798;
    v21 = a5;
    v22 = a4;
    v19 = v8;
    v20 = self;
    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v19 identifier];
    v10 = [v13 cplFetchObject:v18 sql:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, confirmed FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v14, v15, v11}];

    v16 = +[NSNull null];

    if (v10 == v16)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)_recordsWithRelatedScopedIdentifier:(id)a3 class:(Class)a4 isFinal:(BOOL)a5
{
  v8 = a3;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v8];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = v9;
  v25 = [v8 scopeIdentifier];
  v24 = [v8 identifier];
  v12 = [(CPLPrequeliteStorage *)self pqStore];
  v13 = [v12 pqlConnection];

  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v8 identifier];
  v16 = [v8 identifier];
  v17 = [v13 cplFetch:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex FROM %@ WHERE (relatedIdentifier = %@ AND scopeIndex = %ld) OR (stagedRelatedIdentifier = %@ AND scopeIndex = %ld)", v14, v15, v11, v16, v11}];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10015CAE8;
  v26[3] = &unk_10027B7C0;
  v32 = a5;
  v30 = a4;
  v18 = v24;
  v27 = v18;
  v19 = v25;
  v31 = v11;
  v28 = v19;
  v29 = self;
  v20 = [v17 enumerateObjects:v26];
  if (v20)
  {
    v21 = v20;
    v10 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v20];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = v13;
      sub_1001BF088();
      v10 = 0;
      goto LABEL_8;
    }

    v10 = 0;
  }

  v22 = v13;
LABEL_8:

LABEL_9:

  return v10;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)a3 isFinal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v9 = v7;
  v10 = [v6 scopeIdentifier];
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  if (v4)
  {
    v13 = objc_opt_class();
    v14 = [(CPLPrequeliteStorage *)self mainTable];
    v15 = [v6 identifier];
    v16 = [v12 cplFetchObjectOfClass:v13 sql:{@"SELECT relatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v14, v15, v9}];
  }

  else
  {
    v17 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [v6 identifier];
    v16 = [v12 cplFetchObject:&stru_10027B800 sql:{@"SELECT relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", v17, v18, v9}];

    v19 = +[NSNull null];

    if (v16 == v19)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v16)
  {
    v8 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v10 identifier:v16 scopeIndex:v9];
LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

LABEL_12:

  return v8;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", v10, v7];
    v6 = [v8 table:v9 hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v8 = [(CPLPrequeliteStorage *)self pqStore];
    v9 = [(CPLPrequeliteStorage *)self mainTable];
    v10 = [v4 identifier];
    v11 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND scopeIndex = %ld", v10, v7];
    if ([v8 table:v9 hasRecordsMatchingQuery:v11])
    {
      v6 = 1;
    }

    else
    {
      v12 = [v4 identifier];
      v13 = [PQLFormatInjection formatInjection:@"secondaryIdentifier = %@ AND scopeIndex = %ld", v12, v7];
      v6 = [v8 table:v9 hasRecordsMatchingQuery:v13];
    }
  }

  return v6;
}

- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v9];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF134(v5, a2, self);
    }

    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10015D2E8;
    v17[3] = &unk_10027B828;
    v20 = v10;
    v18 = v5;
    v19 = self;
    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v18 identifier];
    v7 = [v12 cplFetchObject:v17 sql:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, localScopeIndex FROM %@ WHERE (identifier = %@ AND scopeIndex = %ld)", v13, v14, v8}];

    v15 = +[NSNull null];

    if (v7 == v15)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v9];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF228(v5, a2, self);
    }

    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];
    v13 = objc_opt_class();
    v14 = [v5 identifier];
    v15 = [v12 cplFetchObjectOfClass:v13 sql:{@"SELECT localScopeIndex FROM cloudCache WHERE identifier = %@ AND scopeIndex = %ld", v14, v8}];

    if (v15)
    {
      v7 = [v15 integerValue] == v10;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v7 = a3;
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v11 = [v7 scopeIdentifier];
    v12 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF31C(v7, a2, self);
    }

    v13 = [v7 scopeIdentifier];
    v14 = [v7 identifier];
    v15 = [(CPLPrequeliteStorage *)self pqStore];
    v16 = [v15 pqlConnection];

    v17 = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [v16 cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, localScopeIndex FROM %@ WHERE (relatedIdentifier = %@ AND scopeIndex = %ld)", v17, v14, v10}];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10015D72C;
    v23[3] = &unk_10027B850;
    v26 = v12;
    v27 = a4;
    v19 = v13;
    v28 = v10;
    v24 = v19;
    v25 = self;
    v20 = [v18 enumerateObjects:v23];
    if (v20)
    {
      v21 = v20;
      v9 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v20];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BF088();
      }

      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v7 = a3;
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v11 = [v7 scopeIdentifier];
    v12 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF410(v7, a2, self);
    }

    v13 = [v7 identifier];
    v14 = [(CPLPrequeliteStorage *)self pqStore];
    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v16 = NSStringFromClass(a4);
    v17 = [PQLFormatInjection formatInjection:@"(relatedIdentifier = %@ AND scopeIndex = %ld) AND (localScopeIndex = %ld AND class = %@)", v13, v10, v12, v16];
    v9 = [v14 table:v15 countOfRecordsMatchingQuery:v17];
  }

  return v9;
}

- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 1;
  }

  else
  {
    v8 = v6;
    v9 = [v5 scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:v9];

    v11 = [(CPLPrequeliteStorage *)self pqStore];
    v12 = [v11 pqlConnection];

    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [v5 identifier];
    v7 = [v12 cplExecute:{@"UPDATE %@ SET localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld", v13, v10, v14, v8}];
  }

  return v7;
}

- (BOOL)confirmAllRecordsWithError:(id *)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplExecute:{@"UPDATE OR FAIL %@ SET confirmed = 1 WHERE confirmed = 0", v7}];

  if ((v8 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BF504(v6);
    }

    if (a3)
    {
      *a3 = [v6 lastCPLError];
    }
  }

  return v8;
}

- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v11 cplExecute:{@"DELETE FROM %@ WHERE stagedSerializedRecord IS NULL AND state = %i AND scopeIndex = %ld", v12, 0, v9}];

    if (!v13 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v14 = objc_claimAutoreleasedReturnValue(), v8 = 1, v15 = [v11 cplExecute:{@"UPDATE OR FAIL %@ SET serializedRecord = stagedSerializedRecord, relatedIdentifier = stagedRelatedIdentifier, secondaryIdentifier = stagedSecondaryIdentifier, otherScopeIndex = stagedOtherScopeIndex, stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d, confirmed = 1 WHERE state = %d AND scopeIndex = %ld", v14, 1, 0, v9}], v14, (v15 & 1) == 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BF5A8(v11);
      }

      if (a4)
      {
        [v11 lastCPLError];
        *a4 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:v6];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a4)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:v6];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    v10 = [(CPLPrequeliteStorage *)self pqStore];
    v11 = [v10 pqlConnection];

    v12 = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [v11 cplExecute:{@"DELETE FROM %@ WHERE serializedRecord IS NULL AND state = %d AND scopeIndex = %ld", v12, 0, v9}];

    if (!v13 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v14 = objc_claimAutoreleasedReturnValue(), v8 = 1, v15 = [v11 cplExecute:{@"UPDATE OR FAIL %@ SET stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d WHERE state = %d AND scopeIndex = %ld", v14, 1, 0, v9}], v14, (v15 & 1) == 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BF64C(v11);
      }

      if (a4)
      {
        [v11 lastCPLError];
        *a4 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)discardStagedChangesWithScopeFilter:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CPLPrequeliteStorage *)self pqStore];
  v8 = [v7 pqlConnection];

  v9 = [v6 cloudIndexesInjection];

  v10 = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [v8 cplExecute:{@"DELETE FROM %@ WHERE serializedRecord IS NULL AND state = %d AND %@", v10, 0, v9}];

  if (!v11 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v12 = objc_claimAutoreleasedReturnValue(), v13 = 1, v14 = [v8 cplExecute:{@"UPDATE OR FAIL %@ SET stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d WHERE state = %d AND %@", v12, 1, 0, v9}], v12, (v14 & 1) == 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BF6F0(v8);
    }

    if (a4)
    {
      [v8 lastCPLError];
      *a4 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)a3 newScopedIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:v8];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a5)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:v8];
      *a5 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v10;
    v13 = [(CPLPrequeliteStorage *)self pqStore];
    v14 = [v13 pqlConnection];

    v15 = [(CPLPrequeliteStorage *)self mainTable];
    v16 = [v9 identifier];
    v17 = [v8 identifier];
    v18 = [v14 cplExecute:{@"UPDATE %@ SET identifier = %@ WHERE identifier = %@ AND scopeIndex = %ld", v15, v16, v17, v12}];

    if (!v18)
    {
      goto LABEL_9;
    }

    v19 = [(CPLPrequeliteStorage *)self mainTable];
    v20 = [v9 identifier];
    v21 = [v8 identifier];
    v22 = [v14 cplExecute:{@"UPDATE OR FAIL %@ SET relatedIdentifier = %@ WHERE relatedIdentifier = %@ AND scopeIndex = %ld", v19, v20, v21, v12}];

    if (!v22)
    {
      goto LABEL_9;
    }

    v23 = [(CPLPrequeliteStorage *)self mainTable];
    v24 = [v9 identifier];
    v25 = [v8 identifier];
    v26 = [v14 cplExecute:{@"UPDATE OR FAIL %@ SET secondaryIdentifier = %@ WHERE secondaryIdentifier = %@ AND scopeIndex = %ld", v23, v24, v25, v12}];

    if (!v26)
    {
      goto LABEL_9;
    }

    v27 = [(CPLPrequeliteStorage *)self mainTable];
    v28 = [v9 identifier];
    v29 = [v8 identifier];
    v30 = [v14 cplExecute:{@"UPDATE OR FAIL %@ SET stagedRelatedIdentifier = %@ WHERE stagedRelatedIdentifier = %@ AND scopeIndex = %ld", v27, v28, v29, v12}];

    if (v30)
    {
      v31 = [(CPLPrequeliteStorage *)self mainTable];
      v32 = [v9 identifier];
      v33 = [v8 identifier];
      v11 = [v14 cplExecute:{@"UPDATE OR FAIL %@ SET stagedSecondaryIdentifier = %@ WHERE stagedSecondaryIdentifier = %@ AND scopeIndex = %ld", v31, v32, v33, v12}];
    }

    else
    {
LABEL_9:
      v11 = 0;
    }

    if (a5 && (v11 & 1) == 0)
    {
      *a5 = [v14 lastCPLError];
    }
  }

  return v11;
}

- (void)writeTransactionDidFail
{
  v2.receiver = self;
  v2.super_class = CPLPrequeliteCloudCache;
  [(CPLPrequeliteStorage *)&v2 writeTransactionDidFail];
}

- (unint64_t)_countOfUnconfirmedRecords
{
  v3 = [(CPLPrequeliteStorage *)self pqStore];
  v4 = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"confirmed = 0"];
  v6 = [v3 table:v4 countOfRecordsMatchingQuery:v5];

  return v6;
}

- (unint64_t)countOfUnacknowledgesRecords
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = [(CPLPrequeliteCloudCache *)self abstractObject];
  v4 = [v3 engineStore];
  v5 = [v4 scopes];

  v6 = [(CPLPrequeliteStorage *)self pqStore];
  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015E7C8;
  v11[3] = &unk_10027B8A0;
  v8 = v5;
  v12 = v8;
  v13 = &v14;
  [v6 table:v7 enumerateCountGroupedByProperty:@"localScopeIndex" block:v11];

  v9 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v9;
}

- (id)status
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000045A0;
  v16 = sub_1000053B4;
  v11.receiver = self;
  v11.super_class = CPLPrequeliteCloudCache;
  v3 = [(CPLPrequeliteStorage *)&v11 status];
  v17 = [v3 mutableCopy];

  v4 = [(CPLPrequeliteCloudCache *)self countOfUnacknowledgesRecords];
  if (v4)
  {
    [v13[5] appendFormat:@" (%lu not matched with client)", v4];
  }

  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [(CPLPrequeliteStorage *)self mainTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015EA28;
  v10[3] = &unk_10027B8C8;
  v10[4] = &v12;
  [v5 table:v6 enumerateCountGroupedByProperty:@"class" block:v10];

  v7 = [(CPLPrequeliteCloudCache *)self _countOfUnconfirmedRecords];
  if (v7)
  {
    [v13[5] appendFormat:@"\n%lu unconfirmed!", v7];
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)statusDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CPLPrequeliteStorage *)self pqStore];
  v5 = [(CPLPrequeliteStorage *)self mainTable];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015EBFC;
  v12[3] = &unk_10027B8F0;
  v6 = v3;
  v13 = v6;
  [v4 table:v5 enumerateCountGroupedByProperty:@"class" block:v12];

  v7 = [(CPLPrequeliteCloudCache *)self countOfUnacknowledgesRecords];
  if (v7)
  {
    v8 = [NSNumber numberWithUnsignedInteger:v7];
    [v6 setObject:v8 forKeyedSubscript:@"unacknowledged"];
  }

  v9 = [(CPLPrequeliteCloudCache *)self _countOfUnconfirmedRecords];
  if (v9)
  {
    v10 = [NSNumber numberWithUnsignedInteger:v9];
    [v6 setObject:v10 forKeyedSubscript:@"unconfirmed"];
  }

  return v6;
}

- (id)additionalStatusForScopeWithIndex:(int64_t)a3 baseRecordCount:(int64_t)a4
{
  v7 = [(CPLPrequeliteCloudCache *)self abstractObject];
  v8 = [v7 engineStore];
  v9 = [v8 scopes];
  v10 = [v9 scopeWithCloudScopeIndex:a3];

  if (v10)
  {
    v11 = [v10 localIndex];
    v12 = [(CPLPrequeliteStorage *)self pqStore];
    v13 = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [PQLFormatInjection formatInjection:@"localScopeIndex = %ld", v11];
    v15 = [v12 table:v13 countOfRecordsMatchingQuery:v14];

    if (v15 < a4)
    {
      v16 = [[NSString alloc] initWithFormat:@"%lu not matched with client", a4 - v15];
LABEL_6:
      v17 = v16;
      goto LABEL_8;
    }

    if (v15 > a4)
    {
      v16 = [[NSString alloc] initWithFormat:@"%lu extra records matched with client!", &v15[-a4]];
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteCloudCache;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"class" valueDescription:&stru_10027B930];

  return v2;
}

- (id)_relatedIdentifierForRecordWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplFetchObject:&stru_10027B950 sql:{@"SELECT relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE identifier = %@", v7, v4}];

  v9 = +[NSNull null];

  if (v8 == v9)
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)a3 maxCount:(int64_t)a4 deletedCount:(int64_t *)a5 error:(id *)a6
{
  v11 = [(CPLPrequeliteStorage *)self pqStore];
  v12 = [v11 pqlConnection];

  v13 = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [v12 cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", v13, a3, a4}];

  if (v14)
  {
    *a5 = [v12 changes];
  }

  else if (a6)
  {
    *a6 = [v12 lastError];
  }

  return v14;
}

- (BOOL)popCloudScopedIdentifiersToCheck:(id *)a3 otherScopeIndex:(int64_t)a4 maxCount:(int64_t)a5 deletedCount:(int64_t *)a6 error:(id *)a7
{
  v10 = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [v10 pqlConnection];

  v12 = [[NSMutableArray alloc] initWithCapacity:a5];
  v13 = objc_alloc_init(NSMutableIndexSet);
  v39 = self;
  v14 = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [v11 cplFetch:{@"SELECT rowid, scopeIndex, identifier, relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE otherScopeIndex = %ld OR stagedOtherScopeIndex = %ld LIMIT %lu", v14, a4, a4, a5}];

  if ([v15 next])
  {
    v16 = 0;
    v17 = 0;
    do
    {
      [v13 addIndex:{objc_msgSend(v15, "integerAtIndex:", 0)}];
      v18 = [v15 integerAtIndex:1];
      if (v18 != v16)
      {
        v19 = [(CPLPrequeliteCloudCache *)v39 abstractObject];
        v20 = [v19 engineStore];
        v21 = [v20 scopes];

        v22 = [v21 scopeIdentifierForCloudScopeIndex:v18];

        if (v22)
        {
          v23 = [v21 scopeWithIdentifier:v22];
          if (!v23 || [v21 valueForFlag:16 forScope:v23])
          {

            v22 = 0;
          }
        }

        v17 = v22;
        v16 = v18;
      }

      if (v17)
      {
        v24 = [CPLScopedIdentifier alloc];
        v25 = [v15 stringAtIndex:2];
        v26 = [v24 initWithScopeIdentifier:v17 identifier:v25 scopeIndex:v18];

        [v12 addObject:v26];
        v27 = [v15 stringAtIndex:3];
        if (v27)
        {
          v28 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v17 identifier:v27 scopeIndex:v18];

          [v12 addObject:v28];
          v26 = v28;
        }

        v29 = [v15 stringAtIndex:4];
        v30 = v29;
        if (v29 && (!v27 || ([v29 isEqual:v27] & 1) == 0))
        {
          v31 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v17 identifier:v30 scopeIndex:v18];

          [v12 addObject:v31];
          v26 = v31;
        }
      }
    }

    while (([v15 next] & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 1;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1000045A0;
  v49 = sub_1000053B4;
  v50 = 0;
  if ([v13 count])
  {
    v32 = [(CPLPrequeliteStorage *)v39 mainTable];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10015F4CC;
    v40[3] = &unk_10027B1F0;
    v43 = &v51;
    v41 = v11;
    v33 = v32;
    v42 = v33;
    v44 = &v45;
    [v13 enumerateIndexesUsingBlock:v40];
  }

  if (*(v52 + 24) == 1)
  {
    *a3 = [v12 copy];
    *a6 = [v13 count];
  }

  else if (a7)
  {
    *a7 = v46[5];
  }

  v34 = *(v52 + 24);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v34;
}

- (id)allRecordsIsFinal:(BOOL)a3
{
  v5 = [(CPLPrequeliteStorage *)self pqStore];
  v6 = [v5 pqlConnection];

  v7 = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [v6 cplFetch:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, scopeIndex FROM %@", v7}];

  sub_10015F5A8();
  v15 = 3221225472;
  v16 = sub_10015E418;
  v17 = &unk_10027B878;
  v19 = a3;
  v18 = self;
  v9 = [v8 enumerateObjects:v14];
  if (v9)
  {
    v10 = v9;
    v11 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v9];
LABEL_7:

    goto LABEL_8;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10015B0E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 lastCPLError];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to create enumerator for records: %@", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end