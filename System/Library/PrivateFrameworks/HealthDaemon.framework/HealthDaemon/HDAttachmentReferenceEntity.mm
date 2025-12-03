@interface HDAttachmentReferenceEntity
+ (BOOL)deleteReferences:(id)references cloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error;
+ (BOOL)enumerateReferencesForAttachmentIdentifier:(id)identifier type:(int64_t)type transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)enumerateReferencesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)filteredNonTombstoneReferences:(id)references transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler;
+ (BOOL)insertReference:(id)reference profile:(id)profile error:(id *)error;
+ (BOOL)insertTombstones:(id)tombstones cloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error;
+ (BOOL)setCloudStatus:(int64_t)status references:(id)references transaction:(id)transaction error:(id *)error;
+ (BOOL)setCloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error;
+ (id)_insertIfDoesNotExistReference:(id)reference transaction:(id)transaction error:(id *)error;
+ (id)_insertReference:(id)reference databaseTransaction:(id)transaction error:(id *)error;
+ (id)_propertiesForEntity;
+ (id)anyReferenceWithPredicate:(id)predicate profile:(id)profile error:(id *)error;
+ (id)referenceWithIdentifier:(id)identifier profile:(id)profile error:(id *)error;
@end

@implementation HDAttachmentReferenceEntity

