@interface HDOntologyMercuryZipTSVRelationshipLineImporter
+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)context version:(uint64_t)version slot:(void *)slot graphDatabase:(uint64_t)database error:;
+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error;
+ (int64_t)_existingMaxVersion:(uint64_t)version slots:(uint64_t)slots nodeID:(uint64_t)d type:(void *)type graphDatabase:(uint64_t)database error:;
+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)version slots:(uint64_t)slots version:(uint64_t)a5 slot:(uint64_t *)slot context:(void *)context graphDatabase:(uint64_t)database error:;
+ (uint64_t)_insertOrUpdateRelationshipWithSubjectID:(uint64_t)d type:(uint64_t)type objectID:(uint64_t)iD version:(uint64_t)version slot:(uint64_t)slot context:(void *)context graphDatabase:(uint64_t)database error:;
+ (uint64_t)_insertRelationshipWithContext:(uint64_t)context objectID:(uint64_t)d version:(void *)version graphDatabase:(uint64_t)database error:;
@end

@implementation HDOntologyMercuryZipTSVRelationshipLineImporter

+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error
{
  scannerCopy = scanner;
  databaseCopy = database;
  v21 = -1;
  if (([scannerCopy scanLongLong:&v21] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into subjectID";
LABEL_9:
    [v15 hk_assignError:error code:129 format:v16];
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v20 = -1;
  if (([scannerCopy scanLongLong:&v20] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into relationshipType";
    goto LABEL_9;
  }

  v19 = -1;
  if (([scannerCopy scanLongLong:&v19] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into objectID";
    goto LABEL_9;
  }

  v18 = 0;
  if (([scannerCopy scanLongLong:&v18] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:129 description:@"Error parsing int64_t into version"];
    goto LABEL_10;
  }

  v14 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)self _insertOrUpdateRelationshipWithSubjectID:v21 type:v20 objectID:v19 version:v18 slot:slot context:context graphDatabase:databaseCopy error:error];
LABEL_11:

  return v14;
}

+ (uint64_t)_insertOrUpdateRelationshipWithSubjectID:(uint64_t)d type:(uint64_t)type objectID:(uint64_t)iD version:(uint64_t)version slot:(uint64_t)slot context:(void *)context graphDatabase:(uint64_t)database error:
{
  contextCopy = context;
  v16 = objc_opt_self();
  if ([(HDOntologyMercuryZipTSVAttributeLineImporter *)v16 _isNewPredicateSetWithNodeID:a2 type:d slot:version context:slot]&& ![(HDOntologyMercuryZipTSVRelationshipLineImporter *)v16 _handleExistingIfRequiredWithContext:slot version:iD slot:version graphDatabase:contextCopy error:database])
  {
    v17 = 0;
  }

  else if (*(slot + 24) == 1)
  {
    v17 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v16 _insertRelationshipWithContext:slot objectID:type version:iD graphDatabase:contextCopy error:database];
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)context version:(uint64_t)version slot:(void *)slot graphDatabase:(uint64_t)database error:
{
  slotCopy = slot;
  v10 = objc_opt_self();
  v16 = 0;
  v15 = 0;
  v11 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v10 _existingMaxVersion:&v15 slots:*a2 nodeID:a2[1] type:slotCopy graphDatabase:database error:?];
  v13 = v11 && (v11 != 1 || [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v10 _deleteOrUpdateExistingVersion:v16 slots:v15 version:context slot:v12 context:a2 graphDatabase:slotCopy error:database]);

  return v13;
}

+ (uint64_t)_insertRelationshipWithContext:(uint64_t)context objectID:(uint64_t)d version:(void *)version graphDatabase:(uint64_t)database error:
{
  versionCopy = version;
  objc_opt_self();
  v11 = [versionCopy addRelationshipWithSubjectNodeID:*a2 type:a2[1] objectNodeID:context version:d slots:a2[2] error:database];

  return v11;
}

+ (int64_t)_existingMaxVersion:(uint64_t)version slots:(uint64_t)slots nodeID:(uint64_t)d type:(void *)type graphDatabase:(uint64_t)database error:
{
  typeCopy = type;
  objc_opt_self();
  underlyingDatabase = [typeCopy underlyingDatabase];

  v14 = [HDSimpleGraphDatabaseRelationshipEntity maxVersion:a2 slots:version subjectNodeID:slots relationshipID:d database:underlyingDatabase error:database];
  return v14;
}

+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)version slots:(uint64_t)slots version:(uint64_t)a5 slot:(uint64_t *)slot context:(void *)context graphDatabase:(uint64_t)database error:
{
  contextCopy = context;
  objc_opt_self();
  v14 = *slot;
  v15 = slot[1];
  v16 = slot[2] | version;
  slot[2] = v16;
  *(slot + 24) = slots > a2;
  if (slots > a2)
  {
    underlyingDatabase = [contextCopy underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseRelationshipEntity deleteRelationshipsWithSubjectID:v14 relationshipID:v15 database:underlyingDatabase error:database];
LABEL_6:
    v19 = v18;

    goto LABEL_7;
  }

  if (v16 != version)
  {
    underlyingDatabase = [contextCopy underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseRelationshipEntity updateSlots:v16 subjectNodeID:v14 relationshipID:v15 database:underlyingDatabase error:database];
    goto LABEL_6;
  }

  v19 = 1;
LABEL_7:

  return v19;
}

@end