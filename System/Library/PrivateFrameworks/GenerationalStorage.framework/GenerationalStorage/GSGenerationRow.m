@interface GSGenerationRow
+ (BOOL)rowExists:(id)a3 withStorageID:(int64_t)a4 andName:(id)a5 andClientID:(id)a6;
+ (BOOL)setGenerationOptions:(id)a3 rowID:(int64_t)a4 options:(unint64_t)a5 error:(id *)a6;
+ (id)enumerate:(id)a3 withOptions:(const GSGenerationEnumeratorOptions *)a4;
+ (id)generationRow:(id)a3 storageID:(int64_t)a4 name:(id)a5 clientID:(id)a6 error:(id *)a7;
+ (int64_t)countOfGenerations:(id)a3 storageID:(int64_t)a4 clientID:(id)a5;
+ (int64_t)deleteRow:(id)a3 rowID:(int64_t)a4;
+ (int64_t)deleteRowsWithoutData:(id)a3 atRoot:(id)a4;
+ (int64_t)deleteRowsWithoutStorage:(id)a3;
+ (int64_t)fixPendingRowsWithData:(id)a3 atRoot:(id)a4;
+ (int64_t)fixupGenerationOptions:(id)a3;
+ (int64_t)tableRowCount:(id)a3;
+ (unint64_t)computeNumberOfPruneableStorages:(id)a3;
+ (unint64_t)computePrunableSpace:(id)a3;
+ (unint64_t)computePruneableNumberOfGenerations:(id)a3;
- (BOOL)isAccessibleByUID:(unsigned int)a3 error:(id *)a4;
- (BOOL)saveToDB:(id)a3;
- (id)fullPath:(id)a3;
- (id)initFromPQLResultSet:(id)a3 error:(id *)a4;
@end

@implementation GSGenerationRow

- (id)initFromPQLResultSet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = GSGenerationRow;
  v6 = [(GSGenerationRow *)&v14 init];
  if (v6)
  {
    v6->generation_id = [v5 longLongAtIndex:0];
    v6->generation_storage_id = [v5 longLongAtIndex:1];
    v7 = [v5 stringAtIndex:2];
    generation_name = v6->generation_name;
    v6->generation_name = v7;

    v9 = [v5 stringAtIndex:3];
    generation_client_id = v6->generation_client_id;
    v6->generation_client_id = v9;

    v11 = [v5 stringAtIndex:4];
    generation_path = v6->generation_path;
    v6->generation_path = v11;

    v6->generation_options = [v5 longLongAtIndex:5];
    v6->generation_status = [v5 intAtIndex:6];
    v6->generation_add_time = [v5 longLongAtIndex:7];
    v6->generation_size = [v5 longLongAtIndex:8];
    v6->generation_conflict_resolved = [v5 BOOLAtIndex:9];
  }

  return v6;
}

