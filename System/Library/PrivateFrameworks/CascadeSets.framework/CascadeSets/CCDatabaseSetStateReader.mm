@interface CCDatabaseSetStateReader
+ (id)persistedKeyValueForKey:(id)a3 database:(id)a4 error:(id *)a5;
- (BOOL)checkForLocalSourceDonation:(BOOL *)a3 error:(id *)a4;
- (BOOL)checkForPresentContent:(BOOL *)a3 filterByDeviceRowId:(id)a4 error:(id *)a5;
- (BOOL)constructStateVectorsFromDatabaseWithDeviceMapping:(id)a3 outContent:(id *)a4 outMetaContent:(id *)a5 error:(id *)a6;
- (BOOL)enumerateProvenanceRecordsForStateVector:(id)a3 withType:(unsigned __int8)a4 selectAtomsInState:(unsigned __int8)a5 skipOverAtomsInState:(unsigned __int8)a6 deviceMapping:(id)a7 error:(id *)a8 usingBlock:(id)a9;
- (CCDatabaseSetStateReader)initWithDatabaseAccess:(id)a3 siteIdentifierFormat:(unsigned __int8)a4;
- (id)constructDeviceMapping:(id *)a3;
- (id)fetchContentRecordFromContentHash:(id)a3;
- (id)itemInstanceCount:(id *)a3;
- (id)lastDeltaDate:(id *)a3;
- (id)provenanceRecordEnumeratorForContentDeltaVector:(id)a3 metaContentDeltaVector:(id)a4 seenContentBuilder:(id)a5 seenMetaContentBuilder:(id)a6 deviceMapping:(id)a7 error:(id *)a8;
- (id)sharedItemCount:(id *)a3;
- (void)_resolveSequenceNumberRangesOfDeltaVector:(id)a3 appendToCriteria:(id)a4 seenStateVectorBuilder:(id)a5 deviceMapping:(id)a6 type:(unsigned __int8)a7;
@end

@implementation CCDatabaseSetStateReader

- (CCDatabaseSetStateReader)initWithDatabaseAccess:(id)a3 siteIdentifierFormat:(unsigned __int8)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = CCDatabaseSetStateReader;
  v8 = [(CCDatabaseSetStateReader *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseAccess, a3);
    v9->_siteIdentifierFormat = a4;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    commandCache = v9->_commandCache;
    v9->_commandCache = v10;
  }

  return v9;
}

- (BOOL)constructStateVectorsFromDatabaseWithDeviceMapping:(id)a3 outContent:(id *)a4 outMetaContent:(id *)a5 error:(id *)a6
{
  v9 = a3;
  if (a4)
  {
    v10 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:v9 missingAtomsImplied:1];
  }

  else
  {
    v10 = 0;
  }

  v23 = a5;
  if (a5)
  {
    v11 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:v9 missingAtomsImplied:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v13 = [v12 build];
  v14 = objc_autoreleasePoolPush();
  databaseAccess = self->_databaseAccess;
  v16 = objc_opt_class();
  v27 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __111__CCDatabaseSetStateReader_constructStateVectorsFromDatabaseWithDeviceMapping_outContent_outMetaContent_error___block_invoke;
  v24[3] = &unk_1E7C8B1C0;
  v17 = v10;
  v25 = v17;
  v18 = v11;
  v26 = v18;
  v19 = [(CCDatabaseReadOnlyAccess *)databaseAccess enumerateRecordResultsOfSelect:v13 recordClass:v16 error:&v27 usingBlock:v24];
  v20 = v27;

  objc_autoreleasePoolPop(v14);
  if (v19)
  {
    if (a4)
    {
      *a4 = [(CCDatabaseSetStateVectorBuilder *)v17 build];
    }

    if (v23)
    {
      *v23 = [(CCDatabaseSetStateVectorBuilder *)v18 build];
    }
  }

  else
  {
    CCSetError(a6, v20);
  }

  return v19;
}

