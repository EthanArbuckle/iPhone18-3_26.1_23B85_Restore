@interface CLSSocialServiceCoreNameParser
+ (id)_dictionaryKeyForPersonRelationship:(unint64_t)a3;
+ (unint64_t)_personRelationshipFromString:(id)a3;
- (CLSSocialServiceCoreNameParser)init;
- (id)_normalizeName:(id)a3;
- (id)_regularExpressionForRelationship:(unint64_t)a3 languageCode:(id)a4;
- (unint64_t)_sexHintForRelationship:(unint64_t)a3;
- (unint64_t)relationshipHintForPerson:(id)a3 usingLocales:(id)a4;
- (unint64_t)sexHintForPerson:(id)a3 usingLocales:(id)a4;
- (void)invalidateMemoryCaches;
@end

@implementation CLSSocialServiceCoreNameParser

- (id)_regularExpressionForRelationship:(unint64_t)a3 languageCode:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_regularExpressionByRelationshipByLocale objectForKeyedSubscript:v6];
  if (v7)
  {
    goto LABEL_5;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(NSDictionary *)self->_vocabularyByRelationshipByLocale objectForKeyedSubscript:v6];
  if (v8)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __81__CLSSocialServiceCoreNameParser__regularExpressionForRelationship_languageCode___block_invoke;
    v18 = &unk_2788A8788;
    v9 = v7;
    v19 = v9;
    v10 = v6;
    v20 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:&v15];
    [(NSMutableDictionary *)self->_regularExpressionByRelationshipByLocale setObject:v9 forKeyedSubscript:v10, v15, v16, v17, v18];
  }

  if (v7)
  {
LABEL_5:
    v11 = [objc_opt_class() _dictionaryKeyForPersonRelationship:a3];
    if (v11)
    {
      v12 = v11;
      v13 = [v7 objectForKeyedSubscript:v11];
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

- (unint64_t)relationshipHintForPerson:(id)a3 usingLocales:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 fullName];
  v9 = [(CLSSocialServiceCoreNameParser *)self _normalizeName:v8];

  v10 = [v6 nickname];
  v46 = self;
  v45 = [(CLSSocialServiceCoreNameParser *)self _normalizeName:v10];

  if ([v9 length] || objc_msgSend(v45, "length"))
  {
    v11 = [MEMORY[0x277CBEB58] set];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v12 = v7;
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

          v17 = [*(*(&v55 + 1) + 8 * i) languageCode];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v14);
    }

    v18 = [MEMORY[0x277CBEB58] set];
    v19 = [(CLSSocialServiceCoreNameParser *)v46 _parentRelationships];
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
      v39 = v7;
      v40 = v6;
      v43 = v19;
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
            v26 = v19;
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

                  v31 = [*(*(&v47 + 1) + 8 * j) unsignedIntegerValue];
                  v32 = [(CLSSocialServiceCoreNameParser *)v46 _regularExpressionForRelationship:v31 languageCode:v25];
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

                      v7 = v39;
                      v6 = v40;
                      v19 = v43;
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

            v19 = v43;
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
        v31 = 0;
        v7 = v39;
        v6 = v40;
      }

      while (v22);
    }

    else
    {
      v31 = 0;
    }

LABEL_35:
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)_normalizeName:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [v4 lowercaseString];
    v6 = [v5 mutableCopy];

    v7 = [MEMORY[0x277CBEB18] array];
    [v6 length];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __49__CLSSocialServiceCoreNameParser__normalizeName___block_invoke;
    v27 = &unk_2788A8760;
    v8 = v7;
    v28 = v8;
    CEMEnumerateEmojiTokensInStringWithBlock();
    if ([v8 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v8 reverseObjectEnumerator];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = objc_autoreleasePoolPush();
            v16 = [v14 rangeValue];
            [v6 deleteCharactersInRange:{v16, v17}];
            objc_autoreleasePoolPop(v15);
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v29 count:16];
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

- (unint64_t)_sexHintForRelationship:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_22F992780[a3];
  }
}

