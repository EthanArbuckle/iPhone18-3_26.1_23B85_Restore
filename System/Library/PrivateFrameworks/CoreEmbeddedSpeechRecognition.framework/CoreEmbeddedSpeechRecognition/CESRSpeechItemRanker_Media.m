@interface CESRSpeechItemRanker_Media
- (BOOL)addSet:(id)a3;
- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4;
- (CESRSpeechItemRanker_Media)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 playableLimit:(unint64_t)a6 artistLimit:(unint64_t)a7;
@end

@implementation CESRSpeechItemRanker_Media

- (BOOL)enumerateRankedItemsWithError:(id *)a3 usingBlock:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__454;
  v34 = __Block_byref_object_dispose__455;
  v35 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:self->_playableLimit];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__CESRSpeechItemRanker_Media_enumerateRankedItemsWithError_usingBlock___block_invoke;
  v25[3] = &unk_27857F3C0;
  v27 = &v40;
  v28 = &v36;
  v25[4] = self;
  v7 = v6;
  v26 = v7;
  v29 = &v30;
  v24.receiver = self;
  v24.super_class = CESRSpeechItemRanker_Media;
  v8 = [(CESRSpeechItemRanker *)&v24 enumerateRankedRepresentativeItemsWithError:a3 usingBlock:v25];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v31[5];
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v52 count:16];
  if (v11)
  {
    v12 = *v21;
LABEL_3:
    v13 = 0;
    v19 = v10 + v11;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if (v10 + v41[3] >= self->_playableLimit)
      {
        break;
      }

      ++v10;
      v8 &= (*(v7 + 2))(v7, *(*(&v20 + 1) + 8 * v13++), 0, 0, 0);
      if (v11 == v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v52 count:16];
        v10 = v19;
        if (v11)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v17 = v41[3];
    v18 = v37[3];
    *buf = 136315906;
    v45 = "[CESRSpeechItemRanker_Media enumerateRankedItemsWithError:usingBlock:]";
    v46 = 2048;
    v47 = v17;
    v48 = 2048;
    v49 = v10;
    v50 = 2048;
    v51 = v18;
    _os_log_debug_impl(&dword_225EEB000, v14, OS_LOG_TYPE_DEBUG, "%s Returning %lu playlists, %lu other playables, and %lu artists.", buf, 0x2Au);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)addSet:(id)a3
{
  v4 = a3;
  if ([v4 itemType] == 18540)
  {
    v7.receiver = self;
    v7.super_class = CESRSpeechItemRanker_Media;
    v5 = [(CESRSpeechItemRanker *)&v7 addSet:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CESRSpeechItemRanker_Media)initWithInstance:(id)a3 speechProfileSite:(id)a4 categoryGroup:(id)a5 playableLimit:(unint64_t)a6 artistLimit:(unint64_t)a7
{
  v10.receiver = self;
  v10.super_class = CESRSpeechItemRanker_Media;
  result = [(CESRSpeechItemRanker *)&v10 initWithInstance:a3 speechProfileSite:a4 categoryGroup:a5];
  if (result)
  {
    result->_playableLimit = a6;
    result->_artistLimit = a7;
  }

  return result;
}

@end