uint64_t __111__CCDatabaseSetStateReader_constructStateVectorsFromDatabaseWithDeviceMapping_outContent_outMetaContent_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 contentSequenceNumber];
    v6 = [v4 contentSequenceNumberEndOfRun];
    v7 = CCDatabaseSetClockValueRange(v5, v6);
    v9 = v8;

    v10 = [v4 contentState];
    v11 = CCDatabaseSetAtomState(v10);

    v12 = *(a1 + 32);
    v13 = [v4 deviceRowId];
    [v12 addClockValueRange:v7 withAtomState:v9 forDeviceRowId:{v11, v13}];
  }

  if (*(a1 + 40))
  {
    v14 = [v4 metaContentSequenceNumber];

    if (v14)
    {
      v15 = [v4 metaContentSequenceNumber];
      v16 = [v4 metaContentSequenceNumberEndOfRun];
      v17 = CCDatabaseSetClockValueRange(v15, v16);
      v19 = v18;

      v20 = [v4 metaContentState];
      v21 = CCDatabaseSetAtomState(v20);

      v22 = *(a1 + 40);
      v23 = [v4 deviceRowId];
      [v22 addClockValueRange:v17 withAtomState:v19 forDeviceRowId:{v21, v23}];
    }
  }

  return 1;
}

- (BOOL)enumerateProvenanceRecordsForStateVector:(id)a3 withType:(unsigned __int8)a4 selectAtomsInState:(unsigned __int8)a5 skipOverAtomsInState:(unsigned __int8)a6 deviceMapping:(id)a7 error:(id *)a8 usingBlock:(id)a9
{
  v37 = a5;
  v11 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v38 = a7;
  v13 = a9;
  v39 = v12;
  if ([v12 timestampCount])
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v35 = v13;
    v36 = objc_opt_new();
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = [v12 allSiteIdentifiers];
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v15)
    {
      v16 = *v55;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v55 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v54 + 1) + 8 * i);
          v19 = [v38 deviceRowIdForSiteIdentifier:v18];
          v20 = objc_opt_new();
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke;
          v49[3] = &unk_1E7C8B1E8;
          v52 = v37;
          v53 = a6;
          v21 = v20;
          v50 = v21;
          v51 = &v58;
          [v39 enumerateClockValuesForSiteIdentifier:v18 usingBlock:v49];
          [v36 setObject:v21 forKeyedSubscript:v19];
        }

        v15 = [v14 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v15);
    }

    v22 = v59[3];
    if (v22)
    {
      if (v22 < 0x1F5)
      {
        v25 = v36;
        v26 = _Block_copy(v35);
      }

      else
      {
        v23 = objc_opt_new();
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_10;
        v47[3] = &unk_1E7C8B210;
        v24 = v23;
        v48 = v24;
        [v36 enumerateKeysAndObjectsUsingBlock:v47];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_2;
        aBlock[3] = &unk_1E7C8B238;
        v43 = v36;
        v45 = v11;
        v46 = v37;
        v44 = v35;
        v25 = v24;
        v26 = _Block_copy(aBlock);
      }

      v28 = [(CCDatabaseSetStateReader *)self _createProvenanceSelectCommandFromDeviceRowIdToClockValues:v25 type:v11 state:v37 columns:0];
      if (v28)
      {
        databaseAccess = self->_databaseAccess;
        v30 = objc_opt_class();
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_13;
        v40[3] = &unk_1E7C8B260;
        v41 = v26;
        v27 = [(CCDatabaseReadOnlyAccess *)databaseAccess enumerateRecordResultsOfSelect:v28 recordClass:v30 error:a8 usingBlock:v40];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [CCDatabaseSetStateReader enumerateProvenanceRecordsForStateVector:v37 withType:v39 selectAtomsInState:v25 skipOverAtomsInState:? deviceMapping:? error:? usingBlock:?];
      }

      v27 = 1;
    }

    _Block_object_dispose(&v58, 8);
    v13 = v35;
  }

  else
  {
    v27 = 1;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v27;
}

