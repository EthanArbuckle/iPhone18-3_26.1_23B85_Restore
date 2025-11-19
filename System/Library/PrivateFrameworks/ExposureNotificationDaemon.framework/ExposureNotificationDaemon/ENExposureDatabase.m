@interface ENExposureDatabase
+ (void)_obliterateDatabaseAtURL:(id)a3 reason:(id)a4 generateStackshot:(BOOL)a5;
- (BOOL)_checkDatabaseOpenWithError:(id *)a3;
- (BOOL)_createOrMigrateSchemaFromVersion:(int64_t)a3 error:(id *)a4;
- (BOOL)_createSchemaWithConnection:(id)a3 error:(id *)a4;
- (BOOL)_getExistingPersistentTemporaryExposureKey:(id *)a3 rowID:(int64_t *)a4 keyData:(id)a5 connection:(id)a6 error:(id *)a7;
- (BOOL)_insertAdvertisement:(id)a3 keyRowID:(int64_t)a4 connection:(id)a5 error:(id *)a6;
- (BOOL)_insertExposureDetectionFile:(id)a3 sessionID:(id)a4 connection:(id)a5 error:(id *)a6;
- (BOOL)_insertOrUpdateExposureDetectionHistorySession:(id)a3 connection:(id)a4 error:(id *)a5;
- (BOOL)_insertPersistentTemporaryExposureKey:(id)a3 connection:(id)a4 error:(id *)a5;
- (BOOL)_reallyOpenDatabaseWithError:(id *)a3;
- (BOOL)deleteExposureDetectionHistoryWithError:(id *)a3;
- (BOOL)enumerateExposureDetectionHistoryFilesForSessionUUID:(id)a3 error:(id *)a4 handler:(id)a5;
- (BOOL)enumerateExposureDetectionHistorySessionsWithError:(id *)a3 handler:(id)a4;
- (BOOL)enumerateMatchedAdvertisementsWithError:(id *)a3 handler:(id)a4;
- (BOOL)getAdvertisementCount:(unsigned int *)a3 error:(id *)a4;
- (BOOL)getValue:(id *)a3 forKey:(id)a4 ofClass:(Class)a5 connection:(id)a6 error:(id *)a7;
- (BOOL)getValue:(id *)a3 forKey:(id)a4 ofClass:(Class)a5 error:(id *)a6;
- (BOOL)insertExposureDetectionFile:(id)a3 session:(id)a4 error:(id *)a5;
- (BOOL)openWithError:(id *)a3;
- (BOOL)purgeRecordsWithInterval:(double)a3 nowDate:(id)a4 error:(id *)a5;
- (BOOL)setPropertyListValue:(id)a3 forKey:(id)a4 expiryDate:(id)a5 error:(id *)a6;
- (BOOL)setValue:(id)a3 forKey:(id)a4 expiryDate:(id)a5 error:(id *)a6;
- (BOOL)setValue:(id)a3 forKey:(id)a4 type:(int64_t)a5 expiryDate:(id)a6 modDate:(id)a7 connection:(id)a8 error:(id *)a9;
- (BOOL)upsertExposureDetectionHistorySession:(id)a3 error:(id *)a4;
- (ENExposureDatabase)initWithDirectoryURL:(id)a3;
- (ENExposureDatabase)initWithURL:(id)a3;
- (id)_advertisementWithRPIData:(id)a3 encryptedAEMData:(id)a4 timestamp:(int64_t)a5 scanInterval:(int)a6 typicalRSSI:(int)a7 maxRSSI:(int)a8 saturated:(int)a9 counter:(int)a10;
- (id)_advertisementsForTemporaryExposureKeyRowID:(int64_t)a3 connection:(id)a4 error:(id *)a5;
- (id)_initWithURL:(id)a3;
- (id)_persistentTemporaryExposureKeyWithKeyData:(id)a3 appBundleIdentifier:(id)a4 regionCountryCode:(id)a5 rollingStartNumber:(int64_t)a6 rollingPeriod:(int64_t)a7 daysSinceOnsetOfSymptoms:(int64_t)a8 diagnosisReportType:(int)a9 originalReportType:(int)a10 transmissionRiskLevel:(int)a11 variantOfConcernType:(int)a12 originalVariantOfConcernType:(int)a13;
- (id)_sessionIDForUUID:(id)a3 connection:(id)a4 error:(id *)a5;
- (id)advertisementCountsByTemporaryKeyDatasWithError:(id *)a3;
- (int64_t)_updateExistingPersistentKeyIfNecessary:(id)a3 replacementKey:(id)a4 existingKeyID:(int64_t)a5 connection:(id)a6 error:(id *)a7;
- (int64_t)insertMatchedAdvertisements:(id)a3 forKey:(id)a4 error:(id *)a5;
- (void)_reportSQLiteResult:(int)a3;
- (void)close;
- (void)purgeAllAndCloseWithReason:(id)a3;
@end

@implementation ENExposureDatabase

- (ENExposureDatabase)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ENExposureDatabase *)a2 initWithURL:?];
  }

  v6 = [(ENExposureDatabase *)self _initWithURL:v5];

  return v6;
}

- (ENExposureDatabase)initWithDirectoryURL:(id)a3
{
  v4 = [a3 URLByAppendingPathComponent:@"en_exposure.sqlite"];
  v5 = [(ENExposureDatabase *)self initWithURL:v4];

  return v5;
}

- (id)_initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ENExposureDatabase;
  v5 = [(ENExposureDatabase *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;
  }

  return v5;
}

- (void)_reportSQLiteResult:(int)a3
{
  if (a3 <= 12)
  {
    if (a3 == 1)
    {
      v3 = 4001;
      goto LABEL_8;
    }

    if (a3 != 11)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a3 == 26)
  {
LABEL_9:
    v3 = 4000;
    goto LABEL_8;
  }

  if (a3 == 13)
  {
    v3 = 4002;
LABEL_8:
    [(ENExposureDatabase *)self _reportErrorMetric:v3];
  }
}

- (BOOL)openWithError:(id *)a3
{
  if (![(ENExposureDatabase *)self isOpen])
  {
    if (!self->_databaseURL)
    {
LABEL_7:
      v5 = [(ENExposureDatabase *)self _reallyOpenDatabaseWithError:a3];
      if (!v5)
      {
        return v5;
      }

      v14 = 0;
      if ([(ENSQLiteConnection *)self->_connection getUserVersion:&v14 error:a3]&& [(ENExposureDatabase *)self _createOrMigrateSchemaFromVersion:v14 error:a3])
      {
        if (gLogCategory_ENExposureDatabase <= 30 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
        {
          [ENExposureDatabase openWithError:];
        }

        goto LABEL_2;
      }

      [(ENExposureDatabase *)self close];
LABEL_27:
      LOBYTE(v5) = 0;
      return v5;
    }

    v6 = objc_alloc_init(MEMORY[0x277CCAA08]);
    v7 = [(NSURL *)self->_databaseURL URLByDeletingLastPathComponent];
    if ([v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:a3])
    {
      if ([v7 setResourceValue:MEMORY[0x277CBEC30] forKey:*MEMORY[0x277CBE870] error:a3])
      {

        goto LABEL_7;
      }

      if (gLogCategory__ENExposureDatabase > 90 || gLogCategory__ENExposureDatabase == -1 && !_LogCategory_Initialize())
      {
        v10 = 4005;
        goto LABEL_26;
      }

      v9 = [v7 path];
      v12 = v9;
      LogPrintF_safe();
      v10 = 4005;
    }

    else
    {
      if (gLogCategory__ENExposureDatabase > 90 || gLogCategory__ENExposureDatabase == -1 && !_LogCategory_Initialize())
      {
        v10 = 4004;
        goto LABEL_26;
      }

      v8 = objc_opt_class();
      v9 = [v7 absoluteString];
      v12 = v8;
      v13 = v9;
      LogPrintF_safe();
      v10 = 4004;
    }

LABEL_26:
    [(ENExposureDatabase *)self _reportErrorMetric:v10, v12, v13];

    goto LABEL_27;
  }

LABEL_2:
  LOBYTE(v5) = 1;
  return v5;
}

- (void)close
{
  if ([(ENSQLiteConnection *)self->_connection isOpen])
  {
    [(ENSQLiteConnection *)self->_connection close];
    if (gLogCategory_ENExposureDatabase <= 30 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDatabase close];
    }
  }

  connection = self->_connection;
  self->_connection = 0;
}

