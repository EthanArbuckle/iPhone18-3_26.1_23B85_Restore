@interface FCJSONRecordSource
- (FCJSONRecordSource)initWithSchema:(id)a3 contentDatabase:(id)a4 contentDirectory:(id)a5 experimentationSuffix:(id)a6 activeTreatmentID:(id)a7;
- (id)alwaysLocalizedKeys;
- (id)keyValueRepresentationOfRecord:(id)a3;
- (id)localizableKeys;
- (id)nonLocalizableKeys;
- (id)recordFromCKRecord:(id)a3 base:(id)a4;
- (id)recordIDPrefixes;
- (id)recordType;
- (id)storeFilename;
- (void)fetchRecordsWithIDs:(id)a3 cachePolicy:(id)a4 completion:(id)a5;
- (void)fetchRecordsWithIDs:(id)a3 completion:(id)a4;
@end

@implementation FCJSONRecordSource

- (id)storeFilename
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FCJSONRecordSource *)self schema];
  v4 = [v3 recordType];
  v5 = [v4 lowercaseString];
  v6 = [v2 stringWithFormat:@"%@-record-source", v5];

  return v6;
}

- (FCJSONRecordSource)initWithSchema:(id)a3 contentDatabase:(id)a4 contentDirectory:(id)a5 experimentationSuffix:(id)a6 activeTreatmentID:(id)a7
{
  v12 = a3;
  v19.receiver = self;
  v19.super_class = FCJSONRecordSource;
  v13 = [(FCRecordSource *)&v19 initWithContentDatabase:a4 contentDirectory:a5 appActivityMonitor:0 backgroundTaskable:0 defaultTTL:a6 experimentalizableFieldsPostfix:a7 activeTreatmentID:0.0];
  if (v13)
  {
    v14 = [v12 copy];
    schema = v13->_schema;
    v13->_schema = v14;

    v16 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_120];
    dateFormatter = v13->_dateFormatter;
    v13->_dateFormatter = v16;
  }

  return v13;
}

id __110__FCJSONRecordSource_initWithSchema_contentDatabase_contentDirectory_experimentationSuffix_activeTreatmentID___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  [v0 setFormatOptions:3955];

  return v0;
}

- (void)fetchRecordsWithIDs:(id)a3 cachePolicy:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(FCRecordSource *)self fetchOperationForRecordsWithIDs:a3];
  [v10 setCachePolicy:{objc_msgSend(v9, "cachePolicy")}];
  [v9 maximumCachedAge];
  v12 = v11;

  [v10 setMaximumCachedAge:v12];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FCJSONRecordSource_fetchRecordsWithIDs_cachePolicy_completion___block_invoke;
  v15[3] = &unk_1E7C37A38;
  v13 = v8;
  v16 = v13;
  [v10 setFetchCompletionBlock:v15];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v14 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v14 addOperation:v10];
  }

  else
  {
    [v10 start];
  }
}

void __65__FCJSONRecordSource_fetchRecordsWithIDs_cachePolicy_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 fetchedObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allRecords];
    v6 = [v5 fc_dictionaryWithKeyBlock:&__block_literal_global_11_3 valueBlock:&__block_literal_global_14_1];

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = [v9 error];
    v7 = *(v8 + 16);
  }

  v7();
}

id __65__FCJSONRecordSource_fetchRecordsWithIDs_cachePolicy_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 base];
  v3 = [v2 identifier];

  return v3;
}

- (void)fetchRecordsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[FCCachePolicy defaultCachePolicy];
  [(FCJSONRecordSource *)self fetchRecordsWithIDs:v7 cachePolicy:v8 completion:v6];
}

- (id)recordType
{
  v2 = [(FCJSONRecordSource *)self schema];
  v3 = [v2 recordType];

  return v3;
}

- (id)nonLocalizableKeys
{
  v2 = [(FCJSONRecordSource *)self schema];
  v3 = [v2 keys];

  return v3;
}

- (id)localizableKeys
{
  v2 = [(FCJSONRecordSource *)self schema];
  v3 = [v2 localizableKeys];

  return v3;
}

