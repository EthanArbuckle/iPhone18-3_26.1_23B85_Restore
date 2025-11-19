@interface CESRUaapData
+ (BOOL)removeUaapOovsForLanguage:(id)a3 bundleId:(id)a4;
+ (BOOL)writeUaapOovsForLanguage:(id)a3 bundleId:(id)a4 customProns:(id)a5 newOovs:(id)a6 error:(id *)a7;
+ (id)readUaapOovsForLanguage:(id)a3;
@end

@implementation CESRUaapData

+ (BOOL)removeUaapOovsForLanguage:(id)a3 bundleId:(id)a4
{
  v5 = a4;
  v6 = AppOovDirectory(a3);
  v7 = [v6 stringByAppendingPathComponent:v5];

  v8 = [v7 stringByAppendingPathComponent:@"Prons"];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 removeItemAtPath:v8 error:0];

  return v10;
}

+ (BOOL)writeUaapOovsForLanguage:(id)a3 bundleId:(id)a4 customProns:(id)a5 newOovs:(id)a6 error:(id *)a7
{
  v50[1] = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = MEMORY[0x277CBEB38];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(v11);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke;
  v41[3] = &unk_27857FD50;
  v16 = v15;
  v42 = v16;
  [v12 enumerateObjectsUsingBlock:v41];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke_2;
  v39[3] = &unk_27857FD78;
  v17 = v16;
  v40 = v17;
  [v13 enumerateKeysAndObjectsUsingBlock:v39];

  v18 = AppOovDirectory(v14);

  v19 = [v18 stringByAppendingPathComponent:v10];

  v20 = [v19 stringByAppendingPathComponent:@"Prons"];
  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
  v49 = *MEMORY[0x277CCA1B0];
  v50[0] = *MEMORY[0x277CCA1B8];
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v38 = 0;
  v24 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:v23 error:&v38];
  v25 = v38;

  if (v24)
  {
    v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
    v37 = v25;
    v27 = [v17 writeToURL:v26 error:&v37];
    v28 = v37;

    if (v27)
    {
      v29 = 1;
LABEL_14:
      v25 = v28;
      goto LABEL_15;
    }

    v32 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v44 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
      v45 = 2112;
      v46 = v10;
      v47 = 2112;
      v48 = v28;
      _os_log_error_impl(&dword_225EEB000, v32, OS_LOG_TYPE_ERROR, "%s Failed to write app-specific OOVs for %@: %@", buf, 0x20u);
    }

    v31 = a7;
    if (!a7)
    {
      v29 = 0;
      goto LABEL_14;
    }

    v25 = v28;
    goto LABEL_12;
  }

  v30 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v44 = "+[CESRUaapData writeUaapOovsForLanguage:bundleId:customProns:newOovs:error:]";
    v45 = 2112;
    v46 = v10;
    v47 = 2112;
    v48 = v25;
    _os_log_error_impl(&dword_225EEB000, v30, OS_LOG_TYPE_ERROR, "%s Failed to create UaaP app directory for %@: %@", buf, 0x20u);
  }

  v31 = a7;
  if (a7)
  {
LABEL_12:
    v33 = v25;
    v29 = 0;
    *v31 = v25;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_15:

  v34 = *MEMORY[0x277D85DE8];
  return v29;
}

void __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 array];
  [v2 setObject:v5 forKey:v4];
}

void __76__CESRUaapData_writeUaapOovsForLanguage_bundleId_customProns_newOovs_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 allObjects];
  [v4 setObject:v6 forKey:v5];
}

+ (id)readUaapOovsForLanguage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = AppOovDirectory(a3);
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v16];
  v6 = v16;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "+[CESRUaapData readUaapOovsForLanguage:]";
      v19 = 2112;
      v20 = v3;
      v21 = 2112;
      v22 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to enumerate UaaP pron directory at %@: %@", buf, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __40__CESRUaapData_readUaapOovsForLanguage___block_invoke;
    v13[3] = &unk_27857FD28;
    v14 = v3;
    v15 = v9;
    v10 = v9;
    [v5 enumerateObjectsUsingBlock:v13];
    v8 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

void __40__CESRUaapData_readUaapOovsForLanguage___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v4 = [v3 stringByAppendingPathComponent:@"Prons"];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    v21 = 0;
    v9 = [v7 dictionaryWithContentsOfURL:v8 error:&v21];
    v10 = v21;

    if (v10)
    {
      v11 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "+[CESRUaapData readUaapOovsForLanguage:]_block_invoke";
        v24 = 2112;
        v25 = v4;
        v26 = 2112;
        v27 = v10;
        _os_log_error_impl(&dword_225EEB000, v11, OS_LOG_TYPE_ERROR, "%s Failed to load app-specific OOVs from %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __40__CESRUaapData_readUaapOovsForLanguage___block_invoke_5;
      v19 = &unk_27857FD00;
      v20 = v12;
      v13 = v12;
      [v9 enumerateKeysAndObjectsUsingBlock:&v16];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:{v13, v16, v17, v18, v19}];
      [*(a1 + 40) addObject:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __40__CESRUaapData_readUaapOovsForLanguage___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [*(a1 + 32) setObject:v7 forKey:v6];
}

@end