- (BOOL)saveToDB:(id)a3
{
  v4 = a3;
  v5 = sub_100003164();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100026180(self, v5);
  }

  generation_id = self->generation_id;
  generation_storage_id = self->generation_storage_id;
  generation_name = self->generation_name;
  generation_client_id = self->generation_client_id;
  generation_path = self->generation_path;
  generation_options = self->generation_options;
  generation_status = self->generation_status;
  generation_add_time = self->generation_add_time;
  if (generation_id)
  {
    v14 = [v4 execute:{@"UPDATE generations SET   generation_storage_id = %lld, generation_name = %@, generation_client_id = %@, generation_path = %@, generation_options = %lld, generation_status = %d, generation_add_time = %lld, generation_size = %lld, generation_conflict_resolved = %d WHERE generation_id = %lld", generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, self->generation_size, self->generation_conflict_resolved, generation_id}];
  }

  else if ([v4 execute:{@"INSERT INTO generations (generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved) VALUES (NULL, %lld, %@, %@, %@, %lld, %d, %lld, %lld, %d)", generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, self->generation_size, self->generation_conflict_resolved}])
  {
    self->generation_id = [v4 lastInsertedRowID];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isAccessibleByUID:(unsigned int)a3 error:(id *)a4
{
  v7 = [(NSString *)self->generation_path pathComponents];
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = 1;
  v10 = [v7 objectAtIndexedSubscript:1];
  if (([v8 isEqualToString:@"AllUIDs"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"PerUID"])
    {
      if (a3)
      {
        v9 = [v10 intValue] == a3;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v11 = [NSString stringWithFormat:@"Generation %@ for client %@ has a corrupt path %@", self->generation_name, self->generation_client_id, self->generation_path];
      v12 = sub_100003164();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1000261F8();
      }

      if (a4)
      {
        *a4 = sub_10000F0F8(101, v11, 0);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)fullPath:(id)a3
{
  v4 = a3;
  v5 = [NSString alloc];
  v6 = [v4 libraryRoot];

  v7 = [v5 initWithFormat:@"%@/%@", v6, self->generation_path];

  return v7;
}

+ (unint64_t)computePrunableSpace:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:@"SELECT SUM(generation_size) FROM generations WHERE generation_prunable = 1"];

  v5 = [v4 unsignedLongLongValue];
  return v5;
}

+ (unint64_t)computeNumberOfPruneableStorages:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations  WHERE generations.generation_prunable = 1 GROUP BY generations.generation_storage_id"];

  v5 = [v4 unsignedLongLongValue];
  return v5;
}

+ (unint64_t)computePruneableNumberOfGenerations:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations WHERE generation_prunable = 1"];

  v5 = [v4 unsignedLongLongValue];
  return v5;
}

+ (BOOL)rowExists:(id)a3 withStorageID:(int64_t)a4 andName:(id)a5 andClientID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [v11 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld   AND generation_name = %@   AND generation_client_id = %@", a4, v10, v9}];

  LOBYTE(v10) = [v12 BOOLValue];
  return v10;
}

+ (id)generationRow:(id)a3 storageID:(int64_t)a4 name:(id)a5 clientID:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a5;
  v14 = [v11 fetchObjectOfClass:objc_opt_class() sql:{@"SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved FROM generations WHERE generation_storage_id = %lld   AND generation_name = %@   AND generation_client_id = %@", a4, v13, v12}];

  if (!v14)
  {
    v15 = [v11 lastError];
    if ([v15 isSqliteErrorCode:12])
    {
      v16 = [NSString stringWithFormat:@"Generation not found"];
      v17 = sub_100003164();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100026274();
      }

      if (a7)
      {
        *a7 = sub_10000F0F8(105, v16, 0);
      }
    }

    else if (a7)
    {
      v18 = v15;
      *a7 = v15;
    }
  }

  return v14;
}

