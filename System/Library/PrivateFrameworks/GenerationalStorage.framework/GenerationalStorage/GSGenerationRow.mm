@interface GSGenerationRow
+ (BOOL)rowExists:(id)exists withStorageID:(int64_t)d andName:(id)name andClientID:(id)iD;
+ (BOOL)setGenerationOptions:(id)options rowID:(int64_t)d options:(unint64_t)a5 error:(id *)error;
+ (id)enumerate:(id)enumerate withOptions:(const GSGenerationEnumeratorOptions *)options;
+ (id)generationRow:(id)row storageID:(int64_t)d name:(id)name clientID:(id)iD error:(id *)error;
+ (int64_t)countOfGenerations:(id)generations storageID:(int64_t)d clientID:(id)iD;
+ (int64_t)deleteRow:(id)row rowID:(int64_t)d;
+ (int64_t)deleteRowsWithoutData:(id)data atRoot:(id)root;
+ (int64_t)deleteRowsWithoutStorage:(id)storage;
+ (int64_t)fixPendingRowsWithData:(id)data atRoot:(id)root;
+ (int64_t)fixupGenerationOptions:(id)options;
+ (int64_t)tableRowCount:(id)count;
+ (unint64_t)computeNumberOfPruneableStorages:(id)storages;
+ (unint64_t)computePrunableSpace:(id)space;
+ (unint64_t)computePruneableNumberOfGenerations:(id)generations;
- (BOOL)isAccessibleByUID:(unsigned int)d error:(id *)error;
- (BOOL)saveToDB:(id)b;
- (id)fullPath:(id)path;
- (id)initFromPQLResultSet:(id)set error:(id *)error;
@end

@implementation GSGenerationRow

- (id)initFromPQLResultSet:(id)set error:(id *)error
{
  setCopy = set;
  v14.receiver = self;
  v14.super_class = GSGenerationRow;
  v6 = [(GSGenerationRow *)&v14 init];
  if (v6)
  {
    v6->generation_id = [setCopy longLongAtIndex:0];
    v6->generation_storage_id = [setCopy longLongAtIndex:1];
    v7 = [setCopy stringAtIndex:2];
    generation_name = v6->generation_name;
    v6->generation_name = v7;

    v9 = [setCopy stringAtIndex:3];
    generation_client_id = v6->generation_client_id;
    v6->generation_client_id = v9;

    v11 = [setCopy stringAtIndex:4];
    generation_path = v6->generation_path;
    v6->generation_path = v11;

    v6->generation_options = [setCopy longLongAtIndex:5];
    v6->generation_status = [setCopy intAtIndex:6];
    v6->generation_add_time = [setCopy longLongAtIndex:7];
    v6->generation_size = [setCopy longLongAtIndex:8];
    v6->generation_conflict_resolved = [setCopy BOOLAtIndex:9];
  }

  return v6;
}

