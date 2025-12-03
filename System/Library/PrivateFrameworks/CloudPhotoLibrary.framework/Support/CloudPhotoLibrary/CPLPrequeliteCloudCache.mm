@interface CPLPrequeliteCloudCache
- (BOOL)_deleteRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)_hasRecordWithScopedIdentifier:(id)identifier isStaged:(BOOL *)staged;
- (BOOL)_insertFinalRecordWithScopedIdentifier:(id)identifier className:(id)name relatedIdentifier:(id)relatedIdentifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record confirmed:(BOOL)confirmed error:(id *)self0;
- (BOOL)_insertStagedRecordWithScopedIdentifier:(id)identifier className:(id)name relatedIdentifier:(id)relatedIdentifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record error:(id *)error;
- (BOOL)_updateFinalRecordWithScopedIdentifer:(id)identifer relatedIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record confirmed:(BOOL)confirmed error:(id *)error;
- (BOOL)_updateStagedRecordWithScopedIdentifer:(id)identifer relatedIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record error:(id *)error;
- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)addRecord:(id)record isFinal:(BOOL)final error:(id *)error;
- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)confirmAllRecordsWithError:(id *)error;
- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)discardStagedChangesWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)identifier;
- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)identifier;
- (BOOL)hasRecordWithScopedIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)popCloudScopedIdentifiersToCheck:(id *)check otherScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)identifier newScopedIdentifier:(id)scopedIdentifier error:(id *)error;
- (BOOL)updateStagedRecord:(id)record error:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteCloudCache)initWithAbstractObject:(id)object;
- (id)_recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class isFinal:(BOOL)final;
- (id)_relatedIdentifierForRecordWithIdentifier:(id)identifier;
- (id)additionalStatusForScopeWithIndex:(int64_t)index baseRecordCount:(int64_t)count;
- (id)allRecordsIsFinal:(BOOL)final;
- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)identifier;
- (id)recordWithScopedIdentifier:(id)identifier isConfirmed:(BOOL *)confirmed isStaged:(BOOL *)staged;
- (id)recordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final isConfirmed:(BOOL *)confirmed;
- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndex;
- (int64_t)_otherScopeIndexForRecord:(id)record;
- (unint64_t)_countOfUnconfirmedRecords;
- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (unint64_t)countOfUnacknowledgesRecords;
- (void)_updateOtherScopeIdentifierInRecord:(id)record otherScopeIndex:(int64_t)index;
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

