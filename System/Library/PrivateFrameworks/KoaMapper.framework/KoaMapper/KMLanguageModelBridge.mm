@interface KMLanguageModelBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMLanguageModelBridge)initWithLanguageCode:(id)code;
@end

@implementation KMLanguageModelBridge

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v43[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  languageCode = self->_languageCode;
  v7 = AFKeyboardLMLocaleOverride();
  v8 = *MEMORY[0x277D23078];
  v42[0] = *MEMORY[0x277D230E0];
  v42[1] = v8;
  v43[0] = v7;
  v43[1] = MEMORY[0x277CBEC38];
  v42[2] = *MEMORY[0x277D23098];
  v9 = AFKeyboardResourcesDirectoryPath();
  v43[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

  if (LMLanguageModelCreate())
  {
    v31 = 0;
    if (LMLanguageModelGetDynamicTokenIDRange())
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v37 = __Block_byref_object_copy__857;
      v38 = __Block_byref_object_dispose__858;
      v39 = 0;
      v26 = blockCopy;
      LMLanguageModelEnumerateDynamicTokensWithBlock();
      LMLanguageModelRelease();
      v11 = *(v28 + 24);
      if (v11 == 1)
      {
        v12 = KMLogContextCore;
        if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
        {
          v25 = self->_languageCode;
          *v32 = 136315394;
          v33 = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
          v34 = 2112;
          v35 = v25;
          _os_log_error_impl(&dword_2559DF000, v12, OS_LOG_TYPE_ERROR, "%s Enumeration failed while fetching dynamic tokens for Keyboard from LanguageModel for language=%@", v32, 0x16u);
        }

        v13 = *(*&buf[8] + 40);
        KVSetError();
      }

      _Block_object_dispose(buf, 8);
      v14 = v11 ^ 1;
      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v20 = KMLogContextCore;
      v14 = 1;
      if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_INFO))
      {
        v21 = self->_languageCode;
        *buf = 136315394;
        *&buf[4] = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&dword_2559DF000, v20, OS_LOG_TYPE_INFO, "%s No dynamic tokens for language=%@", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      v24 = self->_languageCode;
      *buf = 136315394;
      *&buf[4] = "[KMLanguageModelBridge enumerateItemsWithError:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_error_impl(&dword_2559DF000, v15, OS_LOG_TYPE_ERROR, "%s Could not get dynamic vocabulary for Keyboard from LanguageModel for language=%@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get dynamic vocabulary for Keyboard from LanguageModel for language=%@", self->_languageCode];
    v41 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v19 = [v16 errorWithDomain:@"com.apple.siri.vocabulary.donate.keyboard" code:2 userInfo:v18];
    KVSetError();

    v14 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

void __60__KMLanguageModelBridge_enumerateItemsWithError_usingBlock___block_invoke(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v5 = *(a1 + 64);
  StringForTokenID = LMLanguageModelCreateStringForTokenID();
  if (StringForTokenID)
  {
    v7 = StringForTokenID;
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 64);
    LMLanguageModelGetUsageCount();
    if (v10 <= 0.0)
    {
      CFRelease(v7);
    }

    else
    {
      v11 = v7;
      v12 = v11;
      if (a2 >= *(a1 + 72) && a2 <= *(a1 + 76))
      {
        v13 = *(*(a1 + 48) + 8);
        obj = *(v13 + 40);
        v14 = [*(a1 + 32) _getItemWithTokenID:? dynamicToken:? error:?];
        objc_storeStrong((v13 + 40), obj);
        if (!v14 || ((*(*(a1 + 40) + 16))() & 1) == 0)
        {
          *a3 = 1;
          *(*(*(a1 + 56) + 8) + 24) = 1;
        }

        CFRelease(v12);
      }

      else
      {
        CFRelease(v11);
      }
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (KMLanguageModelBridge)initWithLanguageCode:(id)code
{
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = KMLanguageModelBridge;
  v6 = [(KMLanguageModelBridge *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!codeCopy)
    {
      v10 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_languageCode, code);
    v8 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v7->_builder;
    v7->_builder = v8;
  }

  v10 = v7;
LABEL_6:

  return v10;
}

@end