- (BOOL)_reallyOpenDatabaseWithError:(id *)a3
{
  if (self->_connection)
  {
    [(ENExposureDatabase *)a2 _reallyOpenDatabaseWithError:?];
  }

  if (self->_databaseURL)
  {
    v5 = [[ENSQLiteConnection alloc] initWithDatabaseURL:self->_databaseURL];
    connection = self->_connection;
    self->_connection = v5;

    [(ENSQLiteConnection *)self->_connection setAdditionalOpenFlags:0x200000];
  }

  else
  {
    v7 = objc_alloc_init(ENSQLiteConnection);
    v8 = self->_connection;
    self->_connection = v7;
  }

  v9 = [(ENSQLiteConnection *)self->_connection openWithError:a3];
  if (v9)
  {
    [(ENExposureDatabase *)self close];
    if (v9 == 23)
    {
      if (gLogCategory_ENExposureDatabase <= 50 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
      {
        [ENExposureDatabase _reallyOpenDatabaseWithError:?];
      }
    }

    else
    {
      if (gLogCategory_ENExposureDatabase <= 115 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
      {
        [ENExposureDatabase _reallyOpenDatabaseWithError:?];
      }

      [(ENExposureDatabase *)self _reportSQLiteResult:v9];
    }
  }

  return v9 == 0;
}

- (BOOL)_checkDatabaseOpenWithError:(id *)a3
{
  v4 = [(ENSQLiteConnection *)self->_connection isOpen];
  v5 = v4;
  if (a3 && !v4)
  {
    *a3 = ENErrorF();
  }

  return v5;
}

- (BOOL)_createOrMigrateSchemaFromVersion:(int64_t)a3 error:(id *)a4
{
  if (a3 == 8)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v26[5] = v7;
  v26[6] = v6;
  v26[17] = v4;
  v26[18] = v5;
  if ((a3 - 9) < 0xFFFFFFFFFFFFFFF9)
  {
    if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDatabase _createOrMigrateSchemaFromVersion:error:];
    }

    if ([(ENSQLiteConnection *)self->_connection truncateWithError:a4])
    {
      connection = self->_connection;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__ENExposureDatabase__createOrMigrateSchemaFromVersion_error___block_invoke;
      v26[3] = &unk_278FD2BD8;
      v26[4] = self;
      LOBYTE(v8) = [(ENSQLiteConnection *)connection performTransactionWithType:1 error:a4 usingBlock:v26];
    }

    else
    {
      if (gLogCategory__ENExposureDatabase > 90)
      {
        goto LABEL_29;
      }

      if (gLogCategory__ENExposureDatabase != -1 || (v8 = _LogCategory_Initialize()) != 0)
      {
        [ENExposureDatabase _createOrMigrateSchemaFromVersion:error:];
        goto LABEL_29;
      }
    }

    return v8;
  }

  v13 = &off_285D61698;
  v14 = 6;
  while (1)
  {
    v15 = *(v13 - 1);
    if (v15 > a3)
    {
      break;
    }

LABEL_16:
    v13 += 2;
    if (!--v14)
    {
      LOBYTE(v8) = 1;
      return v8;
    }
  }

  v16 = *v13;
  if (gLogCategory_ENExposureDatabase <= 50 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDatabase _createOrMigrateSchemaFromVersion:error:];
  }

  v17 = self->_connection;
  v24[5] = v16;
  v25 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__ENExposureDatabase__createOrMigrateSchemaFromVersion_error___block_invoke_2;
  v24[3] = &__block_descriptor_48_e32_B24__0__ENSQLiteConnection_8__16l;
  v24[4] = v15;
  v18 = [(ENSQLiteConnection *)v17 performTransactionWithType:1 error:&v25 usingBlock:v24];
  v19 = v25;
  v20 = v19;
  if (v18)
  {

    goto LABEL_16;
  }

  if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDatabase _createOrMigrateSchemaFromVersion:error:];
  }

  [(ENExposureDatabase *)self _reportErrorMetric:4003];
  if (a4)
  {
    v21 = v20;
    *a4 = v20;
  }

LABEL_29:
  LOBYTE(v8) = 0;
  return v8;
}

uint64_t __62__ENExposureDatabase__createOrMigrateSchemaFromVersion_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ((*(a1 + 40))())
  {
    v6 = [v5 setUserVersion:*(a1 + 32) error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_createSchemaWithConnection:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (![v5 executeUncachedSQLStatements:&unk_285D6E138 error:a4])
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (([v5 setUserVersion:8 error:a4] & 1) == 0)
  {
    if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDatabase _createSchemaWithConnection:error:];
    }

    goto LABEL_7;
  }

  v6 = 1;
LABEL_8:

  return v6;
}

- (int64_t)insertMatchedAdvertisements:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(ENExposureDatabase *)self _checkDatabaseOpenWithError:a5])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    connection = self->_connection;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__ENExposureDatabase_insertMatchedAdvertisements_forKey_error___block_invoke;
    v13[3] = &unk_278FD2C20;
    v13[4] = self;
    v14 = v9;
    v16 = &v17;
    v15 = v8;
    if ([(ENSQLiteConnection *)connection performTransactionWithType:1 error:a5 usingBlock:v13])
    {
      v11 = v18[3];
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __63__ENExposureDatabase_insertMatchedAdvertisements_forKey_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v24 = 0;
  v25 = -1;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) key];
  v8 = [v7 keyData];
  v9 = [v6 _getExistingPersistentTemporaryExposureKey:&v24 rowID:&v25 keyData:v8 connection:v5 error:a3];
  v10 = v24;

  if ((v9 & 1) == 0)
  {
    if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      __63__ENExposureDatabase_insertMatchedAdvertisements_forKey_error___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    v12 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v11 = (a1 + 48);
    if (![*(a1 + 48) count])
    {
      goto LABEL_24;
    }

    if ([*(a1 + 32) _insertPersistentTemporaryExposureKey:*(a1 + 40) connection:v5 error:a3])
    {
      v25 = [v5 lastInsertedRowID];
      goto LABEL_13;
    }

    if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      __63__ENExposureDatabase_insertMatchedAdvertisements_forKey_error___block_invoke_cold_2();
    }

LABEL_9:
    v12 = 0;
    goto LABEL_24;
  }

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _updateExistingPersistentKeyIfNecessary:v10 replacementKey:*(a1 + 40) existingKeyID:v25 connection:v5 error:a3];
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    goto LABEL_9;
  }

  v11 = (a1 + 48);
  if (![*(a1 + 48) count])
  {
    v12 = 1;
    goto LABEL_24;
  }

