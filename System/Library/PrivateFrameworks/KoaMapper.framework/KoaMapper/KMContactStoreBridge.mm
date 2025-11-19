@interface KMContactStoreBridge
+ (id)_contactFetchKeys;
- (BOOL)_checkAuthorization;
- (BOOL)enumerateDeltaItemsWithError:(id *)a3 addOrUpdateBlock:(id)a4 removeBlock:(id)a5;
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (BOOL)wasLastDonationAccepted;
- (KMContactStoreBridge)initWithContactStore:(id)a3 historyLog:(id)a4;
- (KMContactStoreBridge)initWithDirectory:(id)a3;
- (id)_fetchContactsWithIdentifiers:(id)a3 error:(id *)a4;
- (void)resetDeltaState;
@end

@implementation KMContactStoreBridge

- (BOOL)_checkAuthorization
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0];
  if (v2 != 3)
  {
    v3 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[KMContactStoreBridge _checkAuthorization]";
      _os_log_error_impl(&dword_2559DF000, v3, OS_LOG_TYPE_ERROR, "%s Not Authorized to access contacts using CNContactStore.", &v6, 0xCu);
    }
  }

  result = v2 == 3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)enumerateDeltaItemsWithError:(id *)a3 addOrUpdateBlock:(id)a4 removeBlock:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (![(KMContactStoreBridge *)self _checkAuthorization])
  {
    v17 = 0;
    goto LABEL_66;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBDA50]);
  [v9 setStartingToken:self->_historyToken];
  contactStore = self->_contactStore;
  v65 = 0;
  v11 = [(CNContactStore *)contactStore enumeratorForChangeHistoryFetchRequest:v9 error:&v65];
  v12 = v65;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = v12;
    v15 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v67 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
      v68 = 2112;
      v69 = v14;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s Unable to fetch contact change history with error: %@", buf, 0x16u);
    }

    v16 = v14;
    KVSetError();
    v17 = 0;
    goto LABEL_65;
  }

  v51 = v9;
  v18 = objc_alloc_init(KMDeltaContactCollector);
  v58 = v11;
  v19 = [v11 value];
  v20 = [v19 nextObject];

  v57 = 0;
  do
  {
    v21 = 0;
    v22 = v20;
    while (1)
    {
      v23 = objc_autoreleasePoolPush();
      [v22 acceptEventVisitor:v18];
      if ([(KMDeltaContactCollector *)v18 dropEverything]&& self->_historyToken)
      {
        v44 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v67 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
          _os_log_impl(&dword_2559DF000, v44, OS_LOG_TYPE_INFO, "%s Received drop everything change history event. Reset is required.", buf, 0xCu);
        }

        goto LABEL_58;
      }

      v24 = [(KMDeltaContactCollector *)v18 contactIdentifier];
      v25 = [(KMDeltaContactCollector *)v18 deltaType];
      if ((v25 - 1) >= 2)
      {
        if (v25 != 3)
        {
          goto LABEL_26;
        }

        if (v24)
        {
          if (v8[2](v8, v24))
          {
            goto LABEL_26;
          }

LABEL_58:
          objc_autoreleasePoolPop(v23);
          v17 = 0;
LABEL_59:
          v11 = v58;
          v9 = v51;
          goto LABEL_64;
        }

        v26 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!v24)
        {
          v26 = KMLogContextCore;
          if (!os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

LABEL_36:
          *buf = 136315394;
          v67 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
          v68 = 2112;
          v69 = v22;
          _os_log_error_impl(&dword_2559DF000, v26, OS_LOG_TYPE_ERROR, "%s Skipping change history event: %@ missing contact identifier.", buf, 0x16u);
          goto LABEL_26;
        }

        if (!v21)
        {
          v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:250];
        }

        [v21 addObject:v24];
      }