void __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == a5 || *(a1 + 49) == a5)
  {
    [*(a1 + 32) addIndexesInRange:{a2, a3}];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 48);
      v12 = 134218752;
      v13 = a2;
      v14 = 2048;
      v15 = a2 + a3;
      v16 = 1024;
      v17 = a5;
      v18 = 1024;
      v19 = v11;
      _os_log_debug_impl(&dword_1B6DB2000, v9, OS_LOG_TYPE_DEBUG, "Enumerating clock value (%lu - %lu) which is in state %u when expecting to enumerate clock values in state %u", &v12, 0x22u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  if ([v5 count])
  {
    [v6 addIndexesInRange:{objc_msgSend(v5, "firstIndex"), objc_msgSend(v5, "lastIndex") - objc_msgSend(v5, "firstIndex") + 1}];
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 deviceRowId];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (*(a1 + 48) == 1)
  {
    v7 = [v3 metaContentState];
    v8 = [v3 metaContentSequenceNumber];
    v9 = [v3 metaContentSequenceNumberEndOfRun];
  }

  else
  {
    if (*(a1 + 48))
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_2_cold_1((a1 + 48));
      }

      v7 = 0;
      goto LABEL_16;
    }

    v7 = [v3 contentState];
    v8 = [v3 contentSequenceNumber];
    v9 = [v3 contentSequenceNumberEndOfRun];
  }

  v10 = v9;
  v11 = CCDatabaseSetClockValueRange(v8, v9);
  v13 = v12;

  v14 = *(a1 + 49);
  if (v14 != 2)
  {
    if (v14 != 1 || [v7 unsignedIntValue] != 1 || (objc_msgSend(v6, "containsIndexesInRange:", v11, v13) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    (*(*(a1 + 40) + 16))();
    goto LABEL_16;
  }

  if ([v7 unsignedIntValue] == 2 && objc_msgSend(v6, "intersectsIndexesInRange:", v11, v13))
  {
    goto LABEL_15;
  }

LABEL_16:
}

- (id)constructDeviceMapping:(id *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__1;
  v17 = __Block_byref_object_dispose__1;
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [CCDatabaseSelect builderWithTableName:@"device"];
  v6 = [v5 build];
  databaseAccess = self->_databaseAccess;
  v8 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__CCDatabaseSetStateReader_constructDeviceMapping___block_invoke;
  v12[3] = &unk_1E7C8B288;
  v12[4] = &v13;
  if (([(CCDatabaseReadOnlyAccess *)databaseAccess enumerateRecordResultsOfSelect:v6 recordClass:v8 error:a3 usingBlock:v12]& 1) != 0)
  {
    v9 = [CCDatabaseDeviceMapping alloc];
    v10 = [(CCDatabaseDeviceMapping *)v9 initWithDeviceRecords:v14[5] siteIdentifierFormat:self->_siteIdentifierFormat error:a3];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10;
}

- (id)fetchContentRecordFromContentHash:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v6 = [(NSMutableDictionary *)self->_commandCache objectForKey:&unk_1F2EC92A0];
  if ([v6 updateParameters:v5])
  {
    v7 = v6;
  }

  else
  {
    v8 = [CCDatabaseSelect builderWithTableName:@"content"];
    v9 = [CCSQLCommandCriterion criterionWithColumnName:@"content_hash" EQUALSColumnValue:v4];
    [v8 setCommandCriterion:v9];
    v7 = [v8 build];

    if (v7)
    {
      [(NSMutableDictionary *)self->_commandCache setObject:v7 forKey:&unk_1F2EC92A0];
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetStateReader fetchContentRecordFromContentHash:];
      }
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  databaseAccess = self->_databaseAccess;
  v12 = objc_opt_class();
  v19[4] = &v21;
  v20 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__CCDatabaseSetStateReader_fetchContentRecordFromContentHash___block_invoke;
  v19[3] = &unk_1E7C8B288;
  v13 = [(CCDatabaseReadOnlyAccess *)databaseAccess enumerateRecordResultsOfSelect:v7 recordClass:v12 error:&v20 usingBlock:v19];
  v14 = v20;
  if (v13)
  {
    v15 = v22[5];
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetStateReader fetchContentRecordFromContentHash:];
    }

    v15 = 0;
  }

  _Block_object_dispose(&v21, 8);

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t __62__CCDatabaseSetStateReader_fetchContentRecordFromContentHash___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a4 = 1;
  return 1;
}

