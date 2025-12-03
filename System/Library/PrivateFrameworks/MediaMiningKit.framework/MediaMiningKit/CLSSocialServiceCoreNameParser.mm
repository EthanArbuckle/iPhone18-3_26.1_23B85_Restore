@interface CLSSocialServiceCoreNameParser
+ (id)_dictionaryKeyForPersonRelationship:(unint64_t)relationship;
+ (unint64_t)_personRelationshipFromString:(id)string;
- (CLSSocialServiceCoreNameParser)init;
- (id)_normalizeName:(id)name;
- (id)_regularExpressionForRelationship:(unint64_t)relationship languageCode:(id)code;
- (unint64_t)_sexHintForRelationship:(unint64_t)relationship;
- (unint64_t)relationshipHintForPerson:(id)person usingLocales:(id)locales;
- (unint64_t)sexHintForPerson:(id)person usingLocales:(id)locales;
- (void)invalidateMemoryCaches;
@end

@implementation CLSSocialServiceCoreNameParser

- (id)_regularExpressionForRelationship:(unint64_t)relationship languageCode:(id)code
{
  codeCopy = code;
  dictionary = [(NSMutableDictionary *)self->_regularExpressionByRelationshipByLocale objectForKeyedSubscript:codeCopy];
  if (dictionary)
  {
    goto LABEL_5;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(NSDictionary *)self->_vocabularyByRelationshipByLocale objectForKeyedSubscript:codeCopy];
  if (v8)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __81__CLSSocialServiceCoreNameParser__regularExpressionForRelationship_languageCode___block_invoke;
    v18 = &unk_2788A8788;
    v9 = dictionary;
    v19 = v9;
    v10 = codeCopy;
    v20 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:&v15];
    [(NSMutableDictionary *)self->_regularExpressionByRelationshipByLocale setObject:v9 forKeyedSubscript:v10, v15, v16, v17, v18];
  }

  if (dictionary)
  {
LABEL_5:
    v11 = [objc_opt_class() _dictionaryKeyForPersonRelationship:relationship];
    if (v11)
    {
      v12 = v11;
      v13 = [dictionary objectForKeyedSubscript:v11];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __81__CLSSocialServiceCoreNameParser__regularExpressionForRelationship_languageCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = MEMORY[0x277CCACA8];
  v7 = [a3 componentsJoinedByString:@"|"];
  v8 = [v6 stringWithFormat:@"^(%@)$", v7];

  v14 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v8 options:1 error:&v14];
  v10 = v14;
  if (v10)
  {
    v11 = +[CLSLogging sharedLogging];
    v12 = [v11 loggingConnection];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_22F907000, v12, OS_LOG_TYPE_ERROR, "[CLSSocialServiceCoreNameParser] Error creating regular expression from relationship vocabulary for language %@ and relationship %@", buf, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
  }
}

