@interface CESRSpeechItemRanker
+ (id)rankersForInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 sets:(id)a6;
+ (void)refreshRankedItemCachesForInstance:(id)a3 speechProfileSite:(id)a4;
- (BOOL)enumerateAllItemsOfSet:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)enumerateAllRepresentativeItemsOfSet:(id)a3 error:(id *)a4 usingBlock:(id)a5;
- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)enumerateRankedRepresentativeItemsWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CESRSpeechItemRanker)init;
- (CESRSpeechItemRanker)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5;
- (id)description;
- (unsigned)calculateItemLimit;
@end

@implementation CESRSpeechItemRanker

uint64_t __78__CESRSpeechItemRanker_AppShortcuts_enumerateRankedItemsWithError_usingBlock___block_invoke_2(void *a1)
{
  v1 = *(a1[5] + 8);
  v2 = *(v1 + 24);
  *(v1 + 24) = v2 + 1;
  if (v2 >= a1[6])
  {
    return 1;
  }

  else
  {
    return (*(a1[4] + 16))();
  }
}

uint64_t __73__CESRSpeechItemRanker_Contact_enumerateRankedItemsWithError_usingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 metaContent];
      v8 = [v7 sourceItemIdentifier];

      if (v8)
      {
        v9 = [*(a1 + 32) objectForKey:v8];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 ordinality];
          v12 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
          {
            v18 = MEMORY[0x277CCABB0];
            v19 = v12;
            v20 = [v18 numberWithBool:v11 < 0x15];
            v21 = 136315394;
            v22 = "[CESRSpeechItemRanker_Contact enumerateRankedItemsWithError:usingBlock:]_block_invoke";
            v23 = 2112;
            v24 = v20;
            _os_log_error_impl(&dword_225EEB000, v19, OS_LOG_TYPE_ERROR, "%s Boosting contact: %@", &v21, 0x16u);
          }

          v13 = (*(*(a1 + 40) + 16))();

          goto LABEL_13;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 24);
    if (v15)
    {
      *(v14 + 24) = v15 - 1;
      v13 = (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = 1;
    }

LABEL_13:

    goto LABEL_14;
  }

  v13 = (*(*(a1 + 40) + 16))();
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __89__CESRSpeechItemRanker_AppIntentsIndexedEntity_enumerateRankedItemsWithError_usingBlock___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v5 content];
    if ([CESRSpeechItemRanker_AppIntentsIndexedEntity _shouldAcceptEntity:v9 bundleId:*(a1 + 32) appEntityConfig:*(*(a1 + 40) + 56) entityTypes:*(*(*(a1 + 56) + 8) + 40) numEntitiesRejected:*(*(a1 + 64) + 8) + 24 numEmptyDisplayRepresentations:*(*(a1 + 72) + 8) + 24]&& *(*(*(a1 + 80) + 8) + 24) < *(a1 + 96))
    {
      if (*(a1 + 104))
      {
        goto LABEL_5;
      }

      if ([*(*(*(a1 + 88) + 8) + 40) count] < *(a1 + 96))
      {
        if ((*(a1 + 104) & 1) == 0)
        {
LABEL_10:
          if ((*(*(*(a1 + 80) + 8) + 24) + [*(*(*(a1 + 88) + 8) + 40) count]) < *(a1 + 96))
          {
            [*(*(*(a1 + 88) + 8) + 40) addObject:v5];
          }

          goto LABEL_12;
        }

LABEL_5:
        if ([*(a1 + 40) _interactionStoreContainsAppEntity:v5])
        {
          ++*(*(*(a1 + 80) + 8) + 24);
          v10 = (*(*(a1 + 48) + 16))();
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_14:

  return v10;
}

uint64_t __71__CESRSpeechItemRanker_Media_enumerateRankedItemsWithError_usingBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  if (*(*(a1[6] + 8) + 24) >= *(v5 + 48) && *(*(a1[7] + 8) + 24) >= *(v5 + 56))
  {
    v8 = 1;
    goto LABEL_10;
  }

  v6 = [v3 content];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 entityType];
    v8 = 1;
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        goto LABEL_17;
      }

      if (v7 == 6)
      {
        v15 = *(a1[6] + 8);
        v16 = *(v15 + 24);
        v10 = (v15 + 24);
        v11 = v16;
        v13 = *(a1[4] + 48);
LABEL_14:
        if (v11 < v13)
        {
          *v10 = v11 + 1;
          v8 = (*(a1[5] + 16))();
        }
      }
    }

    else
    {
      if ((v7 - 1) < 2)
      {
        v9 = *(a1[7] + 8);
        v12 = *(v9 + 24);
        v10 = (v9 + 24);
        v11 = v12;
        v13 = *(a1[4] + 56);
        goto LABEL_14;
      }

      if (v7 == 3)
      {
LABEL_17:
        if ((*(*(a1[6] + 8) + 24) + [*(*(a1[8] + 8) + 40) count]) < *(a1[4] + 48))
        {
          [*(*(a1[8] + 8) + 40) addObject:v4];
        }
      }
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_10:
  return v8;
}

- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_sets;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __65__CESRSpeechItemRanker_enumerateRankedItemsWithError_usingBlock___block_invoke;
        v16[3] = &unk_27857FAC8;
        v17 = v6;
        LODWORD(v11) = [(CESRSpeechItemRanker *)self enumerateAllItemsOfSet:v11 error:a3 usingBlock:v16];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)enumerateRankedRepresentativeItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_sets;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __79__CESRSpeechItemRanker_enumerateRankedRepresentativeItemsWithError_usingBlock___block_invoke;
        v16[3] = &unk_27857FAC8;
        v17 = v6;
        LODWORD(v11) = [(CESRSpeechItemRanker *)self enumerateAllRepresentativeItemsOfSet:v11 error:a3 usingBlock:v16];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)enumerateAllRepresentativeItemsOfSet:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2879;
  v45 = __Block_byref_object_dispose__2880;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v10 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v11 = [v8 descriptorWithKey:*MEMORY[0x277CF9498]];
  v12 = [v11 value];

  v13 = [v8 changePublisherWithUseCase:@"SpeechProfile"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke;
  v32[3] = &unk_27857FA78;
  v14 = v10;
  v33 = v14;
  v15 = v8;
  v34 = v15;
  v35 = &v41;
  v36 = &v37;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke_22;
  v27[3] = &unk_27857FAA0;
  v27[4] = self;
  v16 = v9;
  v29 = v16;
  v17 = v12;
  v28 = v17;
  v30 = &v41;
  v31 = &v37;
  v18 = [v13 drivableSinkWithBookmark:0 completion:v32 shouldContinue:v27];

  v19 = v42;
  if (*(v38 + 24) == 1 && !v42[5])
  {
    v21 = 1;
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      instance = self->_instance;
      v26 = v19[5];
      *buf = 136315906;
      v48 = "[CESRSpeechItemRanker enumerateAllRepresentativeItemsOfSet:error:usingBlock:]";
      v49 = 2112;
      v50 = instance;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = v26;
      _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s (%@) Enumeration for set: %@ aborted: %@", buf, 0x2Au);
      v19 = v42;
    }

    v21 = 0;
    if (a4)
    {
      v22 = v19[5];
      if (v22)
      {
        v21 = 0;
        *a4 = v22;
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

void __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    *(*(a1[7] + 8) + 24) = 0;
    v7 = [v5 error];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v10 updateBookmark:v6 forSet:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1[6] + 8) + 40);
        *buf = 136315394;
        v19 = "[CESRSpeechItemRanker enumerateAllRepresentativeItemsOfSet:error:usingBlock:]_block_invoke";
        v20 = 2112;
        v21 = v16;
        _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to update bookmark, error: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __78__CESRSpeechItemRanker_enumerateAllRepresentativeItemsOfSet_error_usingBlock___block_invoke_22(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 addedLocalInstances];
  v5 = [v4 count];
  ++*(a1[4] + 16);
  v6 = a1[6];
  if (v5)
  {
    v7 = [v4 firstObject];
    v8 = a1[5];
    v9 = *(a1[7] + 8);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    v20 = v11;
    v12 = (*(v6 + 16))(v6, v7, v8, &v20);
    v13 = v20;
  }

  else
  {
    v7 = [v3 sharedItem];
    v14 = a1[5];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    v10 = (v15 + 40);
    obj = v16;
    v12 = (*(v6 + 16))(v6, v7, v14, &obj);
    v13 = obj;
  }

  objc_storeStrong(v10, v13);

  if (v12)
  {
    ++*(a1[4] + 16);
    v17 = 1;
  }

  else
  {
    v17 = 0;
    *(*(a1[8] + 8) + 24) = 0;
  }

  return v17;
}