LABEL_13:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = *v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (![*(a1 + 32) _insertAdvertisement:*(*(&v20 + 1) + 8 * i) keyRowID:v25 connection:v5 error:{a3, v20}])
        {
          v12 = 0;
          goto LABEL_23;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_23:

LABEL_24:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_insertAdvertisement:(id)a3 keyRowID:(int64_t)a4 connection:(id)a5 error:(id *)a6
{
  v9 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__ENExposureDatabase__insertAdvertisement_keyRowID_connection_error___block_invoke;
  v12[3] = &unk_278FD2C48;
  v13 = v9;
  v14 = a4;
  v10 = v9;
  LOBYTE(a6) = [a5 executeSQL:@"INSERT OR REPLACE INTO advertisements (rpi error:encrypted_aem bindingHandler:timestamp enumerationHandler:{scan_interval, rssi, max_rssi, saturated, counter, tek_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", a6, v12, 0}];

  return a6;
}

uint64_t __69__ENExposureDatabase__insertAdvertisement_keyRowID_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) rpi];
  ENSQLiteBindFoundationValue(a2, 1, v4);

  v5 = [*(a1 + 32) encryptedAEM];
  ENSQLiteBindFoundationValue(a2, 2, v5);

  [*(a1 + 32) timestamp];
  sqlite3_bind_int64(a2, 3, v6);
  sqlite3_bind_int(a2, 4, [*(a1 + 32) scanInterval]);
  sqlite3_bind_int(a2, 5, [*(a1 + 32) typicalRSSI]);
  sqlite3_bind_int(a2, 6, [*(a1 + 32) maxRSSI]);
  sqlite3_bind_int(a2, 7, [*(a1 + 32) saturated]);
  sqlite3_bind_int(a2, 8, [*(a1 + 32) counter]);
  v7 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 9, v7);
}

- (BOOL)_getExistingPersistentTemporaryExposureKey:(id *)a3 rowID:(int64_t *)a4 keyData:(id)a5 connection:(id)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = -1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __96__ENExposureDatabase__getExistingPersistentTemporaryExposureKey_rowID_keyData_connection_error___block_invoke;
  v19[3] = &unk_278FD2C70;
  v14 = v12;
  v20 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__ENExposureDatabase__getExistingPersistentTemporaryExposureKey_rowID_keyData_connection_error___block_invoke_2;
  v18[3] = &unk_278FD2C98;
  v18[5] = &v27;
  v18[6] = &v21;
  v18[4] = self;
  v15 = [v13 executeSQL:@"SELECT ROWID error:key bindingHandler:app_bundle_id enumerationHandler:{region_id, start, period, onset_days, report_type, original_report_type, transmission_risk, variant_of_concern_type, original_variant_of_concern_type FROM teks WHERE key = ?", a7, v19, v18}];
  if (v15)
  {
    v16 = v22[5];
    if (v16)
    {
      *a3 = v16;
      *a4 = v28[3];
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __96__ENExposureDatabase__getExistingPersistentTemporaryExposureKey_rowID_keyData_connection_error___block_invoke_2(void *a1, sqlite3_stmt *a2)
{
  *(*(a1[5] + 8) + 24) = sqlite3_column_int64(a2, 0);
  v19 = a1[4];
  v18 = ENSQLiteColumnAsData(a2, 1);
  v4 = ENSQLiteColumnAsString(a2, 2);
  v5 = ENSQLiteColumnAsString(a2, 3);
  v17 = sqlite3_column_int64(a2, 4);
  v6 = sqlite3_column_int64(a2, 5);
  v7 = sqlite3_column_int64(a2, 6);
  v8 = sqlite3_column_int(a2, 7);
  v9 = sqlite3_column_int(a2, 8);
  v10 = sqlite3_column_int(a2, 9);
  v11 = sqlite3_column_int(a2, 10);
  LODWORD(v16) = sqlite3_column_int(a2, 11);
  v12 = [v19 _persistentTemporaryExposureKeyWithKeyData:v18 appBundleIdentifier:v4 regionCountryCode:v5 rollingStartNumber:v17 rollingPeriod:v6 daysSinceOnsetOfSymptoms:v7 diagnosisReportType:__PAIR64__(v9 originalReportType:v8) transmissionRiskLevel:__PAIR64__(v11 variantOfConcernType:v10) originalVariantOfConcernType:v16];
  v13 = *(a1[6] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return 1;
}

uint64_t __108__ENExposureDatabase__updateExistingPersistentKeyIfNecessary_replacementKey_existingKeyID_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  sqlite3_bind_int64(a2, 2, *(a1 + 44));
  v4 = *(a1 + 32);

  return sqlite3_bind_int64(a2, 3, v4);
}

- (id)_persistentTemporaryExposureKeyWithKeyData:(id)a3 appBundleIdentifier:(id)a4 regionCountryCode:(id)a5 rollingStartNumber:(int64_t)a6 rollingPeriod:(int64_t)a7 daysSinceOnsetOfSymptoms:(int64_t)a8 diagnosisReportType:(int)a9 originalReportType:(int)a10 transmissionRiskLevel:(int)a11 variantOfConcernType:(int)a12 originalVariantOfConcernType:(int)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  if (v18)
  {
    v21 = objc_alloc_init(MEMORY[0x277CC5D28]);
    [v21 setKeyData:v18];
    [v21 setRollingStartNumber:a6];
    [v21 setRollingPeriod:a7];
    [v21 setDaysSinceOnsetOfSymptoms:a8];
    [v21 setDiagnosisReportType:a9];
    [v21 setTransmissionRiskLevel:a11];
    [v21 setVariantOfConcernType:a12];
    [v21 setOriginalVariantOfConcernType:a13];
    v22 = [[ENPersistentTemporaryExposureKey alloc] initWithTemporaryExposureKey:v21 appBundleIdentifier:v19 regionCountryCode:v20];
    [(ENPersistentTemporaryExposureKey *)v22 setOriginalReportType:a10];
    [(ENPersistentTemporaryExposureKey *)v22 setOriginalVariantOfConcernType:a13];
  }

  else
  {
    v23 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v24 = [v23 isSensitiveLoggingAllowed];

    if (v24 && gLogCategory_ENExposureDatabase <= 90 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDatabase _persistentTemporaryExposureKeyWithKeyData:appBundleIdentifier:regionCountryCode:rollingStartNumber:rollingPeriod:daysSinceOnsetOfSymptoms:diagnosisReportType:originalReportType:transmissionRiskLevel:variantOfConcernType:originalVariantOfConcernType:];
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)_insertPersistentTemporaryExposureKey:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__ENExposureDatabase__insertPersistentTemporaryExposureKey_connection_error___block_invoke;
  v10[3] = &unk_278FD2C70;
  v11 = v7;
  v8 = v7;
  LOBYTE(a5) = [a4 executeSQL:@"INSERT INTO teks (app_bundle_id error:region_id bindingHandler:key enumerationHandler:{start, period, end, onset_days, report_type, original_report_type, transmission_risk, variant_of_concern_type, original_variant_of_concern_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", a5, v10, 0}];

  return a5;
}