- (unint64_t)relationshipHintForPerson:(id)person usingLocales:(id)locales
{
  v62 = *MEMORY[0x277D85DE8];
  personCopy = person;
  localesCopy = locales;
  fullName = [personCopy fullName];
  v9 = [(CLSSocialServiceCoreNameParser *)self _normalizeName:fullName];

  nickname = [personCopy nickname];
  selfCopy = self;
  v45 = [(CLSSocialServiceCoreNameParser *)self _normalizeName:nickname];

  if ([v9 length] || objc_msgSend(v45, "length"))
  {
    v11 = [MEMORY[0x277CBEB58] set];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = localesCopy;
    v13 = [v12 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v56;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v56 != v15)
          {
            objc_enumerationMutation(v12);
          }

          languageCode = [*(*(&v55 + 1) + 8 * i) languageCode];
          if (languageCode)
          {
            [v11 addObject:languageCode];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v14);
    }

    v18 = [MEMORY[0x277CBEB58] set];
    _parentRelationships = [(CLSSocialServiceCoreNameParser *)selfCopy _parentRelationships];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = v11;
    v21 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v52;
      v39 = localesCopy;
      v40 = personCopy;
      v43 = _parentRelationships;
      v44 = v18;
      v42 = v20;
      v37 = *v52;
      do
      {
        v24 = 0;
        v38 = v22;
        do
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v51 + 1) + 8 * v24);
          if (([v18 containsObject:{v25, v37}] & 1) == 0)
          {
            v41 = v24;
            [v18 addObject:v25];
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v26 = _parentRelationships;
            v27 = [v26 countByEnumeratingWithState:&v47 objects:v59 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v48;
              while (2)
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v48 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  unsignedIntegerValue = [*(*(&v47 + 1) + 8 * j) unsignedIntegerValue];
                  v32 = [(CLSSocialServiceCoreNameParser *)selfCopy _regularExpressionForRelationship:unsignedIntegerValue languageCode:v25];
                  if (v32)
                  {
                    v33 = [v32 matchesInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
                    if (![v33 count])
                    {
                      v34 = [v32 matchesInString:v45 options:0 range:{0, objc_msgSend(v45, "length")}];

                      v33 = v34;
                    }

                    v35 = [v33 count];

                    if (v35)
                    {

                      localesCopy = v39;
                      personCopy = v40;
                      _parentRelationships = v43;
                      v18 = v44;
                      v20 = v42;
                      goto LABEL_35;
                    }
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v47 objects:v59 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

            _parentRelationships = v43;
            v18 = v44;
            v24 = v41;
            v20 = v42;
            v23 = v37;
            v22 = v38;
          }

          ++v24;
        }

        while (v24 != v22);
        v22 = [v20 countByEnumeratingWithState:&v51 objects:v60 count:16];
        unsignedIntegerValue = 0;
        localesCopy = v39;
        personCopy = v40;
      }

      while (v22);
    }

    else
    {
      unsignedIntegerValue = 0;
    }

LABEL_35:
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)_normalizeName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    lowercaseString = [nameCopy lowercaseString];
    v6 = [lowercaseString mutableCopy];

    array = [MEMORY[0x277CBEB18] array];
    [v6 length];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __49__CLSSocialServiceCoreNameParser__normalizeName___block_invoke;
    v27 = &unk_2788A8760;
    v8 = array;
    v28 = v8;
    CEMEnumerateEmojiTokensInStringWithBlock();
    if ([v8 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      reverseObjectEnumerator = [v8 reverseObjectEnumerator];
      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            rangeValue = [v14 rangeValue];
            [v6 deleteCharactersInRange:{rangeValue, v17}];
            objc_autoreleasePoolPop(v15);
          }

          v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v11);
      }
    }

    v18 = [v6 stringByTrimmingCharactersInSet:self->_nonLetterCharacterSet];
  }

  else
  {
    v18 = &stru_284489518;
  }

  return v18;
}

void __49__CLSSocialServiceCoreNameParser__normalizeName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCAE60] valueWithRange:?];
  [v1 addObject:v2];
}

- (unint64_t)_sexHintForRelationship:(unint64_t)relationship
{
  if (relationship > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_22F992780[relationship];
  }
}

