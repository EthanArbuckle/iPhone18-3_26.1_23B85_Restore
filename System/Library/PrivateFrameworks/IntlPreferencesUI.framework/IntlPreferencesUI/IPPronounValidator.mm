@interface IPPronounValidator
+ (BOOL)currentUILocaleSupportsPronounPicking;
+ (BOOL)languageSupportsPronounPicking:(id)picking;
+ (id)initialPronounPickerLanguage;
+ (id)preferredPronounLocalizationForLanguage:(id)language;
- (BOOL)pronounHasValidChars:(id)chars;
- (BOOL)userSuppliedPronouns:(id)pronouns matchKnownPronouns:(id)knownPronouns;
- (IPPronounValidator)initWithLocale:(id)locale;
- (id)autofillPronouns:(id)pronouns;
- (id)morphologyFromString:(id)string;
- (void)_clearUserEntries;
- (void)fillInMissingEntriesInArray:(id)array fromArray:(id)fromArray;
- (void)rememberUserEntry:(id)entry;
@end

@implementation IPPronounValidator

- (IPPronounValidator)initWithLocale:(id)locale
{
  v53 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v51.receiver = self;
  v51.super_class = IPPronounValidator;
  v5 = [(IPPronounValidator *)&v51 init];
  if (v5)
  {
    if (localeCopy)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      localeIdentifier = [localeCopy localeIdentifier];
      v8 = [IPPronounValidator preferredPronounLocalizationForLanguage:localeIdentifier];
      v9 = v8;
      v10 = @"en";
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"PronounInfo_%@", v11];
      v13 = MEMORY[0x277CCAC58];
      v14 = MEMORY[0x277CBEA90];
      v45 = v12;
      v46 = v6;
      v15 = [v6 pathForResource:? ofType:? inDirectory:? forLocalization:?];
      v16 = [v14 dataWithContentsOfFile:v15];
      v17 = [v13 propertyListWithData:v16 options:0 format:0 error:0];

      v18 = MEMORY[0x277CCAC68];
      v19 = [v17 objectForKeyedSubscript:@"LegalCharactersRegex"];
      v20 = [v18 regularExpressionWithPattern:v19 options:0 error:0];
      [(IPPronounValidator *)v5 setValidationRegex:v20];

      v21 = [v17 objectForKeyedSubscript:@"MaxPronounLength"];
      -[IPPronounValidator setMaxPronounLength:](v5, "setMaxPronounLength:", [v21 intValue]);

      v22 = [v17 objectForKeyedSubscript:@"KnownPronouns"];
      [(IPPronounValidator *)v5 setKnownPronouns:v22];

      v23 = [v17 objectForKeyedSubscript:@"ExampleStrings"];
      [(IPPronounValidator *)v5 setExampleStrings:v23];

      v24 = [v17 objectForKeyedSubscript:@"ExampleStringPlaceholders"];
      [(IPPronounValidator *)v5 setExamplePlaceholders:v24];

      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"RememberedPronouns_%@", v11];
      [(IPPronounValidator *)v5 setPropertyPreferenceName:v25];

      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      propertyPreferenceName = [(IPPronounValidator *)v5 propertyPreferenceName];
      v28 = [standardUserDefaults arrayForKey:propertyPreferenceName];
      v29 = [v28 mutableCopy];
      [(IPPronounValidator *)v5 setRememberedPronouns:v29];

      rememberedPronouns = [(IPPronounValidator *)v5 rememberedPronouns];

      if (!rememberedPronouns)
      {
        array = [MEMORY[0x277CBEB18] array];
        [(IPPronounValidator *)v5 setRememberedPronouns:array];
      }

      [(IPPronounValidator *)v5 setLanguage:v11];
      array2 = [MEMORY[0x277CBEB18] array];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v33 = [v17 objectForKeyedSubscript:@"DisplayedMorphologies"];
      v34 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v48;
        do
        {
          v37 = 0;
          do
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [(IPPronounValidator *)v5 morphologyFromString:*(*(&v47 + 1) + 8 * v37)];
            [array2 addObject:v38];

            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v35);
      }

      v39 = [MEMORY[0x277CBEA60] arrayWithArray:array2];
      [(IPPronounValidator *)v5 setDisplayedMorphologies:v39];

      array3 = v46;
    }

    else
    {
      v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:&stru_286773B58 options:0 error:0];
      [(IPPronounValidator *)v5 setValidationRegex:v41];

      [(IPPronounValidator *)v5 setMaxPronounLength:0];
      v42 = MEMORY[0x277CBEBF8];
      [(IPPronounValidator *)v5 setExampleStrings:MEMORY[0x277CBEBF8]];
      [(IPPronounValidator *)v5 setExamplePlaceholders:v42];
      [(IPPronounValidator *)v5 setPropertyPreferenceName:&stru_286773B58];
      array3 = [MEMORY[0x277CBEB18] array];
      [(IPPronounValidator *)v5 setRememberedPronouns:array3];
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)morphologyFromString:(id)string
{
  v23 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setGrammaticalPerson:3];
  v16 = stringCopy;
  [stringCopy componentsSeparatedByString:@"-"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [&unk_286774E48 objectForKeyedSubscript:v9];
        v11 = v10;
        if (v10)
        {
          [v4 setGrammaticalCase:{objc_msgSend(v10, "intValue")}];
        }

        v12 = [&unk_286774E70 objectForKeyedSubscript:v9];

        if (v12)
        {
          [v4 setDetermination:{objc_msgSend(v12, "intValue")}];
        }

        v13 = [&unk_286774E98 objectForKeyedSubscript:v9];

        if (v13)
        {
          [v4 setGrammaticalPerson:{objc_msgSend(v13, "intValue")}];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)pronounHasValidChars:(id)chars
{
  charsCopy = chars;
  v5 = [charsCopy length];
  validationRegex = [(IPPronounValidator *)self validationRegex];
  v7 = [validationRegex rangeOfFirstMatchInString:charsCopy options:0 range:{0, v5}];
  v9 = v8;

  return !v7 && v5 == v9;
}

- (id)autofillPronouns:(id)pronouns
{
  v37[2] = *MEMORY[0x277D85DE8];
  v4 = [pronouns mutableCopy];
  v5 = _os_feature_enabled_impl();
  rememberedPronouns = [(IPPronounValidator *)self rememberedPronouns];
  v7 = rememberedPronouns;
  if (v5)
  {
    v37[0] = rememberedPronouns;
    knownPronouns = [(IPPronounValidator *)self knownPronouns];
    v37[1] = knownPronouns;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  }

  else
  {
    v36 = rememberedPronouns;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    v25 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v27;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v26 + 1) + 8 * j);
              if ([(IPPronounValidator *)self userSuppliedPronouns:v4 matchKnownPronouns:v21])
              {
                [(IPPronounValidator *)self fillInMissingEntriesInArray:v4 fromArray:v21];
                v22 = v4;

                goto LABEL_22;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v13 = v25;
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v22 = 0;
    }

    while (v12);
  }

  else
  {
    v22 = 0;
  }

