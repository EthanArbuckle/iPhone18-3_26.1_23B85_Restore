@interface CPMLDB
+ (id)getConfigurationFromPlist:(id)a3;
- (BOOL)loadStatisticTable;
- (BOOL)logBatchNSArray:(id)a3;
- (BOOL)logBatchNSDictionary:(id)a3;
- (BOOL)logCTypesV:(void *)a3;
- (BOOL)logNSArray:(id)a3;
- (BOOL)logNSDataDouble:(id)a3;
- (BOOL)logNSDataFloat:(id)a3;
- (BOOL)logNSDictionary:(id)a3;
- (BOOL)logNSObjectV:(id)a3;
- (BOOL)reset;
- (double)columnQueryFor:(unsigned int)a3 withQuery:(id)a4;
- (double)updateStatisticsString:(id)a3 colPosition:(unint64_t)a4;
- (id)addValues:(int)a3;
- (id)extractRow:(id)a3;
- (id)fileProtectionClassRequest:(id)a3;
- (id)prepInsertStatementForMainTable;
- (unint64_t)getCardinality:(unsigned int)a3;
- (unint64_t)getRowCount;
- (void)addColumnToTable:(id)a3 withNewColumn:(id)a4;
- (void)createTable:(id)a3 withSchema:(id)a4 withExistingTable:(BOOL)a5;
- (void)dealloc;
- (void)deleteAllRows:(id)a3;
- (void)deleteRow:(id)a3 whereMatch:(id)a4;
- (void)doInitCommon:(id)a3 withDict:(id)a4 withFileExists:(BOOL *)a5 withWriteOptions:(int)a6;
- (void)dropCommands:(id)a3;
- (void)execSQLCommand:(id)a3;
- (void)flushDB;
- (void)indexTable:(id)a3 withColumn:(id)a4;
- (void)initMaxSizeStatistics:(unint64_t)a3;
- (void)initStatisticsTable;
- (void)insertIntoTable:(id)a3 withTuple:(id)a4;
- (void)loadTables;
- (void)printFormat:(id)a3;
- (void)queryDatabase:(id)a3 whereMatch:(id)a4;
- (void)removeTrainingRow:(id)a3;
- (void)removeTrainingRowData:(double)a3;
- (void)restart;
- (void)updateStatistics;
- (void)updateStatisticsReal:(double)a3 colPosition:(unint64_t)a4;
- (void)updateTable:(id)a3 withAttribute:(id)a4 whereMatch:(id)a5;
@end

@implementation CPMLDB

- (void)initMaxSizeStatistics:(unint64_t)a3
{
  self->maxFieldCount = a3;
  self->rowCount = 0;
  self->repFields = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->cardinality = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->min = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->max = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->mean = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->sumOfX = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->sumOfXX = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  self->sigma = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
}

+ (id)getConfigurationFromPlist:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
    if (v4)
    {
      v7 = 0;
      v8 = 100;
      v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:&v8 error:&v7];

      goto LABEL_6;
    }

    NSLog(&cfstr_SCannotOpenFil.isa, "+[CPMLDB getConfigurationFromPlist:]");
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)doInitCommon:(id)a3 withDict:(id)a4 withFileExists:(BOOL *)a5 withWriteOptions:(int)a6
{
  v36 = a3;
  v11 = a4;
  if (!self->_dispatch_queue)
  {
    v12 = dispatch_queue_create("com.apple.coreprediction.tdb", 0);
    dispatch_queue = self->_dispatch_queue;
    self->_dispatch_queue = v12;
  }

  *&self->commitCountMax = 1000;
  objc_storeStrong(&self->_dbFileName, a3);
  v14 = [v11 objectForKey:@"loggingMode"];
  v15 = v14;
  if (v14 || (v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cpml"], objc_msgSend(v16, "objectForKey:", @"loggingMode"), v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
  {
    CPMLLog = CPMLLog::getCPMLLog(v14);
    CPMLLog[10] = [v15 longLongValue];
  }

  v18 = [v11 objectForKey:@"commitCountMax"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 intValue];
  }

  else
  {
    v20 = 100;
  }

  self->commitCountMax = v20;
  v21 = [v11 objectForKey:@"minTimeToLogIndex"];
  v22 = v21;
  if (v21)
  {
    [v21 doubleValue];
  }

  else
  {
    v23 = 86400.0;
  }

  self->minTimeToLogIndex = v23;
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  vectorListCardinality = self->vectorListCardinality;
  self->vectorListCardinality = v24;

  v26 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"MAIN_TABLE"];
  dbTableName = self->dbTableName;
  self->dbTableName = v26;

  v28 = [[CPMLSchema alloc] initWithPlist:v11];
  cpSchema = self->cpSchema;
  self->cpSchema = v28;

  if (sqlite3_open([v36 UTF8String], &self->db))
  {
    NSLog(&cfstr_CannotOpen.isa, v36);
    sqlite3_close(self->db);
  }

  else
  {
    v30 = [MEMORY[0x277CCAA00] defaultManager];
    *a5 = [v30 fileExistsAtPath:v36];

    if (!*a5)
    {
      [(CPMLDB *)self createTable:@"version" withSchema:@"version TEXT" withExistingTable:0];
      [(CPMLDB *)self insertIntoTable:@"version" withTuple:@"(version) values(1.0.0);"];
    }

    [(CPMLDB *)self initMaxSizeStatistics:[(CPMLSchema *)self->cpSchema getTotalAttributes]];
    if ((a6 & 0xFFFFFFFD) == 1)
    {
      if (![(CPMLDB *)self loadStatisticTable])
      {
        [(CPMLDB *)self initStatisticsTable];
      }

      [(CPMLDB *)self createTable:@"DATEINDEX" withSchema:@"pkeyIndex INTEGER withExistingTable:date REAL", 1];
      v31 = self->dbTableName;
      v32 = [(CPMLSchema *)self->cpSchema schemaHeaderWithType];
      [(CPMLDB *)self createTable:v31 withSchema:v32 withExistingTable:1];
    }

    else
    {
      [(CPMLDB *)self createTable:@"DATEINDEX" withSchema:@"pkeyIndex INTEGER withExistingTable:date REAL", 0];
      v33 = self->dbTableName;
      v32 = [(CPMLSchema *)self->cpSchema schemaHeaderWithType];
      [(CPMLDB *)self createTable:v33 withSchema:v32 withExistingTable:0];
    }

    v34 = self->dbTableName;
    v35 = [(CPMLSchema *)self->cpSchema indexColumnList];
    [(CPMLDB *)self indexTable:v34 withColumn:v35];

    [(CPMLDB *)self loadTables];
  }
}

