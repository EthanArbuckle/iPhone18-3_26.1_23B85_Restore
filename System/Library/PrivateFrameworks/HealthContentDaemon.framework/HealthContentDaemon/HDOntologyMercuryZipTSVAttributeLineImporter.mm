@interface HDOntologyMercuryZipTSVAttributeLineImporter
+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)context version:(uint64_t)version slot:(void *)slot graphDatabase:(uint64_t)database error:;
+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error;
+ (int64_t)_existingMaxVersion:(uint64_t)version slots:(uint64_t)slots nodeID:(uint64_t)d type:(void *)type graphDatabase:(uint64_t)database error:;
+ (uint64_t)_deleteOrUpdateExistingVersion:(uint64_t)version slots:(uint64_t)slots version:(uint64_t)a5 slot:(uint64_t *)slot context:(void *)context graphDatabase:(uint64_t)database error:;
+ (uint64_t)_insertAttributeWithContext:(void *)context value:(uint64_t)value version:(void *)version graphDatabase:(uint64_t)database error:;
+ (uint64_t)_insertOrUpdateAttributeWithNodeID:(uint64_t)d type:(void *)type value:(uint64_t)value version:(uint64_t)version slot:(uint64_t)slot context:(void *)context graphDatabase:(uint64_t)database error:;
+ (uint64_t)_isNewPredicateSetWithNodeID:(uint64_t)d type:(char)type slot:(uint64_t)slot context:;
@end

@implementation HDOntologyMercuryZipTSVAttributeLineImporter

+ (BOOL)importLineWithScanner:(id)scanner slot:(int64_t)slot graphDatabase:(id)database context:(id *)context error:(id *)error
{
  scannerCopy = scanner;
  databaseCopy = database;
  v25 = -1;
  if ([scannerCopy scanLongLong:&v25])
  {
    v24 = -1;
    if ([scannerCopy scanLongLong:&v24])
    {
      v23 = 0;
      v14 = [scannerCopy scanString:&v23];
      v15 = v23;
      if (v14)
      {
        v22 = 0;
        if ([scannerCopy scanLongLong:&v22])
        {
          v16 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)self _insertOrUpdateAttributeWithNodeID:v25 type:v24 value:v15 version:v22 slot:slot context:context graphDatabase:databaseCopy error:error];
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

      [v19 hk_assignError:error code:129 description:v20];
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

  [v17 hk_assignError:error code:129 description:v18];
  v16 = 0;
LABEL_13:

  return v16;
}

+ (uint64_t)_insertOrUpdateAttributeWithNodeID:(uint64_t)d type:(void *)type value:(uint64_t)value version:(uint64_t)version slot:(uint64_t)slot context:(void *)context graphDatabase:(uint64_t)database error:
{
  typeCopy = type;
  contextCopy = context;
  v17 = objc_opt_self();
  if ([(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _isNewPredicateSetWithNodeID:a2 type:d slot:version context:slot]&& ![(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _handleExistingIfRequiredWithContext:slot version:value slot:version graphDatabase:contextCopy error:database])
  {
    v18 = 0;
  }

  else if (*(slot + 24) == 1)
  {
    v18 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)v17 _insertAttributeWithContext:slot value:typeCopy version:value graphDatabase:contextCopy error:database];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

+ (uint64_t)_isNewPredicateSetWithNodeID:(uint64_t)d type:(char)type slot:(uint64_t)slot context:
{
  objc_opt_self();
  v9 = *slot != a2 || *slot == -1;
  if (!v9 && *(slot + 8) == d)
  {
    return 0;
  }

  *slot = a2;
  *(slot + 8) = d;
  result = 1;
  *(slot + 24) = 1;
  *(slot + 16) = 1 << type;
  return result;
}

+ (BOOL)_handleExistingIfRequiredWithContext:(uint64_t)context version:(uint64_t)version slot:(void *)slot graphDatabase:(uint64_t)database error:
{
  slotCopy = slot;
  v10 = objc_opt_self();
  v16 = 0;
  v15 = 0;
  v11 = [(HDOntologyMercuryZipTSVAttributeLineImporter *)v10 _existingMaxVersion:&v15 slots:*a2 nodeID:a2[1] type:slotCopy graphDatabase:database error:?];
  v13 = v11 && (v11 != 1 || [(HDOntologyMercuryZipTSVAttributeLineImporter *)v10 _deleteOrUpdateExistingVersion:v16 slots:v15 version:context slot:v12 context:a2 graphDatabase:slotCopy error:database]);

  return v13;
}

+ (uint64_t)_insertAttributeWithContext:(void *)context value:(uint64_t)value version:(void *)version graphDatabase:(uint64_t)database error:
{
  versionCopy = version;
  contextCopy = context;
  objc_opt_self();
  v12 = [versionCopy addAttributeForNodeID:*a2 type:a2[1] value:contextCopy version:value slots:a2[2] error:database];

  return v12;
}

+ (int64_t)_existingMaxVersion:(uint64_t)version slots:(uint64_t)slots nodeID:(uint64_t)d type:(void *)type graphDatabase:(uint64_t)database error:
{
  typeCopy = type;
  objc_opt_self();
  underlyingDatabase = [typeCopy underlyingDatabase];

  v14 = [HDSimpleGraphDatabaseAttributeEntity maxVersion:a2 slots:version nodeID:slots type:d database:underlyingDatabase error:database];
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
    v18 = [HDSimpleGraphDatabaseAttributeEntity deleteAttributesWithNodeID:v14 type:v15 database:underlyingDatabase error:database];
LABEL_6:
    v19 = v18;

    goto LABEL_7;
  }

  if (v16 != version)
  {
    underlyingDatabase = [contextCopy underlyingDatabase];
    v18 = [HDSimpleGraphDatabaseAttributeEntity updateSlots:v16 nodeID:v14 type:v15 database:underlyingDatabase error:database];
    goto LABEL_6;
  }

  v19 = 1;
LABEL_7:

  return v19;
}

@end