void __77__ENExposureDatabase__insertPersistentTemporaryExposureKey_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appBundleIdentifier];
  ENSQLiteBindFoundationValue(a2, 1, v4);

  v5 = [*(a1 + 32) regionCountryCode];
  ENSQLiteBindFoundationValue(a2, 2, v5);

  v7 = [*(a1 + 32) key];
  v6 = [v7 keyData];
  ENSQLiteBindFoundationValue(a2, 3, v6);

  sqlite3_bind_int64(a2, 4, [v7 rollingStartNumber]);
  sqlite3_bind_int64(a2, 5, [v7 rollingPeriod]);
  sqlite3_bind_int64(a2, 6, [v7 rollingPeriod] + objc_msgSend(v7, "rollingStartNumber"));
  sqlite3_bind_int64(a2, 7, [v7 daysSinceOnsetOfSymptoms]);
  sqlite3_bind_int64(a2, 8, [v7 diagnosisReportType]);
  sqlite3_bind_int64(a2, 9, [*(a1 + 32) originalReportType]);
  sqlite3_bind_int(a2, 10, [v7 transmissionRiskLevel]);
  sqlite3_bind_int64(a2, 11, [v7 variantOfConcernType]);
  sqlite3_bind_int64(a2, 12, [*(a1 + 32) originalVariantOfConcernType]);
}

uint64_t __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke_2;
  v10[3] = &unk_278FD2CE0;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = [v7 executeSQL:@"SELECT ROWID error:key bindingHandler:app_bundle_id enumerationHandler:{region_id, start, period, onset_days, report_type, original_report_type, transmission_risk, variant_of_concern_type, original_variant_of_concern_type FROM teks", a3, 0, v10}];

  return v8;
}

uint64_t __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = sqlite3_column_int64(a2, 0);
  v28 = *(a1 + 32);
  v29 = v5;
  v27 = ENSQLiteColumnAsData(a2, 1);
  v6 = ENSQLiteColumnAsString(a2, 2);
  v7 = ENSQLiteColumnAsString(a2, 3);
  v26 = sqlite3_column_int64(a2, 4);
  v8 = sqlite3_column_int64(a2, 5);
  v9 = sqlite3_column_int64(a2, 6);
  v10 = sqlite3_column_int(a2, 7);
  v11 = sqlite3_column_int(a2, 8);
  v12 = sqlite3_column_int(a2, 9);
  v13 = sqlite3_column_int(a2, 10);
  LODWORD(v24) = sqlite3_column_int(a2, 11);
  v14 = [v28 _persistentTemporaryExposureKeyWithKeyData:v27 appBundleIdentifier:v6 regionCountryCode:v7 rollingStartNumber:v26 rollingPeriod:v8 daysSinceOnsetOfSymptoms:v9 diagnosisReportType:__PAIR64__(v11 originalReportType:v10) transmissionRiskLevel:__PAIR64__(v13 variantOfConcernType:v12) originalVariantOfConcernType:v24];

  if (v14)
  {
    v15 = [*(a1 + 32) _advertisementsForTemporaryExposureKeyRowID:v29 connection:*(a1 + 40) error:a3];
    v16 = v15;
    if (v15)
    {
      if ([v15 count])
      {
        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v21 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v22 = [v21 isSensitiveLoggingAllowed];

        if (v22 && gLogCategory_ENExposureDatabase <= 90 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
        {
          __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke_2_cold_1();
        }
      }
    }

    else
    {
      v19 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v20 = [v19 isSensitiveLoggingAllowed];

      if (v20 && gLogCategory_ENExposureDatabase <= 90 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
      {
        __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    v17 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v18 = [v17 isSensitiveLoggingAllowed];

    if (v18 && gLogCategory_ENExposureDatabase <= 90 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke_2_cold_3();
    }
  }

  return 1;
}

- (id)advertisementCountsByTemporaryKeyDatasWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ENExposureDatabase_advertisementCountsByTemporaryKeyDatasWithError___block_invoke;
  v10[3] = &unk_278FD2D30;
  v11 = v5;
  v6 = v5;
  if ([(ENExposureDatabase *)self enumerateMatchedAdvertisementsWithError:a3 handler:v10])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

void __70__ENExposureDatabase_advertisementCountsByTemporaryKeyDatasWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCABA8];
  v6 = a2;
  v10 = [v5 numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  v7 = *(a1 + 32);
  v8 = [v6 key];

  v9 = [v8 keyData];
  [v7 setObject:v10 forKeyedSubscript:v9];
}

- (id)_advertisementsForTemporaryExposureKeyRowID:(int64_t)a3 connection:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB10];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__ENExposureDatabase__advertisementsForTemporaryExposureKeyRowID_connection_error___block_invoke;
  v17[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v17[4] = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__ENExposureDatabase__advertisementsForTemporaryExposureKeyRowID_connection_error___block_invoke_2;
  v15[3] = &unk_278FD2D78;
  v15[4] = self;
  v16 = v10;
  v11 = v10;
  LODWORD(a5) = [v9 executeSQL:@"SELECT rpi error:encrypted_aem bindingHandler:timestamp enumerationHandler:{scan_interval, rssi, max_rssi, saturated, counter FROM advertisements WHERE tek_id = ?", a5, v17, v15}];

  if (a5)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

uint64_t __83__ENExposureDatabase__advertisementsForTemporaryExposureKeyRowID_connection_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_int64(a2, 2);
  v5 = *(a1 + 32);
  v6 = ENSQLiteColumnAsData(a2, 0);
  v7 = ENSQLiteColumnAsData(a2, 1);
  v8 = sqlite3_column_int(a2, 3);
  v9 = sqlite3_column_int(a2, 4);
  v10 = sqlite3_column_int(a2, 5);
  v11 = sqlite3_column_int(a2, 6);
  v12 = [v5 _advertisementWithRPIData:v6 encryptedAEMData:v7 timestamp:v4 scanInterval:v8 typicalRSSI:v9 maxRSSI:v10 saturated:__PAIR64__(sqlite3_column_int(a2 counter:{7), v11)}];

  if (v12)
  {
    [*(a1 + 40) addObject:v12];
  }

  else
  {
    v13 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v14 = [v13 isSensitiveLoggingAllowed];

    if (v14 && gLogCategory_ENExposureDatabase <= 90 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      __83__ENExposureDatabase__advertisementsForTemporaryExposureKeyRowID_connection_error___block_invoke_2_cold_1();
    }
  }

  return 1;
}

- (id)_advertisementWithRPIData:(id)a3 encryptedAEMData:(id)a4 timestamp:(int64_t)a5 scanInterval:(int)a6 typicalRSSI:(int)a7 maxRSSI:(int)a8 saturated:(int)a9 counter:(int)a10
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v15 = a3;
  v16 = a4;
  v17 = v15;
  if (v17)
  {
    v18 = [ENAdvertisement alloc];
    v19 = v18;
    if (v16)
    {
      LOBYTE(v23) = a10;
      v20 = [(ENAdvertisement *)v18 initWithRPI:v17 encryptedAEM:v16 timestamp:v12 scanInterval:v11 typicalRSSI:v10 maxRSSI:a9 != 0 saturated:a5 counter:v23];
    }

    else
    {
      v21 = [MEMORY[0x277CBEA98] data];
      LOBYTE(v23) = a10;
      v20 = [(ENAdvertisement *)v19 initWithRPI:v17 encryptedAEM:v21 timestamp:v12 scanInterval:v11 typicalRSSI:v10 maxRSSI:a9 != 0 saturated:a5 counter:v23];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)getAdvertisementCount:(unsigned int *)a3 error:(id *)a4
{
  if (![(ENExposureDatabase *)self _checkDatabaseOpenWithError:a4])
  {
    return 0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__ENExposureDatabase_getAdvertisementCount_error___block_invoke;
  v11[3] = &unk_278FD2DA0;
  v11[4] = &v12;
  v8 = [(ENSQLiteConnection *)connection executeSQL:@"SELECT COUNT(*) FROM advertisements" error:a4 bindingHandler:0 enumerationHandler:v11];
  v9 = !v8;
  if (!a3)
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    *a3 = *(v13 + 6);
  }

  _Block_object_dispose(&v12, 8);
  return v8;
}

- (BOOL)_insertOrUpdateExposureDetectionHistorySession:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__ENExposureDatabase__insertOrUpdateExposureDetectionHistorySession_connection_error___block_invoke;
  v10[3] = &unk_278FD2C70;
  v11 = v7;
  v8 = v7;
  LOBYTE(a5) = [a4 executeSQL:@"INSERT INTO session_history (uuid error:date bindingHandler:app_bundle_id enumerationHandler:{region_cc, region_sc, file_count, match_count, build, exp_class) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT(uuid) DO UPDATE SET date=excluded.date, app_bundle_id=excluded.app_bundle_id, region_cc=excluded.region_cc, region_sc=excluded.region_sc, file_count=excluded.file_count, match_count=excluded.match_count, build=excluded.build, exp_class=excluded.exp_class", a5, v10, 0}];

  return a5;
}