- (void)loadTables
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"select date from %@ ORDER BY pkey DESC LIMIT 1;", @"DATEINDEX"];
  ppStmt = 0;
  if (sqlite3_prepare_v2(self->db, [v3 UTF8String], objc_msgSend(v3, "length"), &ppStmt, 0))
  {
    NSLog(&cfstr_SPrepareFail.isa, "[CPMLDB loadTables]");
  }

  v4 = sqlite3_step(ppStmt);
  if (v4 != 101)
  {
    if (v4 == 100)
    {
      self->currentTimeInterval = sqlite3_column_double(ppStmt, 0);
    }

    else
    {
      NSLog(&cfstr_Columnqueryfor.isa, v4);
    }
  }

  sqlite3_finalize(ppStmt);
}

- (void)dealloc
{
  [(CPMLDB *)self restart];
  v3.receiver = self;
  v3.super_class = CPMLDB;
  [(CPMLDB *)&v3 dealloc];
}

- (void)restart
{
  db = self->db;
  if (db)
  {
    sqlite3_close(db);
  }

  repFields = self->repFields;
  if (repFields)
  {
    free(repFields);
  }

  cardinality = self->cardinality;
  if (cardinality)
  {
    free(cardinality);
  }

  min = self->min;
  if (min)
  {
    free(min);
  }

  max = self->max;
  if (max)
  {
    free(max);
  }

  mean = self->mean;
  if (mean)
  {
    free(mean);
  }

  sumOfX = self->sumOfX;
  if (sumOfX)
  {
    free(sumOfX);
  }

  sumOfXX = self->sumOfXX;
  if (sumOfXX)
  {
    free(sumOfXX);
  }

  sigma = self->sigma;
  if (sigma)
  {
    free(sigma);
  }

  self->maxFieldCount = 0;
  *&self->commitCountMax = 0;
  self->rowCount = 0;
  cpSchema = self->cpSchema;
  self->cpSchema = 0;

  indexer = self->indexer;
  self->indexer = 0;

  vectorListCardinality = self->vectorListCardinality;
  self->vectorListCardinality = 0;

  dbTableName = self->dbTableName;
  self->dbTableName = 0;

  self->currentTimeInterval = 0.0;
  self->minTimeToLogIndex = 0.0;
}

- (void)flushDB
{
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__CPMLDB_flushDB__block_invoke;
  block[3] = &unk_278E9EED8;
  block[4] = self;
  dispatch_sync(dispatch_queue, block);
}

void __17__CPMLDB_flushDB__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 28))
  {
    errmsg = 0;
    v3 = sqlite3_exec(*(v1 + 192), "END TRANSACTION;", callbackDBResponse, 0, &errmsg);
    if (v3)
    {
      CPMLLog = CPMLLog::getCPMLLog(v3);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "[CPMLDB flushDB]_block_invoke", "SQL End TransactionError %s.", errmsg);
      sqlite3_free(errmsg);
    }

    *(*(a1 + 32) + 28) = 0;
  }
}

- (id)prepInsertStatementForMainTable
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithFormat:", @"INSERT INTO MAIN_TABLE VALUES(");
  v4 = [(CPMLSchema *)self->cpSchema getTotalAttributes];
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = 1;
    v7 = v4;
    do
    {
      if (v5 <= v6)
      {
        v8 = @"?";
      }

      else
      {
        v8 = @"?,";
      }

      [v3 appendString:v8];
      ++v6;
      --v7;
    }

    while (v7);
  }

  [v3 appendString:{@", $pKey;"}]);

  return v3;
}

- (BOOL)logCTypesV:(void *)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = &v16;
  v6 = 0;
  if (a3)
  {
    v7 = a3;
    do
    {
      if (a3 >= 2)
      {
        v8 = [(CPMLSchema *)self->cpSchema getColumnName:v6];
        v9 = [(CPMLSchema *)self->cpSchema getSchemaType:v6];
        switch(v9)
        {
          case 3:
            v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:*v7];
            break;
          case 4:
            v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:*v7];
            break;
          case 5:
            v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v7 encoding:4];
            break;
          default:
            NSLog(&cfstr_SNoSupport.isa, "[CPMLDB logCTypesV:]");

LABEL_15:
            v13 = 0;
            goto LABEL_16;
        }

        v11 = v10;
        [v5 setObject:v10 forKey:v8];
        ++v6;
      }

      v12 = v15++;
      v7 = *v12;
    }

    while (*v12);
  }

  if (v6 != [(CPMLSchema *)self->cpSchema getTotalAttributes])
  {
    NSLog(&cfstr_SColumnCountDo.isa, "[CPMLDB logCTypesV:]");
    goto LABEL_15;
  }

  v13 = [(CPMLDB *)self logNSDictionary:v5];
LABEL_16:

  return v13;
}