- (CPLPrequeliteCloudCache)initWithAbstractObject:(id)object
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteCloudCache;
  return [(CPLPrequeliteStorage *)&v4 initWithAbstractObject:object];
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteCloudCache;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"state INTEGER DEFAULT 0 error:scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, class TEXT NOT NULL, relatedIdentifier TEXT, secondaryIdentifier TEXT, serializedRecord DATA DEFAULT NULL, stagedRelatedIdentifier TEXT, stagedSecondaryIdentifier TEXT, stagedSerializedRecord DATA DEFAULT NULL, localScopeIndex INTEGER DEFAULT 0, otherScopeIndex INTEGER DEFAULT 0, stagedOtherScopeIndex INTEGER DEFAULT 0, confirmed INTEGER NOT NULL DEFAULT 1", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"relatedScopedIdentifier" withDefinition:@"relatedIdentifier unique:scopeIndex" error:0, 0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"secondaryScopedIdentifier" withDefinition:@"secondaryIdentifier unique:scopeIndex" error:0, 0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"stagedRelatedScopedIdentifier" withDefinition:@"stagedRelatedIdentifier unique:scopeIndex" error:0, 0];
            if (initializeStorage)
            {
              initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"stagedSecondaryScopedIdentifier" withDefinition:@"stagedSecondaryIdentifier unique:scopeIndex" error:0, 0];
              if (initializeStorage)
              {
                initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedState" withDefinition:@"state unique:scopeIndex" error:0, 0];
                if (initializeStorage)
                {
                  initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"confirmed" error:0];
                  if (initializeStorage)
                  {
                    initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"class" error:0];
                    if (initializeStorage)
                    {
                      initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
                      if (initializeStorage)
                      {
                        initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"localScopeIndex" error:0];
                        if (initializeStorage)
                        {
                          initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"otherScopeIndex" error:0];
                          if (initializeStorage)
                          {
                            LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"stagedOtherScopeIndex" error:0];
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

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v44.receiver = self;
  v44.super_class = CPLPrequeliteCloudCache;
  if (![(CPLPrequeliteStorage *)&v44 upgradeStorageToVersion:?])
  {
    return 0;
  }

  v5 = 1;
  if (version > 52)
  {
    if (version != 53)
    {
      if (version == 63)
      {
        if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v9 = sub_10015B0E8();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              mainTable = [(CPLPrequeliteStorage *)self mainTable];
              *buf = 138412546;
              v47 = mainTable;
              v48 = 2048;
              v49 = 63;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Upgrading %@ to version %llu: adding localScopeIndex column", buf, 0x16u);
            }
          }

          pqStore = [(CPLPrequeliteStorage *)self pqStore];
          pqlConnection = [pqStore pqlConnection];

          mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
          v14 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN localScopeIndex INTEGER DEFAULT 0", mainTable2}];

          if (v14 && [(CPLPrequeliteStorage *)self createIndexOnColumn:@"localScopeIndex" error:0])
          {
            abstractObject = [(CPLPrequeliteCloudCache *)self abstractObject];
            engineStore = [abstractObject engineStore];
            scopes = [engineStore scopes];

            abstractObject2 = [(CPLPrequeliteCloudCache *)self abstractObject];
            engineStore2 = [abstractObject2 engineStore];
            idMapping = [engineStore2 idMapping];
            platformObject = [idMapping platformObject];
            mainTable3 = [platformObject mainTable];

            pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
            clientCache = [pqStore2 clientCache];
            mainTable4 = [clientCache mainTable];

            mainTable5 = [(CPLPrequeliteStorage *)self mainTable];
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            obj = [scopes enumeratorForScopesIncludeInactive:0];
            v25 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
            if (v25)
            {
              v26 = v25;
              v36 = scopes;
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
                  localIndex = [v29 localIndex];
                  if (![pqlConnection execute:{@"UPDATE %@ SET localScopeIndex = %ld WHERE identifier IN (SELECT cloudIdentifier FROM %@, %@ WHERE scopeIndex = %ld AND localIdentifier = identifier AND stableScopeIndex = %ld) AND scopeIndex = %ld", mainTable5, localIndex, mainTable3, mainTable4, localIndex, objc_msgSend(v29, "stableIndex"), objc_msgSend(v29, "cloudIndex")}])
                  {
                    objc_autoreleasePoolPop(v30);
                    v5 = 0;
                    goto LABEL_56;
                  }

                  changes = [pqlConnection changes];
                  if (changes >= 1)
                  {
                    v33 = changes;
                    pqStore3 = [(CPLPrequeliteStorage *)self pqStore];
                    scopeIdentifier = [v29 scopeIdentifier];
                    [pqStore3 recordUpgradeEvent:{@"Acknowledged %lld records in cloud cache for %@", v33, scopeIdentifier}];
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
              scopes = v36;
            }
          }

          else
          {
            v5 = 0;
          }
        }
      }

      else if (version == 72 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
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

  if (version > 38)
  {
    if (version != 52)
    {
      if (version == 39)
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

  if (version == 20)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v5;
    }

    v6 = @"class";
    return [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
  }

  if (version == 22)
  {
    sub_1001BE958(self, buf);
    return buf[0];
  }

  return v5;
}

- (BOOL)_hasRecordWithScopedIdentifier:(id)identifier isStaged:(BOOL *)staged
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    *staged = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10015B260;
    v16[3] = &unk_10027B748;
    v16[4] = staged;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v14 = [pqlConnection cplFetchObject:v16 sql:{@"SELECT identifier, state FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];

    v8 = v14 != 0;
  }

  return v8;
}

- (int64_t)_otherScopeIndexForRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy supportsSharingScopedIdentifier] && (objc_msgSend(recordCopy, "sharingScopeIdentifier"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [recordCopy setSharingScopeIdentifier:0];
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

- (void)_updateOtherScopeIdentifierInRecord:(id)record otherScopeIndex:(int64_t)index
{
  recordCopy = record;
  v7 = recordCopy;
  if (index)
  {
    v11 = recordCopy;
    supportsSharingScopedIdentifier = [recordCopy supportsSharingScopedIdentifier];
    v7 = v11;
    if (supportsSharingScopedIdentifier)
    {
      if (*(&self->_perTransactionOtherScopeIdentifier + 4) != index)
      {
        *(&self->_perTransactionOtherScopeIdentifier + 4) = index;
        v9 = [(CPLPrequeliteStorage *)self scopeIdentifierForCloudScopeIndex:index];
        v10 = *(&self->super._shouldUpgradeSchema + 1);
        *(&self->super._shouldUpgradeSchema + 1) = v9;

        v7 = v11;
      }

      [v7 setSharingScopeIdentifier:*(&self->super._shouldUpgradeSchema + 1)];
      v7 = v11;
    }
  }
}

- (BOOL)_updateFinalRecordWithScopedIdentifer:(id)identifer relatedIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record confirmed:(BOOL)confirmed error:(id *)error
{
  confirmedCopy = confirmed;
  errorCopy = error;
  identiferCopy = identifer;
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  recordCopy = record;
  v20 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identiferCopy];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identiferCopy];
      *error = errorCopy = 0;
    }
  }

  else
  {
    v21 = v20;
    v32 = identifierCopy;
    v33 = recordCopy;
    scopeIdentifier = [identiferCopy scopeIdentifier];
    v23 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BEB5C(identiferCopy, a2, self);
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identiferCopy identifier];
    v31 = v23;
    identifierCopy = v32;
    if (confirmedCopy)
    {
      v28 = @"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@, otherScopeIndex = %ld, localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld";
    }

    else
    {
      v28 = @"UPDATE %@ SET serializedRecord = %@, relatedIdentifier = %@, secondaryIdentifier = %@, otherScopeIndex = %ld, confirmed = 0, localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld";
    }

    v29 = [pqlConnection cplExecute:{v28, mainTable, v33, v32, secondaryIdentifierCopy, index, v31, identifier, v21}];

    if (v29)
    {
      errorCopy = 1;
      recordCopy = v33;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEAB0();
      }

      recordCopy = v33;
      if (error)
      {
        [pqlConnection lastCPLError];
        *error = errorCopy = 0;
      }

      else
      {
        errorCopy = 0;
      }
    }
  }

  return errorCopy;
}

