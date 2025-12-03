@interface CESRRawSpeechProfileTools
+ (id)convertRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId omitItemTypes:(id)types error:(id *)error;
+ (id)itemWithType:(int64_t)type itemId:(id)id fieldType:(int64_t)fieldType value:(id)value;
+ (id)mergeMultiUserPrimaryProfile:(id)profile withCompanionProfiles:(id)profiles error:(id *)error;
+ (id)placeholderItemIdWithCategoryName:(id)name;
+ (id)vocabularyItemsOfType:(int64_t)type fromRawSpeechProfile:(id)profile error:(id *)error;
@end

@implementation CESRRawSpeechProfileTools

+ (id)itemWithType:(int64_t)type itemId:(id)id fieldType:(int64_t)fieldType value:(id)value
{
  idCopy = id;
  valueCopy = value;
  v11 = objc_alloc_init(MEMORY[0x277D22D28]);
  v12 = [v11 setItemType:type itemId:idCopy error:0];
  v13 = [v11 addFieldWithType:fieldType value:valueCopy error:0];
  v14 = [v11 buildItemWithError:0];

  return v14;
}

+ (id)placeholderItemIdWithCategoryName:(id)name
{
  nameCopy = name;
  if (placeholderItemIdWithCategoryName__onceToken != -1)
  {
    dispatch_once(&placeholderItemIdWithCategoryName__onceToken, &__block_literal_global_2150);
  }

  if (!nameCopy)
  {
    nameCopy = @"unspecified";
  }

  v4 = [placeholderItemIdWithCategoryName__categoryCounts objectForKey:nameCopy];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &unk_283952CC0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "integerValue") + 1}];

  [placeholderItemIdWithCategoryName__categoryCounts setObject:v6 forKey:nameCopy];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@", @"speechprofile", nameCopy, v6];

  return v7;
}

