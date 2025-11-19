@interface HDInsertPrimaryActivityForRowAndMetadata
@end

@implementation HDInsertPrimaryActivityForRowAndMetadata

uint64_t ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_2(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  sqlite3_bind_int64(a2, 3, a1[6]);
  v4 = a1[7];

  return sqlite3_bind_int64(a2, 4, v4);
}

uint64_t ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_3(void *a1, uint64_t a2)
{
  v4 = HDSQLiteColumnAsInt64();
  if (v4 == a1[7])
  {
    if (MEMORY[0x22AAC6C50](a2, 1) == 1.0)
    {
      *(*(a1[4] + 8) + 24) = 2;
    }
  }

  else if (v4 == a1[8])
  {
    *(*(a1[5] + 8) + 24) = MEMORY[0x22AAC6C50](a2, 1);
  }

  else if (v4 == a1[9])
  {
    v5 = MEMORY[0x22AAC6C50](a2, 1);
    v6 = MEMORY[0x22AAC6C90](a2, 2);
    v7 = MEMORY[0x277CCD7E8];
    v8 = [MEMORY[0x277CCDAB0] unitFromString:v6];
    v9 = [v7 quantityWithUnit:v8 doubleValue:v5];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 1;
}

void ___HDInsertPrimaryActivityForRowAndMetadata_block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, *(a1 + 64));
  sqlite3_bind_int64(a2, 3, *(a1 + 72));
  sqlite3_bind_int64(a2, 4, *(*(*(a1 + 40) + 8) + 24));
  sqlite3_bind_int64(a2, 5, *(*(*(a1 + 48) + 8) + 24));
  v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(*(*(a1 + 56) + 8) + 40) requiringSecureCoding:1 error:0];
  v5 = v6;
  sqlite3_bind_blob64(a2, 6, [v6 bytes], objc_msgSend(v6, "length"), 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_double(a2, 7, *(a1 + 80));
  sqlite3_bind_double(a2, 8, *(a1 + 88));
  sqlite3_bind_double(a2, 9, *(a1 + 96));
}

@end