- (BOOL)_updateStagedRecordWithScopedIdentifer:(id)identifer relatedIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record error:(id *)error
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  recordCopy = record;
  v18 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identiferCopy];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identiferCopy];
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = v18;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identiferCopy identifier];
    v19 = [pqlConnection cplExecute:{@"UPDATE %@ SET stagedSerializedRecord = %@, stagedRelatedIdentifier = %@, stagedSecondaryIdentifier = %@, stagedOtherScopeIndex = %ld, state = %d WHERE identifier = %@ AND scopeIndex = %ld", mainTable, recordCopy, identifierCopy, secondaryIdentifierCopy, index, 0, identifier, v20}];

    if ((v19 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEC50();
      }

      if (error)
      {
        *error = [pqlConnection lastCPLError];
      }
    }
  }

  return v19;
}

- (BOOL)_insertFinalRecordWithScopedIdentifier:(id)identifier className:(id)name relatedIdentifier:(id)relatedIdentifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record confirmed:(BOOL)confirmed error:(id *)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  relatedIdentifierCopy = relatedIdentifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  recordCopy = record;
  v21 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = v21;
    v32 = nameCopy;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v25 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BEDA8(identifierCopy, a2, self);
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v31 = v25;
    nameCopy = v32;
    v22 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, relatedIdentifier, secondaryIdentifier, serializedRecord, state, confirmed, otherScopeIndex, localScopeIndex) VALUES (%ld, %@, %@, %@, %@, %@, %d, %d, %ld, %ld)", mainTable, v23, identifier, v32, relatedIdentifierCopy, secondaryIdentifierCopy, recordCopy, 1, confirmed, index, v31}];

    if ((v22 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BECFC();
      }

      if (error)
      {
        *error = [pqlConnection lastCPLError];
      }
    }
  }

  return v22;
}

- (BOOL)_insertStagedRecordWithScopedIdentifier:(id)identifier className:(id)name relatedIdentifier:(id)relatedIdentifier secondaryIdentifier:(id)secondaryIdentifier otherScopeIndex:(int64_t)index serializedRecord:(id)record error:(id *)error
{
  identifierCopy = identifier;
  nameCopy = name;
  relatedIdentifierCopy = relatedIdentifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  recordCopy = record;
  v20 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v22 = v20;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v21 = [pqlConnection cplExecute:{@"INSERT INTO %@ (scopeIndex, identifier, class, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedSerializedRecord, stagedOtherScopeIndex, confirmed) VALUES (%ld, %@, %@, %@, %@, %@, %ld, 1)", mainTable, v22, identifier, nameCopy, relatedIdentifierCopy, secondaryIdentifierCopy, recordCopy, index}];

    if ((v21 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEE9C();
      }

      if (error)
      {
        *error = [pqlConnection lastCPLError];
      }
    }
  }

  return v21;
}

