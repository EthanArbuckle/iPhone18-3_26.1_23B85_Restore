@interface KMPortraitEntitiesBridge
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KMPortraitEntitiesBridge)init;
@end

@implementation KMPortraitEntitiesBridge

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277D3A430]);
  [v6 setLimit:500];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__432;
  v33[4] = __Block_byref_object_dispose__433;
  v34 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__432;
  v27 = __Block_byref_object_dispose__433;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v7 = objc_opt_new();
  v9 = (v24 + 5);
  v8 = v24[5];
  v19 = &v29;
  obj = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__KMPortraitEntitiesBridge_enumerateItemsWithError_usingBlock___block_invoke;
  v14[3] = &unk_279805BA0;
  v16 = v33;
  v17 = v21;
  v14[4] = self;
  v18 = &v23;
  v10 = v5;
  v15 = v10;
  [v7 iterRankedNamedEntitiesWithQuery:v6 error:&obj block:v14];
  objc_storeStrong(v9, obj);

  v11 = *(v30 + 24);
  if (v11 == 1)
  {
    v12 = v24[5];
    KVSetError();
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(v33, 8);

  return v11 ^ 1;
}

void __63__KMPortraitEntitiesBridge_enumerateItemsWithError_usingBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v30 = *(a1[4] + 16);
  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 24);
  *(v8 + 24) = v9 + 1;
  v10 = [v7 stringWithFormat:@"%ld", v9];
  v31[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v12 = *(a1[6] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1[4] + 8);
  v15 = *(*(a1[6] + 8) + 40);
  v16 = *(a1[8] + 8);
  obj = *(v16 + 40);
  v17 = [v14 mapObject:v5 additionalFields:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  if ([v17 count] == 1)
  {
    v18 = a1[5];
    v19 = [v17 firstObject];
    LOBYTE(v18) = (*(v18 + 16))(v18, v19);

    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(a1[8] + 8) + 40);
      *buf = 136315650;
      v25 = "[KMPortraitEntitiesBridge enumerateItemsWithError:usingBlock:]_block_invoke";
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&dword_2559DF000, v20, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
    }
  }

  *(*(a1[9] + 8) + 24) = 1;
  *a3 = 1;
LABEL_7:

  objc_autoreleasePoolPop(v6);
  v21 = *MEMORY[0x277D85DE8];
}

- (KMPortraitEntitiesBridge)init
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = KMPortraitEntitiesBridge;
  v2 = [(KMPortraitEntitiesBridge *)&v13 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v12 = 0;
  v3 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v12];
  v4 = v12;
  itemMapper = v2->_itemMapper;
  v2->_itemMapper = v3;

  if (v2->_itemMapper)
  {
    v6 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v6;

LABEL_4:
    v8 = v2;
    goto LABEL_8;
  }

  v9 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v15 = "[KMPortraitEntitiesBridge init]";
    v16 = 2112;
    v17 = v4;
    _os_log_error_impl(&dword_2559DF000, v9, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v8 = 0;
LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end