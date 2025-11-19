@interface KSUserWordsSynchroniser
@end

@implementation KSUserWordsSynchroniser

void __42___KSUserWordsSynchroniser_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_synchroniser;
  sharedInstance_synchroniser = v1;
}

void __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke(uint64_t a1)
{
  v2 = [_KSSystemTask alloc];
  v3 = _KSGetSetting(ksDefaultPushTime, &unk_28679DA60);
  v4 = [v3 intValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke_59;
  v9[3] = &unk_2797F7510;
  v10 = *(a1 + 32);
  v5 = [(_KSSystemTask *)v2 initWithName:@"com.apple.keyboardServices.userWords.pusher" isPeriodic:1 period:v4 handler:v9];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = v5;

  if (*(*(a1 + 32) + 40) == 1)
  {
    v8 = +[_KSTaskScheduler sharedInstance];
    [v8 registerTask:*(*(a1 + 32) + 32)];
  }
}

void __68___KSUserWordsSynchroniser_initForTestingWithManager_enablePushing___block_invoke_59(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 checkForDownload:0 uploads:0 allLanguages:0];
  v3[2]();
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 0;
  if (*(a1 + 48) == 1)
  {
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_1(a1);
    }

    [*(a1 + 32) disable];
  }

  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 49))
    {
      if (*(a1 + 50))
      {
        [*(a1 + 32) checkConfiguration];
        *(*(a1 + 32) + 40) = 1;
        if (*(*(a1 + 32) + 32))
        {
          if (*(a1 + 48) == 1)
          {
            v3 = +[_KSTaskScheduler sharedInstance];
            [v3 registerTask:*(*(a1 + 32) + 32)];
          }
        }

        return;
      }

      v4 = KSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_4();
      }
    }

    else
    {
      v4 = KSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_3();
      }
    }
  }

  else
  {
    v4 = KSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_2();
    }
  }

  if ([*(*(a1 + 32) + 24) checkIfExists])
  {
    [*(a1 + 32) disable];
  }
}