- (BOOL)logNSObjectV:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = &v16;
  v6 = v4;
  v7 = v6;
  v8 = 0;
  if (v6)
  {
    v9 = v6;
    do
    {
      v10 = [(CPMLSchema *)self->cpSchema getColumnName:v8];
      [v5 setObject:v9 forKey:v10];
      ++v8;

      v11 = v15++;
      v12 = *v11;

      v9 = v12;
    }

    while (v12);
  }

  if ([(CPMLSchema *)self->cpSchema getTotalAttributes]!= v8 + 1)
  {
    NSLog(&cfstr_SInsufficientP.isa, "[CPMLDB logNSObjectV:]");
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (v8 != [(CPMLSchema *)self->cpSchema getTotalAttributes])
  {
    NSLog(&cfstr_SColumnCountDo.isa, "[CPMLDB logNSObjectV:]");
    goto LABEL_9;
  }

  v13 = [(CPMLDB *)self logNSDictionary:v5];
LABEL_10:

  return v13;
}

- (BOOL)logNSArray:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 <= [(CPMLSchema *)self->cpSchema getTotalAttributes])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    for (i = 0; ; ++i)
    {
      v9 = [v4 count];
      cpSchema = self->cpSchema;
      if (i >= v9)
      {
        break;
      }

      v11 = [(CPMLSchema *)cpSchema getColumnName:i];
      v12 = [v4 objectAtIndex:i];
      [v7 setObject:v12 forKey:v11];
    }

    v13 = [(CPMLSchema *)cpSchema getTotalAttributes];
    if (v13 == [v4 count])
    {
      v6 = [(CPMLDB *)self logNSDictionary:v7];
    }

    else
    {
      NSLog(&cfstr_SInsufficientP.isa, "[CPMLDB logNSArray:]");
      v6 = 0;
    }
  }

  else
  {
    NSLog(&cfstr_SErrorCannotLo.isa, "[CPMLDB logNSArray:]");
    v6 = 0;
  }

  return v6;
}

- (BOOL)logBatchNSArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![(CPMLDB *)self logNSArray:*(*(&v11 + 1) + 8 * i)])
        {
          NSLog(&cfstr_SFailedToBatch.isa, "[CPMLDB logBatchNSArray:]");
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)logNSDictionary:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  dispatch_queue = self->_dispatch_queue;
  block = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __26__CPMLDB_logNSDictionary___block_invoke;
  v16 = &unk_278E9EE88;
  v17 = self;
  v6 = v4;
  v18 = v6;
  v19 = &v20;
  dispatch_sync(dispatch_queue, &block);
  [(CPMLDB *)self initStatisticsTable];
  [(CPMLDB *)self updateStatistics];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v8 = v7;
  if (v7 > self->currentTimeInterval + self->minTimeToLogIndex)
  {
    self->currentTimeInterval = v7;
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [v9 initWithFormat:@"(%@) VALUES(%d, %f);", @"pKeyIndex, date", self->rowCount, *&v8, block, v14, v15, v16, v17];
    [(CPMLDB *)self insertIntoTable:@"DATEINDEX" withTuple:v10];
  }

  v11 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __26__CPMLDB_logNSDictionary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 28))
  {
    ppStmt = 0;
    v5 = sqlite3_exec(*(v2 + 192), "BEGIN TRANSACTION;", callbackDBResponse, 0, &ppStmt);
    if (v5)
    {
      CPMLLog = CPMLLog::getCPMLLog(v5);
      CPMLLog::log(CPMLLog, CPML_LOG_ERR, "[CPMLDB logNSDictionary:]_block_invoke", "SQL Begin TransactionError %s.", ppStmt);
      sqlite3_free(ppStmt);
      return;
    }

    v2 = *(a1 + 32);
  }

  v3 = [*(v2 + 96) getTotalAttributes];
  if (v3 != [*(a1 + 40) count])
  {
    NSLog(&cfstr_SInsufficientP.isa, "[CPMLDB logNSDictionary:]_block_invoke");
    return;
  }

  ++*(*(a1 + 32) + 32);
  v4 = [*(a1 + 32) prepInsertStatementForMainTable];
  ppStmt = 0;
  if (!sqlite3_prepare_v2(*(*(a1 + 32) + 192), [v4 UTF8String], objc_msgSend(v4, "length"), &ppStmt, 0))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __26__CPMLDB_logNSDictionary___block_invoke_2;
    v13[3] = &unk_278E9EF00;
    v7 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v13[5] = ppStmt;
    [v7 enumerateKeysAndObjectsUsingBlock:v13];
    v8 = sqlite3_step(ppStmt);
    if (v8 != 101)
    {
      --*(*(a1 + 32) + 32);
      NSLog(&cfstr_SErrorIteratin.isa, "[CPMLDB logNSDictionary:]_block_invoke", v8);
      goto LABEL_16;
    }

    sqlite3_finalize(ppStmt);
    ++*(*(a1 + 32) + 28);
    v9 = *(a1 + 32);
    if (*(v9 + 28) == *(v9 + 24))
    {
      errmsg = 0;
      v10 = sqlite3_exec(*(v9 + 192), "END TRANSACTION;", callbackDBResponse, 0, &errmsg);
      if (v10)
      {
        v11 = CPMLLog::getCPMLLog(v10);
        CPMLLog::log(v11, CPML_LOG_ERR, "[CPMLDB logNSDictionary:]_block_invoke", "SQL End TransactionError %s.", errmsg);
        sqlite3_free(errmsg);
        goto LABEL_16;
      }

      *(*(a1 + 32) + 28) = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_16;
  }

  NSLog(&cfstr_SPrepareFail.isa, "[CPMLDB logNSDictionary:]_block_invoke");
LABEL_16:
}

