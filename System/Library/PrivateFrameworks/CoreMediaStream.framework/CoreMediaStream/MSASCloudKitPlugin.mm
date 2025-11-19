@interface MSASCloudKitPlugin
+ (id)_decryptedObjectForRecord:(id)a3 forKey:(id)a4 validateClass:(Class)a5;
+ (id)fetchMigrationCtag;
+ (void)_fetchRecordWithRecordID:(id)a3 zoneName:(id)a4 fieldName:(id)a5 ownerUserID:(id)a6 isOwned:(BOOL)a7 completionHandler:(id)a8;
@end

@implementation MSASCloudKitPlugin

+ (id)_decryptedObjectForRecord:(id)a3 forKey:(id)a4 validateClass:(Class)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 encryptedValues];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10 && ([v7 objectForKeyedSubscript:v8], (v10 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
    v10 = v11;
LABEL_5:
    v12 = v11;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
    {
      v11 = [v10 base64EncodedStringWithOptions:0];
      goto LABEL_5;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v15 = [v7 recordType];
    v16 = [v7 recordID];
    v17 = [v16 recordName];
    v19 = 138543874;
    v20 = v15;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = objc_opt_class();
    v18 = v24;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unexpected object instead of encrypted data for %{public}@.%{public}@: %{public}@", &v19, 0x20u);
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)_fetchRecordWithRecordID:(id)a3 zoneName:(id)a4 fieldName:(id)a5 ownerUserID:(id)a6 isOwned:(BOOL)a7 completionHandler:(id)a8
{
  v9 = a7;
  v53[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v32 = a5;
  v15 = a6;
  v16 = a8;
  v30 = v15;
  v31 = v14;
  v17 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v14 ownerName:v15];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2001;
  v48 = __Block_byref_object_dispose__2002;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__2001;
  v42 = __Block_byref_object_dispose__2002;
  v43 = 0;
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v13 zoneID:v17];
    v29 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.icloud-photos.fdb" environment:1];
    v19 = objc_alloc_init(MEMORY[0x277CBC230]);
    [v19 setApplicationBundleIdentifierOverrideForContainerAccess:@"com.apple.photos.cloud"];
    [v19 setApplicationBundleIdentifierOverrideForNetworkAttribution:@"com.apple.photos.cloud"];
    [v19 setApplicationBundleIdentifierOverrideForPushTopicGeneration:@"com.apple.sharedstreams"];
    v20 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v29 options:v19];
    v21 = objc_alloc_init(MEMORY[0x277CBC4F0]);
    [v21 setContainer:v20];
    v22 = objc_alloc(MEMORY[0x277CBC3E0]);
    v53[0] = v18;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
    v24 = [v22 initWithRecordIDs:v23];

    [v24 setConfiguration:v21];
    v52 = v32;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    [v24 setDesiredKeys:v25];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __104__MSASCloudKitPlugin__fetchRecordWithRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke;
    v33[3] = &unk_278E908D0;
    v36 = &v38;
    v37 = &v44;
    v26 = v18;
    v34 = v26;
    v35 = v13;
    [v24 setFetchRecordsCompletionBlock:v33];
    if (v9)
    {
      [v20 privateCloudDatabase];
    }

    else
    {
      [v20 sharedCloudDatabase];
    }
    v27 = ;
    [v27 addOperation:v24];
    [v24 waitUntilFinished];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v51 = v31;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Invalid zoneID for zoneName: %@", buf, 0xCu);
  }

  v16[2](v16, v45[5], v39[5]);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
  v28 = *MEMORY[0x277D85DE8];
}

void __104__MSASCloudKitPlugin__fetchRecordWithRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (v6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v15 = 138412290;
    v16 = v6;
    v13 = MEMORY[0x277D86220];
    v14 = "Failed to fetch userRecord: %@";
LABEL_10:
    _os_log_error_impl(&dword_245B99000, v13, OS_LOG_TYPE_ERROR, v14, &v15, 0xCu);
    goto LABEL_3;
  }

  v8 = [v5 objectForKey:a1[4]];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(a1[7] + 8) + 40);
  if (!v11)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v12 = a1[5];
    v15 = 138412290;
    v16 = v12;
    v13 = MEMORY[0x277D86220];
    v14 = "No valid userRecord for recordID: %@";
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched userRecord: %@", &v15, 0xCu);
  }

LABEL_3:

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)fetchMigrationCtag
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[MSProtocolUtilities currentOwnerCKUserID];
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__2001;
    v10 = __Block_byref_object_dispose__2002;
    v11 = 0;
    [a1 _fetchRecordWithRecordID:@"DBRMetadata" zoneName:@"SharedAlbumsInfo" fieldName:? ownerUserID:? isOwned:? completionHandler:?];
    v4 = v7[5];

    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __40__MSASCloudKitPlugin_fetchMigrationCtag__block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 _decryptedObjectForRecord:v5 forKey:v4 validateClass:objc_opt_class()];

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __108__MSASCloudKitPlugin_fetchClientOrgKeyForRecordID_zoneName_fieldName_ownerUserID_isOwned_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v8 = a2;
  v9 = [v5 _decryptedObjectForRecord:v8 forKey:v6 validateClass:objc_opt_class()];

  (*(a1[5] + 16))();
}

@end