void __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2;
  v7[3] = &unk_2797F66D8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2(uint64_t a1)
{
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2_cold_1(a1);
  }

  *(*(a1 + 32) + 57) = 0;
  *(*(a1 + 32) + 58) = 1;
  [*(a1 + 32) checkConfiguration];
  return (*(*(a1 + 40) + 16))();
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_3;
  v6[3] = &unk_2797F76B0;
  v7 = v3;
  v5 = v3;
  [v4 modifyInformationWithOperations:v6];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_4(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if ([*(a1[6] + 3) checkIfExists])
  {
    if (!v3)
    {
      v4 = [a1[6] information];
      v3 = [v4 objectForKey:@"Languages"];

      if (!v2)
      {
        v3 = v3;
        v2 = v3;
      }
    }

    [a1[6] checkProgress:0 withInfo:MEMORY[0x277CBEC38]];
    if ([a1[7] count])
    {
      v5 = 0;
    }

    else
    {
      (*(a1[8] + 2))();
      v5 = 1;
    }

    v6 = a1[6];
    v7 = [objc_opt_class() infoClass];
    v8 = a1[6];
    v9 = a1[7];
    v10 = v2;
    v11 = v9;
    v12 = v11;
    v13 = v11;
    if (v10 && (v13 = v10, v11))
    {
      v14 = [v10 arrayByAddingObjectsFromArray:v11];
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;

    v16 = [v8 generateRecordListForLanguages:v15];

    v17 = a1[6];
    v18 = [v16 allKeys];
    v19 = +[_KSUserWordsInfo keyNamesExcludingData];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5;
    v23[3] = &unk_2797F77A0;
    v20 = a1[6];
    v21 = a1[7];
    v24 = v16;
    v25 = v20;
    v30 = v7;
    v26 = v21;
    v2 = v10;
    v27 = v2;
    v31 = v5;
    v29 = a1[8];
    v3 = v3;
    v28 = v3;
    v22 = v16;
    [v17 readFilesWithRecordIDs:v18 forColumns:v19 priority:v5 withCompletionHandler:v23];
  }

  else
  {
    [a1[6] checkProgress:0 withInfo:MEMORY[0x277CBEC28]];
  }
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5_cold_1();
    }
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v93;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v93 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(a1 + 32) objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v11);
  }

  v15 = *(a1 + 40);
  v68 = v8;
  v69 = v6;
  if (v6)
  {
    v103[0] = @"Error";
    v103[1] = @"Languages";
    v104[0] = v6;
    v104[1] = v8;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v104;
    v18 = v103;
    v19 = 2;
  }

  else
  {
    v101 = @"Languages";
    v102 = v8;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v102;
    v18 = &v101;
    v19 = 1;
  }

  v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
  [v15 checkProgress:1 withInfo:v20];

  v21 = MEMORY[0x277CBEB18];
  v22 = [*(a1 + 32) allKeys];
  v23 = [v21 arrayWithArray:v22];

  v24 = [v9 allKeys];
  v71 = v23;
  [v23 removeObjectsInArray:v24];

  v73 = [MEMORY[0x277CBEB18] array];
  v72 = [MEMORY[0x277CBEB38] dictionary];
  v70 = [MEMORY[0x277CBEB38] dictionary];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v25 = v9;
  v76 = [v25 countByEnumeratingWithState:&v88 objects:v100 count:16];
  if (v76)
  {
    v74 = v25;
    v75 = *v89;
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v89 != v75)
        {
          objc_enumerationMutation(v25);
        }

        v27 = *(*(&v88 + 1) + 8 * j);
        v28 = *(a1 + 80);
        v29 = [v25 objectForKeyedSubscript:v27];
        v30 = [v28 infoWithRecord:v29];

        v31 = *(a1 + 80);
        v32 = [*(a1 + 32) objectForKeyedSubscript:v27];
        v33 = [v31 filesForLanguage:v32];

        v34 = [*(a1 + 80) infoWithFiles:v33];
        v35 = v34;
        if (v33)
        {
          v36 = v34 == 0;
        }

        else
        {
          v36 = 1;
        }

        if (!v36)
        {
          if ([v34 isBetterThan:v30])
          {
            v44 = *(a1 + 56);
            v45 = [*(a1 + 32) objectForKeyedSubscript:v27];
            LODWORD(v44) = [v44 containsObject:v45];

            if (v44)
            {
              [v71 addObject:v27];
              [v72 setObject:v35 forKey:v71];
              [v70 setObject:v33 forKey:v71];
              v46 = @"Ours is better";
LABEL_38:
              v51 = [(__CFString *)v46 stringByAppendingFormat:@" (ours = %@ theirs = %@)", v35, v30];;

              v52 = *(a1 + 40);
              v96[0] = @"RecordID";
              v53 = [v27 recordName];
              v97[0] = v53;
              v96[1] = @"Language";
              v54 = [*(a1 + 32) objectForKeyedSubscript:v27];
              v55 = v54;
              v56 = @"LANGUAGE MISSING";
              if (v54)
              {
                v56 = v54;
              }

              v96[2] = @"Disposition";
              v97[1] = v56;
              v97[2] = v51;
              v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:3];
              [v52 checkProgress:2 withInfo:v57];

              v25 = v74;
              goto LABEL_41;
            }

            v49 = @"Ours is better";
            v50 = @" [upload disabled]";
          }

          else
          {
            v46 = @"Equal!";
            if (![v30 isBetterThan:v35])
            {
              goto LABEL_38;
            }

            v47 = *(a1 + 48);
            v48 = [*(a1 + 32) objectForKeyedSubscript:v27];
            LODWORD(v47) = [v47 containsObject:v48];

            if (v47)
            {
              [v73 addObject:v27];
              [v72 setObject:v35 forKey:v73];
              v46 = @"Server is better";
              goto LABEL_38;
            }

            v49 = @"Server is better";
            v50 = @" [download disabled]";
          }

          v46 = [(__CFString *)v49 stringByAppendingString:v50];
          goto LABEL_38;
        }

        v98[0] = @"Language";
        v37 = *(a1 + 40);
        v38 = [*(a1 + 32) objectForKeyedSubscript:v27];
        v39 = v38;
        v40 = @"LANGUAGE MISSING";
        if (v38)
        {
          v40 = v38;
        }

        v98[1] = @"Disposition";
        v99[0] = v40;
        v99[1] = @"No local copy";
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
        [v37 checkProgress:2 withInfo:v41];

        v42 = *(a1 + 48);
        v43 = [*(a1 + 32) objectForKeyedSubscript:v27];
        LODWORD(v42) = [v42 containsObject:v43];

        if (v42)
        {
          [v73 addObject:v27];
        }