- (BOOL)_deleteRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];

    if ((v8 & 1) == 0)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BEF48();
      }

      if (error)
      {
        *error = [pqlConnection lastCPLError];
      }
    }
  }

  return v8;
}

- (BOOL)addRecord:(id)record isFinal:(BOOL)final error:(id *)error
{
  finalCopy = final;
  recordCopy = record;
  scopedIdentifier = [recordCopy scopedIdentifier];
  relatedIdentifier = [recordCopy relatedIdentifier];
  secondaryIdentifier = [recordCopy secondaryIdentifier];
  v12 = [recordCopy copy];
  [v12 clearIdentifiers];
  [v12 prepareForStorage];
  v13 = [(CPLPrequeliteCloudCache *)self _otherScopeIndexForRecord:v12];
  v14 = [CPLArchiver archivedDataWithRootObject:v12];
  if (v14)
  {
    v25 = 0;
    if ([(CPLPrequeliteCloudCache *)self _hasRecordWithScopedIdentifier:scopedIdentifier isStaged:&v25])
    {
      if (finalCopy)
      {
        v15 = [(CPLPrequeliteCloudCache *)self _updateFinalRecordWithScopedIdentifer:scopedIdentifier relatedIdentifier:relatedIdentifier secondaryIdentifier:secondaryIdentifier otherScopeIndex:v13 serializedRecord:v14 confirmed:0 error:error];
      }

      else
      {
        v15 = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:scopedIdentifier relatedIdentifier:relatedIdentifier secondaryIdentifier:secondaryIdentifier otherScopeIndex:v13 serializedRecord:v14 error:error];
      }

      LOBYTE(error) = v15;
    }

    else
    {
      v24 = relatedIdentifier;
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      if (finalCopy)
      {
        if ([recordCopy supportsResources])
        {
          resources = [recordCopy resources];
          v19 = [resources count] == 0;
        }

        else
        {
          v19 = 1;
        }

        LOBYTE(v22) = v19;
        v20 = [(CPLPrequeliteCloudCache *)self _insertFinalRecordWithScopedIdentifier:scopedIdentifier className:v18 relatedIdentifier:v24 secondaryIdentifier:secondaryIdentifier otherScopeIndex:v13 serializedRecord:v14 confirmed:v22 error:error];
      }

      else
      {
        v20 = [(CPLPrequeliteCloudCache *)self _insertStagedRecordWithScopedIdentifier:scopedIdentifier className:v18 relatedIdentifier:v24 secondaryIdentifier:secondaryIdentifier otherScopeIndex:v13 serializedRecord:v14 error:error];
      }

      LOBYTE(error) = v20;

      relatedIdentifier = v24;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BEFF4();
    }

    if (error)
    {
      abstractObject = [(CPLPrequeliteCloudCache *)self abstractObject];
      *error = [CPLErrors unableToSerializeRecordError:recordCopy inStorage:abstractObject];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (BOOL)updateStagedRecord:(id)record error:(id *)error
{
  recordCopy = record;
  scopedIdentifier = [recordCopy scopedIdentifier];
  relatedIdentifier = [recordCopy relatedIdentifier];
  secondaryIdentifier = [recordCopy secondaryIdentifier];
  v10 = [recordCopy copy];
  [v10 clearIdentifiers];
  [v10 prepareForStorage];
  v11 = [(CPLPrequeliteCloudCache *)self _otherScopeIndexForRecord:v10];
  v12 = [CPLArchiver archivedDataWithRootObject:v10];
  if (v12)
  {
    LOBYTE(error) = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:scopedIdentifier relatedIdentifier:relatedIdentifier secondaryIdentifier:secondaryIdentifier otherScopeIndex:v11 serializedRecord:v12 error:error];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BEFF4();
    }

    if (error)
    {
      abstractObject = [(CPLPrequeliteCloudCache *)self abstractObject];
      *error = [CPLErrors unableToSerializeRecordError:recordCopy inStorage:abstractObject];

      LOBYTE(error) = 0;
    }
  }

  return error;
}