+ (BOOL)insertReference:(id)reference profile:(id)profile error:(id *)error
{
  referenceCopy = reference;
  profileCopy = profile;
  metadata = [referenceCopy metadata];
  if (metadata && (v10 = metadata, [referenceCopy metadata], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hk_validateAttachmentMetadataKeysAndValuesWithError:", error), v11, v10, !v12))
  {
    v14 = 0;
  }

  else
  {
    v13 = [[HDInsertAttachmentReferenceOperation alloc] initWithReference:referenceCopy];
    v14 = [(HDJournalableOperation *)v13 performOrJournalWithProfile:profileCopy error:error];
  }

  return v14;
}

+ (id)anyReferenceWithPredicate:(id)predicate profile:(id)profile error:(id *)error
{
  predicateCopy = predicate;
  profileCopy = profile;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__198;
  v22 = __Block_byref_object_dispose__198;
  v23 = 0;
  database = [profileCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HDAttachmentReferenceEntity_anyReferenceWithPredicate_profile_error___block_invoke;
  v14[3] = &unk_278616AA0;
  selfCopy = self;
  v11 = predicateCopy;
  v15 = v11;
  v16 = &v18;
  [self performReadTransactionWithHealthDatabase:database error:error block:v14];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

uint64_t __71__HDAttachmentReferenceEntity_anyReferenceWithPredicate_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = a2;
  v7 = [v6 databaseForEntityClass:objc_opt_class()];

  v8 = [*(a1 + 48) anyInDatabase:v7 predicate:*(a1 + 32) error:a3];
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = +[HDAttachmentReferenceEntity _propertiesForEntity];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__HDAttachmentReferenceEntity_anyReferenceWithPredicate_profile_error___block_invoke_2;
    v13[3] = &unk_278618B98;
    v13[4] = *(a1 + 40);
    v11 = [v8 getValuesForProperties:v10 database:v7 error:a3 handler:v13];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (id)_propertiesForEntity
{
  v3[10] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v3[0] = @"identifier";
  v3[1] = @"schema_identifier";
  v3[2] = @"schema_version";
  v3[3] = @"object_identifier";
  v3[4] = @"attachment_identifier";
  v3[5] = @"creation_date";
  v3[6] = @"options";
  v3[7] = @"metadata";
  v3[8] = @"type";
  v3[9] = @"cloud_status";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:10];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void __71__HDAttachmentReferenceEntity_anyReferenceWithPredicate_profile_error___block_invoke_2(uint64_t a1)
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsUUID();
  v17 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:v3 schemaVersion:v4 objectIdentifier:v5 attachmentIdentifier:v6];

  v7 = [HDAttachmentReference alloc];
  v8 = HDSQLiteColumnWithNameAsUUID();
  v9 = HDSQLiteColumnWithNameAsDate();
  v10 = HDSQLiteColumnWithNameAsInt64();
  v11 = HDSQLiteColumnWithNameAsData();
  v12 = [HDCodableMetadataDictionary decodeMetadataFromData:v11];
  v13 = HDSQLiteColumnWithNameAsInt64();
  v14 = [(HDAttachmentReference *)v7 initWithIdentifier:v8 schemaIdentifier:v17 creationDate:v9 options:v10 metadata:v12 type:v13 cloudStatus:HDSQLiteColumnWithNameAsInt64()];
  v15 = *(*(a1 + 32) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

+ (id)referenceWithIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  v8 = MEMORY[0x277D10B18];
  profileCopy = profile;
  v10 = [v8 predicateWithProperty:@"identifier" equalToValue:identifier];
  v11 = [self anyReferenceWithPredicate:v10 profile:profileCopy error:error];

  return v11;
}

+ (BOOL)enumerateReferencesWithPredicate:(id)predicate transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [self queryWithDatabase:v12 predicate:predicateCopy];

  v14 = +[HDAttachmentReferenceEntity _propertiesForEntity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__HDAttachmentReferenceEntity_enumerateReferencesWithPredicate_transaction_error_enumerationHandler___block_invoke;
  v17[3] = &unk_2786145A8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  LOBYTE(error) = [v13 enumerateProperties:v14 error:error enumerationHandler:v17];

  return error;
}

uint64_t __101__HDAttachmentReferenceEntity_enumerateReferencesWithPredicate_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:v3 schemaVersion:v4 objectIdentifier:v5 attachmentIdentifier:v6];

  v8 = [HDAttachmentReference alloc];
  v9 = HDSQLiteColumnWithNameAsUUID();
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = HDSQLiteColumnWithNameAsData();
  v13 = [HDCodableMetadataDictionary decodeMetadataFromData:v12];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [(HDAttachmentReference *)v8 initWithIdentifier:v9 schemaIdentifier:v7 creationDate:v10 options:v11 metadata:v13 type:v14 cloudStatus:HDSQLiteColumnWithNameAsInt64()];

  v16 = (*(*(a1 + 32) + 16))();
  return v16;
}

+ (BOOL)enumerateReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  handlerCopy = handler;
  v15 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v18 = [v15 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", @"identifier", @"schema_identifier", @"schema_version", @"object_identifier", @"attachment_identifier", @"creation_date", @"options", @"metadata", @"type", @"cloud_status", disambiguatedDatabaseTable, @"object_identifier", @"schema_identifier"];

  v19 = [transactionCopy databaseForEntityClass:self];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __124__HDAttachmentReferenceEntity_enumerateReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke;
  v26[3] = &unk_278613038;
  v27 = identifierCopy;
  v28 = schemaIdentifierCopy;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __124__HDAttachmentReferenceEntity_enumerateReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke_2;
  v24[3] = &unk_278613B30;
  v25 = handlerCopy;
  v20 = handlerCopy;
  v21 = schemaIdentifierCopy;
  v22 = identifierCopy;
  LOBYTE(error) = [v19 executeSQL:v18 error:error bindingHandler:v26 enumerationHandler:v24];

  return error;
}

uint64_t __124__HDAttachmentReferenceEntity_enumerateReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  HDSQLiteBindStringToStatement();
  v3 = *(a1 + 40);

  return HDSQLiteBindStringToStatement();
}