LABEL_41:
      }

      v76 = [v25 countByEnumeratingWithState:&v88 objects:v100 count:16];
    }

    while (v76);
  }

  v58 = *(*(a1 + 40) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_131;
  block[3] = &unk_2797F7778;
  v78 = v71;
  v79 = v72;
  v59 = *(a1 + 80);
  v80 = v70;
  v86 = v59;
  v60 = *(a1 + 32);
  v61 = *(a1 + 40);
  v81 = v60;
  v82 = v61;
  v62 = *(a1 + 88);
  v83 = v73;
  v87 = v62;
  v85 = *(a1 + 72);
  v84 = *(a1 + 64);
  v63 = v73;
  v64 = v70;
  v65 = v72;
  v66 = v71;
  dispatch_async(v58, block);

  v67 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_131(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  group = dispatch_group_create();
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v45 = [MEMORY[0x277CBEB18] array];
  v44 = [MEMORY[0x277CBEB18] array];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v48 = *v63;
  do
  {
    v4 = 0;
    v46 = v3;
    do
    {
      if (*v63 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v62 + 1) + 8 * v4);
      v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"UserWordFile" recordID:v5];
      v7 = [*(a1 + 40) objectForKey:v5];
      v8 = [*(a1 + 48) objectForKey:v5];
      if (v8)
      {
        if (v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v21 = *(a1 + 96);
        [*(a1 + 56) objectForKeyedSubscript:v5];
        v23 = v22 = v6;
        v8 = [v21 filesForLanguage:v23];

        v6 = v22;
        if (v7)
        {
          goto LABEL_8;
        }
      }

      v7 = [*(a1 + 96) infoWithFiles:v8];
LABEL_8:
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        v67[0] = @"Language";
        v10 = v6;
        v11 = *(a1 + 64);
        v12 = [*(a1 + 56) objectForKeyedSubscript:v5];
        v15 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"LANGUAGE MISSING";
        }

        v67[1] = @"Disposition";
        v68[0] = v13;
        v68[1] = @"No local copy for initial push";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
        v14 = v11;
        v19 = v10;
        [v14 checkProgress:2 withInfo:v20];
      }

      else
      {
        v15 = [v8 serialiseToTemporaryFile];
        [v7 saveToRecord:v6];
        v16 = v6;
        v17 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v15];
        v18 = [*(a1 + 96) keyForData];
        [v16 setObject:v17 forKeyedSubscript:v18];

        v3 = v46;
        v19 = v16;
        [v45 addObject:v16];
        v20 = [*(a1 + 56) objectForKeyedSubscript:v5];
        [v44 addObject:v20];
      }

      ++v4;
    }

    while (v3 != v4);
    v24 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
    v3 = v24;
  }

  while (v24);