- (id)provenanceRecordEnumeratorForContentDeltaVector:(id)a3 metaContentDeltaVector:(id)a4 seenContentBuilder:(id)a5 seenMetaContentBuilder:(id)a6 deviceMapping:(id)a7 error:(id *)a8
{
  v64[3] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v53 = a6;
  v50 = a5;
  v51 = a4;
  v48 = a3;
  v13 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"provenance", @"*"];
  v64[0] = v14;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"content", @"content"];
  v64[1] = v15;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"metacontent", @"metacontent"];
  v64[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
  v56 = v13;
  [v13 setColumns:v17];

  v18 = [CCSQLCommandJoinTable alloc];
  v19 = [CCSQLCommandJoinCriterion criterionWithColumnName:@"content_hash" onTable:@"provenance" EQUALSColumnName:@"content_hash" comparingTableName:@"content"];
  v20 = [(CCSQLCommandJoinTable *)v18 initWithTable:@"content" joinCriterion:v19];
  v63[0] = v20;
  v21 = [CCSQLCommandJoinTable alloc];
  v22 = [CCSQLCommandJoinCriterion criterionWithColumnName:@"instance_hash" onTable:@"provenance" EQUALSColumnName:@"instance_hash" comparingTableName:@"metacontent"];
  v23 = [(CCSQLCommandJoinTable *)v21 initWithTable:@"metacontent" joinCriterion:v22];
  v63[1] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  [v13 setJoinWithType:2 tables:v24];

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(CCDatabaseSetStateReader *)self _resolveSequenceNumberRangesOfDeltaVector:v48 appendToCriteria:v25 seenStateVectorBuilder:v50 deviceMapping:v12 type:0];

  v26 = v25;
  v55 = v25;
  [(CCDatabaseSetStateReader *)self _resolveSequenceNumberRangesOfDeltaVector:v51 appendToCriteria:v25 seenStateVectorBuilder:v53 deviceMapping:v12 type:1];

  v27 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"provenance", @"content_hash"];
  v62 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
  [v27 setColumns:v29];

  v30 = [CCSQLCommandCriterion criterionWithORSubCriteria:v26];
  v54 = v27;
  [v27 setCommandCriterion:v30];

  v52 = [v27 build];
  v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"provenance", @"content_hash"];
  v31 = [CCSQLCommandCriterion criterionWithColumnName:v49 INSubQuery:v52];
  v61[0] = v31;
  v32 = [CCSQLCommandCriterion criterionWithColumnName:"criterionWithColumnName:EQUALSColumnValue:" EQUALSColumnValue:?];
  v60[0] = v32;
  v33 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" EQUALSColumnValue:&unk_1F2EC92D0];
  v60[1] = v33;
  v34 = [MEMORY[0x1E695DFB0] null];
  v35 = [CCSQLCommandCriterion criterionWithColumnName:@"metacontent_state" ISNOTColumnValue:v34];
  v60[2] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
  v37 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v36];
  v38 = [CCSQLCommandCriterion criterionWithNOTSubCriteria:v37];
  v61[1] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v40 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v39];

  [v56 setCommandCriterion:v40];
  v41 = [CCSQLCommandOrder alloc];
  v59[0] = @"content_hash";
  v59[1] = @"content_state";
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v43 = [(CCSQLCommandOrder *)v41 initWithOrderMode:2 columnNames:v42];

  [v56 setCommandOrder:v43];
  v44 = [v56 build];
  v45 = [(CCDatabaseReadOnlyAccess *)self->_databaseAccess enumeratorForRowResultsOfSelect:v44 error:a8];

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

