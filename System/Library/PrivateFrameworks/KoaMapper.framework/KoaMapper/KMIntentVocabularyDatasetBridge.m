@interface KMIntentVocabularyDatasetBridge
- (BOOL)_resolveCascadeItemType;
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KMIntentVocabularyDatasetBridge)initWithAppId:(id)a3 intentSlot:(id)a4 storeManager:(id)a5 authorization:(id)a6 itemMapper:(id)a7;
@end

@implementation KMIntentVocabularyDatasetBridge

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([(KMIntentVocabularyAuthorization *)self->_authorization isAuthorizedApp:self->_appId])
  {
    v6 = KVAdditionalFieldTypeToNumber();
    intentSlot = self->_intentSlot;
    v38 = v6;
    v39[0] = intentSlot;
    v8 = 1;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(KMIntentVocabularyStoreManager *)self->_storeManager storedVocabularyForApp:self->_appId intentSlot:self->_intentSlot];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v28;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * v13);
          v16 = objc_autoreleasePoolPush();
          itemMapper = self->_itemMapper;
          v26 = v14;
          v18 = [(KVItemMapper *)itemMapper mapObject:v15 additionalFields:v25 error:&v26];
          v11 = v26;

          if ([v18 count] != 1)
          {
            v21 = KMLogContextCore;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v32 = "[KMIntentVocabularyDatasetBridge enumerateItemsWithError:usingBlock:]";
              v33 = 2112;
              v34 = v18;
              v35 = 2112;
              v36 = v11;
              _os_log_error_impl(&dword_2559DF000, v21, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
            }

            KVSetError();

            objc_autoreleasePoolPop(v16);
LABEL_16:
            v8 = 0;
            goto LABEL_17;
          }

          v19 = [v18 firstObject];
          v20 = v5[2](v5, v19);

          objc_autoreleasePoolPop(v16);
          if (!v20)
          {
            goto LABEL_16;
          }

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v8 = 1;
LABEL_17:
    }
  }

  else
  {
    v8 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_resolveCascadeItemType
{
  v23 = *MEMORY[0x277D85DE8];
  switch([KMMapper_INVocabularyItem fieldTypeForIntentSlotName:self->_intentSlot])
  {
    case 0:
      v3 = KMLogContextCore;
      v4 = os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO);
      if (v4)
      {
        appId = self->_appId;
        intentSlot = self->_intentSlot;
        v15 = 136315650;
        v16 = "[KMIntentVocabularyDatasetBridge _resolveCascadeItemType]";
        v17 = 2112;
        v18 = intentSlot;
        v19 = 2112;
        v20 = appId;
        _os_log_impl(&dword_2559DF000, v3, OS_LOG_TYPE_INFO, "%s Skipping unrecognized intent slot: %@ while enumerating data set from app: %@", &v15, 0x20u);
        goto LABEL_4;
      }

      break;
    case 1:
      v7 = -4184;
      goto LABEL_24;
    case 2:
      v7 = -2167;
      goto LABEL_24;
    case 3:
      v7 = 13884;
      goto LABEL_24;
    case 4:
      v7 = -12054;
      goto LABEL_24;
    case 5:
      v7 = -20601;
      goto LABEL_24;
    case 6:
      v7 = 14816;
      goto LABEL_24;
    case 7:
      v7 = 800;
      goto LABEL_24;
    case 8:
      v7 = 16251;
      goto LABEL_24;
    case 9:
      v7 = 25883;
      goto LABEL_24;
    case 10:
      v7 = 26512;
      goto LABEL_24;
    case 11:
      v7 = 5595;
      goto LABEL_24;
    case 12:
      v7 = -32571;
      goto LABEL_24;
    case 13:
      v7 = 7719;
      goto LABEL_24;
    case 14:
      v7 = 14706;
      goto LABEL_24;
    case 15:
      v7 = -27285;
      goto LABEL_24;
    case 16:
      v7 = 15572;
      goto LABEL_24;
    case 17:
      v7 = 30598;
LABEL_24:
      self->_cascadeItemType = v7;
      LOBYTE(v4) = 1;
      break;
    default:
      v8 = KMLogContextCore;
      v4 = os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        v10 = self->_appId;
        v9 = self->_intentSlot;
        v11 = v8;
        v12 = KVFieldTypeDescription();
        v15 = 136315906;
        v16 = "[KMIntentVocabularyDatasetBridge _resolveCascadeItemType]";
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_2559DF000, v11, OS_LOG_TYPE_ERROR, "%s Skipping intent slot: %@ from app: %@ mapped to fieldType: %@ not supported by Cascade", &v15, 0x2Au);

LABEL_4:
        LOBYTE(v4) = 0;
      }

      break;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (KMIntentVocabularyDatasetBridge)initWithAppId:(id)a3 intentSlot:(id)a4 storeManager:(id)a5 authorization:(id)a6 itemMapper:(id)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = KMIntentVocabularyDatasetBridge;
  v17 = [(KMIntentVocabularyDatasetBridge *)&v29 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v17->_appId, a3);
  objc_storeStrong(&v18->_intentSlot, a4);
  objc_storeStrong(&v18->_storeManager, a5);
  objc_storeStrong(&v18->_authorization, a6);
  objc_storeStrong(&v18->_itemMapper, a7);
  appId = v18->_appId;
  if (!appId || !v18->_intentSlot || !v18->_storeManager || !v18->_authorization || !v18->_itemMapper)
  {
    v21 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      intentSlot = v18->_intentSlot;
      storeManager = v18->_storeManager;
      authorization = v18->_authorization;
      itemMapper = v18->_itemMapper;
      *buf = 136316418;
      v31 = "[KMIntentVocabularyDatasetBridge initWithAppId:intentSlot:storeManager:authorization:itemMapper:]";
      v32 = 2112;
      v33 = appId;
      v34 = 2112;
      v35 = intentSlot;
      v36 = 2112;
      v37 = storeManager;
      v38 = 2112;
      v39 = authorization;
      v40 = 2112;
      v41 = itemMapper;
      _os_log_error_impl(&dword_2559DF000, v21, OS_LOG_TYPE_ERROR, "%s Cannot initialize with appId: %@ intentSlot: %@ storeManager: %@ authorization: %@ itemMapper: %@", buf, 0x3Eu);
    }

    goto LABEL_11;
  }

  if (![(KMIntentVocabularyDatasetBridge *)v18 _resolveCascadeItemType])
  {
LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v20 = v18;
LABEL_12:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end