void __86__ENExposureDatabase__insertOrUpdateExposureDetectionHistorySession_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) UUID];
  ENSQLiteBindFoundationValue(a2, 1, v4);

  v5 = [*(a1 + 32) date];
  ENSQLiteBindFoundationValue(a2, 2, v5);

  v6 = [*(a1 + 32) appBundleIdentifier];
  ENSQLiteBindFoundationValue(a2, 3, v6);

  v7 = [*(a1 + 32) region];
  v8 = [v7 countryCode];
  ENSQLiteBindFoundationValue(a2, 4, v8);

  v9 = [*(a1 + 32) region];
  v10 = [v9 subdivisionCode];
  ENSQLiteBindFoundationValue(a2, 5, v10);

  sqlite3_bind_int64(a2, 6, [*(a1 + 32) fileCount]);
  sqlite3_bind_int64(a2, 7, [*(a1 + 32) matchCount]);
  v11 = [*(a1 + 32) systemBuildVersion];
  ENSQLiteBindFoundationValue(a2, 8, v11);

  v12 = [*(a1 + 32) exposureClassificationIdentifier];
  ENSQLiteBindFoundationValue(a2, 9, v12);
}

- (id)_sessionIDForUUID:(id)a3 connection:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__ENExposureDatabase__sessionIDForUUID_connection_error___block_invoke;
  v14[3] = &unk_278FD2C70;
  v9 = v7;
  v15 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ENExposureDatabase__sessionIDForUUID_connection_error___block_invoke_2;
  v13[3] = &unk_278FD2DA0;
  v13[4] = &v16;
  if (![v8 executeSQL:@"SELECT ROWID FROM session_history WHERE uuid=?" error:a5 bindingHandler:v14 enumerationHandler:v13])
  {
    v10 = 0;
    goto LABEL_6;
  }

  v10 = v17[5];
  if (v10)
  {
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  if (a5)
  {
    ENErrorF();
    *a5 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_7:

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __57__ENExposureDatabase__sessionIDForUUID_connection_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [MEMORY[0x277CCABA8] numberWithLongLong:{sqlite3_column_int64(a2, 0)}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

- (BOOL)_insertExposureDetectionFile:(id)a3 sessionID:(id)a4 connection:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 metadata];
  v13 = 0;
  v14 = 1;
  while (v12 && (v14 & 1) != 0)
  {
    v15 = [MEMORY[0x277CCAC50] dataWithPropertyList:v12 format:200 options:0 error:a6];

    v14 = 0;
    v13 = v15;
    if (!v15)
    {

      v16 = 0;
      goto LABEL_7;
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__ENExposureDatabase__insertExposureDetectionFile_sessionID_connection_error___block_invoke;
  v19[3] = &unk_278FD2E40;
  v20 = v9;
  v21 = v10;
  v22 = v13;
  v17 = v13;
  v16 = [v11 executeSQL:@"INSERT INTO file_history (hash error:date bindingHandler:session_id enumerationHandler:{key_count, match_count, app_bundle_id, region_cc, region_sc, metadata) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", a6, v19, 0}];

LABEL_7:
  return v16;
}

void __78__ENExposureDatabase__insertExposureDetectionFile_sessionID_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) fileHash];
  ENSQLiteBindFoundationValue(a2, 1, v4);

  v5 = [*(a1 + 32) processDate];
  ENSQLiteBindFoundationValue(a2, 2, v5);

  sqlite3_bind_int64(a2, 3, [*(a1 + 40) longLongValue]);
  v6 = [*(a1 + 32) keyCount];
  sqlite3_bind_int64(a2, 4, [v6 longLongValue]);

  v7 = [*(a1 + 32) matchCount];

  if (v7)
  {
    v8 = [*(a1 + 32) matchCount];
    sqlite3_bind_int64(a2, 5, [v8 longLongValue]);
  }

  else
  {
    sqlite3_bind_null(a2, 5);
  }

  v9 = [*(a1 + 32) sourceAppBundleIdentifier];
  ENSQLiteBindFoundationValue(a2, 6, v9);

  v10 = [*(a1 + 32) sourceRegion];
  v11 = [v10 countryCode];
  ENSQLiteBindFoundationValue(a2, 7, v11);

  v12 = [*(a1 + 32) sourceRegion];
  v13 = [v12 subdivisionCode];
  ENSQLiteBindFoundationValue(a2, 8, v13);

  v14 = *(a1 + 48);

  ENSQLiteBindFoundationValue(a2, 9, v14);
}

uint64_t __89__ENExposureDatabase_enumerateExposureDetectionHistoryFilesForSessionUUID_error_handler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = [*(a1 + 32) longLongValue];

  return sqlite3_bind_int64(a2, 1, v3);
}