LABEL_26:
      [(KMDeltaContactCollector *)v18 reset];
      v27 = [v58 value];
      v20 = [v27 nextObject];

      v28 = [v21 count];
      v29 = v28 && v20 == 0;
      v30 = v29;
      if (v28 == 250 || v30)
      {
        break;
      }

      objc_autoreleasePoolPop(v23);
      v22 = v20;
      if (!v20)
      {
        goto LABEL_63;
      }
    }

    v64 = v57;
    v56 = self;
    v31 = [(KMContactStoreBridge *)self _fetchContactsWithIdentifiers:v21 error:&v64];
    v32 = v64;

    if (!v31)
    {

      objc_autoreleasePoolPop(v23);
      v45 = v32;
      goto LABEL_62;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v31;
    v54 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v54)
    {
      v50 = v8;
      v55 = v7;
      v53 = *v61;
      v33 = v32;
      while (2)
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v61 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v60 + 1) + 8 * i);
          v36 = objc_autoreleasePoolPush();
          itemMapper = v56->_itemMapper;
          mapperAdditionalFields = v56->_mapperAdditionalFields;
          v59 = v33;
          v39 = [(KVItemMapper *)itemMapper mapObject:v35 additionalFields:mapperAdditionalFields error:&v59];
          v57 = v59;

          if ([v39 count] != 1)
          {
            v43 = KMLogContextCore;
            v8 = v50;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v67 = "[KMContactStoreBridge enumerateDeltaItemsWithError:addOrUpdateBlock:removeBlock:]";
              v68 = 2112;
              v69 = v39;
              v70 = 2112;
              v71 = v57;
              _os_log_error_impl(&dword_2559DF000, v43, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v36);
            v42 = 1;
            v7 = v55;
            goto LABEL_52;
          }

          v40 = [v39 firstObject];
          v41 = v55[2](v55, v40);

          objc_autoreleasePoolPop(v36);
          if (!v41)
          {

            objc_autoreleasePoolPop(v23);
            v17 = 0;
            v22 = v20;
            v7 = v55;
            v8 = v50;
            v9 = v51;
            v11 = v58;
            goto LABEL_64;
          }

          v33 = v57;
        }

        v33 = v57;
        v54 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v54)
        {
          continue;
        }

        break;
      }

      v42 = 0;
      v7 = v55;
      v8 = v50;
    }

    else
    {
      v42 = 0;
      v57 = v32;
    }

LABEL_52:
    self = v56;

    objc_autoreleasePoolPop(v23);
  }

  while (v20 && (v42 & 1) == 0);
  v21 = 0;
  v45 = v57;
  if (v42)
  {
LABEL_62:
    v57 = v45;
    KVSetError();
    v17 = 0;
    v22 = v20;
    goto LABEL_59;
  }

LABEL_63:
  v11 = v58;
  v9 = v51;
  v46 = [v58 currentHistoryToken];
  historyToken = self->_historyToken;
  self->_historyToken = v46;

  v17 = 1;
  v22 = v20;
LABEL_64:

  v16 = v57;
LABEL_65:

LABEL_66:
  v48 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)_fetchContactsWithIdentifiers:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v5];
  contactStore = self->_contactStore;
  v8 = [objc_opt_class() _contactFetchKeys];
  v18 = 0;
  v9 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:&v18];
  v10 = v18;

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = v12;
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      *buf = 136315650;
      v20 = "[KMContactStoreBridge _fetchContactsWithIdentifiers:error:]";
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v10;
      _os_log_error_impl(&dword_2559DF000, v16, OS_LOG_TYPE_ERROR, "%s Unable to fetch contacts from identifiers in batch (%@) error: %@", buf, 0x20u);
    }

    KVSetError();
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)resetDeltaState
{
  historyToken = self->_historyToken;
  self->_historyToken = 0;
  MEMORY[0x2821F96F8]();
}

