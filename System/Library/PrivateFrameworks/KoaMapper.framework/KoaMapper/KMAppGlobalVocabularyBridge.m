@interface KMAppGlobalVocabularyBridge
- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4;
- (KMAppGlobalVocabularyBridge)init;
- (KMAppGlobalVocabularyBridge)initWithOriginAppId:(id)a3 cascadeItemType:(unsigned __int16)a4 items:(id)a5;
@end

@implementation KMAppGlobalVocabularyBridge

- (BOOL)enumerateItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        LODWORD(v11) = v5[2](v5, v11);
        objc_autoreleasePoolPop(v12);
        if (!v11)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (KMAppGlobalVocabularyBridge)initWithOriginAppId:(id)a3 cascadeItemType:(unsigned __int16)a4 items:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = KMAppGlobalVocabularyBridge;
  v11 = [(KMAppGlobalVocabularyBridge *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appId, a3);
    v12->_cascadeItemType = a4;
    objc_storeStrong(&v12->_items, a5);
  }

  return v12;
}

- (KMAppGlobalVocabularyBridge)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init unsupported" userInfo:MEMORY[0x277CBEC10]];
  objc_exception_throw(v2);
}

@end