- (unint64_t)sexHintForPerson:(id)a3 usingLocales:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 CNIdentifier];
  v9 = [(NSMutableDictionary *)self->_sexHintByCNIdentifier objectForKeyedSubscript:v8];
  v10 = v9;
  if (!v9)
  {
    v12 = [v6 firstName];
    v13 = [v12 lowercaseString];

    if ([v13 length])
    {
      if ([v13 UTF8String])
      {
        v14 = [(NPNameParser *)self->_nameParser genderMajorityForGivenName:v13];
        if (v14)
        {
          if (v14 == 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = v14 == 1;
          }
        }

        else
        {
          v17 = [v6 relationship];
          if (!v17)
          {
            v17 = [(CLSSocialServiceCoreNameParser *)self relationshipHintForPerson:v6 usingLocales:v7];
          }

          v11 = [(CLSSocialServiceCoreNameParser *)self _sexHintForRelationship:v17];
        }
      }

      else
      {
        v15 = +[CLSLogging sharedLogging];
        v16 = [v15 loggingConnection];

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412546;
          v25 = v6;
          v26 = 2112;
          v27 = v13;
          _os_log_error_impl(&dword_22F907000, v16, OS_LOG_TYPE_ERROR, "[CLSSocialServiceCoreNameParser] Person %@ has an invalid UTF8 given name (%@)", &v24, 0x16u);
        }

        v11 = 0;
      }

      if ([v8 length])
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
        [(NSMutableDictionary *)self->_sexHintByCNIdentifier setObject:v18 forKeyedSubscript:v8];
      }

      else
      {
        v19 = +[CLSLogging sharedLogging];
        v18 = [v19 loggingConnection];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v6;
          _os_log_impl(&dword_22F907000, v18, OS_LOG_TYPE_INFO, "[CLSSocialServiceCoreNameParser] Person %@ does not have cnIdentifier, not adding to sex hint cache", &v24, 0xCu);
        }
      }

      if (v11)
      {
        goto LABEL_24;
      }

      v20 = +[CLSLogging sharedLogging];
      v21 = [v20 loggingConnection];

      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v6 fullName];
        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&dword_22F907000, v21, OS_LOG_TYPE_INFO, "[CLSSocialServiceCoreNameParser] No sex hint extracted from name %@", &v24, 0xCu);
      }
    }

    v11 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v11 = [v9 integerValue];
LABEL_25:

  return v11;
}

- (void)invalidateMemoryCaches
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sexHintByCNIdentifier = self->_sexHintByCNIdentifier;
  self->_sexHintByCNIdentifier = v3;

  v5 = [MEMORY[0x277CBEB38] dictionary];
  vocabularyByRelationshipByLocale = self->_vocabularyByRelationshipByLocale;
  self->_vocabularyByRelationshipByLocale = v5;

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

    v5 = [MEMORY[0x277CBEB38] dictionary];
    sexHintByCNIdentifier = v2->_sexHintByCNIdentifier;
    v2->_sexHintByCNIdentifier = v5;

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 URLForResource:@"personRelationshipVocabulary" withExtension:@"plist"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8];
    vocabularyByRelationshipByLocale = v2->_vocabularyByRelationshipByLocale;
    v2->_vocabularyByRelationshipByLocale = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    regularExpressionByRelationshipByLocale = v2->_regularExpressionByRelationshipByLocale;
    v2->_regularExpressionByRelationshipByLocale = v11;

    v13 = [MEMORY[0x277CCA900] letterCharacterSet];
    v14 = [v13 invertedSet];
    nonLetterCharacterSet = v2->_nonLetterCharacterSet;
    v2->_nonLetterCharacterSet = v14;
  }

  return v2;
}

+ (unint64_t)_personRelationshipFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"mother"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"father"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_dictionaryKeyForPersonRelationship:(unint64_t)a3
{
  v3 = @"father";
  if (a3 != 10)
  {
    v3 = 0;
  }

  if (a3 == 9)
  {
    return @"mother";
  }

  else
  {
    return v3;
  }
}

@end