- (BOOL)enumerateAllItemsOfSet:(id)a3 error:(id *)a4 usingBlock:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__2879;
  v45 = __Block_byref_object_dispose__2880;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v10 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v11 = [v8 descriptorWithKey:*MEMORY[0x277CF9498]];
  v12 = [v11 value];

  v13 = [v8 changePublisherWithUseCase:@"SpeechProfile"];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke;
  v32[3] = &unk_27857FA78;
  v14 = v10;
  v33 = v14;
  v15 = v8;
  v34 = v15;
  v35 = &v41;
  v36 = &v37;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke_20;
  v27[3] = &unk_27857FAA0;
  v27[4] = self;
  v16 = v9;
  v29 = v16;
  v17 = v12;
  v28 = v17;
  v30 = &v41;
  v31 = &v37;
  v18 = [v13 drivableSinkWithBookmark:0 completion:v32 shouldContinue:v27];

  v19 = v42;
  if (*(v38 + 24) == 1 && !v42[5])
  {
    v21 = 1;
  }

  else
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      instance = self->_instance;
      v26 = v19[5];
      *buf = 136315906;
      v48 = "[CESRSpeechItemRanker enumerateAllItemsOfSet:error:usingBlock:]";
      v49 = 2112;
      v50 = instance;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = v26;
      _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s (%@) Enumeration for set: %@ aborted: %@", buf, 0x2Au);
      v19 = v42;
    }

    v21 = 0;
    if (a4)
    {
      v22 = v19[5];
      if (v22)
      {
        v21 = 0;
        *a4 = v22;
      }
    }
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