void __26__CPMLDB_logNSDictionary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 96) getColumnPosition:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(*(a1 + 32) + 96) matchSubstituteValue:v7 theValue:v6];
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    if ((v9 & 1) != 0 || [v6 isEqualToString:&stru_2859288F8])
    {
      v10 = [*(*(a1 + 32) + 96) getSubstituteValue:v7];

      v6 = v10;
    }

    if ([*(*(a1 + 32) + 96) isStringType:v7])
    {
      sqlite3_bind_text(*(a1 + 40), v7 + 1, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      NSLog(&cfstr_SStringIncorre.isa, "[CPMLDB logNSDictionary:]_block_invoke_2");
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [*(*(a1 + 32) + 96) matchSubstituteValue:v7 theValue:v6] ^ 1;
      if (!v6)
      {
        LOBYTE(v11) = 0;
      }

      if ((v11 & 1) == 0)
      {
        v12 = [*(*(a1 + 32) + 96) getSubstituteValue:v7];
        v13 = objc_alloc(MEMORY[0x277CCABB0]);
        if (v12)
        {
          [v12 doubleValue];
        }

        else
        {
          v14 = *(*(*(a1 + 32) + 64) + 8 * v7);
        }

        v22 = [v13 initWithDouble:v14];

        v6 = v22;
      }

      v23 = *(a1 + 32);
      [v6 doubleValue];
      [v23 updateStatisticsReal:v7 colPosition:?];
      if ([*(*(a1 + 32) + 96) isRealType:v7])
      {
        v24 = *(a1 + 40);
        [v6 doubleValue];
        sqlite3_bind_double(v24, v7 + 1, v25);
      }

      else if ([*(*(a1 + 32) + 96) isIntType:v7])
      {
        sqlite3_bind_int(*(a1 + 40), v7 + 1, [v6 unsignedIntValue]);
      }

      else
      {
        NSLog(&cfstr_SNsnumberIncor.isa, "[CPMLDB logNSDictionary:]_block_invoke_2");
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([*(*(a1 + 32) + 96) isVectorType:v7])
        {
          if ([*(*(a1 + 32) + 96) getVectorContent:v7] == 5)
          {
            v29 = 83;
            v15 = objc_alloc_init(MEMORY[0x277CBEB28]);
            v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"key%d", v7];
            v16 = [*(*(a1 + 32) + 112) objectForKey:v26];
            [v15 appendBytes:&v29 length:1];
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
              [*(*(a1 + 32) + 112) setObject:? forKey:?];
            }

            v28 = [v6 count];
            [v15 appendBytes:&v28 length:8];
            for (i = 0; i < [v6 count]; ++i)
            {
              v18 = [v6 objectAtIndex:i];
              v19 = [v16 objectForKey:v18];
              if (!v19)
              {
                v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:1];
                [v16 setObject:v20 forKey:v18];
              }

              v27 = [v18 length] + 1;
              [v15 appendBytes:&v27 length:8];
              v21 = [v18 UTF8String];
              [v15 appendBytes:v21 length:v27];
            }

            sqlite3_bind_blob(*(a1 + 40), v7 + 1, [v15 mutableBytes], objc_msgSend(v15, "length"), 0xFFFFFFFFFFFFFFFFLL);
          }

          else
          {
            NSLog(&cfstr_SVtypeNotSuppo.isa, "[CPMLDB logNSDictionary:]_block_invoke_2");
          }
        }

        else
        {
          NSLog(&cfstr_SVectorIncorre.isa, "[CPMLDB logNSDictionary:]_block_invoke_2");
        }
      }

      else
      {
        NSLog(&cfstr_SUnknownClass.isa, "[CPMLDB logNSDictionary:]_block_invoke_2");
      }
    }
  }
}

- (BOOL)logBatchNSDictionary:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![(CPMLDB *)self logNSDictionary:*(*(&v11 + 1) + 8 * i)])
        {
          NSLog(&cfstr_SFailedToBatch.isa, "[CPMLDB logBatchNSDictionary:]");
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)logNSDataFloat:(id)a3
{
  v4 = a3;
  v5 = [(CPMLSchema *)self->cpSchema getTotalAttributes];
  if (v5 == [v4 length] >> 2 && objc_msgSend(v4, "length"))
  {
    v6 = objc_opt_new();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __25__CPMLDB_logNSDataFloat___block_invoke;
    v10[3] = &unk_278E9EF28;
    v7 = v6;
    v11 = v7;
    [v4 enumerateByteRangesUsingBlock:v10];
    v8 = [(CPMLDB *)self logNSArray:v7];
  }

  else
  {
    NSLog(&cfstr_SNumberOfAttri.isa, "-[CPMLDB logNSDataFloat:]", -[CPMLSchema getTotalAttributes](self->cpSchema, "getTotalAttributes"), [v4 length] >> 2);
    v8 = 0;
  }

  return v8;
}

void __25__CPMLDB_logNSDataFloat___block_invoke(uint64_t a1, _DWORD *a2, double a3, uint64_t a4, char a5)
{
  if ((a5 & 3) == 0)
  {
    v5 = *(a1 + 32);
    LODWORD(a3) = *a2;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:a3];
    [v5 addObject:?];
  }
}

- (BOOL)logNSDataDouble:(id)a3
{
  v4 = a3;
  v5 = [(CPMLSchema *)self->cpSchema getTotalAttributes];
  if (v5 == [v4 length] >> 3 && objc_msgSend(v4, "length"))
  {
    v6 = objc_opt_new();
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __26__CPMLDB_logNSDataDouble___block_invoke;
    v10[3] = &unk_278E9EF28;
    v7 = v6;
    v11 = v7;
    [v4 enumerateByteRangesUsingBlock:v10];
    v8 = [(CPMLDB *)self logNSArray:v7];
  }

  else
  {
    NSLog(&cfstr_SNumberOfAttri.isa, "-[CPMLDB logNSDataDouble:]", -[CPMLSchema getTotalAttributes](self->cpSchema, "getTotalAttributes"), [v4 length] >> 3);
    v8 = 0;
  }

  return v8;
}