uint64_t __124__HDAttachmentReferenceEntity_enumerateReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1)
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:v3 schemaVersion:v4 objectIdentifier:v5 attachmentIdentifier:v6];

  v8 = [HDAttachmentReference alloc];
  v9 = HDSQLiteColumnWithNameAsUUID();
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = HDSQLiteColumnWithNameAsData();
  v13 = [HDCodableMetadataDictionary decodeMetadataFromData:v12];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [(HDAttachmentReference *)v8 initWithIdentifier:v9 schemaIdentifier:v7 creationDate:v10 options:v11 metadata:v13 type:v14 cloudStatus:HDSQLiteColumnWithNameAsInt64()];

  v16 = (*(*(a1 + 32) + 16))();
  return v16;
}

+ (BOOL)enumerateReferencesForAttachmentIdentifier:(id)identifier type:(int64_t)type transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = MEMORY[0x277CCACA8];
  transactionCopy = transaction;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v17 = [v14 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", @"identifier", @"schema_identifier", @"schema_version", @"object_identifier", @"attachment_identifier", @"creation_date", @"options", @"metadata", @"type", @"cloud_status", disambiguatedDatabaseTable, @"attachment_identifier", @"type"];

  v18 = [transactionCopy databaseForEntityClass:self];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __116__HDAttachmentReferenceEntity_enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler___block_invoke;
  v28[3] = &unk_278615C80;
  v29 = v17;
  v24 = handlerCopy;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __116__HDAttachmentReferenceEntity_enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler___block_invoke_2;
  v25[3] = &unk_278613B58;
  v26 = identifierCopy;
  typeCopy = type;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __116__HDAttachmentReferenceEntity_enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler___block_invoke_3;
  v23[3] = &unk_278613B30;
  v19 = handlerCopy;
  v20 = identifierCopy;
  v21 = v17;
  LOBYTE(error) = [v18 executeCachedStatementForKey:&enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler__lookupKey error:error SQLGenerator:v28 bindingHandler:v25 enumerationHandler:v23];

  return error;
}

uint64_t __116__HDAttachmentReferenceEntity_enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  HDSQLiteBindFoundationValueToStatement();
  v5 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v5);
}

uint64_t __116__HDAttachmentReferenceEntity_enumerateReferencesForAttachmentIdentifier_type_transaction_error_enumerationHandler___block_invoke_3(uint64_t a1)
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:v3 schemaVersion:v4 objectIdentifier:v5 attachmentIdentifier:v6];

  v8 = [HDAttachmentReference alloc];
  v9 = HDSQLiteColumnWithNameAsUUID();
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = HDSQLiteColumnWithNameAsData();
  v13 = [HDCodableMetadataDictionary decodeMetadataFromData:v12];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [(HDAttachmentReference *)v8 initWithIdentifier:v9 schemaIdentifier:v7 creationDate:v10 options:v11 metadata:v13 type:v14 cloudStatus:HDSQLiteColumnWithNameAsInt64()];

  v16 = (*(*(a1 + 32) + 16))();
  return v16;
}

+ (BOOL)setCloudStatus:(int64_t)status references:(id)references transaction:(id)transaction error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  referencesCopy = references;
  v11 = [transaction databaseForEntityClass:self];
  v12 = MEMORY[0x277D10B28];
  v13 = [referencesCopy hk_map:&__block_literal_global_238];

  v14 = [v12 containsPredicateWithProperty:@"identifier" values:v13];

  v19[0] = @"cloud_status";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__HDAttachmentReferenceEntity_setCloudStatus_references_transaction_error___block_invoke_2;
  v18[3] = &__block_descriptor_40_e34_v16__0__HDSQLiteStatementBinder__8l;
  v18[4] = status;
  LOBYTE(error) = [(HDSQLiteEntity *)HDAttachmentReferenceEntity updateProperties:v15 predicate:v14 database:v11 error:error bindingHandler:v18];

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