- (BOOL)getValue:(id *)a3 forKey:(id)a4 ofClass:(Class)a5 error:(id *)a6
{
  v10 = a4;
  if ([(ENExposureDatabase *)self _checkDatabaseOpenWithError:a6])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__9;
    v23 = __Block_byref_object_dispose__9;
    v24 = 0;
    connection = self->_connection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__ENExposureDatabase_getValue_forKey_ofClass_error___block_invoke;
    v15[3] = &unk_278FD2E90;
    v15[4] = self;
    v17 = &v19;
    v16 = v10;
    v18 = a5;
    v12 = [(ENSQLiteConnection *)connection performTransactionWithType:0 error:a6 usingBlock:v15];
    v13 = !v12;
    if (!a3)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      *a3 = v20[5];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __52__ENExposureDatabase_getValue_forKey_ofClass_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [*(a1 + 32) getValue:&obj forKey:*(a1 + 40) ofClass:v3 connection:a2 error:a3];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

- (BOOL)getValue:(id *)a3 forKey:(id)a4 ofClass:(Class)a5 connection:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__9;
  v41 = __Block_byref_object_dispose__9;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 3;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__ENExposureDatabase_getValue_forKey_ofClass_connection_error___block_invoke;
  v31[3] = &unk_278FD2C70;
  v13 = v11;
  v32 = v13;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__ENExposureDatabase_getValue_forKey_ofClass_connection_error___block_invoke_2;
  v30[3] = &unk_278FD2EB8;
  v30[4] = &v33;
  v30[5] = &v37;
  if ([v12 executeSQL:@"SELECT type error:value FROM kvs WHERE key LIKE ?" bindingHandler:a7 enumerationHandler:{v31, v30}])
  {
    if (v38[5])
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v34[3];
      if (v15 == 1)
      {
        v19 = v38[5];
        v29 = 0;
        v20 = [MEMORY[0x277CCAAC0] unarchivedObjectOfClass:a5 fromData:v19 error:&v29];
        v21 = v29;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 != 3 || (v16 = v38[5], (objc_opt_isKindOfClass() & 1) != 0))
          {
            v17 = 0;
            v18 = 1;
            goto LABEL_14;
          }

          v25 = v38[5];
          v26 = objc_opt_class();
          v19 = NSStringFromClass(v26);
          v27 = NSStringFromClass(a5);
          v17 = ENErrorF();

          v18 = 0;
LABEL_13:

LABEL_14:
          objc_autoreleasePoolPop(v14);
          if (v18)
          {
            v23 = v38[5];
            a7 = a3;
          }

          else
          {
            v23 = v17;
            if (!a7)
            {
LABEL_18:

              goto LABEL_19;
            }
          }

          *a7 = v23;
          goto LABEL_18;
        }

        v19 = v38[5];
        v28 = 0;
        v20 = [MEMORY[0x277CCAC50] propertyListWithData:v19 options:0 format:0 error:&v28];
        v21 = v28;
      }

      v17 = v21;
      v22 = v38[5];
      v38[5] = v20;

      v18 = v38[5] != 0;
      goto LABEL_13;
    }

    *a3 = 0;
    LOBYTE(v18) = 1;
  }

  else
  {
    LOBYTE(v18) = 0;
  }

LABEL_19:

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v18;
}

uint64_t __63__ENExposureDatabase_getValue_forKey_ofClass_connection_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(a2, 0);
  v4 = ENSQLiteColumnAsNaturalType(a2, 1);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 expiryDate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  connection = self->_connection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__ENExposureDatabase_setValue_forKey_expiryDate_error___block_invoke;
  v20[3] = &unk_278FD2EE0;
  v20[4] = self;
  v21 = v10;
  v23 = v12;
  v24 = v13;
  v22 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = [(ENSQLiteConnection *)connection performTransactionWithType:1 error:a6 usingBlock:v20];

  return v18;
}

uint64_t __55__ENExposureDatabase_setValue_forKey_expiryDate_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[7];
  v6 = a1[8];
  v8 = a1[6];
  v9 = MEMORY[0x277CBEAA0];
  v10 = a2;
  v11 = [v9 date];
  v12 = [v4 setValue:v5 forKey:v8 type:v6 expiryDate:v7 modDate:v11 connection:v10 error:a3];

  return v12;
}

- (BOOL)setPropertyListValue:(id)a3 forKey:(id)a4 expiryDate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__ENExposureDatabase_setPropertyListValue_forKey_expiryDate_error___block_invoke;
  v18[3] = &unk_278FD2F08;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  LOBYTE(a6) = [(ENSQLiteConnection *)connection performTransactionWithType:1 error:a6 usingBlock:v18];

  return a6;
}

uint64_t __67__ENExposureDatabase_setPropertyListValue_forKey_expiryDate_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = MEMORY[0x277CBEAA0];
  v9 = a2;
  v10 = [v8 date];
  v11 = [v4 setValue:v5 forKey:v6 type:2 expiryDate:v7 modDate:v10 connection:v9 error:a3];

  return v11;
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 type:(int64_t)a5 expiryDate:(id)a6 modDate:(id)a7 connection:(id)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = objc_autoreleasePoolPush();
  if (!v14)
  {
    goto LABEL_5;
  }

  if (a5 == 2)
  {
    v35 = 0;
    v20 = [MEMORY[0x277CCAC50] dataWithPropertyList:v14 format:200 options:0 error:&v35];
    v21 = v35;
    goto LABEL_7;
  }

  if (a5 != 1)
  {
LABEL_5:
    v22 = 0;
    goto LABEL_9;
  }

  v36 = 0;
  v20 = [MEMORY[0x277CCAAB8] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v36];
  v21 = v36;
LABEL_7:
  v22 = v21;

  if (!v20)
  {
    v23 = 0;
    v24 = 0;
    goto LABEL_10;
  }

  v14 = v20;
LABEL_9:
  v34 = v22;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__ENExposureDatabase_setValue_forKey_type_expiryDate_modDate_connection_error___block_invoke;
  v28[3] = &unk_278FD2F30;
  v29 = v15;
  v23 = v14;
  v30 = v23;
  v33 = a5;
  v31 = v17;
  v32 = v16;
  v24 = [v18 executeSQL:@"INSERT OR REPLACE INTO kvs(key error:value bindingHandler:type enumerationHandler:{mod_date, expiration_date) VALUES (?, ?, ?, ?, ?)", &v34, v28, 0}];
  v25 = v34;

  v22 = v25;
LABEL_10:
  objc_autoreleasePoolPop(v19);
  if (a9 && !v24 && v22)
  {
    v26 = v22;
    *a9 = v22;
  }

  return v24;
}

void __79__ENExposureDatabase_setValue_forKey_type_expiryDate_modDate_connection_error___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  ENSQLiteBindFoundationValue(a2, 1, *(a1 + 32));
  ENSQLiteBindFoundationValue(a2, 2, *(a1 + 40));
  sqlite3_bind_int64(a2, 3, *(a1 + 64));
  ENSQLiteBindFoundationValue(a2, 4, *(a1 + 48));
  v4 = *(a1 + 56);

  ENSQLiteBindFoundationValue(a2, 5, v4);
}

uint64_t __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 1, v3);
}

uint64_t __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];

  return sqlite3_bind_double(a2, 1, v3);
}

- (void)purgeAllAndCloseWithReason:(id)a3
{
  v4 = a3;
  if (gLogCategory_ENExposureDatabase <= 50 && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDatabase purgeAllAndCloseWithReason:?];
  }

  connection = self->_connection;
  if (!connection)
  {
    goto LABEL_11;
  }

  v9 = 0;
  v6 = [(ENSQLiteConnection *)connection truncateWithError:&v9];
  v7 = v9;
  v8 = v7;
  if (!v6)
  {
    if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      [ENExposureDatabase purgeAllAndCloseWithReason:];
    }

LABEL_11:
    [(ENExposureDatabase *)self close];
    [ENExposureDatabase _obliterateDatabaseAtURL:self->_databaseURL reason:v4 generateStackshot:0];
    goto LABEL_12;
  }

  [(ENExposureDatabase *)self close];
LABEL_12:
}

