void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [v6 executeSQL:v7 error:v5 bindingHandler:a5 enumerationHandler:0];
}

id HDOntologyShardRegistryPredicateForEntry(uint64_t a1, void *a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B20];
  v6 = MEMORY[0x277D10B18];
  v7 = a2;
  v8 = [v6 predicateWithProperty:@"identifier" equalToValue:a1];
  v9 = [MEMORY[0x277D10B18] predicateWithProperty:@"schema_type" equalToValue:{v7, v8}];

  v17[1] = v9;
  v10 = MEMORY[0x277D10B18];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v12 = [v10 predicateWithProperty:@"schema_version" equalToValue:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v14 = [v5 predicateMatchingAllPredicates:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_2514A3E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514A40F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514A42D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514A4918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514A4D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514A6580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2514A6F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void OUTLINED_FUNCTION_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

BOOL OUTLINED_FUNCTION_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_2514A8ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDGraphDatabaseSchemaVersionFutureEnabled(int a1)
{
  if (a1)
  {
    return 10002;
  }

  else
  {
    return 8;
  }
}

void sub_2514ABEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514AD908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

id HDSimpleGraphRelationshipEntityPredicateForRelationshipType(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"relationship_type" value:v2 comparisonType:1];

  return v3;
}

id HDSimpleGraphRelationshipEntityPredicateForFetchType(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 2:
      v8 = MEMORY[0x277D10B70];
      v9 = MEMORY[0x277D10B18];
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v10 = [v9 predicateWithProperty:@"object_id" value:v5 comparisonType:1];
      v11 = MEMORY[0x277D10B18];
      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v13 = [v11 predicateWithProperty:@"subject_id" value:v12 comparisonType:1];
      v7 = [v8 disjunctionWithPredicate:v10 otherPredicate:v13];

      break;
    case 1:
      v4 = MEMORY[0x277D10B18];
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v6 = @"object_id";
      goto LABEL_6;
    case 0:
      v4 = MEMORY[0x277D10B18];
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      v6 = @"subject_id";
LABEL_6:
      v7 = [v4 predicateWithProperty:v6 value:v5 comparisonType:1];
      break;
    default:
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSQLitePredicate * _Nonnull HDSimpleGraphRelationshipEntityPredicateForFetchType(HDGraphDatabaseRelationshipFetchType, int64_t)"}];
      [v5 handleFailureInFunction:v7 file:@"HDSimpleGraphDatabaseRelationshipEntity.m" lineNumber:345 description:{@"Invalid fetchType: %lld", a1}];

      break;
  }

  return v7;
}

