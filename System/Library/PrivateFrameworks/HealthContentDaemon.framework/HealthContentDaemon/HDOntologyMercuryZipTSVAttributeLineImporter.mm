@interface HDOntologyMercuryZipTSVAttributeLineImporter
+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)a3 version:(uint64_t)a4 slot:(void *)a5 graphDatabase:(uint64_t)a6 error:;
+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7;
+ (int64_t)_existingMaxVersion:(uint64_t)a3 slots:(uint64_t)a4 nodeID:(uint64_t)a5 type:(void *)a6 graphDatabase:(uint64_t)a7 error:;
+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)a3 slots:(uint64_t)a4 version:(uint64_t)a5 slot:(uint64_t *)a6 context:(void *)a7 graphDatabase:(uint64_t)a8 error:;
+ (uint64_t)_insertAttributeWithContext:(void *)a3 value:(uint64_t)a4 version:(void *)a5 graphDatabase:(uint64_t)a6 error:;
+ (uint64_t)_insertOrUpdateAttributeWithNodeID:(uint64_t)a3 type:(void *)a4 value:(uint64_t)a5 version:(uint64_t)a6 slot:(uint64_t)a7 context:(void *)a8 graphDatabase:(uint64_t)a9 error:;
+ (uint64_t)_isNewPredicateSetWithNodeID:(uint64_t)a3 type:(char)a4 slot:(uint64_t)a5 context:;
@end

@implementation HDOntologyMercuryZipTSVAttributeLineImporter

+ (BOOL)importLineWithScanner:(id)a3 slot:(int64_t)a4 graphDatabase:(id)a5 context:(id *)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a5;
  v25 = -1;
  if ([v12 scanLongLong:&v25])
  {
    v24 = -1;
    if ([v12 scanLongLong:&v24])
    {
      v23 = 0;
      v14 = [v12 scanString:&v23];
      v15 = v23;
      if (v14)
      {
        v22 = 0;
        if ([v12 scanLongLong:&v22])
        {
          v16 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)a1 _insertOrUpdateAttributeWithNodeID:v25 type:v24 value:v15 version:v22 slot:a4 context:a6 graphDatabase:v13 error:a7];
LABEL_12:

          goto LABEL_13;
        }

        v19 = MEMORY[0x277CCA9B8];
        v20 = @"Error parsing int64_t into version";
      }

      else
      {
        v19 = MEMORY[0x277CCA9B8];
        v20 = @"Error parsing string into attributeValue";
      }

      [v19 hk_assignError:a7 code:129 description:v20];
      v16 = 0;
      goto LABEL_12;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = @"Error parsing int64_t into attributeType";
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = @"Error parsing int64_t into nodeID";
  }

  [v17 hk_assignError:a7 code:129 description:v18];
  v16 = 0;
LABEL_13:

  return v16;
}

+ (uint64_t)_insertOrUpdateAttributeWithNodeID:(uint64_t)a3 type:(void *)a4 value:(uint64_t)a5 version:(uint64_t)a6 slot:(uint64_t)a7 context:(void *)a8 graphDatabase:(uint64_t)a9 error:
{
  v15 = a4;
  v16 = a8;
  v17 = objc_opt_self();
  if ([(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _isNewPredicateSetWithNodeID:a2 type:a3 slot:a6 context:a7]&& ![(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _handleExistingIfRequiredWithContext:a7 version:a5 slot:a6 graphDatabase:v16 error:a9])
  {
    v18 = 0;
  }

  else if (*(a7 + 24) == 1)
  {
    v18 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _insertAttributeWithContext:a7 value:v15 version:a5 graphDatabase:v16 error:a9];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

+ (uint64_t)_isNewPredicateSetWithNodeID:(uint64_t)a3 type:(char)a4 slot:(uint64_t)a5 context:
{
  objc_opt_self();
  v9 = *a5 != a2 || *a5 == -1;
  if (!v9 && *(a5 + 8) == a3)
  {
    return 0;
  }

  *a5 = a2;
  *(a5 + 8) = a3;
  result = 1;
  *(a5 + 24) = 1;
  *(a5 + 16) = 1 << a4;
  return result;
}

+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)a3 version:(uint64_t)a4 slot:(void *)a5 graphDatabase:(uint64_t)a6 error:
{
  v9 = a5;
  v10 = objc_opt_self();
  v16 = 0;
  v15 = 0;
  v11 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)v10 _existingMaxVersion:&v15 slots:*a2 nodeID:a2[1] type:v9 graphDatabase:a6 error:?];
  v13 = v11 && (v11 != 1 || [(HDOntologyMercuryZipTSVAttributeLineImporter *)v10 _deleteOrUpdateExistingVersion:v16 slots:v15 version:a3 slot:v12 context:a2 graphDatabase:v9 error:a6]);

  return v13;
}

+ (uint64_t)_insertAttributeWithContext:(void *)a3 value:(uint64_t)a4 version:(void *)a5 graphDatabase:(uint64_t)a6 error:
{
  v10 = a5;
  v11 = a3;
  objc_opt_self();
  v12 = [v10 addAttributeForNodeID:*a2 type:a2[1] value:v11 version:a4 slots:a2[2] error:a6];

  return v12;
}

+ (int64_t)_existingMaxVersion:(uint64_t)a3 slots:(uint64_t)a4 nodeID:(uint64_t)a5 type:(void *)a6 graphDatabase:(uint64_t)a7 error:
{
  v12 = a6;
  objc_opt_self();
  v13 = [v12 underlyingDatabase];

  v14 = [HDSimpleGraphDatabaseAttributeEntity maxVersion:a2 slots:a3 nodeID:a4 type:a5 database:v13 error:a7];
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
    v18 = [HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:v14 type:v15 database:v17 error:a8];
LABEL_6:
    v19 = v18;

    goto LABEL_7;
  }

  if (v16 != a3)
  {
    v17 = [v13 underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseAttributeEntity updateSlots:v16 nodeID:v14 type:v15 database:v17 error:a8];
    goto LABEL_6;
  }

  v19 = 1;
LABEL_7:

  return v19;
}

@end