LABEL_22:

  if ([v45 count])
  {
    v25 = group;
    dispatch_group_enter(group);
    [*(a1 + 64) checkProgress:3 withInfo:v44];
    v26 = *(a1 + 64);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137;
    v59[3] = &unk_2797F7700;
    v27 = v42;
    v60 = v42;
    v61 = group;
    [v26 overwriteFilesWithRecords:v45 withCompletionHandler:v59];
  }

  else
  {
    v27 = v42;
    [v42 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"push"];
    v25 = group;
  }

  if ([*(a1 + 72) count])
  {
    dispatch_group_enter(v25);
    v28 = *(a1 + 64);
    v29 = *(a1 + 72);
    v30 = [*(a1 + 96) keyForData];
    v66 = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v32 = *(a1 + 104);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142;
    v51[3] = &unk_2797F7750;
    v33 = *(a1 + 56);
    v58 = *(a1 + 96);
    v34 = *(a1 + 40);
    *&v35 = *(a1 + 48);
    *(&v35 + 1) = *(a1 + 64);
    *&v36 = v33;
    *(&v36 + 1) = v34;
    v27 = v42;
    v25 = group;
    v52 = v36;
    v53 = v35;
    v54 = v42;
    v57 = *(a1 + 88);
    v55 = *(a1 + 80);
    v56 = group;
    [v28 readFilesWithRecordIDs:v29 forColumns:v31 priority:v32 withCompletionHandler:v51];
  }

  else
  {
    v37 = *(a1 + 80);
    (*(*(a1 + 88) + 16))();
    [v27 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"pull"];
  }

  v38 = *(a1 + 64);
  v39 = *(v38 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_3_151;
  block[3] = &unk_2797F71B8;
  block[4] = v38;
  v50 = v27;
  v40 = v27;
  dispatch_group_notify(v25, v39, block);

  v41 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC38];
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"push"];
  if (v4)
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142(id *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = a3;
  if (v33)
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_1();
    }
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v44 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v7)
  {
    v9 = *v45;
    *&v8 = 136316162;
    v32 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [a1[4] objectForKeyedSubscript:{v11, v32}];
        v13 = v12 == 0;

        if (!v13)
        {
          v14 = [obj objectForKeyedSubscript:v11];
          if (v14)
          {
            v15 = [a1[12] keyForData];
            v16 = [v14 objectForKeyedSubscript:v15];

            if (v16)
            {
              v17 = [v16 fileURL];
              v18 = [_KSFileEntry entryWithSerialisedDataAtURL:v17];

              if (v18)
              {
                v19 = [a1[5] objectForKey:v11];
                if (v19)
                {
                  goto LABEL_18;
                }

                v20 = [a1[6] objectForKey:v11];
                if (!v20)
                {
                  v21 = a1[12];
                  v22 = [a1[4] objectForKeyedSubscript:v11];
                  v20 = [v21 filesForLanguage:v22];
                }

                v19 = [a1[12] infoWithFiles:v20];

                if (v19)
                {
LABEL_18:
                  v23 = [a1[12] infoWithFiles:v18];
                  v24 = v23;
                  if (!v23 || ([v23 isBetterThan:v19] & 1) != 0)
                  {

                    goto LABEL_21;
                  }

                  v28 = KSCategory();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_2(v48, &v49, v28);
                  }
                }

                else
                {
LABEL_21:
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_144;
                  block[3] = &unk_2797F7728;
                  block[4] = a1[7];
                  v41 = a1[4];
                  v42 = v11;
                  v43 = v18;
                  dispatch_async(MEMORY[0x277D85CD0], block);
                  v25 = [a1[4] objectForKeyedSubscript:v11];
                  [v34 addObject:v25];
                }
              }
            }

            else
            {
              v27 = KSCategory();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v29 = [a1[4] objectForKeyedSubscript:v11];
                *buf = 136315650;
                v51 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
                v52 = 2112;
                v53 = v11;
                v54 = 2112;
                v55 = v29;
                _os_log_error_impl(&dword_2557E2000, v27, OS_LOG_TYPE_ERROR, "%s  No CKAsset associated with record (%@/%@)", buf, 0x20u);
              }
            }
          }

          else
          {
            v16 = KSCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v26 = [a1[4] objectForKeyedSubscript:v11];
              *buf = 136315650;
              v51 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
              v52 = 2112;
              v53 = v11;
              v54 = 2112;
              v55 = v26;
              _os_log_error_impl(&dword_2557E2000, v16, OS_LOG_TYPE_ERROR, "%s  Results inconsistency error - no record for %@ (%@)", buf, 0x20u);
            }
          }

          goto LABEL_34;
        }

        v14 = KSCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
          v52 = 2112;
          v53 = v11;
          _os_log_error_impl(&dword_2557E2000, v14, OS_LOG_TYPE_ERROR, "%s  Unexpected result - record ID %@ not in request map", buf, 0x16u);
        }

