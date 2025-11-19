@interface HDOntologyMercuryZipTSVNodeLineImporter
+ (BOOL)_deleteContentForDeletedNodeWithID:(uint64_t)a3 version:(void *)a4 graphDatabase:(uint64_t)a5 error:;
+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7;
+ (uint64_t)_insertOrUpdateNodeWithID:(uint64_t)a3 version:(uint64_t)a4 deleted:(char)a5 slot:(void *)a6 graphDatabase:(void *)a7 error:;
+ (uint64_t)_lookupExistingNode:(uint64_t)a3 rowID:(void *)a4 database:(void *)a5 error:;
+ (uint64_t)_updateExistingNode:(uint64_t)a3 version:(unsigned int)a4 deleted:(char)a5 slot:(void *)a6 graphDatabase:(uint64_t)a7 error:;
@end

@implementation HDOntologyMercuryZipTSVNodeLineImporter

+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7
{
  v9 = a4;
  v11 = a3;
  v12 = a5;
  v19 = -1;
  if (([v11 scanLongLong:&v19] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into rowID";
LABEL_8:
    [v14 hk_assignError:a7 code:129 format:v15];
    v13 = 0;
    goto LABEL_9;
  }

  v18 = 0;
  if (([v11 scanLongLong:&v18] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into version";
    goto LABEL_8;
  }

  v17 = 0;
  if (([v11 scanLongLong:&v17] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into deleted";
    goto LABEL_8;
  }

  v13 = [(HDOntologyMercuryZipTSVNodeLineImporter *)a1 _insertOrUpdateNodeWithID:v19 version:v18 deleted:v17 != 0 slot:v9 graphDatabase:v12 error:a7];
LABEL_9:

  return v13;
}

+ (uint64_t)_insertOrUpdateNodeWithID:(uint64_t)a3 version:(uint64_t)a4 deleted:(char)a5 slot:(void *)a6 graphDatabase:(void *)a7 error:
{
  v12 = a6;
  v13 = objc_opt_self();
  v20 = 0;
  v14 = [(HDOntologyMercuryZipTSVNodeLineImporter *)v13 _lookupExistingNode:a2 rowID:v12 database:a7 error:?];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      v17 = [(HDOntologyMercuryZipTSVNodeLineImporter *)v13 _updateExistingNode:v15 version:a3 deleted:a4 slot:a5 graphDatabase:v12 error:a7];
    }

    else
    {
      v17 = [v12 insertNodeWithID:a2 version:a3 slots:1 << a5 deleted:a4 error:a7];
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (uint64_t)_lookupExistingNode:(uint64_t)a3 rowID:(void *)a4 database:(void *)a5 error:
{
  v8 = a4;
  objc_opt_self();
  v16 = 0;
  v9 = [v8 nodeForID:a3 error:&v16];

  v10 = v16;
  v11 = v10;
  if (v9)
  {
    if (a2)
    {
      v12 = v9;
      *a2 = v9;
    }

    goto LABEL_7;
  }

  if (!v10)
  {
LABEL_7:
    v14 = 1;
    goto LABEL_8;
  }

  if (a5)
  {
    v13 = v10;
    v14 = 0;
    *a5 = v11;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_8:

  return v14;
}

+ (uint64_t)_updateExistingNode:(uint64_t)a3 version:(unsigned int)a4 deleted:(char)a5 slot:(void *)a6 graphDatabase:(uint64_t)a7 error:
{
  v11 = a2;
  v12 = a6;
  v13 = objc_opt_self();
  v14 = [v11 rowID];
  v15 = [v11 version];
  v16 = [v11 slots];
  v17 = v16 | (1 << a5);
  if (v15 >= a3 && v17 == v16)
  {
    goto LABEL_3;
  }

  v24 = v13;
  v25 = a7;
  v19 = a3;
  v20 = a4;
  if (v15 >= a3)
  {
    v19 = [v11 version];
    v20 = [v11 isDeleted];
  }

  v21 = [v12 underlyingDatabase];
  v22 = [HDSimpleGraphDatabaseNodeEntity updateNodeWithID:v14 version:v19 slots:v17 deleted:v20 database:v21 error:v25];

  if (v22 && (!a4 || v15 >= a3 || [(HDOntologyMercuryZipTSVNodeLineImporter *)v24 _deleteContentForDeletedNodeWithID:v14 version:a3 graphDatabase:v12 error:v25]))
  {
LABEL_3:
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (BOOL)_deleteContentForDeletedNodeWithID:(uint64_t)a3 version:(void *)a4 graphDatabase:(uint64_t)a5 error:
{
  v8 = a4;
  objc_opt_self();
  v9 = [v8 underlyingDatabase];

  if ([HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:a2 lessThanVersion:a3 database:v9 error:a5])
  {
    v10 = [HDSimpleGraphDatabaseRelationshipEntity deleteRelationshipsWithSubjectID:a2 lessThanVersion:a3 database:v9 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end