id HDSimpleGraphRelationshipEntityPredicateForSubject(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B20];
  v4 = HDSimpleGraphRelationshipEntityPredicateForFetchType(0, a1);
  v10[0] = v4;
  v5 = HDSimpleGraphRelationshipEntityPredicateForRelationshipType(a2);
  v10[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v7 = [v3 predicateMatchingAllPredicates:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t _shardedOntologySupport(void *a1, uint64_t a2)
{
  v17[15] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___shardedOntologySupport_block_invoke_2;
  v12[3] = &unk_2796B90A8;
  v12[4] = &v13;
  if ([v3 executeUncachedSQL:@"SELECT value FROM metadata WHERE key=?" error:a2 bindingHandler:&__block_literal_global_1 enumerationHandler:v12])
  {
    v17[0] = @"CREATE TABLE new_nodes (rowid INTEGER PRIMARY KEY, version INTEGER NOT NULL, slots INTEGER NOT NULL, deleted INTEGER NOT NULL)";
    v17[1] = @"CREATE TABLE new_attributes (rowid INTEGER PRIMARY KEY, node_id INTEGER NOT NULL REFERENCES new_nodes (rowid) ON DELETE CASCADE, attribute_type INTEGER NOT NULL, value TEXT NOT NULL, version INTEGER NOT NULL, slots INTEGER NOT NULL, UNIQUE(node_id, attribute_type, value))";
    v17[2] = @"CREATE TABLE new_relationships (rowid INTEGER PRIMARY KEY, subject_id INTEGER NOT NULL REFERENCES new_nodes (rowid) ON DELETE CASCADE, relationship_type INTEGER NOT NULL, object_id INTEGER NOT NULL REFERENCES new_nodes (rowid) ON DELETE CASCADE, version INTEGER NOT NULL, slots INTEGER NOT NULL, UNIQUE(subject_id, relationship_type, object_id))";
    v17[3] = @"CREATE TABLE IF NOT EXISTS shard_registry (rowid INTEGER PRIMARY KEY, identifier TEXT NOT NULL, schema_type TEXT NOT NULL, schema_version INTEGER NOT NULL, settings INTEGER NOT NULL, slot INTEGER NOT NULL, desired_state INTEGER NOT NULL, desired_state_date REAL NOT NULL, current_version INTEGER NOT NULL, current_version_date REAL NOT NULL, current_region TEXT NOT NULL, current_region_date REAL NOT NULL, current_locale TEXT, current_locale_date REAL NOT NULL, available_version INTEGER NOT NULL, available_version_date REAL NOT NULL, available_region TEXT NOT NULL, available_region_date REAL NOT NULL, available_locale TEXT, available_locale_date REAL NOT NULL, available_url TEXT, available_url_date REAL NOT NULL, available_checksum TEXT, available_checksum_date REAL NOT NULL, available_size INTEGER NOT NULL, available_size_date REAL NOT NULL, available_state INTEGER NOT NULL, available_state_date REAL NOT NULL, UNIQUE(identifier, schema_type, schema_version))";
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO new_nodes SELECT rowid, %lld, 0, 0 FROM nodes", v14[3]];
    v17[4] = v4;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO new_attributes SELECT rowid, node_id, attribute_type, value, %lld, 0 FROM attributes", v14[3]];
    v17[5] = v5;
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO new_relationships SELECT rowid, subject_id, relationship_type, object_id, %lld, 0 FROM relationships", v14[3]];
    v17[6] = v6;
    v17[7] = @"DROP TABLE attributes";
    v17[8] = @"DROP TABLE relationships";
    v17[9] = @"DROP TABLE nodes";
    v17[10] = @"ALTER TABLE new_nodes RENAME TO nodes";
    v17[11] = @"ALTER TABLE new_attributes RENAME TO attributes";
    v17[12] = @"ALTER TABLE new_relationships RENAME TO relationships";
    v17[13] = @"CREATE INDEX attributes_type_value_index ON attributes(attribute_type, value)";
    v17[14] = @"CREATE INDEX relationships_object_id_index ON relationships (object_id)";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:15];

    v8 = [v3 executeSQLStatements:v7 error:a2];
    v9 = v8 ^ 1u;
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_2514AECD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514AFD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514B0474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B0740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B1D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B2988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B2E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514B5160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

id HDSimpleGraphAttributeEntityPredicateForNodeID(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v3 predicateWithProperty:@"node_id" value:v4 comparisonType:a2];

  return v5;
}

void sub_2514B6754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double HDOntologyFeatureDefaultMinimumTimeToLive()
{
  v0 = [MEMORY[0x277CCDD30] isAppleInternalInstall];
  result = 2592000.0;
  if (v0)
  {
    return 604800.0;
  }

  return result;
}

void sub_2514B8E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514B9364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_2514B9DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v3 predicateWithProperty:@"rowid" value:v4 comparisonType:a2];

  return v5;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D10B18];
  v5 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseAttributeEntity disambiguatedSQLForProperty:@"attribute_type"];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v7 = [v4 predicateWithProperty:v5 value:v6 comparisonType:a2];

  return v7;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = a1;
  v5 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseAttributeEntity disambiguatedSQLForProperty:@"value"];
  v6 = [v3 predicateWithProperty:v5 value:v4 comparisonType:a2];

  return v6;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForAttribute(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10B70];
  v4 = a2;
  v5 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeType(a1, 1);
  v6 = HDSimpleGraphDatabaseNodeEntityPredicateForAttributeValue(v4, 1);

  v7 = [v3 compoundPredicateWithPredicate:v5 otherPredicate:v6];

  return v7;
}