+ (BOOL)setCloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error
{
  protectedDatabase = [transaction protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HDAttachmentReferenceEntity_setCloudStatus_transaction_error___block_invoke_2;
  v9[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v9[4] = status;
  LOBYTE(error) = [protectedDatabase executeCachedStatementForKey:&setCloudStatus_transaction_error__lookupKey error:error SQLGenerator:&__block_literal_global_375_0 bindingHandler:v9 enumerationHandler:0];

  return error;
}

id __64__HDAttachmentReferenceEntity_setCloudStatus_transaction_error___block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = +[(HDSQLiteSchemaEntity *)HDAttachmentReferenceEntity];
  v2 = [v0 stringWithFormat:@"UPDATE %@ SET %@ = ?", v1, @"cloud_status"];

  return v2;
}

+ (BOOL)filteredNonTombstoneReferences:(id)references transaction:(id)transaction error:(id *)error enumerationHandler:(id)handler
{
  referencesCopy = references;
  handlerCopy = handler;
  v12 = [transaction databaseForEntityClass:self];
  v13 = [referencesCopy hk_map:&__block_literal_global_381_0];
  v14 = [v13 componentsJoinedByString:{@", "}];

  v15 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v17 = [v15 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ = ? AND %@ IN (%@)", @"identifier", @"schema_identifier", @"schema_version", @"object_identifier", @"attachment_identifier", @"creation_date", @"options", @"metadata", @"type", @"cloud_status", disambiguatedDatabaseTable, @"type", @"identifier", v14, 0];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __99__HDAttachmentReferenceEntity_filteredNonTombstoneReferences_transaction_error_enumerationHandler___block_invoke_2;
  v23[3] = &unk_278614860;
  v24 = referencesCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__HDAttachmentReferenceEntity_filteredNonTombstoneReferences_transaction_error_enumerationHandler___block_invoke_4;
  v21[3] = &unk_278613B30;
  v22 = handlerCopy;
  v18 = handlerCopy;
  v19 = referencesCopy;
  LOBYTE(error) = [v12 executeSQL:v17 error:error bindingHandler:v23 enumerationHandler:v21];

  return error;
}

void __99__HDAttachmentReferenceEntity_filteredNonTombstoneReferences_transaction_error_enumerationHandler___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  v3 = [*(a1 + 32) hk_map:&__block_literal_global_392];
  HDSQLiteBindFoundationValuesToStatement();
}

uint64_t __99__HDAttachmentReferenceEntity_filteredNonTombstoneReferences_transaction_error_enumerationHandler___block_invoke_4(uint64_t a1)
{
  v2 = [HDAttachmentReferenceSchemaIdentifier alloc];
  v3 = HDSQLiteColumnWithNameAsString();
  v4 = HDSQLiteColumnWithNameAsInt64();
  v5 = HDSQLiteColumnWithNameAsString();
  v6 = HDSQLiteColumnWithNameAsUUID();
  v7 = [(HDAttachmentReferenceSchemaIdentifier *)v2 initWithSchemaIdentifier:v3 schemaVersion:v4 objectIdentifier:v5 attachmentIdentifier:v6];

  v8 = [HDAttachmentReference alloc];
  v9 = HDSQLiteColumnWithNameAsUUID();
  v10 = HDSQLiteColumnWithNameAsDate();
  v11 = HDSQLiteColumnWithNameAsInt64();
  v12 = HDSQLiteColumnWithNameAsData();
  v13 = [HDCodableMetadataDictionary decodeMetadataFromData:v12];
  v14 = HDSQLiteColumnWithNameAsInt64();
  v15 = [(HDAttachmentReference *)v8 initWithIdentifier:v9 schemaIdentifier:v7 creationDate:v10 options:v11 metadata:v13 type:v14 cloudStatus:HDSQLiteColumnWithNameAsInt64()];

  v16 = (*(*(a1 + 32) + 16))();
  return v16;
}

+ (BOOL)insertTombstones:(id)tombstones cloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  tombstonesCopy = tombstones;
  transactionCopy = transaction;
  v11 = [transactionCopy databaseForEntityClass:self];
  v12 = [tombstonesCopy hk_map:&__block_literal_global_394];
  v13 = [v12 componentsJoinedByString:{@", "}];

  v14 = MEMORY[0x277CCACA8];
  selfCopy = self;
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v16 = [v14 stringWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ? AND %@ IN (%@)", @"identifier", disambiguatedDatabaseTable, @"type", @"identifier", v13, 0];

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_2;
  v65[3] = &unk_278614860;
  v18 = tombstonesCopy;
  v66 = v18;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_4;
  v63[3] = &unk_278614098;
  v19 = v17;
  v64 = v19;
  v51 = v11;
  LOBYTE(tombstonesCopy) = [v11 executeSQL:v16 error:&v67 bindingHandler:v65 enumerationHandler:v63];
  v20 = v67;
  v21 = v20;
  if (tombstonesCopy)
  {
    errorCopy = error;
    v44 = v20;
    v46 = v16;
    v48 = transactionCopy;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_5;
    v61[3] = &unk_278621E60;
    v22 = v19;
    v62 = v22;
    v23 = [v18 hk_filter:v61];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_6;
    v59[3] = &unk_278621E60;
    v60 = v22;
    v45 = v18;
    v47 = [v18 hk_filter:v59];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v56;
LABEL_4:
      v28 = 0;
      while (1)
      {
        if (*v56 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v55 + 1) + 8 * v28);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_7;
        v53[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v53[4] = selfCopy;
        v54 = 0;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_8;
        v52[3] = &unk_278613B58;
        v52[4] = v29;
        v52[5] = status;
        v30 = [v51 executeCachedStatementForKey:&insertTombstones_cloudStatus_transaction_error__insertKey error:&v54 SQLGenerator:v53 bindingHandler:v52 enumerationHandler:0];
        v31 = v54;
        v32 = v31;
        if ((v30 & 1) == 0)
        {
          if (!v31)
          {
            v38 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to insert tombstones."];
            if (v38)
            {
              goto LABEL_24;
            }

            v32 = 0;
            v39 = 1;
            v16 = v46;
            v18 = v45;
            v21 = v44;
LABEL_28:

            v34 = v39;
LABEL_29:

            v33 = v47;
            transactionCopy = v48;
            goto LABEL_30;
          }

          if (([v31 hd_isConstraintViolation] & 1) == 0)
          {
            v38 = v32;
LABEL_24:
            v21 = v44;
            if (errorCopy)
            {
              v40 = v38;
              *errorCopy = v38;
            }

            else
            {
              _HKLogDroppedError();
            }

            v16 = v46;
            v18 = v45;

            v39 = 0;
            v34 = 0;
            if (!v32)
            {
              goto LABEL_28;
            }

            goto LABEL_29;
          }
        }

        if (v26 == ++v28)
        {
          v26 = [v24 countByEnumeratingWithState:&v55 objects:v68 count:16];
          if (v26)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v33 = v47;
    transactionCopy = v48;
    v34 = [HDAttachmentReferenceEntity setCloudStatus:status references:v47 transaction:v48 error:errorCopy];
    v16 = v46;
    v18 = v45;
    v21 = v44;
LABEL_30:

    v35 = v62;
    goto LABEL_31;
  }

  if (v20)
  {
    v35 = v20;
  }

  else
  {
    v35 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to fetch filtered non-tombstone references."];
    if (!v35)
    {
      v34 = 1;
LABEL_31:

      v37 = v34;
      goto LABEL_32;
    }
  }

  if (error)
  {
    v36 = v35;
    *error = v35;
  }

  else
  {
    _HKLogDroppedError();
  }

  v34 = 0;
  v37 = 0;
  if (!v21)
  {
    goto LABEL_31;
  }

LABEL_32:

  v41 = *MEMORY[0x277D85DE8];
  return v37;
}

void __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  v3 = [*(a1 + 32) hk_map:&__block_literal_global_400_0];
  HDSQLiteBindFoundationValuesToStatement();
}

uint64_t __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = HDSQLiteColumnWithNameAsUUID();
  [v1 addObject:v2];

  return 1;
}

uint64_t __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

uint64_t __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

id __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"INSERT INTO %@ (%@, %@, %@, %@, %@, %@, %@, %@, %@, %@) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", v2, @"identifier", @"schema_identifier", @"schema_version", @"object_identifier", @"attachment_identifier", @"creation_date", @"options", @"metadata", @"type", @"cloud_status", 0];

  return v3;
}

