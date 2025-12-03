@interface MLITDBGeniusDatabase
+ (id)sharedGeniusDatabase;
- (BOOL)_copyBlobData:(id *)data blobAllocType:(int)type table:(id)table blobColumn:(id)column where:(id)where;
- (BOOL)_hasAnySongs;
- (BOOL)_hasRowsInTable:(id)table;
- (BOOL)_readBlobForRowID:(unint64_t)d intoData:(id)data table:(const char *)table blobColumn:(const char *)column;
- (BOOL)_readBlobIntoData:(id)data table:(id)table blobColumn:(id)column where:(id)where;
- (BOOL)hasGeniusDataAvailable;
- (MLITDBGeniusDatabase)init;
- (id)_copyBlobDataAndBytesInTable:(id)table blobColumn:(id)column where:(id)where;
- (id)copyGeniusMetadataDataAndBytesForGlobalID:(unint64_t)d;
- (id)copyGeniusSimilaritiesDataAndBytesForGlobalID:(unint64_t)d;
- (unint64_t)_getInt64ValueInTable:(id)table column:(id)column where:(id)where limit:(unsigned int)limit;
- (unint64_t)defaultMinTrackCount;
- (unint64_t)defaultTrackCount;
- (unsigned)_getInt32ValueInTable:(id)table column:(id)column;
- (void)performGeniusDatabaseReadWithBlock:(id)block;
@end

@implementation MLITDBGeniusDatabase

- (id)copyGeniusSimilaritiesDataAndBytesForGlobalID:(unint64_t)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"genius_id = %llu", d];
  v5 = [(MLITDBGeniusDatabase *)self _copyBlobDataAndBytesInTable:@"genius_similarities" blobColumn:@"data" where:v4];

  return v5;
}

- (id)copyGeniusMetadataDataAndBytesForGlobalID:(unint64_t)d
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"genius_id = %llu", d];
  v5 = [(MLITDBGeniusDatabase *)self _copyBlobDataAndBytesInTable:@"genius_metadata" blobColumn:@"data" where:v4];

  return v5;
}

- (unint64_t)defaultTrackCount
{
  LODWORD(result) = [(MLITDBGeniusDatabase *)self _getInt32ValueInTable:@"genius_config" column:@"default_num_results"];
  if (result)
  {
    return result;
  }

  else
  {
    return 25;
  }
}

- (unint64_t)defaultMinTrackCount
{
  LODWORD(result) = [(MLITDBGeniusDatabase *)self _getInt32ValueInTable:@"genius_config" column:@"min_num_results"];
  if (result)
  {
    return result;
  }

  else
  {
    return 2;
  }
}

- (BOOL)hasGeniusDataAvailable
{
  _hasAnySongs = [(MLITDBGeniusDatabase *)self _hasAnySongs];
  if (_hasAnySongs)
  {

    LOBYTE(_hasAnySongs) = [(MLITDBGeniusDatabase *)self _hasRowsInTable:@"genius_metadata"];
  }

  return _hasAnySongs;
}

- (BOOL)_hasAnySongs
{
  v3 = [ML3BitMaskPredicate predicateWithProperty:@"media_type" mask:1032 value:8];
  musicLibrary = [(MLITDBGeniusDatabase *)self musicLibrary];
  v5 = [(ML3Entity *)ML3Track queryWithLibrary:musicLibrary predicate:v3 orderingTerms:0];
  hasEntities = [v5 hasEntities];

  return hasEntities;
}

- (BOOL)_readBlobForRowID:(unint64_t)d intoData:(id)data table:(const char *)table blobColumn:(const char *)column
{
  dataCopy = data;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__MLITDBGeniusDatabase__readBlobForRowID_intoData_table_blobColumn___block_invoke;
  v13[3] = &unk_2787632C8;
  tableCopy = table;
  columnCopy = column;
  dCopy = d;
  v11 = dataCopy;
  v14 = v11;
  v15 = &v19;
  [(MLITDBGeniusDatabase *)self performGeniusDatabaseReadWithBlock:v13];
  LOBYTE(table) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return table;
}