- (BOOL)wasLastDonationAccepted
{
  v3 = [(KMProviderHistoryLog *)self->_log getDonationStartTime];
  v4 = [(KMProviderHistoryLog *)self->_log getDonationEndTime];
  v5 = [v4 compare:v3] == 1;

  return v5;
}

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v5 = a4;
  if ([(KMContactStoreBridge *)self _checkAuthorization])
  {
    v6 = objc_alloc(MEMORY[0x277CBDA70]);
    v7 = [objc_opt_class() _contactFetchKeys];
    v8 = [v6 initWithKeysToFetch:v7];

    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1422;
    v23 = __Block_byref_object_dispose__1423;
    v24 = 0;
    contactStore = self->_contactStore;
    v17 = &v25;
    obj = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__KMContactStoreBridge_enumerateItemsWithError_usingBlock___block_invoke;
    v14[3] = &unk_279805C80;
    v14[4] = self;
    v16 = &v19;
    v15 = v5;
    v10 = [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v8 error:&obj usingBlock:v14];
    objc_storeStrong(&v24, obj);
    if (v10 && *(v26 + 24) != 1)
    {
      v12 = 1;
    }

    else
    {
      v11 = v20[5];
      KVSetError();
      v12 = 0;
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __59__KMContactStoreBridge_enumerateItemsWithError_usingBlock___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = *(v5 + 16);
  v7 = *(v5 + 40);
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v6 mapObject:a2 additionalFields:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if ([v9 count] == 1)
  {
    v10 = a1[5];
    v11 = [v9 firstObject];
    LOBYTE(v10) = (*(v10 + 16))(v10, v11);

    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1[6] + 8) + 40);
      *buf = 136315650;
      v17 = "[KMContactStoreBridge enumerateItemsWithError:usingBlock:]_block_invoke";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_2559DF000, v12, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
    }
  }

  *(*(a1[7] + 8) + 24) = 1;
  *a3 = 1;
LABEL_7:

  v13 = *MEMORY[0x277D85DE8];
}

- (KMContactStoreBridge)initWithContactStore:(id)a3 historyLog:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = KMContactStoreBridge;
  v9 = [(KMContactStoreBridge *)&v23 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v9->_log, a4);
  if (!v10->_log)
  {
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v18 = "%s nil history log.";
LABEL_11:
      _os_log_error_impl(&dword_2559DF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  objc_storeStrong(&v10->_contactStore, a3);
  if (!v10->_contactStore)
  {
    v17 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v18 = "%s nil contactStore.";
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v22 = 0;
  v11 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v22];
  v12 = v22;
  itemMapper = v10->_itemMapper;
  v10->_itemMapper = v11;

  if (!v10->_itemMapper)
  {
    v19 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[KMContactStoreBridge initWithContactStore:historyLog:]";
      v26 = 2112;
      v27 = v12;
      _os_log_error_impl(&dword_2559DF000, v19, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v14 = [(KMProviderHistoryLog *)v10->_log getHistoryToken];
  historyToken = v10->_historyToken;
  v10->_historyToken = v14;

  v10->_version = [(KMProviderHistoryLog *)v10->_log getVersion]+ 1;
LABEL_6:
  v16 = v10;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (KMContactStoreBridge)initWithDirectory:(id)a3
{
  v4 = a3;
  v5 = [KMProviderHistoryLog alloc];
  v6 = [(KMProviderHistoryLog *)v5 initWithDirectory:v4 originAppId:*MEMORY[0x277D22CD8]];

  v7 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v8 = [(KMContactStoreBridge *)self initWithContactStore:v7 historyLog:v6];

  return v8;
}

+ (id)_contactFetchKeys
{
  v15[21] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBD000];
  v15[0] = *MEMORY[0x277CBD068];
  v15[1] = v2;
  v3 = *MEMORY[0x277CBCFF8];
  v15[2] = *MEMORY[0x277CBD058];
  v15[3] = v3;
  v4 = *MEMORY[0x277CBD070];
  v15[4] = *MEMORY[0x277CBD0E0];
  v15[5] = v4;
  v5 = *MEMORY[0x277CBD090];
  v15[6] = *MEMORY[0x277CBD078];
  v15[7] = v5;
  v6 = *MEMORY[0x277CBD040];
  v15[8] = *MEMORY[0x277CBCFB8];
  v15[9] = v6;
  v7 = *MEMORY[0x277CBCFC0];
  v15[10] = *MEMORY[0x277CBD098];
  v15[11] = v7;
  v8 = *MEMORY[0x277CBD168];
  v15[12] = *MEMORY[0x277CBD0C8];
  v15[13] = v8;
  v9 = *MEMORY[0x277CBD038];
  v15[14] = *MEMORY[0x277CBD138];
  v15[15] = v9;
  v10 = *MEMORY[0x277CBD0B0];
  v15[16] = *MEMORY[0x277CBD120];
  v15[17] = v10;
  v11 = *MEMORY[0x277CBD0A8];
  v15[18] = *MEMORY[0x277CBD0B8];
  v15[19] = v11;
  v15[20] = *MEMORY[0x277CBD0C0];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:21];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end