- (BOOL)deleteRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final error:(id *)error
{
  finalCopy = final;
  identifierCopy = identifier;
  v13 = 0;
  v9 = [(CPLPrequeliteCloudCache *)self _hasRecordWithScopedIdentifier:identifierCopy isStaged:&v13];
  if (finalCopy)
  {
    if (v9)
    {
      if (v13 == 1)
      {
        v10 = [(CPLPrequeliteCloudCache *)self _updateFinalRecordWithScopedIdentifer:identifierCopy relatedIdentifier:0 secondaryIdentifier:0 otherScopeIndex:0 serializedRecord:0 confirmed:1 error:error];
      }

      else
      {
        v10 = [(CPLPrequeliteCloudCache *)self _deleteRecordWithScopedIdentifier:identifierCopy error:error];
      }

      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v10 = [(CPLPrequeliteCloudCache *)self _updateStagedRecordWithScopedIdentifer:identifierCopy relatedIdentifier:0 secondaryIdentifier:0 otherScopeIndex:0 serializedRecord:0 error:error];
LABEL_9:
    v11 = v10;
    goto LABEL_10;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (id)recordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final isConfirmed:(BOOL *)confirmed
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10015C454;
    v18[3] = &unk_10027B770;
    finalCopy = final;
    v19 = identifierCopy;
    selfCopy = self;
    confirmedCopy = confirmed;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [v19 identifier];
    v10 = [pqlConnection cplFetchObject:v18 sql:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, confirmed FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v11}];

    v16 = +[NSNull null];

    if (v10 == v16)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)recordWithScopedIdentifier:(id)identifier isConfirmed:(BOOL *)confirmed isStaged:(BOOL *)staged
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = v9;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10015C748;
    v18[3] = &unk_10027B798;
    stagedCopy = staged;
    confirmedCopy = confirmed;
    v19 = identifierCopy;
    selfCopy = self;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [v19 identifier];
    v10 = [pqlConnection cplFetchObject:v18 sql:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, confirmed FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v11}];

    v16 = +[NSNull null];

    if (v10 == v16)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (id)_recordsWithRelatedScopedIdentifier:(id)identifier class:(Class)class isFinal:(BOOL)final
{
  identifierCopy = identifier;
  v9 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v11 = v9;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  identifier = [identifierCopy identifier];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier2 = [identifierCopy identifier];
  identifier3 = [identifierCopy identifier];
  v17 = [pqlConnection cplFetch:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex FROM %@ WHERE (relatedIdentifier = %@ AND scopeIndex = %ld) OR (stagedRelatedIdentifier = %@ AND scopeIndex = %ld)", mainTable, identifier2, v11, identifier3, v11}];

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10015CAE8;
  v26[3] = &unk_10027B7C0;
  finalCopy = final;
  classCopy = class;
  v18 = identifier;
  v27 = v18;
  v19 = scopeIdentifier;
  v31 = v11;
  v28 = v19;
  selfCopy = self;
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
      v22 = pqlConnection;
      sub_1001BF088();
      v10 = 0;
      goto LABEL_8;
    }

    v10 = 0;
  }

  v22 = pqlConnection;
LABEL_8:

LABEL_9:

  return v10;
}

- (id)relatedScopedIdentifierForRecordWithScopedIdentifier:(id)identifier isFinal:(BOOL)final
{
  finalCopy = final;
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v9 = v7;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  if (finalCopy)
  {
    v13 = objc_opt_class();
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v16 = [pqlConnection cplFetchObjectOfClass:v13 sql:{@"SELECT relatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];
  }

  else
  {
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    identifier2 = [identifierCopy identifier];
    v16 = [pqlConnection cplFetchObject:&stru_10027B800 sql:{@"SELECT relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable2, identifier2, v9}];

    v19 = +[NSNull null];

    if (v16 == v19)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v16)
  {
    v8 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:scopeIdentifier identifier:v16 scopeIndex:v9];
LABEL_10:

    goto LABEL_11;
  }

  v8 = 0;
LABEL_11:

LABEL_12:

  return v8;
}

- (BOOL)hasRecordWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", identifier, v7];
    v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  return v6;
}

- (BOOL)hasAnyRecordWithRelatedScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"relatedIdentifier = %@ AND scopeIndex = %ld", identifier, v7];
    if ([pqStore table:mainTable hasRecordsMatchingQuery:v11])
    {
      v6 = 1;
    }

    else
    {
      identifier2 = [identifierCopy identifier];
      v13 = [PQLFormatInjection formatInjection:@"secondaryIdentifier = %@ AND scopeIndex = %ld", identifier2, v7];
      v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v13];
    }
  }

  return v6;
}

- (id)recordAcknowledgedByClientWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF134(identifierCopy, a2, self);
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10015D2E8;
    v17[3] = &unk_10027B828;
    v20 = v10;
    v18 = identifierCopy;
    selfCopy = self;
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [v18 identifier];
    v7 = [pqlConnection cplFetchObject:v17 sql:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, localScopeIndex FROM %@ WHERE (identifier = %@ AND scopeIndex = %ld)", mainTable, identifier, v8}];

    v15 = +[NSNull null];

    if (v7 == v15)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)hasRecordAcknowledgedByClientWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF228(identifierCopy, a2, self);
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];
    v13 = objc_opt_class();
    identifier = [identifierCopy identifier];
    v15 = [pqlConnection cplFetchObjectOfClass:v13 sql:{@"SELECT localScopeIndex FROM cloudCache WHERE identifier = %@ AND scopeIndex = %ld", identifier, v8}];

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

- (id)recordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v12 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF31C(identifierCopy, a2, self);
    }

    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    identifier = [identifierCopy identifier];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v18 = [pqlConnection cplFetch:{@"SELECT identifier, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, localScopeIndex FROM %@ WHERE (relatedIdentifier = %@ AND scopeIndex = %ld)", mainTable, identifier, v10}];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10015D72C;
    v23[3] = &unk_10027B850;
    v26 = v12;
    classCopy = class;
    v19 = scopeIdentifier2;
    v28 = v10;
    v24 = v19;
    selfCopy = self;
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

- (unint64_t)countOfRecordsAcknowledgedByClientWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  v8 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v12 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001BF410(identifierCopy, a2, self);
    }

    identifier = [identifierCopy identifier];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v16 = NSStringFromClass(class);
    v17 = [PQLFormatInjection formatInjection:@"(relatedIdentifier = %@ AND scopeIndex = %ld) AND (localScopeIndex = %ld AND class = %@)", identifier, v10, v12, v16];
    v9 = [pqStore table:mainTable countOfRecordsMatchingQuery:v17];
  }

  return v9;
}

- (BOOL)ackownledgeRecordWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 1;
  }

  else
  {
    v8 = v6;
    scopeIdentifier = [identifierCopy scopeIdentifier];
    v10 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v7 = [pqlConnection cplExecute:{@"UPDATE %@ SET localScopeIndex = %ld WHERE identifier = %@ AND scopeIndex = %ld", mainTable, v10, identifier, v8}];
  }

  return v7;
}