- (unint64_t)sexHintForPerson:(id)person usingLocales:(id)locales
{
  v28 = *MEMORY[0x277D85DE8];
  personCopy = person;
  localesCopy = locales;
  cNIdentifier = [personCopy CNIdentifier];
  v9 = [(NSMutableDictionary *)self->_sexHintByCNIdentifier objectForKeyedSubscript:cNIdentifier];
  v10 = v9;
  if (!v9)
  {
    firstName = [personCopy firstName];
    lowercaseString = [firstName lowercaseString];

    if ([lowercaseString length])
    {
      if ([lowercaseString UTF8String])
      {
        v14 = [(NPNameParser *)self->_nameParser genderMajorityForGivenName:lowercaseString];
        if (v14)
        {
          if (v14 == 2)
          {
            integerValue = 2;
          }

          else
          {
            integerValue = v14 == 1;
          }
        }

        else
        {
          relationship = [personCopy relationship];
          if (!relationship)
          {
            relationship = [(CLSSocialServiceCoreNameParser *)self relationshipHintForPerson:personCopy usingLocales:localesCopy];
          }

          integerValue = [(CLSSocialServiceCoreNameParser *)self _sexHintForRelationship:relationship];
        }
      }

      else
      {
        v15 = +[CLSLogging sharedLogging];
        loggingConnection = [v15 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412546;
          v25 = personCopy;
          v26 = 2112;
          v27 = lowercaseString;
          _os_log_error_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_ERROR, "[CLSSocialServiceCoreNameParser] Person %@ has an invalid UTF8 given name (%@)", &v24, 0x16u);
        }

        integerValue = 0;
      }

      if ([cNIdentifier length])
      {
        loggingConnection2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
        [(NSMutableDictionary *)self->_sexHintByCNIdentifier setObject:loggingConnection2 forKeyedSubscript:cNIdentifier];
      }

      else
      {
        v19 = +[CLSLogging sharedLogging];
        loggingConnection2 = [v19 loggingConnection];

        if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = personCopy;
          _os_log_impl(&dword_22F907000, loggingConnection2, OS_LOG_TYPE_INFO, "[CLSSocialServiceCoreNameParser] Person %@ does not have cnIdentifier, not adding to sex hint cache", &v24, 0xCu);
        }
      }

      if (integerValue)
      {
        goto LABEL_24;
      }

      v20 = +[CLSLogging sharedLogging];
      loggingConnection3 = [v20 loggingConnection];

      if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_INFO))
      {
        fullName = [personCopy fullName];
        v24 = 138412290;
        v25 = fullName;
        _os_log_impl(&dword_22F907000, loggingConnection3, OS_LOG_TYPE_INFO, "[CLSSocialServiceCoreNameParser] No sex hint extracted from name %@", &v24, 0xCu);
      }
    }

    integerValue = 0;
LABEL_24:

    goto LABEL_25;
  }

  integerValue = [v9 integerValue];
LABEL_25:

  return integerValue;
}

- (void)invalidateMemoryCaches
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sexHintByCNIdentifier = self->_sexHintByCNIdentifier;
  self->_sexHintByCNIdentifier = v3;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  vocabularyByRelationshipByLocale = self->_vocabularyByRelationshipByLocale;
  self->_vocabularyByRelationshipByLocale = dictionary;

  self->_regularExpressionByRelationshipByLocale = [MEMORY[0x277CBEB38] dictionary];

  MEMORY[0x2821F96F8]();
}

- (CLSSocialServiceCoreNameParser)init
{
  v17.receiver = self;
  v17.super_class = CLSSocialServiceCoreNameParser;
  v2 = [(CLSSocialServiceCoreNameParser *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D003E8]);
    nameParser = v2->_nameParser;
    v2->_nameParser = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sexHintByCNIdentifier = v2->_sexHintByCNIdentifier;
    v2->_sexHintByCNIdentifier = dictionary;

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 URLForResource:@"personRelationshipVocabulary" withExtension:@"plist"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
    vocabularyByRelationshipByLocale = v2->_vocabularyByRelationshipByLocale;
    v2->_vocabularyByRelationshipByLocale = v9;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    regularExpressionByRelationshipByLocale = v2->_regularExpressionByRelationshipByLocale;
    v2->_regularExpressionByRelationshipByLocale = dictionary2;

    letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
    invertedSet = [letterCharacterSet invertedSet];
    nonLetterCharacterSet = v2->_nonLetterCharacterSet;
    v2->_nonLetterCharacterSet = invertedSet;
  }

  return v2;
}

+ (unint64_t)_personRelationshipFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"mother"])
  {
    v4 = 9;
  }

  else if ([stringCopy isEqualToString:@"father"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_dictionaryKeyForPersonRelationship:(unint64_t)relationship
{
  v3 = @"father";
  if (relationship != 10)
  {
    v3 = 0;
  }

  if (relationship == 9)
  {
    return @"mother";
  }

  else
  {
    return v3;
  }
}

@end