- (void)_resolveSequenceNumberRangesOfDeltaVector:(id)a3 appendToCriteria:(id)a4 seenStateVectorBuilder:(id)a5 deviceMapping:(id)a6 type:(unsigned __int8)a7
{
  v7 = a7;
  v52 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v42 = a4;
  v40 = a5;
  v43 = a6;
  v12 = [v11 removals];
  v13 = [v12 allSiteIdentifiers];
  v14 = [v13 mutableCopy];

  v41 = v11;
  v15 = [v11 contents];
  v16 = [v15 allSiteIdentifiers];
  [v14 unionSet:v16];

  if (!v7)
  {
    v17 = CCDatabaseColumnContentSequenceNumber;
    v18 = CCDatabaseColumnContentState;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v17 = CCDatabaseColumnMetaContentSequenceNumber;
    v18 = CCDatabaseColumnMetaContentState;
LABEL_5:
    v19 = *v18;
    v20 = *v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke_37;
    aBlock[3] = &unk_1E7C8B2D8;
    v37 = v19;
    v49 = v37;
    v36 = v20;
    v50 = v36;
    v21 = _Block_copy(aBlock);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v38 = v14;
    obj = v14;
    v22 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v44 + 1) + 8 * i);
          v27 = [v43 deviceRowIdForSiteIdentifier:v26];
          if (v27)
          {
            v28 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v29 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v30 = [v41 removals];
            __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke(v30, v30, v26, v28, v29);

            [v40 addClockValueSet:v29 withAtomState:2 forDeviceRowId:v27];
            v31 = [v41 contents];
            __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke(v31, v31, v26, v28, v29);

            if ([v28 count])
            {
              v32 = v21[2](v21, v27, v28, 1);
              [v42 addObject:v32];
            }

            if ([v29 count])
            {
              v33 = v21[2](v21, v27, v29, 2);
              [v42 addObject:v33];
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v23);
    }

    v34 = v37;
    v14 = v38;
    goto LABEL_21;
  }

  v34 = __biome_log_for_category();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    [CCDatabaseSetStateReader _resolveSequenceNumberRangesOfDeltaVector:appendToCriteria:seenStateVectorBuilder:deviceMapping:type:];
  }

LABEL_21:

  v35 = *MEMORY[0x1E69E9840];
}

void __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke_2;
  v12[3] = &unk_1E7C8B2B0;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a2 enumerateClockValuesForSiteIdentifier:a3 usingBlock:v12];
}

uint64_t __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 1)
  {
    v5 = 32;
  }

  else
  {
    if (a5 != 2)
    {
      return result;
    }

    v5 = 40;
  }

  return [*(result + v5) addIndexesInRange:{a2, a3}];
}