id HDSimpleGraphDatabaseNodeEntityPredicateWithoutAttribute(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B80];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setEntityClass:objc_opt_class()];
  v6 = MEMORY[0x277D10B70];
  v7 = MEMORY[0x277D10B18];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v9 = [v7 predicateWithProperty:@"attribute_type" equalToValue:v8];
  v10 = [MEMORY[0x277D10B18] predicateWithProperty:@"value" equalToValue:v4];

  v11 = [v6 compoundPredicateWithPredicate:v9 otherPredicate:v10];
  [v5 setPredicate:v11];

  v12 = MEMORY[0x277D10B18];
  v18[0] = @"node_id";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v14 = [v12 predicateWithProperty:@"rowid" comparisonType:7 subqueryDescriptor:v5 subqueryProperties:v13];

  v15 = [MEMORY[0x277D10B20] negatedPredicate:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForNodesRelatedToSubjectID(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:@"subject_id"];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v2 predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForNodesRelatedToObjectID(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:@"object_id"];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v2 predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

id HDSimpleGraphDatabaseNodeEntityPredicateForNodesWithRelationshipType(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [(HDSQLiteSchemaEntity *)HDSimpleGraphDatabaseRelationshipEntity disambiguatedSQLForProperty:@"relationship_type"];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v5 = [v2 predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

void sub_2514BAE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t HDOntologyEducationContentSectionDataTypeForAttributeType(uint64_t a1)
{
  if (a1 <= 801)
  {
    return (a1 - 666) < 3 || (a1 - 800) < 2;
  }

  if (a1 > 803)
  {
    if (a1 == 804)
    {
      return 5;
    }

    if (a1 != 957)
    {
      if (a1 == 959)
      {
        return 3;
      }

      return 0;
    }

    return 1;
  }

  if (a1 == 802)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

void sub_2514BBE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514BC8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514BD0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_2514BD364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514BDEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514BE284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514BE7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id HDOntologyShardRegistryPredicateForCurrentSchemaEntry(void *a1)
{
  v1 = a1;
  v2 = HKOntologyShardSchemaTypeForShardIdentifier();
  v3 = HKCurrentSchemaVersionForShardIdentifier();
  v4 = HDOntologyShardRegistryPredicateForEntry(v1, v2, v3);

  return v4;
}

void sub_2514BF6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514BF9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2514C097C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514C1AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2514C27D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2514C3160(uint64_t a1)
{
  sub_2514C31BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2514C31BC()
{
  if (!qword_27F43B860)
  {
    v0 = sub_2514D0218();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43B860);
    }
  }
}

uint64_t sub_2514C322C(SEL *a1, unint64_t *a2)
{
  sub_2514D0198();
  v5 = sub_2514D01D8();

  v6 = [v2 *a1];

  if (v6)
  {
    sub_2514D0228();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    sub_2514C332C(0, a2);
    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2514C3160(v11);
    return 0;
  }
}

uint64_t sub_2514C332C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id HDSimpleGraphDatabase.sqliteDatabase.getter()
{
  v1 = [v0 underlyingDatabase];

  return v1;
}

id static HDSimpleGraphDatabase.InMemoryDatabase()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v0 = [objc_opt_self() inMemoryGraphDatabaseWithError_];
  if (v0)
  {
    v1 = v5[0];
  }

  else
  {
    v2 = v5[0];
    sub_2514D0188();

    swift_willThrow();
  }

  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

id HDOntologyConceptManager.concept(for:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 conceptForIdentifier:a1 options:0 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2514D0188();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

double HDProfile.ontologyStore.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2514D01C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514D0198();
  v9 = sub_2514D01D8();

  v10 = [v2 profileExtensionWithIdentifier_];

  if (v10)
  {
    sub_2514D0228();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31[0] = v29;
  v31[1] = v30;
  if (*(&v30 + 1))
  {
    sub_2514C39C0();
    if (swift_dynamicCast())
    {
      if (*(&v33 + 1))
      {
        sub_2514C4020(&v32, v35);
        v11 = v36;
        v12 = v37;
        __swift_project_boxed_opaque_existential_1(v35, v36);
        (*(v12 + 8))(v11, v12);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return result;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_2514C3160(v31);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_2514C390C(&v32);
  sub_2514D01A8();
  v14 = v2;
  v15 = sub_2514D01B8();
  v16 = sub_2514D0208();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = a1;
    v19 = v18;
    v35[0] = v18;
    *v17 = 136446466;
    v20 = v14;
    v21 = [v20 description];
    v22 = sub_2514D01E8();
    v27 = v4;
    v24 = v23;

    v25 = sub_2514C3A48(v22, v24, v35);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2514C3A48(0xD00000000000001BLL, 0x80000002514D6810, v35);
    _os_log_impl(&dword_2514A1000, v15, v16, "%{public}s: Unable to locate HealthContent profile extension as %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    v26 = v19;
    a1 = v28;
    MEMORY[0x2530782F0](v26, -1, -1);
    MEMORY[0x2530782F0](v17, -1, -1);

    (*(v5 + 8))(v8, v27);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2514C390C(uint64_t a1)
{
  sub_2514C3968();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2514C3968()
{
  if (!qword_27F43B9A0)
  {
    sub_2514C39C0();
    v0 = sub_2514D0218();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43B9A0);
    }
  }
}

unint64_t sub_2514C39C0()
{
  result = qword_2813D8010;
  if (!qword_2813D8010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D8010);
  }

  return result;
}

unint64_t sub_2514C3A48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2514C3B14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2514C40C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2514C3B14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2514C3C20(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2514D0248();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2514C3C20(uint64_t a1, unint64_t a2)
{
  v4 = sub_2514C3C6C(a1, a2);
  sub_2514C3D9C(&unk_28636E6A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2514C3C6C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2514C3E88(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2514D0248();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2514D01F8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2514C3E88(v10, 0);
        result = sub_2514D0238();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2514C3D9C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2514C3F14(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2514C3E88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2514C4124(0, &qword_27F43B9A8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2514C3F14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2514C4124(0, &qword_27F43B9A8, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_2514C4020(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2514C40C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2514C4124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}