uint64_t __63__CESRRawSpeechProfileTools_placeholderItemIdWithCategoryName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = placeholderItemIdWithCategoryName__categoryCounts;
  placeholderItemIdWithCategoryName__categoryCounts = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)mergeMultiUserPrimaryProfile:(id)profile withCompanionProfiles:(id)profiles error:(id *)error
{
  v125[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  profilesCopy = profiles;
  v8 = profilesCopy;
  v81 = profileCopy;
  v82 = profilesCopy;
  if (!profileCopy || ![profilesCopy count])
  {
    v49 = MEMORY[0x277CCA9B8];
    v124 = *MEMORY[0x277CCA450];
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required primary/companion profile data (primary: %@ companion: %@)", profileCopy, v8];
    v125[0] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:&v124 count:1];
    v52 = [v49 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:9 userInfo:v51];
    if (error && v52)
    {
      v52 = v52;
      *error = v52;
    }

    v48 = 0;
    goto LABEL_70;
  }

  v106 = 0;
  v107 = &v106;
  v108 = 0x3032000000;
  v109 = __Block_byref_object_copy__2166;
  v110 = __Block_byref_object_dispose__2167;
  v111 = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = (v107 + 5);
  obj = v107[5];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke;
  v103[3] = &unk_27857F8A0;
  v11 = v9;
  v104 = v11;
  v12 = [profileCopy enumerateDatasetsWithError:&obj usingBlock:v103];
  objc_storeStrong(v10, obj);
  if ((v12 & 1) == 0)
  {
    if (error)
    {
      v53 = v107[5];
      if (v53)
      {
        *error = v53;
      }
    }

    v48 = 0;
    v13 = v104;
    goto LABEL_69;
  }

  v80 = [v11 count];
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v13 = v82;
  v14 = [v13 countByEnumeratingWithState:&v99 objects:v123 count:16];
  if (v14)
  {
    v15 = *v100;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v100 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v99 + 1) + 8 * i);
        v18 = (v107 + 5);
        v98 = v107[5];
        v96[0] = MEMORY[0x277D85DD0];
        v96[1] = 3221225472;
        v96[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_2;
        v96[3] = &unk_27857F8A0;
        v97 = v11;
        LOBYTE(v17) = [v17 enumerateDatasetsWithError:&v98 usingBlock:v96];
        objc_storeStrong(v18, v98);
        if ((v17 & 1) == 0)
        {
          if (error)
          {
            v54 = v107[5];
            if (v54)
            {
              *error = v54;
            }
          }

          v48 = 0;
          goto LABEL_69;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v99 objects:v123 count:16];
    }

    while (v14);
  }

  v19 = MEMORY[0x277D22D48];
  v20 = [v11 count];
  v21 = (v107 + 5);
  v95 = v107[5];
  v13 = [v19 syntheticWithDatasetCount:v20 error:&v95];
  objc_storeStrong(v21, v95);
  if (!v13)
  {
    if (error)
    {
      v55 = v107[5];
      v48 = 0;
      if (v55)
      {
        v13 = 0;
        v48 = 0;
        *error = v55;
      }
    }

    else
    {
      v48 = 0;
    }

    goto LABEL_69;
  }

  v22 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v120 = "+[CESRRawSpeechProfileTools mergeMultiUserPrimaryProfile:withCompanionProfiles:error:]";
    v121 = 2112;
    v122 = v13;
    _os_log_impl(&dword_225EEB000, v22, OS_LOG_TYPE_INFO, "%s Preparing to merge with profileInfo: %@", buf, 0x16u);
  }

  v23 = (v107 + 5);
  v94 = v107[5];
  v79 = [MEMORY[0x277D22D40] builderWithProfileInfo:v13 format:1 error:&v94];
  objc_storeStrong(v23, v94);
  if (!v79)
  {
    v48 = 0;
    if (error)
    {
      v56 = v107[5];
      if (v56)
      {
        v48 = 0;
        *error = v56;
      }
    }

    goto LABEL_68;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v76 = v11;
  v24 = [v76 countByEnumeratingWithState:&v90 objects:v118 count:16];
  if (!v24)
  {
    goto LABEL_32;
  }

  v25 = 0;
  v78 = *v91;
  while (2)
  {
    v26 = 0;
    v27 = v25 + 1;
    v73 = v25 + v24;
    v77 = v24;
    do
    {
      if (*v91 != v78)
      {
        objc_enumerationMutation(v76);
      }

      v28 = *(*(&v90 + 1) + 8 * v26);
      datasetInfo = [v28 datasetInfo];
      v30 = datasetInfo;
      if (v27 <= v80)
      {
        goto LABEL_28;
      }

      deviceId = [datasetInfo deviceId];
      v32 = v30;
      v33 = [deviceId length] == 0;

      if (v33)
      {
        v58 = MEMORY[0x277CCA9B8];
        v116 = *MEMORY[0x277CCA450];
        v59 = MEMORY[0x277CCACA8];
        deviceId2 = [v32 deviceId];
        v61 = [v59 stringWithFormat:@"Companion profile has invalid deviceId: %@ in dataset: %@", deviceId2, v32];
        v117 = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
        v63 = [v58 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:7 userInfo:v62];
        goto LABEL_61;
      }

      userId = [v32 userId];
      v35 = [userId length] == 0;

      if (v35)
      {
        v64 = MEMORY[0x277CCA9B8];
        v114 = *MEMORY[0x277CCA450];
        v65 = MEMORY[0x277CCACA8];
        deviceId2 = [v32 userId];
        v61 = [v65 stringWithFormat:@"Companion profile has invalid userId: %@ in dataset: %@", deviceId2, v32];
        v115 = v61;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v63 = [v64 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:8 userInfo:v62];
LABEL_61:
        if (error && v63)
        {
          v63 = v63;
          *error = v63;
        }

        goto LABEL_65;
      }

      v30 = v32;
      itemType = [v32 itemType];
      if (itemType > 0x15)
      {
        goto LABEL_76;
      }

      if (((1 << itemType) & 0x20000E) != 0)
      {
        goto LABEL_28;
      }

      if (((1 << itemType) & 0x10020) == 0)
      {
LABEL_76:
        v69 = MEMORY[0x277CCA9B8];
        v112 = *MEMORY[0x277CCA450];
        deviceId2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dataset: %@ not applicable from companion profile", v32];
        v113 = deviceId2;
        v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v70 = [v69 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:9 userInfo:v61];
        v62 = v70;
        if (error && v70)
        {
          v71 = v70;
          *error = v62;
        }

LABEL_65:

LABEL_66:
LABEL_67:

        v48 = 0;
        goto LABEL_68;
      }

      v74 = objc_alloc(MEMORY[0x277D22D08]);
      itemType2 = [v32 itemType];
      originAppId = [v32 originAppId];
      userId2 = [v32 userId];
      itemCount = [v32 itemCount];
      v40 = (v107 + 5);
      v89 = v107[5];
      LODWORD(v72) = itemCount;
      v41 = [v74 initWithItemType:itemType2 originAppId:originAppId deviceId:0 userId:userId2 lastModifiedTime:0 capturedTime:0 itemCount:v72 error:&v89];
      objc_storeStrong(v40, v89);

      v30 = v41;
      if (!v41)
      {
        if (error)
        {
          v68 = v107[5];
          if (v68)
          {
            *error = v68;
          }
        }

        goto LABEL_67;
      }

LABEL_28:
      v42 = (v107 + 5);
      v88 = v107[5];
      v32 = v30;
      v43 = [v79 addDataset:v30 error:&v88];
      objc_storeStrong(v42, v88);
      v45 = (v107 + 5);
      v44 = v107[5];
      if (!v43)
      {
        if (error && v44)
        {
          *error = v44;
        }

        goto LABEL_66;
      }

      v87 = v107[5];
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_35;
      v84[3] = &unk_27857F8C8;
      v46 = v43;
      v85 = v46;
      v86 = &v106;
      v47 = [v28 enumerateItemsWithError:&v87 usingBlock:v84];
      objc_storeStrong(v45, v87);
      if ((v47 & 1) == 0)
      {
        if (error)
        {
          v57 = v107[5];
          if (v57)
          {
            *error = v57;
          }
        }

        goto LABEL_66;
      }

      ++v26;
      ++v27;
    }

    while (v77 != v26);
    v24 = [v76 countByEnumeratingWithState:&v90 objects:v118 count:16];
    v25 = v73;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_32:

  v48 = [v79 buildWithError:error];
LABEL_68:

LABEL_69:
  _Block_object_dispose(&v106, 8);

LABEL_70:
  v66 = *MEMORY[0x277D85DE8];

  return v48;
}

uint64_t __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 datasetInfo];
  v5 = [v4 itemType];

  if (v5 == 4)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