uint64_t __78__HDAttachmentReferenceEntity_insertTombstones_cloudStatus_transaction_error___block_invoke_8(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) identifier];
  HDSQLiteBindFoundationValueToStatement();

  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 3, 0);
  HDSQLiteBindFoundationValueToStatement();
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  HDSQLiteBindFoundationValueToStatement();

  v6 = [*(a1 + 32) creationDate];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 7, 0);
  sqlite3_bind_null(a2, 8);
  sqlite3_bind_int64(a2, 9, 1);
  v7 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 10, v7);
}

+ (BOOL)deleteReferences:(id)references cloudStatus:(int64_t)status transaction:(id)transaction error:(id *)error
{
  referencesCopy = references;
  v11 = [transaction databaseForEntityClass:self];
  v12 = [referencesCopy hk_map:&__block_literal_global_415_0];
  v13 = [v12 componentsJoinedByString:{@", "}];

  v14 = MEMORY[0x277CCACA8];
  disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
  v16 = [v14 stringWithFormat:@"UPDATE %@ SET %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ?, %@ = ? WHERE %@ IN (%@)", disambiguatedDatabaseTable, @"schema_identifier", @"schema_version", @"object_identifier", @"attachment_identifier", @"creation_date", @"options", @"metadata", @"type", @"cloud_status", @"identifier", v13, 0];

  v28 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __78__HDAttachmentReferenceEntity_deleteReferences_cloudStatus_transaction_error___block_invoke_2;
  v25[3] = &unk_278613B58;
  statusCopy = status;
  v17 = referencesCopy;
  v26 = v17;
  LOBYTE(v14) = [v11 executeSQL:v16 error:&v28 bindingHandler:v25 enumerationHandler:0];
  v18 = v28;
  v19 = v18;
  if (v14)
  {
    v20 = 1;
    goto LABEL_13;
  }

  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"Failed to update references to tombstones."];
    if (!v21)
    {
      v23 = 1;
LABEL_12:

      v20 = v23;
      goto LABEL_13;
    }
  }

  if (error)
  {
    v22 = v21;
    *error = v21;
  }

  else
  {
    _HKLogDroppedError();
  }

  v23 = 0;
  v20 = 0;
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v20;
}

