@interface SGLexiconML
+ (BOOL)profanityInTokens:(id)tokens forLocaleIdentifier:(id)identifier;
+ (unsigned)_lexiconTokenForToken:(id)token inLexicon:(_LXLexicon *)lexicon;
@end

@implementation SGLexiconML

+ (unsigned)_lexiconTokenForToken:(id)token inLexicon:(_LXLexicon *)lexicon
{
  tokenCopy = token;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  LXLexiconEnumerateEntriesForString();
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v5;
}

void __47__SGLexiconML__lexiconTokenForToken_inLexicon___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
    *a3 = 1;
  }

  CFRelease(v5);
}

+ (BOOL)profanityInTokens:(id)tokens forLocaleIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  identifierCopy = identifier;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277D23168], identifierCopy);
  err = 0;
  v9 = LXLexiconCreate();
  CFRelease(Mutable);
  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = tokensCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * v14);
        if (!CFStringGetCStringPtr(v15, 4u) && ![(__CFString *)v15 lengthOfBytesUsingEncoding:4, v24])
        {
          break;
        }

        if ([self _lexiconTokenForToken:v15 inLexicon:{v9, v24}])
        {
          v16 = LXLexiconCopyEntryForTokenID();
          MetaFlags = LXEntryGetMetaFlags();
          if ((MetaFlags & 0x1800000) != 0)
          {
            CFRelease(v16);
LABEL_24:
            v20 = 1;
            goto LABEL_25;
          }

          v18 = MetaFlags;
          CFRelease(v16);
          if ((v18 & 0x2000000) != 0)
          {
            goto LABEL_24;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v21 = sgLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24799E000, v21, OS_LOG_TYPE_ERROR, "SGLexicon: non utf-8 token passed", buf, 2u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v19 = CFErrorCopyDescription(err);
    if (!v19)
    {
      v20 = 0;
      goto LABEL_26;
    }

    v9 = v19;
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v9;
      _os_log_error_impl(&dword_24799E000, v10, OS_LOG_TYPE_ERROR, "SGLexicon: Unable to load lexicon, %@", buf, 0xCu);
    }
  }

LABEL_18:
  v20 = 0;
LABEL_25:

  CFRelease(v9);
LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end