id __129__CCDatabaseSetStateReader__resolveSequenceNumberRangesOfDeltaVector_appendToCriteria_seenStateVectorBuilder_deviceMapping_type___block_invoke_37(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:a2];
  v22[0] = v8;
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{a4, v8}];
  v11 = [CCSQLCommandCriterion criterionWithColumnName:v9 EQUALSColumnValue:v10];
  v22[1] = v11;
  v12 = *(a1 + 40);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "firstIndex")}];
  v14 = MEMORY[0x1E696AD98];
  v15 = [v7 lastIndex];

  v16 = [v14 numberWithUnsignedInteger:v15];
  v17 = [CCSQLCommandCriterion criterionWithColumnName:v12 BETWEENLowerColumnValue:v13 ANDUpperColumnValue:v16];
  v22[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v19 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v18];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void __106__CCDatabaseSetStateReader__createProvenanceSelectCommandFromDeviceRowIdToClockValues_type_state_columns___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __106__CCDatabaseSetStateReader__createProvenanceSelectCommandFromDeviceRowIdToClockValues_type_state_columns___block_invoke_2;
  v14[3] = &unk_1E7C8B300;
  v18 = *(a1 + 56);
  v15 = *(a1 + 32);
  v8 = v7;
  v16 = v8;
  v17 = *(a1 + 40);
  [v6 enumerateRangesUsingBlock:v14];

  if ([v8 count])
  {
    v9 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v5];
    v19[0] = v9;
    v10 = [CCSQLCommandCriterion criterionWithORSubCriteria:v8];
    v19[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v12 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v11];

    [*(a1 + 48) addObject:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __106__CCDatabaseSetStateReader__createProvenanceSelectCommandFromDeviceRowIdToClockValues_type_state_columns___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[3] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56);
  if (v6 == 2)
  {
    v10 = *(a1 + 48);
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = [CCSQLCommandCriterion criterionWithColumnName:v10 ISNOTColumnValue:v11];

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    v15 = [CCSQLCommandCriterion criterionWithColumnName:v13 GREATERTHANOrEqualColumnValue:v14];

    v16 = *(a1 + 48);
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a2 - 1];
    v18 = [CCSQLCommandCriterion criterionWithColumnName:v16 LESSTHANOrEqualColumnValue:v17];

    v28 = v12;
    v30[0] = v12;
    v30[1] = v15;
    v30[2] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v20 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v19];

    v21 = *(a1 + 32);
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    if (a3 == 1)
    {
      v23 = [CCSQLCommandCriterion criterionWithColumnName:v21 EQUALSColumnValue:v22];
    }

    else
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a2 - 1];
      v23 = [CCSQLCommandCriterion criterionWithColumnName:v21 BETWEENLowerColumnValue:v22 ANDUpperColumnValue:v25];
    }

    v29[0] = v23;
    v29[1] = v20;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v9 = [CCSQLCommandCriterion criterionWithORSubCriteria:v26];

    [*(a1 + 40) addObject:v9];
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    if (a3 == 1)
    {
      v9 = [CCSQLCommandCriterion criterionWithColumnName:v7 EQUALSColumnValue:v8];
    }

    else
    {
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3 + a2 - 1];
      v9 = [CCSQLCommandCriterion criterionWithColumnName:v7 BETWEENLowerColumnValue:v8 ANDUpperColumnValue:v24];
    }

    [*(a1 + 40) addObject:v9];
LABEL_11:
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (BOOL)checkForPresentContent:(BOOL *)a3 filterByDeviceRowId:(id)a4 error:(id *)a5
{
  v22[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [CCDatabaseSelect builderWithTableName:@"provenance"];
  v10 = [CCSQLCommandCriterion criterionWithColumnName:@"content_state" EQUALSColumnValue:&unk_1F2EC92D0];
  if (v8)
  {
    v11 = [CCSQLCommandCriterion criterionWithColumnName:@"device_row_id" EQUALSColumnValue:v8];
    v22[0] = v10;
    v22[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v13 = [CCSQLCommandCriterion criterionWithANDSubCriteria:v12];

    v10 = v13;
  }

  [v9 setCommandCriterion:v10];
  [v9 setCount:1];
  [v9 setLimit:&unk_1F2EC92E8];
  v14 = [v9 build];
  databaseAccess = self->_databaseAccess;
  v21 = 0;
  v16 = [(CCDatabaseReadOnlyAccess *)databaseAccess firstResultOfSelect:v14 outNumberValue:&v21 error:a5];
  v17 = v21;
  v18 = v17;
  if (a3 && v16)
  {
    *a3 = [v17 intValue] > 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)checkForLocalSourceDonation:(BOOL *)a3 error:(id *)a4
{
  v7 = objc_opt_class();
  databaseAccess = self->_databaseAccess;
  v12 = 0;
  v9 = [v7 persistedKeyValueForKey:@"lastLocalDonationDate" database:databaseAccess error:&v12];
  v10 = v12;
  if (v10)
  {
    CCSetError(a4, v10);
  }

  else if (a3)
  {
    *a3 = v9 != 0;
  }

  return v10 == 0;
}

- (id)sharedItemCount:(id *)a3
{
  v5 = [CCDatabaseSelect builderWithTableName:@"content"];
  [v5 setCount:1];
  v6 = [v5 build];
  databaseAccess = self->_databaseAccess;
  v14 = 0;
  v15 = 0;
  v8 = [(CCDatabaseReadOnlyAccess *)databaseAccess firstResultOfSelect:v6 outNumberValue:&v15 error:&v14];
  v9 = v15;
  v10 = v14;
  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetStateReader sharedItemCount:v6];
    }

    CCSetError(a3, v10);
    v11 = 0;
  }

  return v11;
}