void __26__CPMLDB_logNSDataDouble___block_invoke(uint64_t a1, double *a2, uint64_t a3, char a4)
{
  if ((a4 & 7) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*a2];
    [v4 addObject:?];
  }
}

- (void)execSQLCommand:(id)a3
{
  v4 = a3;
  dispatch_queue = self->_dispatch_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__CPMLDB_execSQLCommand___block_invoke;
  v7[3] = &unk_278E9EE60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatch_queue, v7);
}

void __25__CPMLDB_execSQLCommand___block_invoke(uint64_t a1)
{
  errmsg = 0;
  v1 = sqlite3_exec(*(*(a1 + 32) + 192), [*(a1 + 40) UTF8String], callbackDBResponse, *(a1 + 32), &errmsg);
  if (v1)
  {
    CPMLLog = CPMLLog::getCPMLLog(v1);
    CPMLLog::log(CPMLLog, CPML_LOG_ERR, "[CPMLDB execSQLCommand:]_block_invoke", "SQL error: %s \n", errmsg);
    sqlite3_free(errmsg);
  }
}

- (void)createTable:(id)a3 withSchema:(id)a4 withExistingTable:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@, pKey INTEGER PRIMARY KEY);", v11, v8];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"DROP TABLE IF EXISTS %@; CREATE TABLE %@ (%@, pKey INTEGER PRIMARY KEY);", v11, v11, v8];
  }

  v10 = v9;
  [(CPMLDB *)self execSQLCommand:v9];
}

- (void)addColumnToTable:(id)a3 withNewColumn:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"ALTER TABLE %@ ADD COLUMN %@", v8, v6];
  [(CPMLDB *)self execSQLCommand:v7];
}

- (void)insertIntoTable:(id)a3 withTuple:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"INSERT INTO %@ %@ ;", v8, v6];
  [(CPMLDB *)self execSQLCommand:v7];
}

- (void)queryDatabase:(id)a3 whereMatch:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"SELECT * from %@ WHERE %@", v8, v6];
  [(CPMLDB *)self execSQLCommand:v7];
}

- (void)updateTable:(id)a3 withAttribute:(id)a4 whereMatch:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"UPDATE %@ set %@ %@", v11, v8, v9];
  [(CPMLDB *)self execSQLCommand:v10];
}

- (void)deleteRow:(id)a3 whereMatch:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"DELETE from %@ where %@", v8, v6];
  [(CPMLDB *)self execSQLCommand:v7];
}

- (void)deleteAllRows:(id)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DELETE from %@", v5];
  [(CPMLDB *)self execSQLCommand:v4];
}

- (void)dropCommands:(id)a3
{
  v5 = a3;
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@" DROP TABLE IF EXISTS %@ ;", v5];
  [(CPMLDB *)self execSQLCommand:v4];
}

- (unint64_t)getCardinality:(unsigned int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  dispatch_queue = self->_dispatch_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__CPMLDB_getCardinality___block_invoke;
  block[3] = &unk_278E9EF50;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(dispatch_queue, block);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __25__CPMLDB_getCardinality___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 96) getUserDefinedCategoricalDataCount:*(a1 + 48)];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return;
  }

  if ([*(*(a1 + 32) + 96) isVectorType:*(a1 + 48)])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"key%d", *(a1 + 48)];
    v2 = [*(*(a1 + 32) + 112) objectForKey:?];
    v3 = v2;
    if (v2)
    {
      *(*(*(a1 + 40) + 8) + 24) = [v2 count];

      return;
    }

    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"select cardinality from STATISTICS where rowid=%u;", (*(a1 + 48) + 1)];
  }

  else
  {
    v4 = [*(*(a1 + 32) + 96) attribute];
    v8 = [v4 objectAtIndex:*(a1 + 48)];

    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"select count (DISTINCT %@) from MAIN_TABLE;", v8];
  }

  v6 = v5;

  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 192), [v6 UTF8String], objc_msgSend(v6, "length"), &ppStmt, 0))
  {
    NSLog(&cfstr_SGetcardinalit.isa, "-[CPMLDB getCardinality:]_block_invoke", [v6 UTF8String]);
  }

  v7 = sqlite3_step(ppStmt);
  if (v7 != 101)
  {
    if (v7 == 100)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(ppStmt, 0);
    }

    else
    {
      NSLog(&cfstr_Getcardinality.isa, v7);
    }
  }

  sqlite3_finalize(ppStmt);
}

- (unint64_t)getRowCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatch_queue = self->_dispatch_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__CPMLDB_getRowCount__block_invoke;
  v5[3] = &unk_278E9EEB0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatch_queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __21__CPMLDB_getRowCount__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 192), "SELECT COUNT (*) FROM MAIN_TABLE;", 33, &ppStmt, 0))
  {
    NSLog(&cfstr_GetrowcountPre.isa);
  }

  v2 = sqlite3_step(ppStmt);
  if (v2 != 101)
  {
    if (v2 == 100)
    {
      *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_int(ppStmt, 0);
    }

    else
    {
      NSLog(&cfstr_Getindexvaluew.isa, v2);
    }
  }

  return sqlite3_finalize(ppStmt);
}