void __68__MLITDBGeniusDatabase__readBlobForRowID_intoData_table_blobColumn___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 stringWithUTF8String:v4];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1[7]];
  v8 = [v5 openBlobInTable:v6 column:v7 row:a1[8] readOnly:1];

  if (v8)
  {
    *(*(a1[5] + 8) + 24) = [v8 readData:a1[4] numberOfBytes:objc_msgSend(v8 offset:{"length"), 0}] == 0;
  }
}

- (BOOL)_readBlobIntoData:(id)data table:(id)table blobColumn:(id)column where:(id)where
{
  dataCopy = data;
  dataCopy2 = data;
  LOBYTE(where) = [(MLITDBGeniusDatabase *)self _copyBlobData:&dataCopy blobAllocType:1 table:table blobColumn:column where:where];
  v11 = dataCopy;

  return where;
}

- (id)_copyBlobDataAndBytesInTable:(id)table blobColumn:(id)column where:(id)where
{
  v7 = 0;
  [(MLITDBGeniusDatabase *)self _copyBlobData:&v7 blobAllocType:0 table:table blobColumn:column where:where];
  v5 = v7;

  return v5;
}

- (BOOL)_copyBlobData:(id *)data blobAllocType:(int)type table:(id)table blobColumn:(id)column where:(id)where
{
  tableCopy = table;
  columnCopy = column;
  whereCopy = where;
  if ([whereCopy length])
  {
    whereCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" WHERE %@", whereCopy];
  }

  else
  {
    whereCopy = &stru_28408B690;
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %@ FROM %@%@ LIMIT 1", columnCopy, tableCopy, whereCopy];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__12868;
  v36[4] = __Block_byref_object_dispose__12869;
  if (data)
  {
    v15 = *data;
  }

  else
  {
    v15 = 0;
  }

  v37 = v15;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__12868;
  v34[4] = __Block_byref_object_dispose__12869;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__12868;
  v32 = __Block_byref_object_dispose__12869;
  v33 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__MLITDBGeniusDatabase__copyBlobData_blobAllocType_table_blobColumn_where___block_invoke;
  v21[3] = &unk_2787632A0;
  v16 = v14;
  v22 = v16;
  v23 = v34;
  typeCopy = type;
  v24 = v36;
  v25 = &v38;
  v26 = &v28;
  [(MLITDBGeniusDatabase *)self performGeniusDatabaseReadWithBlock:v21];
  if (data)
  {
    *data = v29[5];
  }

  v17 = *(v39 + 24);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(&v38, 8);

  return v17;
}

void __75__MLITDBGeniusDatabase__copyBlobData_blobAllocType_table_blobColumn_where___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32)];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__MLITDBGeniusDatabase__copyBlobData_blobAllocType_table_blobColumn_where___block_invoke_2;
  v5[3] = &unk_2787653C8;
  v5[4] = *(a1 + 40);
  [v3 enumerateRowsWithBlock:v5];
  v4 = *(a1 + 72);
  if (v4 == 1)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) length])
    {
      [*(*(*(a1 + 48) + 8) + 40) appendData:*(*(*(a1 + 40) + 8) + 40)];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else if (!v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 40) + 8) + 40));
    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 48) + 8) + 40) != 0;
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  }
}

