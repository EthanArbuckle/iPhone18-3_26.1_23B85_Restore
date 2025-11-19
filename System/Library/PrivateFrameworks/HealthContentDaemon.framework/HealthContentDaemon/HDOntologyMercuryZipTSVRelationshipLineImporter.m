@interface HDOntologyMercuryZipTSVRelationshipLineImporter
+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)a3 version:(uint64_t)a4 slot:(void *)a5 graphDatabase:(uint64_t)a6 error:;
+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7;
+ (int64_t)_existingMaxVersion:(uint64_t)a3 slots:(uint64_t)a4 nodeID:(uint64_t)a5 type:(void *)a6 graphDatabase:(uint64_t)a7 error:;
+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)a3 slots:(uint64_t)a4 version:(uint64_t)a5 slot:(uint64_t *)a6 context:(void *)a7 graphDatabase:(uint64_t)a8 error:;
+ (uint64_t)_insertOrUpdateRelationshipWithSubjectID:(uint64_t)a3 type:(uint64_t)a4 objectID:(uint64_t)a5 version:(uint64_t)a6 slot:(uint64_t)a7 context:(void *)a8 graphDatabase:(uint64_t)a9 error:;
+ (uint64_t)_insertRelationshipWithContext:(uint64_t)a3 objectID:(uint64_t)a4 version:(void *)a5 graphDatabase:(uint64_t)a6 error:;
@end

@implementation HDOntologyMercuryZipTSVRelationshipLineImporter

+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v21 = -1;
  if (([v12 scanLongLong:&v21] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into subjectID";
LABEL_9:
    [v15 hk_assignError:a7 code:129 format:v16];
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v20 = -1;
  if (([v12 scanLongLong:&v20] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into relationshipType";
    goto LABEL_9;
  }

  v19 = -1;
  if (([v12 scanLongLong:&v19] & 1) == 0)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Error parsing int64_t into objectID";
    goto LABEL_9;
  }

  v18 = 0;
  if (([v12 scanLongLong:&v18] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:129 description:@"Error parsing int64_t into version"];
    goto LABEL_10;
  }

  v14 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)a1 _insertOrUpdateRelationshipWithSubjectID:v21 type:v20 objectID:v19 version:v18 slot:a4 context:a6 graphDatabase:v13 error:a7];
LABEL_11:

  return v14;
}

+ (uint64_t)_insertOrUpdateRelationshipWithSubjectID:(uint64_t)a3 type:(uint64_t)a4 objectID:(uint64_t)a5 version:(uint64_t)a6 slot:(uint64_t)a7 context:(void *)a8 graphDatabase:(uint64_t)a9 error:
{
  v15 = a8;
  v16 = objc_opt_self();
  if ([(HDOntologyMercuryZipTSVAttributeLineImporter *)v16 _isNewPredicateSetWithNodeID:a2 type:a3 slot:a6 context:a7]&& ![(HDOntologyMercuryZipTSVRelationshipLineImporter *)v16 _handleExistingIfRequiredWithContext:a7 version:a5 slot:a6 graphDatabase:v15 error:a9])
  {
    v17 = 0;
  }

  else if (*(a7 + 24) == 1)
  {
    v17 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v16 _insertRelationshipWithContext:a7 objectID:a4 version:a5 graphDatabase:v15 error:a9];
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)a3 version:(uint64_t)a4 slot:(void *)a5 graphDatabase:(uint64_t)a6 error:
{
  v9 = a5;
  v10 = objc_opt_self();
  v16 = 0;
  v15 = 0;
  v11 = [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v10 _existingMaxVersion:&v15 slots:*a2 nodeID:a2[1] type:v9 graphDatabase:a6 error:?];
  v13 = v11 && (v11 != 1 || [(HDOntologyMercuryZipTSVRelationshipLineImporter *)v10 _deleteOrUpdateExistingVersion:v16 slots:v15 version:a3 slot:v12 context:a2 graphDatabase:v9 error:a6]);

  return v13;
}

+ (uint64_t)_insertRelationshipWithContext:(uint64_t)a3 objectID:(uint64_t)a4 version:(void *)a5 graphDatabase:(uint64_t)a6 error:
{
  v10 = a5;
  objc_opt_self();
  v11 = [v10 addRelationshipWithSubjectNodeID:*a2 type:a2[1] objectNodeID:a3 version:a4 slots:a2[2] error:a6];

  return v11;
}

+ (int64_t)_existingMaxVersion:(uint64_t)a3 slots:(uint64_t)a4 nodeID:(uint64_t)a5 type:(void *)a6 graphDatabase:(uint64_t)a7 error:
{
  v12 = a6;
  objc_opt_self();
  v13 = [v12 underlyingDatabase];

  v14 = [HDSimpleGraphDatabaseRelationshipEntity maxVersion:a2 slots:a3 subjectNodeID:a4 relationshipID:a5 database:v13 error:a7];
  return v14;
}

+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)a3 slots:(uint64_t)a4 version:(uint64_t)a5 slot:(uint64_t *)a6 context:(void *)a7 graphDatabase:(uint64_t)a8 error:
{
  v13 = a7;
  objc_opt_self();
  v14 = *a6;
  v15 = a6[1];
  v16 = a6[2] | a3;
  a6[2] = v16;
  *(a6 + 24) = a4 > a2;
  if (a4 > a2)
  {
    v17 = [v13 underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseRelationshipEntity deleteRelationshipsWithSubjectID:v14 relationshipID:v15 database:v17 error:a8];
LABEL_6:
    v19 = v18;

    goto LABEL_7;
  }

  if (v16 != a3)
  {
    v17 = [v13 underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseRelationshipEntity updateSlots:v16 subjectNodeID:v14 relationshipID:v15 database:v17 error:a8];
    goto LABEL_6;
  }

  v19 = 1;
LABEL_7:

  return v19;
}

@end