+ (void)_obliterateDatabaseAtURL:(id)a3 reason:(id)a4 generateStackshot:(BOOL)a5
{
  v5 = a5;
  v43[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    [ENExposureDatabase _obliterateDatabaseAtURL:a2 reason:a1 generateStackshot:?];
  }

  if (v5)
  {
    v11 = 115;
  }

  else
  {
    v11 = 50;
  }

  if (v11 >= gLogCategory_ENExposureDatabase && (gLogCategory_ENExposureDatabase != -1 || _LogCategory_Initialize()))
  {
    [ENExposureDatabase _obliterateDatabaseAtURL:v9 reason:? generateStackshot:?];
  }

  v35 = v10;
  v36 = v9;
  v43[0] = [v9 path];
  v12 = [v43[0] stringByAppendingString:@"-wal"];
  v43[1] = v12;
  v34 = v43[0];
  v13 = [v43[0] stringByAppendingString:@"-shm"];
  v43[2] = v13;
  v14 = [MEMORY[0x277CBEA68] arrayWithObjects:v43 count:3];

  v15 = objc_alloc_init(MEMORY[0x277CCAA08]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
  v18 = &unk_281346000;
  if (v17)
  {
    v19 = v17;
    v20 = *v39;
    v21 = *MEMORY[0x277CCA048];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v38 + 1) + 8 * i);
        v37 = 0;
        v24 = [v15 removeItemAtPath:v23 error:{&v37, v32, v33}];
        v25 = v37;
        v26 = v25;
        if (v24)
        {
          v27 = v18[126];
          if (v27 <= 50 && (v27 != -1 || _LogCategory_Initialize()))
          {
            +[ENExposureDatabase _obliterateDatabaseAtURL:reason:generateStackshot:];
          }

          goto LABEL_30;
        }

        v28 = [v25 domain];
        if (![v28 isEqualToString:v21])
        {

LABEL_23:
          if (gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
          {
            v32 = v23;
            v33 = v26;
            LogPrintF_safe();
          }

          goto LABEL_30;
        }

        if ([v26 code] == 4)
        {

          goto LABEL_30;
        }

        v29 = [v26 code];

        v30 = v29 == 260;
        v18 = &unk_281346000;
        if (!v30)
        {
          goto LABEL_23;
        }

LABEL_30:
      }

      v19 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v19);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (int64_t)_updateExistingPersistentKeyIfNecessary:(id)a3 replacementKey:(id)a4 existingKeyID:(int64_t)a5 connection:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v12 originalReportType];
  v14 = [v12 key];
  v15 = [v14 diagnosisReportType];

  v16 = [v11 key];
  v17 = [v16 diagnosisReportType];

  v18 = [v12 key];

  v19 = [v18 variantOfConcernType];
  v20 = [v11 key];

  v21 = [v20 variantOfConcernType];
  v22 = 4;
  if (v13 && v13 == v15 && !v19)
  {
    v23 = ENCompareDiagnosisReportTypes();
    if (v23 != -1)
    {
      if (v23)
      {
        v22 = 4;
        if (!v21)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v22 = 2;
        if (!v21)
        {
          goto LABEL_10;
        }
      }
    }

    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_9_0();
    v28[2] = __108__ENExposureDatabase__updateExistingPersistentKeyIfNecessary_replacementKey_existingKeyID_connection_error___block_invoke;
    v28[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
    v29 = v17;
    v30 = v21;
    v28[4] = a5;
    if (OUTLINED_FUNCTION_7_0(v24, v25, @"UPDATE teks SET (report_type, variant_of_concern_type) = (?, ?) WHERE ROWID = ?", v26, v28))
    {
      v22 = 3;
    }

    else
    {
      v22 = 0;
    }
  }

LABEL_10:

  return v22;
}

- (BOOL)enumerateMatchedAdvertisementsWithError:(id *)a3 handler:(id)a4
{
  OUTLINED_FUNCTION_5_2();
  v8 = v7;
  if (OUTLINED_FUNCTION_6_1())
  {
    v9 = *(v6 + 24);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_9_0();
    v20 = __70__ENExposureDatabase_enumerateMatchedAdvertisementsWithError_handler___block_invoke;
    v21 = &unk_278FD2D08;
    v22 = v6;
    v23 = v4;
    v10 = [v9 performTransactionWithType:0 error:v5 usingBlock:v19];
    OUTLINED_FUNCTION_10_0(v10, v11, v12, v13, v14, v15, v16, v17, v19[0], v19[1], v20, v21, v22, v23);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)upsertExposureDetectionHistorySession:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (OUTLINED_FUNCTION_6_1())
  {
    connection = self->_connection;
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_9_0();
    v19 = __66__ENExposureDatabase_upsertExposureDetectionHistorySession_error___block_invoke;
    v20 = &unk_278FD2DC8;
    v21 = self;
    v22 = v4;
    v9 = [(ENSQLiteConnection *)connection performTransactionWithType:1 error:a4 usingBlock:v18];
    OUTLINED_FUNCTION_10_0(v9, v10, v11, v12, v13, v14, v15, v16, v18[0], v18[1], v19, v20, v21, v22);
  }

  else
  {
    LOBYTE(a4) = 0;
  }

  return a4;
}

- (BOOL)enumerateExposureDetectionHistorySessionsWithError:(id *)a3 handler:(id)a4
{
  OUTLINED_FUNCTION_5_2();
  v8 = v7;
  if (OUTLINED_FUNCTION_6_1())
  {
    v9 = *(v6 + 24);
    OUTLINED_FUNCTION_0_9();
    v21 = 3221225472;
    v22 = __81__ENExposureDatabase_enumerateExposureDetectionHistorySessionsWithError_handler___block_invoke;
    v23 = &unk_278FD2DF0;
    v24 = v4;
    v10 = [v9 executeSQL:@"SELECT uuid error:date bindingHandler:app_bundle_id enumerationHandler:{region_cc, region_sc, file_count, match_count, build, exp_class FROM session_history ORDER BY date DESC", v5, 0, &v20}];
    OUTLINED_FUNCTION_10_0(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __81__ENExposureDatabase_enumerateExposureDetectionHistorySessionsWithError_handler___block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = ENSQLiteColumnAsUUID(a2, 0);
  v5 = 1;
  v6 = ENSQLiteColumnAsDate(a2, 1);
  v7 = v6;
  if (v4 && v6)
  {
    v8 = [objc_alloc(MEMORY[0x277CC5C48]) initWithUUID:v4];
    [v8 setDate:v7];
    v9 = ENSQLiteColumnAsString(a2, 2);
    [v8 setAppBundleIdentifier:v9];

    v10 = ENSQLiteColumnAsString(a2, 3);
    v11 = ENSQLiteColumnAsString(a2, 4);
    if (v10)
    {
      [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v10 subdivisionCode:v11];
      [OUTLINED_FUNCTION_4_2() setRegion:?];
    }

    [v8 setFileCount:{sqlite3_column_int64(a2, 5)}];
    [v8 setMatchCount:{sqlite3_column_int64(a2, 6)}];
    ENSQLiteColumnAsString(a2, 7);
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_4_2() setSystemBuildVersion:?];

    ENSQLiteColumnAsString(a2, 8);
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_5() setExposureClassificationIdentifier:?];

    v13 = 0;
    (*(*(a1 + 32) + 16))();
    v5 = v13 ^ 1;
  }

  return v5 & 1;
}