void __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 state])
  {
    *(*(a1[7] + 8) + 24) = 0;
    v7 = [v5 error];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = *(a1[6] + 8);
    obj = *(v12 + 40);
    v13 = [v10 updateBookmark:v6 forSet:v11 error:&obj];
    objc_storeStrong((v12 + 40), obj);
    if ((v13 & 1) == 0)
    {
      v14 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        v16 = *(*(a1[6] + 8) + 40);
        *buf = 136315394;
        v19 = "[CESRSpeechItemRanker enumerateAllItemsOfSet:error:usingBlock:]_block_invoke";
        v20 = 2112;
        v21 = v16;
        _os_log_error_impl(&dword_225EEB000, v14, OS_LOG_TYPE_ERROR, "%s Failed to update bookmark, error: %@", buf, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __64__CESRSpeechItemRanker_enumerateAllItemsOfSet_error_usingBlock___block_invoke_20(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addedLocalInstances];
  if ([v4 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v3 addedLocalInstances];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          ++*(a1[4] + 16);
          v12 = a1[5];
          v11 = a1[6];
          v13 = *(a1[7] + 8);
          obj = *(v13 + 40);
          v14 = (*(v11 + 16))();
          objc_storeStrong((v13 + 40), obj);
          if ((v14 & 1) == 0)
          {
            *(*(a1[8] + 8) + 24) = 0;

            v15 = 0;
            goto LABEL_15;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    ++*(a1[4] + 16);
    v16 = a1[6];
    v17 = [v3 sharedItem];
    v18 = a1[5];
    v19 = *(a1[7] + 8);
    v22 = *(v19 + 40);
    LOBYTE(v16) = (*(v16 + 16))(v16, v17, v18, &v22);
    objc_storeStrong((v19 + 40), v22);

    if ((v16 & 1) == 0)
    {
      v15 = 0;
      *(*(a1[8] + 8) + 24) = 0;
      goto LABEL_15;
    }
  }

  v15 = 1;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

- (unsigned)calculateItemLimit
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [(CESRSpeechProfileCategoryGroup *)self->_categoryGroup speechCategories];
  v3 = +[CESRSpeechProfileBuilder categoryToLimitHintMap];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = -1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v3 objectForKey:{*(*(&v18 + 1) + 8 * i), v18}];
        v11 = v10;
        if (v10 && [v10 unsignedIntValue] < v8)
        {
          v8 = [v11 unsignedIntValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = -1;
  }

  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v4 allObjects];
    v15 = [v14 componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v23 = "[CESRSpeechItemRanker calculateItemLimit]";
    v24 = 1024;
    v25 = v8;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_225EEB000, v13, OS_LOG_TYPE_INFO, "%s Resolved Limit: %u from categories: %@", buf, 0x1Cu);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CESRSpeechItemRanker *)self instance];
  v7 = [(CESRSpeechItemRanker *)self sets];
  v8 = [v3 stringWithFormat:@"%@ (%@) - sets: %@", v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  v8 = v7;
  if (v7 == self)
  {
    v11 = 1;
    goto LABEL_23;
  }

  if (!v7 || ![(CESRSpeechItemRanker *)v7 isMemberOfClass:objc_opt_class()])
  {
    v11 = 0;
    goto LABEL_23;
  }

  v9 = [(CESRSpeechItemRanker *)self instance];
  if (v9 || ([(CESRSpeechItemRanker *)v8 instance], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CESRSpeechItemRanker *)self instance];
    v4 = [(CESRSpeechItemRanker *)v8 instance];
    if (![v3 isEqual:v4])
    {
      v11 = 0;
LABEL_19:

      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v16 = 0;
    v10 = 0;
  }

  v12 = [(CESRSpeechItemRanker *)self sets];
  if (v12 || ([(CESRSpeechItemRanker *)v8 sets], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = [(CESRSpeechItemRanker *)self sets];
    v14 = [(CESRSpeechItemRanker *)v8 sets];
    v11 = [v13 isEqual:v14];

    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_18:
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!v9)
  {
  }

LABEL_23:
  return v11;
}

- (CESRSpeechItemRanker)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CESRSpeechItemRanker;
  v12 = [(CESRSpeechItemRanker *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instance, a3);
    objc_storeStrong(&v13->_speechProfileSite, a4);
    objc_storeStrong(&v13->_categoryGroup, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sets = v13->_sets;
    v13->_sets = v14;

    v13->_enumeratedItemCount = 0;
  }

  return v13;
}

- (CESRSpeechItemRanker)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

+ (void)refreshRankedItemCachesForInstance:(id)a3 speechProfileSite:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [[CESRSpeechItemRanker_Media alloc] initWithInstance:v5 speechProfileSite:v6 categoryGroup:0];

  v11 = 0;
  LOBYTE(v6) = [(CESRSpeechItemRanker *)v7 refreshRankedItemCache:&v11];
  v8 = v11;
  if ((v6 & 1) == 0)
  {
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "+[CESRSpeechItemRanker refreshRankedItemCachesForInstance:speechProfileSite:]";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_225EEB000, v9, OS_LOG_TYPE_ERROR, "%s (%@) Ranked item cache refresh failed: %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)rankersForInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 sets:(id)a6
{
  v56[4] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[CESRSpeechItemRanker_Contact alloc] initWithInstance:v9 speechProfileSite:v10 categoryGroup:v11];
  v56[0] = v13;
  v14 = [[CESRSpeechItemRanker_AppIntentsIndexedEntity alloc] initWithInstance:v9 speechProfileSite:v10 categoryGroup:v11];
  v56[1] = v14;
  v15 = [[CESRSpeechItemRanker_Media alloc] initWithInstance:v9 speechProfileSite:v10 categoryGroup:v11];
  v56[2] = v15;
  v39 = v10;
  v40 = v9;
  v38 = v11;
  v16 = [[CESRSpeechItemRanker alloc] initWithInstance:v9 speechProfileSite:v10 categoryGroup:v11];
  v56[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = v17;
        v25 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v46;
LABEL_8:
          v28 = 0;
          while (1)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            if ([*(*(&v45 + 1) + 8 * v28) addSet:v23])
            {
              break;
            }

            if (v26 == ++v28)
            {
              v26 = [v24 countByEnumeratingWithState:&v45 objects:v54 count:16];
              if (v26)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v20);
  }

  v29 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v42;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v41 + 1) + 8 * j);
        if ([v35 hasSets])
        {
          [v29 addObject:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v32);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v29;
}

@end