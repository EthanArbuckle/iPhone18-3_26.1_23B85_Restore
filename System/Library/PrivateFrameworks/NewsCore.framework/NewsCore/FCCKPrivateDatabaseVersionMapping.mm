@interface FCCKPrivateDatabaseVersionMapping
+ (FCCKPrivateDatabaseVersionMapping)mappingWithBaseValues:(id)a3 V2Changes:(id)a4 V3Changes:(id)a5 V4Changes:(id)a6;
- (BOOL)containsValuePassingTest:(id)a3;
- (FCCKPrivateDatabaseVersionMapping)initWithBaseValues:(id)a3 V2Changes:(id)a4 V3Changes:(id)a5 V4Changes:(id)a6;
- (id)allValuesForVersion:(int64_t)a3;
- (id)allValuesModifiedFromVersion:(int64_t)a3 toVersion:(int64_t)a4;
- (id)mapValue:(id)a3 toVersion:(int64_t)a4;
- (id)mappingByTransformingValuesWithBlock:(id)a3;
@end

@implementation FCCKPrivateDatabaseVersionMapping

+ (FCCKPrivateDatabaseVersionMapping)mappingWithBaseValues:(id)a3 V2Changes:(id)a4 V3Changes:(id)a5 V4Changes:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[FCCKPrivateDatabaseVersionMapping alloc] initWithBaseValues:v12 V2Changes:v11 V3Changes:v10 V4Changes:v9];

  return v13;
}

- (FCCKPrivateDatabaseVersionMapping)initWithBaseValues:(id)a3 V2Changes:(id)a4 V3Changes:(id)a5 V4Changes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v63.receiver = self;
  v63.super_class = FCCKPrivateDatabaseVersionMapping;
  v15 = [(FCCKPrivateDatabaseVersionMapping *)&v63 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_baseValues, a3);
    objc_storeStrong(&v16->_V2Changes, a4);
    objc_storeStrong(&v16->_V3Changes, a5);
    objc_storeStrong(&v16->_V4Changes, a6);
    v17 = [MEMORY[0x1E695DFD8] setWithArray:v11];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke;
    aBlock[3] = &unk_1E7C3F200;
    v62 = v17;
    v42 = v17;
    v41 = _Block_copy(aBlock);
    [v12 enumerateKeysAndObjectsUsingBlock:v41];
    [v13 enumerateKeysAndObjectsUsingBlock:v41];
    [v14 enumerateKeysAndObjectsUsingBlock:v41];
    v18 = MEMORY[0x1E695DF90];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_6;
    v58[3] = &unk_1E7C37D00;
    v19 = v11;
    v59 = v19;
    v20 = v12;
    v60 = v20;
    v21 = [v18 fc_dictionary:v58];
    forwardMapToV2 = v16->_forwardMapToV2;
    v16->_forwardMapToV2 = v21;

    v23 = MEMORY[0x1E695DF90];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_3;
    v54[3] = &unk_1E7C399F8;
    v24 = v19;
    v55 = v24;
    v25 = v20;
    v56 = v25;
    v26 = v13;
    v57 = v26;
    v27 = [v23 fc_dictionary:v54];
    forwardMapToV3 = v16->_forwardMapToV3;
    v16->_forwardMapToV3 = v27;

    v43 = v11;
    v29 = MEMORY[0x1E695DF90];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_5;
    v49[3] = &unk_1E7C36DB0;
    v30 = v24;
    v50 = v30;
    v31 = v25;
    v51 = v31;
    v32 = v26;
    v52 = v32;
    v33 = v14;
    v53 = v33;
    v34 = [v29 fc_dictionary:v49];
    forwardMapToV4 = v16->_forwardMapToV4;
    v16->_forwardMapToV4 = v34;

    v36 = MEMORY[0x1E695DF90];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_7;
    v44[3] = &unk_1E7C36DB0;
    v45 = v33;
    v46 = v32;
    v47 = v31;
    v48 = v30;
    v37 = v36;
    v11 = v43;
    v38 = [v37 fc_dictionary:v44];
    reverseMap = v16->_reverseMap;
    v16->_reverseMap = v38;
  }

  return v16;
}

void __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) containsObject:a2] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"versioned changes should be keyed by base value"];
    v4 = 136315906;
    v5 = "[FCCKPrivateDatabaseVersionMapping initWithBaseValues:V2Changes:V3Changes:V4Changes:]_block_invoke";
    v6 = 2080;
    v7 = "FCCKPrivateDatabaseVersionMapping.m";
    v8 = 1024;
    v9 = 55;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_2;
  v6[3] = &unk_1E7C393D0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
  [v5 addEntriesFromDictionary:*(a1 + 40)];
}

void __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_4;
  v6[3] = &unk_1E7C393D0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
  [v5 addEntriesFromDictionary:a1[5]];
  [v5 addEntriesFromDictionary:a1[6]];
}

void __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_6;
  v6[3] = &unk_1E7C393D0;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
  [v5 addEntriesFromDictionary:a1[5]];
  [v5 addEntriesFromDictionary:a1[6]];
  [v5 addEntriesFromDictionary:a1[7]];
}