- (BOOL)saveToDB:(id)b
{
  bCopy = b;
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
    v14 = [bCopy execute:{@"UPDATE generations SET   generation_storage_id = %lld, generation_name = %@, generation_client_id = %@, generation_path = %@, generation_options = %lld, generation_status = %d, generation_add_time = %lld, generation_size = %lld, generation_conflict_resolved = %d WHERE generation_id = %lld", generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, self->generation_size, self->generation_conflict_resolved, generation_id}];
  }

  else if ([bCopy execute:{@"INSERT INTO generations (generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved) VALUES (NULL, %lld, %@, %@, %@, %lld, %d, %lld, %lld, %d)", generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, self->generation_size, self->generation_conflict_resolved}])
  {
    self->generation_id = [bCopy lastInsertedRowID];
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isAccessibleByUID:(unsigned int)d error:(id *)error
{
  pathComponents = [(NSString *)self->generation_path pathComponents];
  v8 = [pathComponents objectAtIndexedSubscript:0];
  v9 = 1;
  v10 = [pathComponents objectAtIndexedSubscript:1];
  if (([v8 isEqualToString:@"AllUIDs"] & 1) == 0)
  {
    if ([v8 isEqualToString:@"PerUID"])
    {
      if (d)
      {
        v9 = [v10 intValue] == d;
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

      if (error)
      {
        *error = sub_10000F0F8(101, v11, 0);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (id)fullPath:(id)path
{
  pathCopy = path;
  v5 = [NSString alloc];
  libraryRoot = [pathCopy libraryRoot];

  v7 = [v5 initWithFormat:@"%@/%@", libraryRoot, self->generation_path];

  return v7;
}

+ (unint64_t)computePrunableSpace:(id)space
{
  spaceCopy = space;
  v4 = [spaceCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT SUM(generation_size) FROM generations WHERE generation_prunable = 1"];

  unsignedLongLongValue = [v4 unsignedLongLongValue];
  return unsignedLongLongValue;
}

+ (unint64_t)computeNumberOfPruneableStorages:(id)storages
{
  storagesCopy = storages;
  v4 = [storagesCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations  WHERE generations.generation_prunable = 1 GROUP BY generations.generation_storage_id"];

  unsignedLongLongValue = [v4 unsignedLongLongValue];
  return unsignedLongLongValue;
}

+ (unint64_t)computePruneableNumberOfGenerations:(id)generations
{
  generationsCopy = generations;
  v4 = [generationsCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations WHERE generation_prunable = 1"];

  unsignedLongLongValue = [v4 unsignedLongLongValue];
  return unsignedLongLongValue;
}

+ (BOOL)rowExists:(id)exists withStorageID:(int64_t)d andName:(id)name andClientID:(id)iD
{
  iDCopy = iD;
  nameCopy = name;
  existsCopy = exists;
  v12 = [existsCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld   AND generation_name = %@   AND generation_client_id = %@", d, nameCopy, iDCopy}];

  LOBYTE(nameCopy) = [v12 BOOLValue];
  return nameCopy;
}

+ (id)generationRow:(id)row storageID:(int64_t)d name:(id)name clientID:(id)iD error:(id *)error
{
  rowCopy = row;
  iDCopy = iD;
  nameCopy = name;
  v14 = [rowCopy fetchObjectOfClass:objc_opt_class() sql:{@"SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved FROM generations WHERE generation_storage_id = %lld   AND generation_name = %@   AND generation_client_id = %@", d, nameCopy, iDCopy}];

  if (!v14)
  {
    lastError = [rowCopy lastError];
    if ([lastError isSqliteErrorCode:12])
    {
      v16 = [NSString stringWithFormat:@"Generation not found"];
      v17 = sub_100003164();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100026274();
      }

      if (error)
      {
        *error = sub_10000F0F8(105, v16, 0);
      }
    }

    else if (error)
    {
      v18 = lastError;
      *error = lastError;
    }
  }

  return v14;
}

+ (int64_t)tableRowCount:(id)count
{
  countCopy = count;
  v4 = [countCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) FROM generations"];

  longLongValue = [v4 longLongValue];
  return longLongValue;
}

+ (int64_t)countOfGenerations:(id)generations storageID:(int64_t)d clientID:(id)iD
{
  iDCopy = iD;
  generationsCopy = generations;
  v9 = objc_opt_class();
  if (iDCopy)
  {
    v10 = [generationsCopy fetchObjectOfClass:v9 sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld AND generation_client_id = %@", d, iDCopy}];
  }

  else
  {
    v10 = [generationsCopy fetchObjectOfClass:v9 sql:{@"SELECT COUNT(*) FROM generations WHERE generation_storage_id = %lld", d, v14}];
  }

  v11 = v10;

  longLongValue = [v11 longLongValue];
  return longLongValue;
}

+ (id)enumerate:(id)enumerate withOptions:(const GSGenerationEnumeratorOptions *)options
{
  enumerateCopy = enumerate;
  var8 = options->var8;
  var5 = options->var5;
  if (var5 < 0)
  {
    if (var8)
    {
      var9 = options->var9;
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
      v7 = options->var9;
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
  if (options->var0)
  {
    [PQLFormatInjection formatInjection:@"generation_storage_id = %lld AND", options->var0];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v11 = ;
  if (options->var1)
  {
    [PQLFormatInjection formatInjection:@"generation_options & %lld AND", options->var1];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v12 = ;
  if (options->var2)
  {
    [PQLFormatInjection formatInjection:@"NOT (generation_options & %lld) AND", options->var2];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v13 = ;
  if (options->var3)
  {
    [PQLFormatInjection formatInjection:@"generation_status = %d AND", options->var3];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v14 = ;
  if (options->var4)
  {
    [PQLFormatInjection formatInjection:@"generation_client_id = %s AND", options->var4];
  }

  else
  {
    [PQLRawInjection rawInjection:"" length:0];
  }
  v15 = ;
  if (options->var6)
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
  if (options->var7)
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

  v24 = [enumerateCopy fetch:{@"SELECT generation_id, generation_storage_id, generation_name, generation_client_id, generation_path, generation_options, generation_status, generation_add_time, generation_size, generation_conflict_resolved FROM generations WHERE %@ %@ %@ %@ %@ %@ %@ %@ LIMIT %lld", v11, v12, v13, v14, v15, v18, v21, v10, v23}];

  v25 = [v24 enumerateObjectsOfClass:objc_opt_class()];

  return v25;
}

+ (BOOL)setGenerationOptions:(id)options rowID:(int64_t)d options:(unint64_t)a5 error:(id *)error
{
  optionsCopy = options;
  v10 = [optionsCopy execute:{@"UPDATE generations SET generation_options = %lld WHERE generation_id = %lld", a5, d}];
  v11 = v10;
  if (error && (v10 & 1) == 0)
  {
    *error = [optionsCopy translatedError];
  }

  return v11;
}

+ (int64_t)deleteRow:(id)row rowID:(int64_t)d
{
  rowCopy = row;
  if ([rowCopy execute:{@"DELETE FROM generations WHERE generation_id = %lld", d}])
  {
    changes = [rowCopy changes];
  }

  else
  {
    changes = -1;
  }

  return changes;
}

+ (int64_t)deleteRowsWithoutStorage:(id)storage
{
  storageCopy = storage;
  if ([storageCopy execute:@"DELETE FROM generations WHERE generation_id IN (SELECT generation_id FROM generations  LEFT JOIN storage ON generation_storage_id = storage_id  WHERE storage_id IS NULL)"])
  {
    changes = [storageCopy changes];
  }

  else
  {
    changes = -1;
  }

  return changes;
}

+ (int64_t)deleteRowsWithoutData:(id)data atRoot:(id)root
{
  dataCopy = data;
  if ([dataCopy execute:{@"DELETE FROM generations WHERE gs_path_not_exists(%@ || / || generation_path)", root}])
  {
    changes = [dataCopy changes];
  }

  else
  {
    changes = -1;
  }

  return changes;
}

+ (int64_t)fixPendingRowsWithData:(id)data atRoot:(id)root
{
  dataCopy = data;
  if ([dataCopy execute:{@"UPDATE generations SET generation_status = %d WHERE generation_status = %d AND gs_path_exists(%@ || / || generation_path)", 1, 1000, root}])
  {
    changes = [dataCopy changes];
  }

  else
  {
    changes = -1;
  }

  return changes;
}

+ (int64_t)fixupGenerationOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy execute:{@"UPDATE generations SET generation_options = (generation_options | %lld) & %lld WHERE (generation_options & %lld) = 0 OR (generation_options & %lld)", 1, 13, 1, -14}])
  {
    changes = [optionsCopy changes];
  }

  else
  {
    changes = -1;
  }

  return changes;
}

@end