LABEL_34:
      }

      v7 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v7);
  }

  [a1[7] checkProgress:4 withInfo:v34];
  [a1[8] setObject:v34 forKeyedSubscript:@"pull"];
  v30 = *(a1[7] + 1);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_148;
  v36[3] = &unk_2797F6520;
  v39 = a1[11];
  v37 = a1[9];
  v38 = a1[10];
  dispatch_async(v30, v36);

  v31 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_144(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v7[0] = @"_KSUserWordsWereDownloadedLanguageKey";
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v7[1] = @"_KSUserWordsWereDownloadedFilesKey";
  v8[0] = v4;
  v8[1] = *(a1 + 56);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"_KSUserWordsWereDownloadedNotification" object:v3 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_148(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

void __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 24) checkIfExists])
  {
    v2 = [MEMORY[0x277CBEAA8] date];
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = 0;
    v3 = *(a1 + 32);
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke_154;
    v11 = &unk_2797F77F0;
    v4 = v2;
    v12 = v4;
    v13 = &v14;
    [v3 modifyInformationWithOperations:&v8];
    if (v15[5])
    {
      v5 = KSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v15[5];
        *buf = 136315394;
        v21 = "[_KSUserWordsSynchroniser keyboardUsed]_block_invoke";
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Re-setting languages for massive inactivity: %@", buf, 0x16u);
      }

      [*(a1 + 32) checkForDownload:v15[5] uploads:v15[5] allLanguages:{v15[5], v8, v9, v10, v11}];
    }

    _Block_object_dispose(&v14, 8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __40___KSUserWordsSynchroniser_keyboardUsed__block_invoke_154(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKey:@"LastUsed"];
  if (v5)
  {
    [*(a1 + 32) timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = _KSGetSetting(ksDefaultPullTime, &unk_28679DA78);
    [v8 floatValue];
    v10 = v9;

    if (v7 > v10)
    {
      v11 = [v4 objectForKey:@"Languages"];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      [v4 removeObjectForKey:@"Languages"];
    }
  }

  [v4 setObject:*(a1 + 32) forKey:@"LastUsed"];

  return 1;
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2797F67C8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2(void *a1)
{
  *(a1[4] + 56) = 0;
  *(a1[4] + 58) = 0;
  return (*(a1[6] + 16))(a1[6], a1[5]);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = KSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_cold_1(a2, v5, v6);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_158;
  v10[3] = &unk_2797F66D8;
  v10[4] = v8;
  v11 = v7;
  dispatch_async(v9, v10);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_158(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 57) = 1;
  if (*(*(a1 + 32) + 58))
  {
    v2 = 10000000000;
  }

  else
  {
    v2 = 3600000000000;
  }

  v3 = dispatch_time(0, v2);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2_159;
  v7[3] = &unk_2797F66D8;
  v7[4] = v5;
  v8 = v4;
  dispatch_after(v3, v6, v7);
  *(*(a1 + 32) + 58) = 0;
}

uint64_t __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_2_159(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 57) == 1)
  {
    *(v1 + 57) = 0;
    return [*(result + 32) generateKeyWithCompletionHandler:*(result + 40)];
  }

  return result;
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_161(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = KSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke_3";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2557E2000, v4, OS_LOG_TYPE_INFO, "%s  Key save state: %@", buf, 0x16u);
  }

  if (!v3)
  {
    v10 = *(a1 + 32);
    v9 = *(*(a1 + 48) + 16);
LABEL_10:
    v9();
    goto LABEL_19;
  }

  v5 = [v3 domain];
  v6 = *MEMORY[0x277CBBF50];
  if ([v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v7 = [v3 code];

    if (v7 == 5006)
    {
      v8 = KSCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  Account not supported", buf, 0xCu);
      }

      v9 = *(*(a1 + 48) + 16);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v11 = [v3 domain];
  if (![v11 isEqualToString:v6])
  {

    goto LABEL_18;
  }

  v12 = [v3 code];

  if (v12 != 14)
  {
LABEL_18:
    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  v13 = KSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  Record changed - key exists. Loading from server...", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_162;
  v16[3] = &unk_2797F7868;
  v14 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  [v14 loadKeyWithCompletion:v16];

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = KSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  Key load state: %@", &v9, 0x16u);
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) firstTimeDownloadWithKey:a2];
  }

  return result;
}

void __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46___KSUserWordsSynchroniser_checkConfiguration__block_invoke_3;
    v6[3] = &unk_2797F76B0;
    v7 = v3;
    [v5 modifyInformationWithOperations:v6];
  }
}

void __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2;
  v3[3] = &unk_2797F76B0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 modifyInformationWithOperations:v3];
  [*(a1 + 32) checkForDownload:*(*(a1 + 32) + 48) uploads:*(*(a1 + 32) + 48) allLanguages:*(*(a1 + 32) + 48)];
}

uint64_t __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2_cold_1(a1, v6);
    }
  }

  else
  {
    [v5 setObject:*(a1 + 32) forKey:@"Key"];
  }

  return a2 ^ 1u;
}

void __54___KSUserWordsSynchroniser_deltaDownloadForLanguages___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  if ([*(*(a1 + 32) + 24) checkIfExists])
  {
    v7 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
    v2 = [*(a1 + 32) information];
    v3 = [v2 objectForKey:@"Languages"];

    if (v3)
    {
      v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
      [v7 minusSet:v4];
    }

    if ([v7 count])
    {
      v5 = *(a1 + 32);
      v6 = [v7 allObjects];
      [v5 checkForDownload:v6 uploads:0 allLanguages:*(a1 + 40)];
    }
  }
}