uint64_t __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 datasetInfo];
  v5 = [v4 itemType];

  if (v5 <= 0x15 && ((1 << v5) & 0x21002E) != 0)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

BOOL __86__CESRRawSpeechProfileTools_mergeMultiUserPrimaryProfile_withCompanionProfiles_error___block_invoke_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 addItem:a2 error:&obj];
  objc_storeStrong((v3 + 40), obj);

  return v4 != 0;
}

+ (id)convertRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId omitItemTypes:(id)types error:(id *)error
{
  v96 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  idCopy = id;
  userIdCopy = userId;
  typesCopy = types;
  v70 = KVItemTypeToNumber();
  v91[0] = v70;
  v12 = KVItemTypeToNumber();
  v91[1] = v12;
  v13 = KVItemTypeToNumber();
  v91[2] = v13;
  v14 = KVItemTypeToNumber();
  v91[3] = v14;
  v15 = KVItemTypeToNumber();
  v91[4] = v15;
  v16 = KVItemTypeToNumber();
  v91[5] = v16;
  v17 = KVItemTypeToNumber();
  v91[6] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:7];
  v19 = typesCopy;
  v20 = v18;
  errorCopy = error;
  if ([v19 count])
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v20, "count")}];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = ___applyItemTypeFilter_block_invoke;
    v93 = &unk_27857F8F0;
    v94 = v19;
    v22 = v21;
    v95 = v22;
    [v20 enumerateObjectsUsingBlock:buf];
    v23 = v95;
    v24 = v22;

    error = errorCopy;
  }

  else
  {
    v24 = v20;
  }

  v65 = v19;
  v25 = MEMORY[0x277D22D40];
  v26 = [MEMORY[0x277D22D48] syntheticWithDatasetCount:objc_msgSend(v24 error:{"count"), error}];
  v88 = 0;
  v27 = [v25 builderWithProfileInfo:v26 format:1 error:&v88];
  v28 = v88;

  if (!v27)
  {
    v53 = 0;
    if (error)
    {
      v55 = v65;
      if (v28)
      {
        v56 = v28;
        v53 = 0;
        *error = v28;
      }
    }

    else
    {
      v55 = v65;
    }

    goto LABEL_57;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v64 = v24;
  obj = v24;
  v69 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
  if (!v69)
  {
    goto LABEL_32;
  }

  v71 = *v85;
  v66 = v27;
  while (2)
  {
    for (i = 0; i != v69; ++i)
    {
      if (*v85 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v84 + 1) + 8 * i);
      v31 = KVItemTypeFromNumber();
      v32 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v50 = v32;
        v51 = KVItemTypeDescription();
        *buf = 136315394;
        *&buf[4] = "+[CESRRawSpeechProfileTools convertRawSpeechProfile:deviceId:userId:omitItemTypes:error:]";
        *&buf[12] = 2112;
        *&buf[14] = v51;
        _os_log_debug_impl(&dword_225EEB000, v50, OS_LOG_TYPE_DEBUG, "%s Extracting and converting vocabulary items of type: %@ from rawSpeechProfile", buf, 0x16u);
      }

      v83 = v28;
      v33 = [CESRRawSpeechProfileTools vocabularyItemsOfType:v31 fromRawSpeechProfile:profileCopy error:&v83];
      v34 = v83;

      if (!v33)
      {
        if (error)
        {
          v24 = v64;
          v55 = v65;
          if (v34)
          {
            v57 = v34;
            *error = v34;
          }

          v38 = v34;
          goto LABEL_51;
        }

        v38 = v34;
LABEL_50:
        v24 = v64;
        v55 = v65;
LABEL_51:

        v53 = 0;
        v28 = v38;
        goto LABEL_57;
      }

      v35 = objc_alloc(MEMORY[0x277D22D08]);
      v36 = [v33 count];
      v82 = v34;
      LODWORD(v63) = v36;
      v37 = [v35 initWithItemType:v31 originAppId:0 deviceId:idCopy userId:userIdCopy lastModifiedTime:0 capturedTime:0 itemCount:v63 error:&v82];
      v38 = v82;

      if (!v37)
      {
        if (error && v38)
        {
          v58 = v38;
          *error = v38;
        }

        goto LABEL_50;
      }

      v81 = v38;
      v39 = [v27 addDataset:v37 error:&v81];
      v28 = v81;

      if (!v39)
      {
        if (error && v28)
        {
          v59 = v28;
          *error = v28;
        }

LABEL_49:
        v38 = v28;
        goto LABEL_50;
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v40 = v33;
      v41 = [v40 countByEnumeratingWithState:&v77 objects:v89 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v78;
LABEL_17:
        v44 = 0;
        v45 = v28;
        while (1)
        {
          if (*v78 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v46 = *(*(&v77 + 1) + 8 * v44);
          v76 = v45;
          v47 = [v39 addItem:v46 error:&v76];
          v28 = v76;

          if (!v47)
          {
            break;
          }

          ++v44;
          v45 = v28;
          if (v42 == v44)
          {
            v42 = [v40 countByEnumeratingWithState:&v77 objects:v89 count:16];
            if (v42)
            {
              goto LABEL_17;
            }

            v48 = 1;
            error = errorCopy;
            goto LABEL_28;
          }
        }

        v48 = 0;
        error = errorCopy;
        if (!errorCopy)
        {
LABEL_28:
          v27 = v66;
          goto LABEL_29;
        }

        v27 = v66;
        if (v28)
        {
          v49 = v28;
          v48 = 0;
          *errorCopy = v28;
        }
      }

      else
      {
        v48 = 1;
      }

LABEL_29:

      if (!v48)
      {
        goto LABEL_49;
      }
    }

    v69 = [obj countByEnumeratingWithState:&v84 objects:v90 count:16];
    if (v69)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v52 = v28;

  v75 = v28;
  v53 = [v27 buildWithError:&v75];
  v28 = v75;

  if (v53)
  {
    v54 = v53;
    v24 = v64;
    v55 = v65;
  }

  else
  {
    v24 = v64;
    v55 = v65;
    if (error && v28)
    {
      v60 = v28;
      *error = v28;
    }
  }

LABEL_57:
  v61 = *MEMORY[0x277D85DE8];

  return v53;
}

+ (id)vocabularyItemsOfType:(int64_t)type fromRawSpeechProfile:(id)profile error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v8 = off_27857E040;
        break;
      case 2:
        v8 = off_27857E038;
        break;
      case 3:
        v8 = off_27857E030;
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (type > 15)
  {
    if (type == 16)
    {
      v8 = off_27857E060;
    }

    else
    {
      if (type != 21)
      {
        goto LABEL_21;
      }

      v8 = off_27857E048;
    }
  }

  else if (type == 4)
  {
    v8 = off_27857E050;
  }

  else
  {
    if (type != 5)
    {
      goto LABEL_21;
    }

    v8 = off_27857E058;
  }

  v9 = objc_alloc_init(*v8);
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      v20 = v11;
      v21 = KVItemTypeDescription();
      *buf = 136315394;
      v23 = "+[CESRRawSpeechProfileTools vocabularyItemsOfType:fromRawSpeechProfile:error:]";
      v24 = 2112;
      v25 = v21;
      _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s Extracting vocabulary items of type: %@ from rawSpeechProfile.", buf, 0x16u);
    }

    v12 = [CESRRawSpeechProfileExtractor extractItemsFromRawSpeechProfile:profileCopy converter:v10 error:error];
    goto LABEL_25;
  }

LABEL_21:
  v13 = MEMORY[0x277CCA9B8];
  v26 = *MEMORY[0x277CCA450];
  v14 = MEMORY[0x277CCACA8];
  v10 = KVItemTypeDescription();
  v15 = [v14 stringWithFormat:@"Target item type: %@ not supported.", v10];
  v27[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v17 = [v13 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:4 userInfo:v16];
  if (error && v17)
  {
    v17 = v17;
    *error = v17;
  }

  v12 = 0;
LABEL_25:

  v18 = *MEMORY[0x277D85DE8];

  return v12;
}

@end