- (BOOL)insertExposureDetectionFile:(id)a3 session:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(ENExposureDatabase *)self _checkDatabaseOpenWithError:a5])
  {
    connection = self->_connection;
    OUTLINED_FUNCTION_0_9();
    v13 = v9;
    v14 = v8;
    v11 = OUTLINED_FUNCTION_8_0();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __64__ENExposureDatabase_insertExposureDetectionFile_session_error___block_invoke()
{
  OUTLINED_FUNCTION_5_2();
  v4 = v3;
  v5 = *(v1 + 32);
  [*(v1 + 40) UUID];
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_2_5() _sessionIDForUUID:? connection:? error:?];

  if (v6)
  {
    v7 = [*(v1 + 32) _insertExposureDetectionFile:*(v1 + 48) sessionID:v6 connection:v4 error:v0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)enumerateExposureDetectionHistoryFilesForSessionUUID:(id)a3 error:(id *)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(ENExposureDatabase *)self _checkDatabaseOpenWithError:a4])
  {
    connection = self->_connection;
    OUTLINED_FUNCTION_0_9();
    v13 = v8;
    v14 = v9;
    v11 = OUTLINED_FUNCTION_8_0();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __89__ENExposureDatabase_enumerateExposureDetectionHistoryFilesForSessionUUID_error_handler___block_invoke()
{
  OUTLINED_FUNCTION_5_2();
  v4 = [*(v2 + 32) _sessionIDForUUID:*(v1 + 40) connection:v3 error:v0];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(v1 + 32) + 24);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__ENExposureDatabase_enumerateExposureDetectionHistoryFilesForSessionUUID_error_handler___block_invoke_2;
    v11[3] = &unk_278FD2C70;
    v11[4] = v4;
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_9_0();
    v9[2] = __89__ENExposureDatabase_enumerateExposureDetectionHistoryFilesForSessionUUID_error_handler___block_invoke_3;
    v9[3] = &unk_278FD2DF0;
    v10 = *(v1 + 48);
    v7 = [v6 executeSQL:@"SELECT hash error:date bindingHandler:key_count enumerationHandler:{match_count, app_bundle_id, region_cc, region_sc, metadata FROM file_history WHERE session_id=? ORDER BY date DESC", v0, v11, v9}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __89__ENExposureDatabase_enumerateExposureDetectionHistoryFilesForSessionUUID_error_handler___block_invoke_3(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = ENSQLiteColumnAsData(a2, 0);
  v5 = ENSQLiteColumnAsDate(a2, 1);
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CC5C40]);
    [v7 setFileHash:v4];
    [v7 setProcessDate:v6];
    v8 = MEMORY[0x277CCABA8];
    [MEMORY[0x277CCABA8] numberWithLongLong:{sqlite3_column_int64(a2, 2)}];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_5() setKeyCount:?];

    if (sqlite3_column_type(a2, 3) != 5)
    {
      v8 = MEMORY[0x277CCABA8];
      [MEMORY[0x277CCABA8] numberWithLongLong:{sqlite3_column_int64(a2, 3)}];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_5() setMatchCount:?];
    }

    ENSQLiteColumnAsString(a2, 4);
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_5() setSourceAppBundleIdentifier:?];

    v9 = ENSQLiteColumnAsString(a2, 5);
    v10 = ENSQLiteColumnAsString(a2, 6);
    if (v9)
    {
      [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v9 subdivisionCode:v10];
      [OUTLINED_FUNCTION_4_2() setSourceRegion:?];
    }

    v11 = ENSQLiteColumnAsData(a2, 7);
    if (!v11)
    {
      goto LABEL_21;
    }

    v15 = 0;
    v12 = [MEMORY[0x277CCAC50] propertyListWithData:v11 options:0 format:0 error:&v15];
    v13 = v15;
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setMetadata:v12];
LABEL_20:

LABEL_21:
        (*(*(a1 + 32) + 16))(*(a1 + 32));

        goto LABEL_22;
      }

      if (gLogCategory__ENExposureDatabase > 90 || gLogCategory__ENExposureDatabase == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_20;
      }
    }

    else if (gLogCategory__ENExposureDatabase > 90 || gLogCategory__ENExposureDatabase == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_20;
    }

    LogPrintF_safe();
    goto LABEL_20;
  }

LABEL_22:

  return 1;
}

- (BOOL)deleteExposureDetectionHistoryWithError:(id *)a3
{
  if (![(ENExposureDatabase *)self _checkDatabaseOpenWithError:?])
  {
    return 0;
  }

  v5 = [(ENSQLiteConnection *)self->_connection executeUncachedSQL:@"DELETE FROM session_history" error:a3];
  connection = self->_connection;
  v10 = 0;
  v7 = [(ENSQLiteConnection *)connection executeUncachedSQL:@"PRAGMA wal_checkpoint(TRUNCATE)" error:&v10];
  v8 = v10;
  if (!v7 && gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  return v5;
}

- (BOOL)purgeRecordsWithInterval:(double)a3 nowDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  if ([(ENExposureDatabase *)self _checkDatabaseOpenWithError:a5])
  {
    v9 = [v8 dateByAddingTimeInterval:-a3];
    [v9 timeIntervalSinceReferenceDate];
    v11 = ((v10 + *MEMORY[0x277CBECD8]) / 600.0);
    connection = self->_connection;
    v18[1] = MEMORY[0x277D85DD0];
    v18[2] = 3221225472;
    v18[3] = __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke;
    v18[4] = &unk_278FD2F78;
    v21 = v11;
    v19 = v8;
    v13 = v9;
    v20 = v13;
    v14 = OUTLINED_FUNCTION_8_0();
    v15 = self->_connection;
    v18[0] = 0;
    LOBYTE(connection) = [(ENSQLiteConnection *)v15 executeUncachedSQL:@"PRAGMA wal_checkpoint(TRUNCATE)" error:v18];
    v16 = v18[0];
    if ((connection & 1) == 0 && gLogCategory__ENExposureDatabase <= 90 && (gLogCategory__ENExposureDatabase != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke()
{
  OUTLINED_FUNCTION_5_2();
  v3 = v2;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke_2;
  v25[3] = &__block_descriptor_36_e23_v16__0__sqlite3_stmt__8l;
  v26 = *(v1 + 48);
  if ([v3 executeSQL:@"DELETE FROM teks WHERE end <= ?" error:v0 bindingHandler:v25 enumerationHandler:0])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke_3;
    v23[3] = &unk_278FD2C70;
    v24 = *(v1 + 32);
    if (OUTLINED_FUNCTION_7_0(v24, v4, @"DELETE FROM kvs WHERE expiration_date IS NOT NULL AND expiration_date <= ?", v5, v23))
    {
      OUTLINED_FUNCTION_0_9();
      v19 = 3221225472;
      v20 = __61__ENExposureDatabase_purgeRecordsWithInterval_nowDate_error___block_invoke_4;
      v21 = &unk_278FD2C70;
      v22 = *(v1 + 40);
      v8 = OUTLINED_FUNCTION_7_0(v22, v6, @"DELETE FROM session_history WHERE date < ?", v7, &v18);
      OUTLINED_FUNCTION_10_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENExposureDatabase.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"databaseURL != nil"}];
}

- (void)_reallyOpenDatabaseWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENExposureDatabase.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"_connection == nil"}];
}

- (void)_reallyOpenDatabaseWithError:(id *)a1 .cold.2(id *a1)
{
  v1 = [*a1 path];
  LogPrintF_safe();
}

- (void)_reallyOpenDatabaseWithError:(id *)a1 .cold.3(id *a1)
{
  v1 = [*a1 path];
  LogPrintF_safe();
}

- (void)_createOrMigrateSchemaFromVersion:error:.cold.2()
{
  v0 = CUPrintNSError();
  LogPrintF_safe();
}

- (void)purgeAllAndCloseWithReason:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [*(a1 + 8) path];
  LogPrintF_safe();
}

+ (void)_obliterateDatabaseAtURL:(uint64_t)a1 reason:(uint64_t)a2 generateStackshot:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA888] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENExposureDatabase.m" lineNumber:1211 description:{@"Invalid parameter not satisfying: %@", @"databaseURL != nil"}];
}

+ (void)_obliterateDatabaseAtURL:(void *)a1 reason:generateStackshot:.cold.2(void *a1)
{
  v1 = [a1 path];
  LogPrintF_safe();
}

@end