void __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke_2";
      v19 = 2112;
      v20 = v5;
      v8 = "%s  Failed to load remote key, error: %@";
      v9 = v7;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, v8, buf, v10);
    }
  }

  else
  {
    v11 = [*(a1 + 32) isEqualToData:v6];
    v7 = KSCategory();
    v12 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v12)
      {
        *buf = 136315138;
        v18 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke";
        v8 = "%s  Local key is up to date";
        v9 = v7;
        v10 = 12;
        goto LABEL_7;
      }
    }

    else
    {
      if (v12)
      {
        *buf = 136315138;
        v18 = "[_KSUserWordsSynchroniser generateRecordListForLanguages:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  Local key is outdated; replacing it with the current remote key", buf, 0xCu);
      }

      v13 = *(a1 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59___KSUserWordsSynchroniser_generateRecordListForLanguages___block_invoke_167;
      v15[3] = &unk_2797F76B0;
      v16 = v6;
      [v13 modifyInformationWithOperations:v15];
      v7 = v16;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __40___KSUserWordsSynchroniser_checkErrors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = KSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40___KSUserWordsSynchroniser_checkErrors___block_invoke_cold_1(a1, v3, v4);
    }

    [*(*(a1 + 32) + 24) reset];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40___KSUserWordsSynchroniser_checkErrors___block_invoke_2;
    block[3] = &unk_2797F6310;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

uint64_t __40___KSUserWordsSynchroniser_checkErrors___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 57) = 0;
  [*(a1 + 32) modifyInformationWithOperations:&__block_literal_global_176];
  v2 = *(a1 + 32);

  return [v2 checkConfiguration];
}

void __93___KSUserWordsSynchroniser_readFilesWithRecordIDs_forColumns_priority_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __76___KSUserWordsSynchroniser_overwriteFilesWithRecords_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __50___KSUserWordsSynchroniser_loadKeyWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    [*(a1 + 32) checkErrors:v5];
  }

  v6 = [v5 domain];
  if ([v6 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v7 = [v5 code];

    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v6 = [v5 userInfo];
    v8 = [v6 objectForKey:*MEMORY[0x277CBBFB0]];
    v9 = [v8 allValues];
    v10 = [v9 lastObject];

    v5 = v10;
  }

LABEL_7:
  v11 = *(a1 + 48);
  v12 = [v15 objectForKey:*(a1 + 40)];
  v13 = [v12 encryptedValueStore];
  v14 = [v13 objectForKey:@"keybytes"];
  (*(v11 + 16))(v11, v5, v14);
}

void __51___KSUserWordsSynchroniser_saveKey_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    [*(a1 + 32) checkErrors:v8];
  }

  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v10 = [v8 code];

    if (v10 != 2)
    {
      goto LABEL_7;
    }

    v9 = [v8 userInfo];
    v11 = [v9 objectForKey:*MEMORY[0x277CBBFB0]];
    v12 = [v11 allValues];
    v13 = [v12 lastObject];

    v8 = v13;
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
}

void __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 recordType];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = *(a1 + 32);
    v8 = [v9 recordType];
    [v7 setObject:v6 forKey:v8];
  }

  [v6 addObject:v9];
}

uint64_t __64___KSUserWordsSynchroniser_dumpAllRecordsWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKey:@"Error"];
  }

  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45___KSUserWordsSynchroniser_accountDidChange___block_invoke_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48___KSUserWordsSynchroniser_identitiesDidChange___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 57);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_5_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_2_137_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __66___KSUserWordsSynchroniser_checkForDownload_uploads_allLanguages___block_invoke_142_cold_2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_KSUserWordsSynchroniser checkForDownload:uploads:allLanguages:]_block_invoke";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  The server claimed it had better data, but it did not", buf, 0xCu);
}

void __61___KSUserWordsSynchroniser_generateKeyWithCompletionHandler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[_KSUserWordsSynchroniser generateKeyWithCompletionHandler:]_block_invoke_3";
  *&v4[12] = 2080;
  *&v4[14] = a1;
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_3_0(&dword_2557E2000, a2, a3, "%s  Failed to %s (%@), trying again later", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

void __53___KSUserWordsSynchroniser_firstTimeDownloadWithKey___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v9 = [a2 objectForKey:@"Key"];
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __40___KSUserWordsSynchroniser_checkErrors___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  *&v5[4] = "[_KSUserWordsSynchroniser checkErrors:]_block_invoke";
  *v5 = 136315650;
  *&v5[12] = 2112;
  if (!*(a1 + 40))
  {
    v3 = @"NO";
  }

  *&v5[14] = v3;
  *&v5[22] = 2112;
  OUTLINED_FUNCTION_3_0(&dword_2557E2000, a2, a3, "%s  Failed to reset zone (delete=%@; error=%@)", *v5, *&v5[8], *&v5[16], a2);
  v4 = *MEMORY[0x277D85DE8];
}

@end