- (id)alwaysLocalizedKeys
{
  v2 = [(FCJSONRecordSource *)self schema];
  v3 = [v2 alwaysLocalizedKeys];

  return v3;
}

- (id)recordIDPrefixes
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(FCJSONRecordSource *)self schema];
  v3 = [v2 recordIDPrefix];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)keyValueRepresentationOfRecord:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = FCCheckedDynamicCast(v4, v3);

  v6 = MEMORY[0x1E696ACB0];
  v7 = [v5 json];
  v8 = [v6 JSONObjectWithData:v7 options:0 error:0];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v11 = v10;

  return v10;
}

- (id)recordFromCKRecord:(id)a3 base:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49 = a4;
  v50 = objc_alloc_init(MEMORY[0x1E69B6E68]);
  [v50 setBase:v49];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v6 recordID];
  v9 = [v8 recordName];
  [v7 setObject:v9 forKeyedSubscript:@"_recordName"];

  v10 = [(FCJSONRecordSource *)self dateFormatter];
  v11 = [v10 value];
  v12 = [v6 creationDate];
  v13 = [v11 stringFromDate:v12];
  [v7 setObject:v13 forKeyedSubscript:@"_recordCreationDate"];

  v14 = [(FCJSONRecordSource *)self dateFormatter];
  v15 = [v14 value];
  v16 = [v6 modificationDate];
  v17 = [v15 stringFromDate:v16];
  v53 = v7;
  [v7 setObject:v17 forKeyedSubscript:@"_recordModificationDate"];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v18 = self;
  v19 = [(FCJSONRecordSource *)self schema];
  v20 = [v19 allKeys];

  obj = v20;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v21)
  {
    v22 = v21;
    v54 = *v57;
    do
    {
      v23 = 0;
      do
      {
        if (*v57 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v56 + 1) + 8 * v23);
        v25 = [(FCRecordSource *)v18 localizedKeysByOriginalKey];
        v26 = [v25 objectForKeyedSubscript:v24];

        v27 = v24;
        v28 = [v6 objectForKeyedSubscript:v26];
        if (v28 || ([v6 objectForKeyedSubscript:v27], (v28 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v29 = v28;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [(FCJSONRecordSource *)v18 dateFormatter];
            v31 = [v30 value];
            v32 = [v31 stringFromDate:v29];
          }

          else
          {
            v32 = 0;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v29 base64EncodedStringWithOptions:0];

            v32 = v33;
          }

          v34 = MEMORY[0x1E696ACB0];
          v66 = v29;
          v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
          LODWORD(v34) = [v34 isValidJSONObject:v35];

          if (v34)
          {
            v36 = v29;

            v32 = v36;
            goto LABEL_16;
          }

          if (v32)
          {
LABEL_16:
            [v53 setObject:v32 forKeyedSubscript:v27];
          }

          else
          {
            v37 = FCRecordSourceLog;
            if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_ERROR))
            {
              v38 = v37;
              v51 = [(FCJSONRecordSource *)v18 schema];
              v39 = [v51 recordType];
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138412802;
              v61 = v39;
              v62 = 2112;
              v63 = v27;
              v64 = 2112;
              v65[0] = v41;
              _os_log_error_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_ERROR, "dropping record value that can't be encoded as JSON: %@.%@ = %@", buf, 0x20u);
            }
          }
        }

        ++v23;
      }

      while (v22 != v23);
      v42 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      v22 = v42;
    }

    while (v42);
  }

  v55 = 0;
  v43 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v53 options:0 error:&v55];
  v44 = v55;
  if (v43)
  {
    v45 = v50;
    [v50 setJson:v43];
  }

  else
  {
    v45 = v50;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"failed to encode record as JSON with error: %@", v44];
      *buf = 136315906;
      v61 = "[FCJSONRecordSource recordFromCKRecord:base:]";
      v62 = 2080;
      v63 = "FCJSONRecordSource.m";
      v64 = 1024;
      LODWORD(v65[0]) = 221;
      WORD2(v65[0]) = 2114;
      *(v65 + 6) = v48;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

@end