- (id)itemInstanceCount:(id *)a3
{
  v5 = [CCDatabaseSelect builderWithTableName:@"metacontent"];
  [v5 setCount:1];
  v6 = [v5 build];
  databaseAccess = self->_databaseAccess;
  v14 = 0;
  v15 = 0;
  v8 = [(CCDatabaseReadOnlyAccess *)databaseAccess firstResultOfSelect:v6 outNumberValue:&v15 error:&v14];
  v9 = v15;
  v10 = v14;
  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetStateReader itemInstanceCount:v6];
    }

    CCSetError(a3, v10);
    v11 = 0;
  }

  return v11;
}

- (id)lastDeltaDate:(id *)a3
{
  v3 = [objc_opt_class() persistedKeyValueForKey:@"lastDeltaDate" database:self->_databaseAccess error:a3];
  v4 = [v3 integerValue];

  return v4;
}

+ (id)persistedKeyValueForKey:(id)a3 database:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [CCDatabaseSelect builderWithTableName:@"keyvalue"];
  v10 = [CCSQLCommandCriterion criterionWithColumnName:@"key" EQUALSColumnValue:v7];
  [v9 setCommandCriterion:v10];
  v11 = [v9 build];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v12 = objc_opt_class();
  v19[4] = &v21;
  v20 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __67__CCDatabaseSetStateReader_persistedKeyValueForKey_database_error___block_invoke;
  v19[3] = &unk_1E7C8B288;
  v13 = [v8 enumerateRecordResultsOfSelect:v11 recordClass:v12 error:&v20 usingBlock:v19];
  v14 = v20;
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    v16 = v22[5];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[CCDatabaseSetStateReader persistedKeyValueForKey:database:error:];
    }

    CCSetError(a5, v14);
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

uint64_t __67__CCDatabaseSetStateReader_persistedKeyValueForKey_database_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  *a4 = 1;
  return 1;
}

- (void)enumerateProvenanceRecordsForStateVector:(os_log_t)log withType:selectAtomsInState:skipOverAtomsInState:deviceMapping:error:usingBlock:.cold.1(unsigned __int8 a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_DEBUG, "No clock values found with state %u in state vector: %@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __149__CCDatabaseSetStateReader_enumerateProvenanceRecordsForStateVector_withType_selectAtomsInState_skipOverAtomsInState_deviceMapping_error_usingBlock___block_invoke_2_cold_1(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchContentRecordFromContentHash:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchContentRecordFromContentHash:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_resolveSequenceNumberRangesOfDeltaVector:appendToCriteria:seenStateVectorBuilder:deviceMapping:type:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createProvenanceSelectCommandFromDeviceRowIdToClockValues:type:state:columns:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)sharedItemCount:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v2, v3, "Failed to select shared item count (%@) error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)itemInstanceCount:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 commandString];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v2, v3, "Failed to select local instance count (%@) error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)persistedKeyValueForKey:database:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  v4 = v0;
  _os_log_error_impl(&dword_1B6DB2000, v1, OS_LOG_TYPE_ERROR, "Failed to select key value record for key: %@ error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end