+ (int64_t)tableRowCount:(id)a3
{
  v3 = a3;
  v4 = [v3 fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations"];

  v5 = [v4 longLongValue];
  return v5;
}

+ (int64_t)countOfGenerations:(id)a3 storageID:(int64_t)a4 clientID:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = objc_opt_class();
  if (v7)
  {
    v10 = [v8 fetchObjectOfClass:v9 sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld AND generation_client_id = %@", a4, v7}];
  }

  else
  {
    v10 = [v8 fetchObjectOfClass:v9 sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld", a4, v14}];
  }

  v11 = v10;

  v12 = [v11 longLongValue];
  return v12;
}

+ (id)enumerate:(id)a3 withOptions:(const GSGenerationEnumeratorOptions *)a4
{
  v27 = a3;
  var8 = a4->var8;
  var5 = a4->var5;
  if (var5 < 0)
  {
    if (var8)
    {
      var9 = a4->var9;
    }

    else
    {
      var9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [PQLFormatInjection formatInjection:@"generation_id <= %lld ORDER BY generation_id DESC", var9];
  }

  else
  {
    if (!var5)
    {
      v9 = [PQLRawInjection rawInjection:"1" length:1];
      goto LABEL_13;
    }

    if (var8)
    {
      v7 = a4->var9;
    }

    else
    {
      v7 = 0;
    }

    [PQLFormatInjection formatInjection:@"generation_id >= %lld ORDER BY generation_id ASC", v7];
  }
  v9 = ;
LABEL_13:
  v10 = v9;
  if (a4->var0)
  {
    [PQLFormatInjection formatInjection:@"generation_storage_id = %lld AND", a4->var0];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v11 = ;
  if (a4->var1)
  {
    [PQLFormatInjection formatInjection:@"generation_options & %lld AND", a4->var1];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v12 = ;
  if (a4->var2)
  {
    [PQLFormatInjection formatInjection:@"NOT (generation_options & %lld) AND", a4->var2];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v13 = ;
  if (a4->var3)
  {
    [PQLFormatInjection formatInjection:@"generation_status = %d AND", a4->var3];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v14 = ;
  if (a4->var4)
  {
    [PQLFormatInjection formatInjection:@"generation_client_id = %s AND", a4->var4];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v15 = ;
  if (a4->var6)
  {
    v16 = "generation_prunable AND";
    v17 = 23;
  }

  else
  {
    v16 = "";
    v17 = 0;
  }

  v18 = [PQLRawInjection rawInjection:v16 length:v17];
  if (a4->var7)
  {
    v19 = "generation_conflict_resolved AND";
    v20 = 32;
  }

  else
  {
    v19 = "";
    v20 = 0;
  }

  v21 = [PQLRawInjection rawInjection:v19 length:v20];
  v22 = v21;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  if (var8)
  {
    v23 = var8;
  }

  v24 = [v27 fetch:{@"SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved FROM generations WHERE %@ %@ %@ %@ %@ %@ %@ %@ LIMIT %lld", v11, v12, v13, v14, v15, v18, v21, v10, v23}];

  v25 = [v24 enumerateObjectsOfClass:objc_opt_class()];

  return v25;
}

+ (BOOL)setGenerationOptions:(id)a3 rowID:(int64_t)a4 options:(unint64_t)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [v9 execute:{@"UPDATE generations SET generation_options = %lld WHERE generation_id = %lld", a5, a4}];
  v11 = v10;
  if (a6 && (v10 & 1) == 0)
  {
    *a6 = [v9 translatedError];
  }

  return v11;
}

+ (int64_t)deleteRow:(id)a3 rowID:(int64_t)a4
{
  v5 = a3;
  if ([v5 execute:{@"DELETE FROM generations WHERE generation_id = %lld", a4}])
  {
    v6 = [v5 changes];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (int64_t)deleteRowsWithoutStorage:(id)a3
{
  v3 = a3;
  if ([v3 execute:@"DELETE FROM generations WHERE generation_id IN (SELECT generation_id FROM generations  LEFT JOIN storage ON generation_storage_id = storage_id  WHERE storage_id IS NULL)"])
  {
    v4 = [v3 changes];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (int64_t)deleteRowsWithoutData:(id)a3 atRoot:(id)a4
{
  v5 = a3;
  if ([v5 execute:{@"DELETE FROM generations WHERE gs_path_not_exists(%@ || / || generation_path)", a4}])
  {
    v6 = [v5 changes];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (int64_t)fixPendingRowsWithData:(id)a3 atRoot:(id)a4
{
  v5 = a3;
  if ([v5 execute:{@"UPDATE generations SET generation_status = %d WHERE generation_status = %d AND gs_path_exists(%@ || / || generation_path)", 1, 1000, a4}])
  {
    v6 = [v5 changes];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (int64_t)fixupGenerationOptions:(id)a3
{
  v3 = a3;
  if ([v3 execute:{@"UPDATE generations SET generation_options = (generation_options | %lld) & %lld WHERE (generation_options & %lld) = 0 OR (generation_options & %lld)", 1, 13, 1, -14}])
  {
    v4 = [v3 changes];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

@end