void __78__HDAttachmentReferenceEntity_deleteReferences_cloudStatus_transaction_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  HDSQLiteBindFoundationValueToStatement();
  sqlite3_bind_int64(a2, 2, 0);
  HDSQLiteBindFoundationValueToStatement();
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  HDSQLiteBindFoundationValueToStatement();

  v5 = [MEMORY[0x277CBEAA8] date];
  HDSQLiteBindFoundationValueToStatement();

  sqlite3_bind_int64(a2, 6, 0);
  sqlite3_bind_null(a2, 7);
  sqlite3_bind_int64(a2, 8, 1);
  sqlite3_bind_int64(a2, 9, *(a1 + 40));
  v6 = [*(a1 + 32) hk_map:&__block_literal_global_421_1];
  HDSQLiteBindFoundationValuesToStatement();
}

+ (id)_insertReference:(id)reference databaseTransaction:(id)transaction error:(id *)error
{
  referenceCopy = reference;
  transactionCopy = transaction;
  metadata = [referenceCopy metadata];
  if (metadata)
  {
    v11 = metadata;
    metadata2 = [referenceCopy metadata];
    v13 = [metadata2 hk_validateAttachmentMetadataKeysAndValuesWithError:error];

    if (!v13)
    {
      v20 = 0;
      goto LABEL_18;
    }
  }

  v14 = [transactionCopy databaseForEntityClass:self];
  attachmentIdentifier = [referenceCopy attachmentIdentifier];
  v25 = 0;
  v16 = [HDAttachmentEntity attachmentWithIdentifier:attachmentIdentifier transaction:transactionCopy error:&v25];
  v17 = v25;

  if ([referenceCopy type] || v16)
  {
    v18 = +[HDAttachmentReferenceEntity _propertiesForEntity];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__HDAttachmentReferenceEntity__insertReference_databaseTransaction_error___block_invoke;
    v23[3] = &unk_278614508;
    v24 = referenceCopy;
    v19 = [self insertOrReplaceEntity:0 database:v14 properties:v18 error:error bindingHandler:v23];
  }

  else
  {
    if (v17)
    {
      v18 = v17;
      goto LABEL_10;
    }

    v18 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Attachment does not exist for reference: %@", referenceCopy}];
    if (v18)
    {
LABEL_10:
      if (error)
      {
        v21 = v18;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
      }

      v19 = 0;
      v20 = 0;
      if (v17)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v19 = 0;
  }

LABEL_16:

  v20 = v19;
LABEL_17:

LABEL_18:

  return v20;
}

void __74__HDAttachmentReferenceEntity__insertReference_databaseTransaction_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identifier];
  MEMORY[0x22AAC6C00](a2, @"identifier", v4);

  v5 = [*(a1 + 32) schemaIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"schema_identifier", v5);

  MEMORY[0x22AAC6B90](a2, @"schema_version", [*(a1 + 32) schemaVersion]);
  v6 = [*(a1 + 32) objectIdentifier];
  MEMORY[0x22AAC6BD0](a2, @"object_identifier", v6);

  v7 = [*(a1 + 32) attachmentIdentifier];
  MEMORY[0x22AAC6C00](a2, @"attachment_identifier", v7);

  v8 = [*(a1 + 32) creationDate];
  MEMORY[0x22AAC6B50](a2, @"creation_date", v8);

  MEMORY[0x22AAC6B90](a2, @"options", [*(a1 + 32) options]);
  v9 = [*(a1 + 32) metadata];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 32) metadata];
    v12 = [v11 hk_codableMetadata];
    v13 = [v12 data];
    MEMORY[0x22AAC6B40](a2, @"metadata", v13);
  }

  else
  {
    MEMORY[0x22AAC6BA0](a2, @"metadata");
  }

  MEMORY[0x22AAC6B90](a2, @"type", [*(a1 + 32) type]);
  [*(a1 + 32) cloudStatus];

  JUMPOUT(0x22AAC6B90);
}