- (double)columnQueryFor:(unsigned int)a3 withQuery:(id)a4
{
  v6 = a4;
  v7 = [(CPMLSchema *)self->cpSchema attribute];
  v8 = [v7 count];

  if (v8 >= a3)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    dispatch_queue = self->_dispatch_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__CPMLDB_columnQueryFor_withQuery___block_invoke;
    block[3] = &unk_278E9EE88;
    block[4] = self;
    v13 = v6;
    v14 = &v15;
    dispatch_sync(dispatch_queue, block);
    v9 = v16[3];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    NSLog(&cfstr_Columnqueryfor_0.isa);
    v9 = 1.79769313e308;
  }

  return v9;
}

uint64_t __35__CPMLDB_columnQueryFor_withQuery___block_invoke(uint64_t a1)
{
  ppStmt = 0;
  if (sqlite3_prepare_v2(*(*(a1 + 32) + 192), [*(a1 + 40) UTF8String], objc_msgSend(*(a1 + 40), "length"), &ppStmt, 0))
  {
    NSLog(&cfstr_Columnqueryfor_1.isa);
  }

  v2 = sqlite3_step(ppStmt);
  if (v2 != 101)
  {
    if (v2 == 100)
    {
      *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_double(ppStmt, 0);
    }

    else
    {
      NSLog(&cfstr_Columnqueryfor.isa, v2);
    }
  }

  return sqlite3_finalize(ppStmt);
}

- (void)updateStatisticsReal:(double)a3 colPosition:(unint64_t)a4
{
  mean = self->mean;
  sumOfX = self->sumOfX;
  sumOfX[a4] = sumOfX[a4] + a3;
  sumOfXX = self->sumOfXX;
  v9 = sumOfXX[a4];
  sumOfXX[a4] = v9 + a3 * a3;
  LODWORD(v9) = self->rowCount;
  v10 = *&v9 + 1.0;
  v11 = sumOfX[a4] / v10;
  mean[a4] = v11;
  v12 = sumOfXX[a4] / v10 - v11 * v11;
  if (v12 < 0.0)
  {
    NSLog(&cfstr_SVeSigma2.isa, a2, "[CPMLDB updateStatisticsReal:colPosition:]");
    v12 = 1.0;
  }

  self->sigma[a4] = sqrt(v12);
}

- (double)updateStatisticsString:(id)a3 colPosition:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    v8 = [v7 numberFromString:v6];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->mean[a4]];
  }

  [v8 doubleValue];
  [(CPMLDB *)self updateStatisticsReal:a4 colPosition:?];
  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (void)initStatisticsTable
{
  [(CPMLDB *)self dropCommands:@"STATISTICS"];

  [(CPMLDB *)self createTable:@"STATISTICS" withSchema:@"cardinality REAL withExistingTable:mean REAL, sumofX REAL, sumofXX REAL, sigma REAL, min REAL, max REAL", 0];
}

- (BOOL)loadStatisticTable
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatch_queue = self->_dispatch_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__CPMLDB_loadStatisticTable__block_invoke;
  v6[3] = &unk_278E9EEB0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dispatch_queue, v6);
  if (*(v8 + 24) == 1)
  {
    self->rowCount = [(CPMLDB *)self getRowCount];
    v4 = *(v8 + 24);
  }

  else
  {
    v4 = 0;
    self->rowCount = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

void __28__CPMLDB_loadStatisticTable__block_invoke(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 192), [@"select * from STATISTICS;" UTF8String], objc_msgSend(@"select * from STATISTICS;", "length"), &ppStmt, 0);
  if (v2 == 1)
  {
    sqlite3_finalize(ppStmt);
  }

  else if (v2)
  {
    NSLog(&cfstr_SPrepareFailD.isa, "[CPMLDB loadStatisticTable]_block_invoke", v2);
  }

  else
  {
    v3 = [*(*(a1 + 32) + 96) getTotalAttributes];
    v4 = ppStmt;
    if (v3)
    {
      for (i = 0; i < v6; ++i)
      {
        if (sqlite3_step(v4) == 100)
        {
          *(*(*(a1 + 32) + 40) + 8 * i) = sqlite3_column_double(ppStmt, 0);
          *(*(*(a1 + 32) + 64) + 8 * i) = sqlite3_column_double(ppStmt, 1);
          *(*(*(a1 + 32) + 72) + 8 * i) = sqlite3_column_double(ppStmt, 2);
          *(*(*(a1 + 32) + 80) + 8 * i) = sqlite3_column_double(ppStmt, 3);
          *(*(*(a1 + 32) + 88) + 8 * i) = sqlite3_column_double(ppStmt, 4);
          *(*(*(a1 + 32) + 48) + 8 * i) = sqlite3_column_double(ppStmt, 5);
          *(*(*(a1 + 32) + 56) + 8 * i) = sqlite3_column_double(ppStmt, 6);
        }

        v6 = [*(*(a1 + 32) + 96) getTotalAttributes];
        v4 = ppStmt;
      }
    }

    sqlite3_finalize(v4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)updateStatistics
{
  if ([(CPMLSchema *)self->cpSchema getTotalAttributes])
  {
    v3 = 0;
    do
    {
      [(CPMLDB *)self getMinFor:v3];
      self->min[v3] = v4;
      [(CPMLDB *)self getMaxFor:v3];
      self->max[v3] = v5;
      if ([(CPMLSchema *)self->cpSchema isVectorType:v3])
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"key%d", v3];
        v7 = [(NSMutableDictionary *)self->vectorListCardinality objectForKey:v6];
        self->cardinality[v3] = [v7 count];
      }

      else
      {
        self->cardinality[v3] = [(CPMLDB *)self getCardinality:v3];
      }

      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = self->mean[v3];
      v10 = self->sumOfXX[v3];
      v11 = self->min[v3];
      v12 = [v8 initWithFormat:@" (cardinality, mean, sumofX, sumofXX, sigma, min, max) VALUES (%lf, %lf, %lf, %lf, %lf, %lf, %lf) ", *&self->cardinality[v3], *&v9, *&self->sumOfX[v3], *&v10, *&self->sigma[v3], *&v11, *&self->max[v3]];
      [(CPMLDB *)self insertIntoTable:@"STATISTICS" withTuple:v12];

      ++v3;
    }

    while (v3 < [(CPMLSchema *)self->cpSchema getTotalAttributes]);
  }
}

