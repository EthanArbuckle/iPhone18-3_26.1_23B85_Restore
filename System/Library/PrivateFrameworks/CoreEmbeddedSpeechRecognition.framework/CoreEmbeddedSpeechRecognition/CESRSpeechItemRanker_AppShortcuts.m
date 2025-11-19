@interface CESRSpeechItemRanker_AppShortcuts
- (BOOL)addSet:(id)a3;
- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4;
- (CESRSpeechItemRanker_AppShortcuts)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5;
@end

@implementation CESRSpeechItemRanker_AppShortcuts

- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [(CESRSpeechItemRanker_AppShortcuts *)self sets];
    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_225EEB000, v5, OS_LOG_TYPE_INFO, "%s Ranking %lu AppShortcuts items", buf, 0x16u);
  }

  v39 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableDictionary count](self->_setDict, "count")}];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = self->_setDict;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v8)
  {
    v9 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_setDict objectForKey:v11];
        v13 = [v12 changePublisherWithUseCase:@"SpeechProfile"];
        v14 = [v13 sharedItemCount];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
        [v39 setObject:v15 forKey:v11];
      }

      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
    *&buf[12] = 2112;
    *&buf[14] = v39;
    _os_log_debug_impl(&dword_225EEB000, v16, OS_LOG_TYPE_DEBUG, "%s AppShortcuts item count table:\n%@", buf, 0x16u);
  }

  v17 = [v39 keysSortedByValueUsingComparator:&__block_literal_global];
  v18 = [(CESRSpeechItemRanker *)self calculateItemLimit];
  v19 = [v17 count];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v17;
  v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v20)
  {
    v22 = v18;
    v36 = *v47;
    *&v21 = 136315906;
    v34 = v21;
    while (2)
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v47 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v46 + 1) + 8 * j);
        v25 = [v39 objectForKey:{v24, v34}];
        v26 = [v25 unsignedIntegerValue];

        if (v26 >= v22 / v19)
        {
          v27 = v22 / v19;
        }

        else
        {
          v27 = v26;
        }

        v28 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
        {
          *buf = v34;
          *&buf[4] = "[CESRSpeechItemRanker_AppShortcuts enumerateRankedItemsWithError:usingBlock:]";
          *&buf[12] = 2112;
          *&buf[14] = v24;
          *&buf[22] = 1024;
          LODWORD(v55[0]) = v22 / v19;
          WORD2(v55[0]) = 1024;
          *(v55 + 6) = v27;
          _os_log_debug_impl(&dword_225EEB000, v28, OS_LOG_TYPE_DEBUG, "%s AppShortcuts adding item for app id %@ - fair quota: %u actual taken: %u", buf, 0x22u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v55[0] = 0;
        v29 = [(NSMutableDictionary *)self->_setDict objectForKey:v24];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __78__CESRSpeechItemRanker_AppShortcuts_enumerateRankedItemsWithError_usingBlock___block_invoke_2;
        v42[3] = &unk_27857F020;
        v44 = buf;
        v45 = v27;
        v43 = v38;
        v41.receiver = self;
        v41.super_class = CESRSpeechItemRanker_AppShortcuts;
        v30 = [(CESRSpeechItemRanker *)&v41 enumerateAllItemsOfSet:v29 error:a3 usingBlock:v42];

        _Block_object_dispose(buf, 8);
        if ((v30 & 1) == 0)
        {
          v31 = 0;
          goto LABEL_27;
        }

        --v19;
        v22 -= v27;
      }

      v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v31 = 1;
LABEL_27:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)addSet:(id)a3
{
  v4 = a3;
  v5 = [v4 itemType];
  if (v5 == 12010)
  {
    setDict = self->_setDict;
    v7 = [v4 descriptorWithKey:*MEMORY[0x277CF9498]];
    v8 = [v7 value];
    [(NSMutableDictionary *)setDict setObject:v4 forKey:v8];
  }

  return v5 == 12010;
}

- (CESRSpeechItemRanker_AppShortcuts)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5
{
  v9.receiver = self;
  v9.super_class = CESRSpeechItemRanker_AppShortcuts;
  v5 = [(CESRSpeechItemRanker *)&v9 initWithInstance:a3 speechProfileSite:a4 categoryGroup:a5];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setDict = v5->_setDict;
    v5->_setDict = v6;
  }

  return v5;
}

@end