+ (id)_insertIfDoesNotExistReference:(id)reference transaction:(id)transaction error:(id *)error
{
  referenceCopy = reference;
  transactionCopy = transaction;
  metadata = [referenceCopy metadata];
  if (!metadata || (v11 = metadata, [referenceCopy metadata], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "hk_validateAttachmentMetadataKeysAndValuesWithError:", error), v12, v11, v13))
  {
    identifier = [referenceCopy identifier];
    v15 = [MEMORY[0x277D10B18] predicateWithProperty:@"identifier" equalToValue:identifier];

    v16 = [transactionCopy databaseForEntityClass:objc_opt_class()];
    v24 = 0;
    v17 = [self anyInDatabase:v16 predicate:v15 error:&v24];
    v18 = v24;
    v19 = v18;
    if (v17)
    {
      v20 = v17;
    }

    else
    {
      if (v18)
      {
        if (error)
        {
          v23 = v18;
          v21 = 0;
          *error = v19;
        }

        else
        {
          _HKLogDroppedError();
          v21 = 0;
        }

        goto LABEL_6;
      }

      v20 = [self _insertReference:referenceCopy databaseTransaction:transactionCopy error:error];
    }

    v21 = v20;
LABEL_6:

    goto LABEL_8;
  }

  v21 = 0;
LABEL_8:

  return v21;
}

@end