- (void)indexTable:(id)a3 withColumn:(id)a4
{
  v14 = a3;
  v6 = a4;
  for (i = 0; i < [v6 count]; ++i)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [v6 objectAtIndex:i];
    v10 = [v8 initWithFormat:@"%@ID%d", v9, i];

    v11 = objc_alloc(MEMORY[0x277CCAB68]);
    v12 = [v6 objectAtIndex:i];
    v13 = [v11 initWithFormat:@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@);", v10, v14, v12];

    [(CPMLDB *)self execSQLCommand:v13];
  }
}

- (void)printFormat:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v10 = &v11;
  v5 = v3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    do
    {
      [v4 appendString:v7];
      NSLog(&stru_285928F78.isa, v7);
      v8 = v10++;
      v9 = *v8;

      v7 = v9;
    }

    while (v9);
  }

  NSLog(&stru_285928F98.isa, v4);
}

- (id)addValues:(int)a3
{
  v11 = &v13;
  if (a3 < 1)
  {
    v4 = 0;
    v5 = 0.0;
  }

  else
  {
    v3 = a3;
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = v4;
      v7 = v11++;
      v4 = *v7;

      [v4 doubleValue];
      v5 = v5 + v8;
      --v3;
    }

    while (v3);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v5];

  return v9;
}

- (id)fileProtectionClassRequest:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NSFileProtectionCompleteUntilFirstUserAuthentication"])
  {
    v4 = MEMORY[0x277CCA1A0];
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"NSFileProtectionCompleteUnlessOpen"])
  {
    v4 = MEMORY[0x277CCA198];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"NSFileProtectionComplete"])
  {
    v4 = MEMORY[0x277CCA190];
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"NSFileProtectionNone"])
  {
    v4 = MEMORY[0x277CCA1B8];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)extractRow:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = objc_opt_new();
  if (!v4)
  {
    if (![(CPMLDB *)self getRowCount])
    {
      goto LABEL_6;
    }

LABEL_5:
    dispatch_queue = self->_dispatch_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__CPMLDB_extractRow___block_invoke;
    block[3] = &unk_278E9EE88;
    v10 = v4;
    v11 = self;
    v12 = &v13;
    dispatch_sync(dispatch_queue, block);
    v7 = v14[5];

    goto LABEL_7;
  }

  v5 = [v4 intValue];
  if ([(CPMLDB *)self getRowCount]>= v5)
  {
    goto LABEL_5;
  }

  NSLog(&cfstr_SRowidDGreater.isa, "-[CPMLDB extractRow:]", [v4 intValue]);
LABEL_6:
  v7 = v14[5];
LABEL_7:
  _Block_object_dispose(&v13, 8);

  return v7;
}

sqlite3_stmt *__21__CPMLDB_extractRow___block_invoke(void *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  if (v2)
  {
    v3 = sqlite3_mprintf("SELECT * FROM MAIN_TABLE where pKey = %d; ", [v2 intValue]);
  }

  else
  {
    v3 = sqlite3_mprintf("SELECT * FROM MAIN_TABLE ORDER BY pKey DESC LIMIT 1;");
  }

  v4 = v3;
  ppStmt[0] = 0;
  v5 = *(a1[5] + 192);
  v6 = strlen(v3);
  v31 = v4;
  sqlite3_prepare_v2(v5, v4, v6, ppStmt, 0);
  v7 = sqlite3_step(ppStmt[0]);
  if ((v7 - 100) >= 2 && v7 != 0)
  {
    NSLog(&cfstr_SCannotQueryDb.isa, "[CPMLDB extractRow:]_block_invoke");
    goto LABEL_28;
  }

  if ([*(a1[5] + 96) getTotalAttributes])
  {
    for (i = 0; [*(a1[5] + 96) getTotalAttributes] > i; ++i)
    {
      v10 = [*(a1[5] + 96) getColumnName:i];
      if ([*(a1[5] + 96) isStringType:i])
      {
        v11 = sqlite3_column_text(ppStmt[0], i);
        v12 = *(*(a1[6] + 8) + 40);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v11 encoding:4];
        [v12 setObject:v13 forKey:v10];
      }

      else if ([*(a1[5] + 96) isIntType:i])
      {
        v14 = sqlite3_column_int(ppStmt[0], i);
        v15 = *(*(a1[6] + 8) + 40);
        v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v14];
        [v15 setObject:v13 forKey:v10];
      }

      else if ([*(a1[5] + 96) isRealType:i])
      {
        v16 = sqlite3_column_double(ppStmt[0], i);
        v17 = *(*(a1[6] + 8) + 40);
        v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v16];
        [v17 setObject:v13 forKey:v10];
      }

      else
      {
        if (![*(a1[5] + 96) isVectorType:i])
        {
          NSLog(&cfstr_SUnknownType.isa, "[CPMLDB extractRow:]_block_invoke");

          break;
        }

        v13 = objc_opt_new();
        v18 = sqlite3_column_blob(ppStmt[0], i);
        v19 = sqlite3_column_bytes(ppStmt[0], i);
        v20 = &v30 - ((v19 + 15) & 0x1FFFFFFF0);
        v21 = *v18;
        if (v21 == 83)
        {
          v22 = *(v18 + 1);
          if (v22)
          {
            v23 = (v18 + 9);
            do
            {
              v25 = *v23;
              v24 = (v23 + 1);
              strlcpy(v20, v24, v25);
              v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v20 encoding:4];
              [v13 addObject:v26];

              v23 = &v24[v25];
              --v22;
            }

            while (v22);
          }
        }

        else if (v21 == 78)
        {
          [v13 addObject:&stru_2859288F8];
        }

        else
        {
          CPMLLog = CPMLLog::getCPMLLog(v19);
          CPMLLog::log(CPMLLog, CPML_LOG_ERR, "[CPMLDB extractRow:]_block_invoke", "Encoding unsupported");
        }

        [*(*(a1[6] + 8) + 40) setObject:v13 forKey:v10];
      }
    }
  }