- (BOOL)confirmAllRecordsWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET confirmed = 1 WHERE confirmed = 0", mainTable}];

  if ((v8 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BF504(pqlConnection);
    }

    if (error)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (BOOL)commitStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE stagedSerializedRecord IS NULL AND state = %i AND scopeIndex = %ld", mainTable, 0, v9}];

    if (!v13 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v14 = objc_claimAutoreleasedReturnValue(), v8 = 1, v15 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET serializedRecord = stagedSerializedRecord, relatedIdentifier = stagedRelatedIdentifier, secondaryIdentifier = stagedSecondaryIdentifier, otherScopeIndex = stagedOtherScopeIndex, stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d, confirmed = 1 WHERE state = %d AND scopeIndex = %ld", v14, 1, 0, v9}], v14, (v15 & 1) == 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BF5A8(pqlConnection);
      }

      if (error)
      {
        [pqlConnection lastCPLError];
        *error = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)discardStagedChangesForScopeWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self cloudScopeIndexForScopeIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopeIdentifier:identifierCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v13 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE serializedRecord IS NULL AND state = %d AND scopeIndex = %ld", mainTable, 0, v9}];

    if (!v13 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v14 = objc_claimAutoreleasedReturnValue(), v8 = 1, v15 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d WHERE state = %d AND scopeIndex = %ld", v14, 1, 0, v9}], v14, (v15 & 1) == 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_1001BF64C(pqlConnection);
      }

      if (error)
      {
        [pqlConnection lastCPLError];
        *error = v8 = 0;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (BOOL)discardStagedChangesWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  cloudIndexesInjection = [filterCopy cloudIndexesInjection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE serializedRecord IS NULL AND state = %d AND %@", mainTable, 0, cloudIndexesInjection}];

  if (!v11 || (-[CPLPrequeliteStorage mainTable](self, "mainTable"), v12 = objc_claimAutoreleasedReturnValue(), v13 = 1, v14 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET stagedSerializedRecord = NULL, stagedRelatedIdentifier = NULL, stagedSecondaryIdentifier = NULL, stagedOtherScopeIndex = 0, state = %d WHERE state = %d AND %@", v12, 1, 0, cloudIndexesInjection}], v12, (v14 & 1) == 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BF6F0(pqlConnection);
    }

    if (error)
    {
      [pqlConnection lastCPLError];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (BOOL)remapAllRecordsWithPreviousScopedIdentifier:(id)identifier newScopedIdentifier:(id)scopedIdentifier error:(id *)error
{
  identifierCopy = identifier;
  scopedIdentifierCopy = scopedIdentifier;
  v10 = [(CPLPrequeliteStorage *)self scopeIndexForCloudScopedIdentifier:identifierCopy];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = v10;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [scopedIdentifierCopy identifier];
    identifier2 = [identifierCopy identifier];
    v18 = [pqlConnection cplExecute:{@"UPDATE %@ SET identifier = %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, identifier2, v12}];

    if (!v18)
    {
      goto LABEL_9;
    }

    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    identifier3 = [scopedIdentifierCopy identifier];
    identifier4 = [identifierCopy identifier];
    v22 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET relatedIdentifier = %@ WHERE relatedIdentifier = %@ AND scopeIndex = %ld", mainTable2, identifier3, identifier4, v12}];

    if (!v22)
    {
      goto LABEL_9;
    }

    mainTable3 = [(CPLPrequeliteStorage *)self mainTable];
    identifier5 = [scopedIdentifierCopy identifier];
    identifier6 = [identifierCopy identifier];
    v26 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET secondaryIdentifier = %@ WHERE secondaryIdentifier = %@ AND scopeIndex = %ld", mainTable3, identifier5, identifier6, v12}];

    if (!v26)
    {
      goto LABEL_9;
    }

    mainTable4 = [(CPLPrequeliteStorage *)self mainTable];
    identifier7 = [scopedIdentifierCopy identifier];
    identifier8 = [identifierCopy identifier];
    v30 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET stagedRelatedIdentifier = %@ WHERE stagedRelatedIdentifier = %@ AND scopeIndex = %ld", mainTable4, identifier7, identifier8, v12}];

    if (v30)
    {
      mainTable5 = [(CPLPrequeliteStorage *)self mainTable];
      identifier9 = [scopedIdentifierCopy identifier];
      identifier10 = [identifierCopy identifier];
      v11 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET stagedSecondaryIdentifier = %@ WHERE stagedSecondaryIdentifier = %@ AND scopeIndex = %ld", mainTable5, identifier9, identifier10, v12}];
    }

    else
    {
LABEL_9:
      v11 = 0;
    }

    if (error && (v11 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
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
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"confirmed = 0"];
  v6 = [pqStore table:mainTable countOfRecordsMatchingQuery:v5];

  return v6;
}

- (unint64_t)countOfUnacknowledgesRecords
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  abstractObject = [(CPLPrequeliteCloudCache *)self abstractObject];
  engineStore = [abstractObject engineStore];
  scopes = [engineStore scopes];

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015E7C8;
  v11[3] = &unk_10027B8A0;
  v8 = scopes;
  v12 = v8;
  v13 = &v14;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"localScopeIndex" block:v11];

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
  status = [(CPLPrequeliteStorage *)&v11 status];
  v17 = [status mutableCopy];

  countOfUnacknowledgesRecords = [(CPLPrequeliteCloudCache *)self countOfUnacknowledgesRecords];
  if (countOfUnacknowledgesRecords)
  {
    [v13[5] appendFormat:@" (%lu not matched with client)", countOfUnacknowledgesRecords];
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10015EA28;
  v10[3] = &unk_10027B8C8;
  v10[4] = &v12;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"class" block:v10];

  _countOfUnconfirmedRecords = [(CPLPrequeliteCloudCache *)self _countOfUnconfirmedRecords];
  if (_countOfUnconfirmedRecords)
  {
    [v13[5] appendFormat:@"\n%lu unconfirmed!", _countOfUnconfirmedRecords];
  }

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

- (id)statusDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10015EBFC;
  v12[3] = &unk_10027B8F0;
  v6 = v3;
  v13 = v6;
  [pqStore table:mainTable enumerateCountGroupedByProperty:@"class" block:v12];

  countOfUnacknowledgesRecords = [(CPLPrequeliteCloudCache *)self countOfUnacknowledgesRecords];
  if (countOfUnacknowledgesRecords)
  {
    v8 = [NSNumber numberWithUnsignedInteger:countOfUnacknowledgesRecords];
    [v6 setObject:v8 forKeyedSubscript:@"unacknowledged"];
  }

  _countOfUnconfirmedRecords = [(CPLPrequeliteCloudCache *)self _countOfUnconfirmedRecords];
  if (_countOfUnconfirmedRecords)
  {
    v10 = [NSNumber numberWithUnsignedInteger:_countOfUnconfirmedRecords];
    [v6 setObject:v10 forKeyedSubscript:@"unconfirmed"];
  }

  return v6;
}

- (id)additionalStatusForScopeWithIndex:(int64_t)index baseRecordCount:(int64_t)count
{
  abstractObject = [(CPLPrequeliteCloudCache *)self abstractObject];
  engineStore = [abstractObject engineStore];
  scopes = [engineStore scopes];
  v10 = [scopes scopeWithCloudScopeIndex:index];

  if (v10)
  {
    localIndex = [v10 localIndex];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v14 = [PQLFormatInjection formatInjection:@"localScopeIndex = %ld", localIndex];
    v15 = [pqStore table:mainTable countOfRecordsMatchingQuery:v14];

    if (v15 < count)
    {
      v16 = [[NSString alloc] initWithFormat:@"%lu not matched with client", count - v15];
LABEL_6:
      v17 = v16;
      goto LABEL_8;
    }

    if (v15 > count)
    {
      v16 = [[NSString alloc] initWithFormat:@"%lu extra records matched with client!", &v15[-count]];
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

- (id)_relatedIdentifierForRecordWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplFetchObject:&stru_10027B950 sql:{@"SELECT relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE identifier = %@", mainTable, identifierCopy}];

  v9 = +[NSNull null];

  if (v8 == v9)
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, count}];

  if (v14)
  {
    *deletedCount = [pqlConnection changes];
  }

  else if (error)
  {
    *error = [pqlConnection lastError];
  }

  return v14;
}

- (BOOL)popCloudScopedIdentifiersToCheck:(id *)check otherScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v12 = [[NSMutableArray alloc] initWithCapacity:count];
  v13 = objc_alloc_init(NSMutableIndexSet);
  selfCopy = self;
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v15 = [pqlConnection cplFetch:{@"SELECT rowid, scopeIndex, identifier, relatedIdentifier, stagedRelatedIdentifier FROM %@ WHERE otherScopeIndex = %ld OR stagedOtherScopeIndex = %ld LIMIT %lu", mainTable, index, index, count}];

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
        abstractObject = [(CPLPrequeliteCloudCache *)selfCopy abstractObject];
        engineStore = [abstractObject engineStore];
        scopes = [engineStore scopes];

        v22 = [scopes scopeIdentifierForCloudScopeIndex:v18];

        if (v22)
        {
          v23 = [scopes scopeWithIdentifier:v22];
          if (!v23 || [scopes valueForFlag:16 forScope:v23])
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
    mainTable2 = [(CPLPrequeliteStorage *)selfCopy mainTable];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10015F4CC;
    v40[3] = &unk_10027B1F0;
    v43 = &v51;
    v41 = pqlConnection;
    v33 = mainTable2;
    v42 = v33;
    v44 = &v45;
    [v13 enumerateIndexesUsingBlock:v40];
  }

  if (*(v52 + 24) == 1)
  {
    *check = [v12 copy];
    *deletedCount = [v13 count];
  }

  else if (error)
  {
    *error = v46[5];
  }

  v34 = *(v52 + 24);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
  return v34;
}

- (id)allRecordsIsFinal:(BOOL)final
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplFetch:{@"SELECT identifier, state, stagedSerializedRecord, serializedRecord, relatedIdentifier, secondaryIdentifier, otherScopeIndex, stagedRelatedIdentifier, stagedSecondaryIdentifier, stagedOtherScopeIndex, scopeIndex FROM %@", mainTable}];

  sub_10015F5A8();
  v15 = 3221225472;
  v16 = sub_10015E418;
  v17 = &unk_10027B878;
  finalCopy = final;
  selfCopy = self;
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
      lastCPLError = [pqlConnection lastCPLError];
      *buf = 138412290;
      v21 = lastCPLError;
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