uint64_t __75__MLITDBGeniusDatabase__copyBlobData_blobAllocType_table_blobColumn_where___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 dataForColumnIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (unint64_t)_getInt64ValueInTable:(id)table column:(id)column where:(id)where limit:(unsigned int)limit
{
  v6 = *&limit;
  tableCopy = table;
  columnCopy = column;
  whereCopy = where;
  if (v6)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" LIMIT %d", v6];
  }

  else
  {
    v13 = &stru_28408B690;
  }

  if ([whereCopy length])
  {
    whereCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" WHERE %@", whereCopy];
  }

  else
  {
    whereCopy = &stru_28408B690;
  }

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SELECT %@ FROM %@%@%@", columnCopy, tableCopy, whereCopy, v13];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__MLITDBGeniusDatabase__getInt64ValueInTable_column_where_limit___block_invoke;
  v19[3] = &unk_2787651A8;
  v16 = v15;
  v20 = v16;
  v21 = &v22;
  [(MLITDBGeniusDatabase *)self performGeniusDatabaseReadWithBlock:v19];
  v17 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v17;
}

void __65__MLITDBGeniusDatabase__getInt64ValueInTable_column_where_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__MLITDBGeniusDatabase__getInt64ValueInTable_column_where_limit___block_invoke_2;
  v4[3] = &unk_2787653C8;
  v4[4] = *(a1 + 40);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __65__MLITDBGeniusDatabase__getInt64ValueInTable_column_where_limit___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 int64ForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unsigned)_getInt32ValueInTable:(id)table column:(id)column
{
  tableCopy = table;
  columnCopy = column;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@ FROM %@ LIMIT 1", columnCopy, tableCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__MLITDBGeniusDatabase__getInt32ValueInTable_column___block_invoke;
  v11[3] = &unk_2787651A8;
  v9 = tableCopy;
  v12 = v9;
  v13 = &v14;
  [(MLITDBGeniusDatabase *)self performGeniusDatabaseReadWithBlock:v11];
  LODWORD(self) = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __53__MLITDBGeniusDatabase__getInt32ValueInTable_column___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__MLITDBGeniusDatabase__getInt32ValueInTable_column___block_invoke_2;
  v4[3] = &unk_2787653C8;
  v4[4] = *(a1 + 40);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __53__MLITDBGeniusDatabase__getInt32ValueInTable_column___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 intForColumnIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)_hasRowsInTable:(id)table
{
  tableCopy = table;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT COUNT() FROM %@ LIMIT 1", tableCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__MLITDBGeniusDatabase__hasRowsInTable___block_invoke;
  v8[3] = &unk_2787651A8;
  v6 = tableCopy;
  v9 = v6;
  v10 = &v11;
  [(MLITDBGeniusDatabase *)self performGeniusDatabaseReadWithBlock:v8];
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

void __40__MLITDBGeniusDatabase__hasRowsInTable___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:*(a1 + 32)];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__MLITDBGeniusDatabase__hasRowsInTable___block_invoke_2;
  v4[3] = &unk_2787653C8;
  v4[4] = *(a1 + 40);
  [v3 enumerateRowsWithBlock:v4];
}

uint64_t __40__MLITDBGeniusDatabase__hasRowsInTable___block_invoke_2(uint64_t result, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = result;
    result = [a2 intForColumnIndex:?];
    *(*(*(v3 + 32) + 8) + 24) = result > 0;
  }

  return result;
}

- (void)performGeniusDatabaseReadWithBlock:(id)block
{
  blockCopy = block;
  musicLibrary = [(MLITDBGeniusDatabase *)self musicLibrary];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__MLITDBGeniusDatabase_performGeniusDatabaseReadWithBlock___block_invoke;
  v7[3] = &unk_278763278;
  v8 = blockCopy;
  v6 = blockCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v7];
}

- (MLITDBGeniusDatabase)init
{
  v3.receiver = self;
  v3.super_class = MLITDBGeniusDatabase;
  return [(MLITDBGeniusDatabase *)&v3 init];
}

+ (id)sharedGeniusDatabase
{
  v2 = sharedGeniusDatabase_instance;
  if (!sharedGeniusDatabase_instance)
  {
    v3 = objc_alloc_init(objc_opt_class());
    v4 = sharedGeniusDatabase_instance;
    sharedGeniusDatabase_instance = v3;

    v2 = sharedGeniusDatabase_instance;
  }

  return v2;
}

@end