void __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_7(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_8;
  v18[3] = &unk_1E7C3F200;
  v5 = v3;
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  v6 = a1[5];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_9;
  v16[3] = &unk_1E7C3F200;
  v7 = v5;
  v17 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
  v8 = a1[6];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_10;
  v14[3] = &unk_1E7C3F200;
  v9 = v7;
  v15 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = a1[7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__FCCKPrivateDatabaseVersionMapping_initWithBaseValues_V2Changes_V3Changes_V4Changes___block_invoke_11;
  v12[3] = &unk_1E7C393D0;
  v13 = v9;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:v12];
}

- (id)mapValue:(id)a3 toVersion:(int64_t)a4
{
  v7 = a3;
  v8 = [(FCCKPrivateDatabaseVersionMapping *)self reverseMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v4 = v7;

    goto LABEL_17;
  }

  v10 = v9;
  v11 = v10;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v12 = [(FCCKPrivateDatabaseVersionMapping *)self forwardMapToV3];
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v12 = [(FCCKPrivateDatabaseVersionMapping *)self forwardMapToV4];
      goto LABEL_12;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v12 = [(FCCKPrivateDatabaseVersionMapping *)self forwardMapToV2];
LABEL_12:
      v13 = v12;
      v14 = [v12 objectForKeyedSubscript:v11];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v7;
      }

      v4 = v16;
    }
  }

  else
  {
    v4 = v10;
  }

LABEL_17:

  return v4;
}

- (id)allValuesForVersion:(int64_t)a3
{
  v5 = [(FCCKPrivateDatabaseVersionMapping *)self baseValues];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__FCCKPrivateDatabaseVersionMapping_allValuesForVersion___block_invoke;
  v8[3] = &unk_1E7C40518;
  v8[4] = self;
  v8[5] = a3;
  v6 = [v5 fc_arrayByTransformingWithBlock:v8];

  return v6;
}

- (id)allValuesModifiedFromVersion:(int64_t)a3 toVersion:(int64_t)a4
{
  v7 = [(FCCKPrivateDatabaseVersionMapping *)self baseValues];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__FCCKPrivateDatabaseVersionMapping_allValuesModifiedFromVersion_toVersion___block_invoke;
  v10[3] = &unk_1E7C44B98;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  v8 = [v7 fc_setByTransformingWithBlock:v10];

  return v8;
}

id __76__FCCKPrivateDatabaseVersionMapping_allValuesModifiedFromVersion_toVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 mapValue:v5 toVersion:v4];
  v7 = [*(a1 + 32) mapValue:v5 toVersion:*(a1 + 48)];

  if ([v6 isEqual:v7])
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (BOOL)containsValuePassingTest:(id)a3
{
  v4 = a3;
  v5 = [(FCCKPrivateDatabaseVersionMapping *)self baseValues];
  if ([v5 fc_containsObjectPassingTest:v4])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(FCCKPrivateDatabaseVersionMapping *)self V2Changes];
    v8 = [v7 allValues];
    if ([v8 fc_containsObjectPassingTest:v4])
    {
      v6 = 1;
    }

    else
    {
      v9 = [(FCCKPrivateDatabaseVersionMapping *)self V3Changes];
      v10 = [v9 allValues];
      if ([v10 fc_containsObjectPassingTest:v4])
      {
        v6 = 1;
      }

      else
      {
        v11 = [(FCCKPrivateDatabaseVersionMapping *)self V4Changes];
        v12 = [v11 allValues];
        v6 = [v12 fc_containsObjectPassingTest:v4];
      }
    }
  }

  return v6;
}

- (id)mappingByTransformingValuesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(FCCKPrivateDatabaseVersionMapping *)self baseValues];
  v6 = [v5 fc_setByTransformingWithBlock:v4];

  v7 = MEMORY[0x1E695DF20];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke;
  v27[3] = &unk_1E7C3F430;
  v27[4] = self;
  v8 = v4;
  v28 = v8;
  v9 = [v7 fc_dictionary:v27];
  v10 = MEMORY[0x1E695DF20];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_3;
  v25[3] = &unk_1E7C3F430;
  v25[4] = self;
  v11 = v8;
  v26 = v11;
  v12 = [v10 fc_dictionary:v25];
  v13 = MEMORY[0x1E695DF20];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_5;
  v22 = &unk_1E7C3F430;
  v23 = self;
  v24 = v11;
  v14 = v11;
  v15 = [v13 fc_dictionary:&v19];
  v16 = [v6 allObjects];
  v17 = [FCCKPrivateDatabaseVersionMapping mappingWithBaseValues:v16 V2Changes:v9 V3Changes:v12 V4Changes:v15];

  return v17;
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) V2Changes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_2;
  v6[3] = &unk_1E7C44740;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v10 = v6(v5, a3);
  v8 = *(a1 + 32);
  v9 = (*(*(a1 + 40) + 16))();

  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) V3Changes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_4;
  v6[3] = &unk_1E7C44740;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v10 = v6(v5, a3);
  v8 = *(a1 + 32);
  v9 = (*(*(a1 + 40) + 16))();

  [v8 setObject:v10 forKeyedSubscript:v9];
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) V4Changes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_6;
  v6[3] = &unk_1E7C44740;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __74__FCCKPrivateDatabaseVersionMapping_mappingByTransformingValuesWithBlock___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v10 = v6(v5, a3);
  v8 = *(a1 + 32);
  v9 = (*(*(a1 + 40) + 16))();

  [v8 setObject:v10 forKeyedSubscript:v9];
}

@end