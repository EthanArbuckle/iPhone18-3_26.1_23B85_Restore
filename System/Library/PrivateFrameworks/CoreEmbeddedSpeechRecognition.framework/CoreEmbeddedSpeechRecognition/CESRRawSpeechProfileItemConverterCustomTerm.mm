@interface CESRRawSpeechProfileItemConverterCustomTerm
- (CESRRawSpeechProfileItemConverterCustomTerm)init;
- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error;
@end

@implementation CESRRawSpeechProfileItemConverterCustomTerm

- (id)vocabularyItemFromSpeechWords:(id)words speechNamespace:(id)namespace error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  namespaceCopy = namespace;
  if (!wordsCopy || ![wordsCopy count])
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v58 = "[CESRRawSpeechProfileItemConverterCustomTerm vocabularyItemFromSpeechWords:speechNamespace:error:]";
      v59 = 2112;
      v60 = namespaceCopy;
      _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s rawSpeechProfile contains a SiriKit custom vocabulary item missing speech words. namespace: %@", buf, 0x16u);
    }

    goto LABEL_36;
  }

  if ([wordsCopy count] != 1)
  {
    v21 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA068];
    namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"rawSpeechProfile contains a SiriKit custom vocabulary item with an unexpected number of speech words (expected only 1): %@ namespace: %@", wordsCopy, namespaceCopy];
    v56 = namespaceCopy;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v24 = [v21 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:1 userInfo:v23];
    if (error && v24)
    {
      v24 = v24;
      *error = v24;
    }

LABEL_36:
    v37 = 0;
    goto LABEL_37;
  }

  v10 = namespaceCopy;
  if (_reverseLookupFieldTypeFromOntologyLabel_onceToken != -1)
  {
    dispatch_once(&_reverseLookupFieldTypeFromOntologyLabel_onceToken, &__block_literal_global_122);
  }

  v11 = [_reverseLookupFieldTypeFromOntologyLabel_lookupCache objectForKey:v10];
  if (([v11 BOOLValue] & 1) == 0)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = _reverseLookupFieldTypeFromOntologyLabel_validFieldTypes;
    v13 = [v12 countByEnumeratingWithState:&v49 objects:buf count:16];
    if (v13)
    {
      v14 = v13;
      selfCopy = self;
      v15 = *v50;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v49 + 1) + 8 * i);
          v18 = KVFieldTypeFromNumber() - 1;
          if (v18 > 0x10)
          {
            v19 = 0;
          }

          else
          {
            v19 = off_27857F110[v18];
          }

          if ([v10 isEqualToString:v19])
          {
            v25 = v17;

            [_reverseLookupFieldTypeFromOntologyLabel_lookupCache setObject:v25 forKey:v10];
            v11 = v25;
            goto LABEL_26;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_26:
      self = selfCopy;
    }
  }

  v26 = KVFieldTypeFromNumber();

  if (!KVFieldTypeIsValid())
  {
    goto LABEL_36;
  }

  v27 = [CESRRawSpeechProfileTools placeholderItemIdWithCategoryName:@"customterm"];
  builder = self->_builder;
  v48 = 0;
  v29 = [(KVItemBuilder *)builder setItemType:1 itemId:v27 error:&v48];
  v30 = v48;
  firstObject = [wordsCopy firstObject];
  orthography = [firstObject orthography];

  v33 = self->_builder;
  v47 = v30;
  v34 = [(KVItemBuilder *)v33 addFieldWithType:v26 value:orthography error:&v47];
  v35 = v47;

  if (!v34)
  {
    goto LABEL_31;
  }

  v36 = self->_builder;
  v46 = v35;
  v37 = [(KVItemBuilder *)v36 buildItemWithError:&v46];
  v38 = v46;

  v35 = v38;
  if (!v37)
  {
LABEL_31:
    v39 = MEMORY[0x277CCA9B8];
    v53[0] = *MEMORY[0x277CCA068];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to process word: %@ due to builder error.", orthography];
    v53[1] = *MEMORY[0x277CCA7E8];
    v54[0] = v40;
    v54[1] = v35;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v42 = [v39 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:6 userInfo:v41];
    if (error && v42)
    {
      v42 = v42;
      *error = v42;
    }

    v37 = 0;
  }

LABEL_37:
  v43 = *MEMORY[0x277D85DE8];

  return v37;
}

- (CESRRawSpeechProfileItemConverterCustomTerm)init
{
  v6.receiver = self;
  v6.super_class = CESRRawSpeechProfileItemConverterCustomTerm;
  v2 = [(CESRRawSpeechProfileItemConverterCustomTerm *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end