LABEL_22:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)rememberUserEntry:(id)entry
{
  v28 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  pronouns = [entryCopy pronouns];
  v7 = [pronouns countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(pronouns);
        }

        pronoun = [*(*(&v23 + 1) + 8 * i) pronoun];
        [array addObject:pronoun];
      }

      v8 = [pronouns countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  rememberedPronouns = [(IPPronounValidator *)self rememberedPronouns];
  v13 = [rememberedPronouns indexOfObject:array];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    rememberedPronouns2 = [(IPPronounValidator *)self rememberedPronouns];
    [rememberedPronouns2 removeObjectAtIndex:v13];
  }

  rememberedPronouns3 = [(IPPronounValidator *)self rememberedPronouns];
  [rememberedPronouns3 insertObject:array atIndex:0];

  rememberedPronouns4 = [(IPPronounValidator *)self rememberedPronouns];
  v17 = [rememberedPronouns4 count];

  if (v17 >= 9)
  {
    rememberedPronouns5 = [(IPPronounValidator *)self rememberedPronouns];
    [rememberedPronouns5 removeLastObject];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  rememberedPronouns6 = [(IPPronounValidator *)self rememberedPronouns];
  propertyPreferenceName = [(IPPronounValidator *)self propertyPreferenceName];
  [standardUserDefaults setObject:rememberedPronouns6 forKey:propertyPreferenceName];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clearUserEntries
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  propertyPreferenceName = [(IPPronounValidator *)self propertyPreferenceName];
  [standardUserDefaults removeObjectForKey:propertyPreferenceName];
}

- (BOOL)userSuppliedPronouns:(id)pronouns matchKnownPronouns:(id)knownPronouns
{
  pronounsCopy = pronouns;
  knownPronounsCopy = knownPronouns;
  v7 = [pronounsCopy count];
  if (v7 != [knownPronounsCopy count] || !objc_msgSend(pronounsCopy, "count"))
  {
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = [pronounsCopy objectAtIndexedSubscript:v8];
    v11 = [knownPronounsCopy objectAtIndexedSubscript:v8];
    if ([v10 length])
    {
      break;
    }

LABEL_7:

    if (++v8 >= [pronounsCopy count])
    {
      goto LABEL_11;
    }
  }

  if ([v10 isEqualToString:v11])
  {
    v9 = 1;
    goto LABEL_7;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9 & 1;
}

- (void)fillInMissingEntriesInArray:(id)array fromArray:(id)fromArray
{
  arrayCopy = array;
  fromArrayCopy = fromArray;
  if ([arrayCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [arrayCopy objectAtIndexedSubscript:v6];
      v8 = [v7 length];

      if (!v8)
      {
        v9 = [fromArrayCopy objectAtIndexedSubscript:v6];
        [arrayCopy setObject:v9 atIndexedSubscript:v6];
      }

      ++v6;
    }

    while (v6 < [arrayCopy count]);
  }
}

+ (id)preferredPronounLocalizationForLanguage:(id)language
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (language)
  {
    v3 = MEMORY[0x277CBEAF8];
    languageCopy = language;
    v5 = +[IPPronounValidator supportedPronounLocalizations];
    v11[0] = languageCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [v3 matchedLanguagesFromAvailableLanguages:v5 forPreferredLanguages:v6];

    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (BOOL)currentUILocaleSupportsPronounPicking
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v4 = [IPPronounValidator languageSupportsPronounPicking:localeIdentifier];

  return v4;
}

+ (id)initialPronounPickerLanguage
{
  v16 = *MEMORY[0x277D85DE8];
  if ([self currentUILocaleSupportsPronounPicking])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v3 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      v6 = @"en";
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(preferredLanguages);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([IPPronounValidator languageSupportsPronounPicking:v8])
          {
            v6 = v8;
            goto LABEL_14;
          }
        }

        v4 = [preferredLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = @"en";
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)languageSupportsPronounPicking:(id)picking
{
  v3 = [IPPronounValidator preferredPronounLocalizationForLanguage:picking];
  v4 = v3 != 0;

  return v4;
}

@end