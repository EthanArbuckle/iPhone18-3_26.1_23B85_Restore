@interface HDOntologyMercuryZipTSVNodeLineImporter
+ (BOOL)_deleteContentForDeletedNodeWithID:(uint64_t)d version:(void *)version graphDatabase:(uint64_t)database error:;
+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error;
+ (uint64_t)_insertOrUpdateNodeWithID:(uint64_t)d version:(uint64_t)version deleted:(char)deleted slot:(void *)slot graphDatabase:(void *)database error:;
+ (uint64_t)_lookupExistingNode:(uint64_t)node rowID:(void *)d database:(void *)database error:;
+ (uint64_t)_updateExistingNode:(uint64_t)node version:(unsigned int)version deleted:(char)deleted slot:(void *)slot graphDatabase:(uint64_t)database error:;
@end

@implementation HDOntologyMercuryZipTSVNodeLineImporter

+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error
{
  slotCopy = slot;
  scannerCopy = scanner;
  databaseCopy = database;
  v19 = -1;
  if (([scannerCopy scanLongLong:&v19] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into rowID";
LABEL_8:
    [v14 hk_assignError:error code:129 format:v15];
    v13 = 0;
    goto LABEL_9;
  }

  v18 = 0;
  if (([scannerCopy scanLongLong:&v18] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into version";
    goto LABEL_8;
  }

  v17 = 0;
  if (([scannerCopy scanLongLong:&v17] & 1) == 0)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = @"Error parsing int64_t into deleted";
    goto LABEL_8;
  }

  v13 = [(HDOntologyMercuryZipTSVNodeLineImporter *)self _insertOrUpdateNodeWithID:v19 version:v18 deleted:v17 != 0 slot:slotCopy graphDatabase:databaseCopy error:error];
LABEL_9:

  return v13;
}

+ (uint64_t)_insertOrUpdateNodeWithID:(uint64_t)d version:(uint64_t)version deleted:(char)deleted slot:(void *)slot graphDatabase:(void *)database error:
{
  slotCopy = slot;
  v13 = objc_opt_self();
  v20 = 0;
  v14 = [(HDOntologyMercuryZipTSVNodeLineImporter *)v13 _lookupExistingNode:a2 rowID:slotCopy database:database error:?];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    if (v15)
    {
      v17 = [(HDOntologyMercuryZipTSVNodeLineImporter *)v13 _updateExistingNode:v15 version:d deleted:version slot:deleted graphDatabase:slotCopy error:database];
    }

    else
    {
      v17 = [slotCopy insertNodeWithID:a2 version:d slots:1 << deleted deleted:version error:database];
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (uint64_t)_lookupExistingNode:(uint64_t)node rowID:(void *)d database:(void *)database error:
{
  dCopy = d;
  objc_opt_self();
  v16 = 0;
  v9 = [dCopy nodeForID:node error:&v16];

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

  if (database)
  {
    v13 = v10;
    v14 = 0;
    *database = v11;
  }

  else
  {
    _HKLogDroppedError();
    v14 = 0;
  }

LABEL_8:

  return v14;
}

+ (uint64_t)_updateExistingNode:(uint64_t)node version:(unsigned int)version deleted:(char)deleted slot:(void *)slot graphDatabase:(uint64_t)database error:
{
  v11 = a2;
  slotCopy = slot;
  v13 = objc_opt_self();
  rowID = [v11 rowID];
  version = [v11 version];
  slots = [v11 slots];
  v17 = slots | (1 << deleted);
  if (version >= node && v17 == slots)
  {
    goto LABEL_3;
  }

  v24 = v13;
  databaseCopy = database;
  nodeCopy = node;
  versionCopy = version;
  if (version >= node)
  {
    nodeCopy = [v11 version];
    versionCopy = [v11 isDeleted];
  }

  underlyingDatabase = [slotCopy underlyingDatabase];
  v22 = [HDSimpleGraphDatabaseNodeEntity updateNodeWithID:rowID version:nodeCopy slots:v17 deleted:versionCopy database:underlyingDatabase error:databaseCopy];

  if (v22 && (!version || version >= node || [(HDOntologyMercuryZipTSVNodeLineImporter *)v24 _deleteContentForDeletedNodeWithID:rowID version:node graphDatabase:slotCopy error:databaseCopy]))
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

+ (BOOL)_deleteContentForDeletedNodeWithID:(uint64_t)d version:(void *)version graphDatabase:(uint64_t)database error:
{
  versionCopy = version;
  objc_opt_self();
  underlyingDatabase = [versionCopy underlyingDatabase];

  if ([HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:a2 lessThanVersion:d database:underlyingDatabase error:database])
  {
    v10 = [HDSimpleGraphDatabaseRelationshipEntity deleteRelationshipsWithSubjectID:a2 lessThanVersion:d database:underlyingDatabase error:database];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end