LABEL_28:
  if (v31)
  {
    sqlite3_free(v31);
  }

  result = ppStmt[0];
  if (ppStmt[0])
  {
    result = sqlite3_finalize(ppStmt[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)removeTrainingRow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 intValue];
      if (v5)
      {
        dispatch_queue = self->_dispatch_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __28__CPMLDB_removeTrainingRow___block_invoke;
        block[3] = &unk_278E9EF78;
        v8 = v5;
        block[4] = self;
        dispatch_async(dispatch_queue, block);
      }
    }

    else
    {
      NSLog(&cfstr_SNotANumber.isa, "[CPMLDB removeTrainingRow:]");
    }
  }
}

sqlite3_stmt *__28__CPMLDB_removeTrainingRow___block_invoke(uint64_t a1)
{
  v7 = *(a1 + 40);
  ppStmt = 0;
  v2 = sqlite3_mprintf("delete from MAIN_TABLE where pkey in(select pkey from MAIN_TABLE LIMIT %d);", v7);
  v3 = strlen(v2);
  sqlite3_prepare_v2(*(*(a1 + 32) + 192), v2, v3, &ppStmt, 0);
  v4 = sqlite3_step(ppStmt);
  if ((v4 - 100) < 2 || v4 == 0)
  {
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    NSLog(&cfstr_SCannotQueryDb.isa, "[CPMLDB removeTrainingRow:]_block_invoke");
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  sqlite3_free(v2);
LABEL_8:
  result = ppStmt;
  if (ppStmt)
  {
    return sqlite3_finalize(ppStmt);
  }

  return result;
}

- (void)removeTrainingRowData:(double)a3
{
  dispatch_queue = self->_dispatch_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__CPMLDB_removeTrainingRowData___block_invoke;
  v4[3] = &unk_278E9EFA0;
  *&v4[5] = a3;
  v4[4] = self;
  dispatch_sync(dispatch_queue, v4);
}

sqlite3_stmt *__32__CPMLDB_removeTrainingRowData___block_invoke(sqlite3_stmt *result)
{
  ppStmt = 0;
  if (*(result + 5) > 0.0)
  {
    v1 = result;
    v2 = sqlite3_mprintf("select * from DateIndex where date <= %lf;", *(result + 5));
    v3 = strlen(v2);
    sqlite3_prepare_v2(*(*(v1 + 4) + 192), v2, v3, &ppStmt, 0);
    if (v2)
    {
      sqlite3_free(v2);
    }

    v4 = 0;
    while (1)
    {
      v5 = sqlite3_step(ppStmt);
      if ((v5 - 100) >= 2 && v5 != 0)
      {
        break;
      }

      v7 = v5;
      v8 = sqlite3_column_int(ppStmt, 0);
      if (v8 <= v4)
      {
        v4 = v4;
      }

      else
      {
        v4 = v8;
      }

      if (v7 == 101)
      {
        goto LABEL_14;
      }
    }

    NSLog(&cfstr_SCannotQueryDb.isa, "[CPMLDB removeTrainingRowData:]_block_invoke");
LABEL_14:
    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
      ppStmt = 0;
    }

    v9 = *(v1 + 4);
    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v4];
    [v9 removeTrainingRow:v10];

    v11 = sqlite3_mprintf("delete from DateIndex where date <= %lf;", *(v1 + 5));
    v12 = strlen(v11);
    sqlite3_prepare_v2(*(*(v1 + 4) + 192), v11, v12, &ppStmt, 0);
    if (v11)
    {
      sqlite3_free(v11);
    }

    v13 = sqlite3_step(ppStmt);
    if ((v13 - 100) >= 2 && v13)
    {
      NSLog(&cfstr_SCannotDeleteD.isa, "[CPMLDB removeTrainingRowData:]_block_invoke");
    }

    result = ppStmt;
    if (ppStmt)
    {
      return sqlite3_finalize(ppStmt);
    }
  }

  return result;
}

- (BOOL)reset
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  [(CPMLDB *)self flushDB];
  dispatch_queue = self->_dispatch_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __15__CPMLDB_reset__block_invoke;
  v8[3] = &unk_278E9EEB0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(dispatch_queue, v8);
  trainingModelFileAndPath = self->_trainingModelFileAndPath;
  trainingFile = self->_trainingFile;
  if (trainingFile)
  {
    [(CPMLDB *)self doInitializeWithDataFile:trainingModelFileAndPath dataFromFile:trainingFile withConfiguration:self->_cInfo withWriteOptions:self->_openCPMLDBOptions];
  }

  else
  {
    [(CPMLDB *)self doInitialize:trainingModelFileAndPath withConfiguration:self->_cInfo withWriteOptions:self->_openCPMLDBOptions];
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __15__CPMLDB_reset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) restart];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(*(a1 + 32) + 160);
  v6 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v6];
  v5 = v6;
  *(*(*(a1 + 40) + 8) + 24) = v4;

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    NSLog(&cfstr_SCannotRemoveM.isa, "[CPMLDB reset]_block_invoke");
  }
}

@end