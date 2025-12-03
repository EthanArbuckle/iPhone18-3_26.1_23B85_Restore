@interface NPNameParser
- (BOOL)isPrefix:(id)prefix;
- (BOOL)isSuffix:(id)suffix;
- (NPNameParser)init;
- (id)normalizeFullname:(id)fullname;
- (id)parseChineseName:(id)name normalize:(BOOL)normalize;
- (id)parseFullnameWithDefaultHMMClassifier:(id)classifier normalize:(BOOL)normalize score:(double *)score;
- (id)parseJapaneseName:(id)name normalize:(BOOL)normalize;
- (id)parseKoreanName:(id)name normalize:(BOOL)normalize;
- (id)personNameCompomentsFromPrefix:(id)prefix suffix:(id)suffix givenNames:(id)names middleNames:(id)middleNames familyNames:(id)familyNames;
- (id)personNameComponentsFromString:(id)string;
- (unint64_t)frequencyOfLatinFamilyName:(id)name;
- (unint64_t)frequencyOfLatinGivenName:(id)name;
- (unint64_t)genderMajorityForGivenName:(id)name;
- (unint64_t)namingTraditionForName:(id)name;
- (void)dealloc;
@end

@implementation NPNameParser

- (NPNameParser)init
{
  v12.receiver = self;
  v12.super_class = NPNameParser;
  v2 = [(NPNameParser *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_confidenceThreshold = 1.0;
    v4 = objc_opt_new();
    nameComponentsData = v3->_nameComponentsData;
    v3->_nameComponentsData = v4;

    v6 = [NPHMMClassifier alloc];
    v7 = v3->_nameComponentsData;
    v10[0] = xmmword_245F86498;
    v10[1] = unk_245F864A8;
    v10[2] = xmmword_245F864B8;
    v11 = 0x3FF0000000000000;
    v8 = [(NPHMMClassifier *)v6 initWithHMMProbabilities:v10 nameComponentsDate:v7];
    [(NPNameParser *)v3 setClassifier:v8];

    pthread_mutex_lock(&_NPNameParserLock);
    ++_NPNameParserInstanceCount;
    pthread_mutex_unlock(&_NPNameParserLock);
  }

  return v3;
}

- (void)dealloc
{
  pthread_mutex_lock(&_NPNameParserLock);
  if (--_NPNameParserInstanceCount)
  {
    v3 = 1;
  }

  else
  {
    v3 = _NPNameParserJapaneseSurnameTrie == 0;
  }

  if (!v3)
  {
    CFBurstTrieRelease();
    _NPNameParserJapaneseSurnameTrie = 0;
  }

  pthread_mutex_unlock(&_NPNameParserLock);
  v4.receiver = self;
  v4.super_class = NPNameParser;
  [(NPNameParser *)&v4 dealloc];
}

- (unint64_t)namingTraditionForName:(id)name
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA900];
  nameCopy = name;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [nameCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v6 length])
  {
    v34 = 5;
    goto LABEL_74;
  }

  v7 = v6;
  v53 = v7;
  v54 = v6;
  if (!v7)
  {
LABEL_42:
    v56 = 0;
    v57 = 0;
    v13 = 0;
    v52 = 0;
    v16 = 0;
    goto LABEL_43;
  }

  v8 = v7;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  *buffer = 0u;
  v63 = 0u;
  Length = CFStringGetLength(v7);
  theString = v8;
  v73 = 0;
  v74 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  CStringPtr = 0;
  v71 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
  }

  v75 = 0;
  v76 = 0;
  v72 = CStringPtr;
  if (Length < 1)
  {

    goto LABEL_42;
  }

  v12 = 0;
  v56 = 0;
  v57 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 64;
  v55 = Length;
  do
  {
    if (v14 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v14;
    }

    v19 = v74;
    if (v74 <= v14)
    {
      v21 = 0;
    }

    else
    {
      if (v71)
      {
        v20 = &v71[v73];
LABEL_13:
        v21 = v20[v14];
        goto LABEL_15;
      }

      if (!v72)
      {
        v27 = v75;
        if (v76 <= v14 || v75 > v14)
        {
          v29 = -v18;
          v30 = v18 + v12;
          v31 = v17 - v18;
          v32 = v14 + v29;
          v33 = v32 + 64;
          if (v32 + 64 >= v74)
          {
            v33 = v74;
          }

          v75 = v32;
          v76 = v33;
          if (v74 >= v31)
          {
            v19 = v31;
          }

          v79.location = v32 + v73;
          v79.length = v19 + v30;
          CFStringGetCharacters(theString, v79, buffer);
          v27 = v75;
        }

        v20 = &buffer[-v27];
        goto LABEL_13;
      }

      v21 = v72[v73 + v14];
    }

LABEL_15:
    if (_NPChineseCharSet_onceToken != -1)
    {
      [NPNameParser namingTraditionForName:];
    }

    v22 = [_NPChineseCharSet_result characterIsMember:v21];
    v23 = v13;
    if (_NPHangulCharSet_onceToken != -1)
    {
      [NPNameParser namingTraditionForName:];
    }

    v24 = [_NPHangulCharSet_result characterIsMember:v21];
    if (_NPJapaneseCharSet_onceToken != -1)
    {
      [NPNameParser namingTraditionForName:];
    }

    v25 = [_NPJapaneseCharSet_result characterIsMember:v21];
    if (_NPLatinCharSet_onceToken != -1)
    {
      [NPNameParser namingTraditionForName:];
    }

    v56 += v24;
    v57 += v22;
    v13 = v23 + v25;
    v15 += [_NPLatinCharSet_result characterIsMember:v21];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v16 += [whitespaceAndNewlineCharacterSet2 characterIsMember:v21];

    ++v14;
    --v12;
    ++v17;
  }

  while (v55 != v14);

  v6 = v54;
  if (v15)
  {
    if (!(v56 + v57 + v13))
    {
      v34 = 3;
      goto LABEL_74;
    }

    v52 = 1;
  }

  else
  {
    v52 = 0;
  }

LABEL_43:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  v36 = [preferredLanguages countByEnumeratingWithState:&v58 objects:v77 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = 0;
    v39 = 0;
    v40 = *v59;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v42 = *(*(&v58 + 1) + 8 * i);
        if ([v42 hasPrefix:@"zh"])
        {
          v38 = 1;
        }

        else
        {
          v39 |= [v42 hasPrefix:@"ja"];
        }
      }

      v37 = [preferredLanguages countByEnumeratingWithState:&v58 objects:v77 count:16];
    }

    while (v37);
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  regionCode = [currentLocale regionCode];

  if ([regionCode isEqualToString:@"CN"])
  {
    v45 = v13;
    v46 = v52;
    goto LABEL_61;
  }

  v45 = v13;
  v46 = v52;
  if ([regionCode isEqualToString:@"HK"] & 1) != 0 || (objc_msgSend(regionCode, "isEqualToString:", @"MO") & 1) != 0 || (objc_msgSend(regionCode, "isEqualToString:", @"TW") & 1) != 0 || (v39 |= objc_msgSend(regionCode, "isEqualToString:", @"JP"), (v38))
  {
LABEL_61:
    v47 = v39;
    v39 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = [(__CFString *)v53 length];
  if (v57 + v56 + v45)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v34 = 4;
  }

  else if (v45 + v57 == v48 - v16)
  {
    if ((v45 != 0) | v47 & v39 & 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = ((v47 | v39) & 1) != 0 && v16 != 0;
    }
  }

  else if (v57 + v56 == v48 - v16)
  {
    v34 = 2;
  }

  else
  {
    v34 = 5;
  }

  v6 = v54;

LABEL_74:
  v50 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)personNameComponentsFromString:(id)string
{
  v4 = [(NPNameParser *)self normalizeFullname:string];
  v5 = [(NPNameParser *)self namingTraditionForName:v4];
  v6 = 0;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v7 = [(NPNameParser *)self parseKoreanName:v4 normalize:0];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_11;
      }

      v7 = [(NPNameParser *)self parseFullnameWithDefaultHMMClassifier:v4 normalize:0 score:0];
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v7 = [(NPNameParser *)self parseJapaneseName:v4 normalize:0];
  }

  else
  {
    v7 = [(NPNameParser *)self parseChineseName:v4 normalize:0];
  }

  v6 = v7;
LABEL_11:

  return v6;
}

- (id)parseFullnameWithDefaultHMMClassifier:(id)classifier normalize:(BOOL)normalize score:(double *)score
{
  normalizeCopy = normalize;
  v84 = *MEMORY[0x277D85DE8];
  classifierCopy = classifier;
  if (normalizeCopy)
  {
    v9 = [(NPNameParser *)self normalizeFullname:classifierCopy];

    classifierCopy = v9;
  }

  v10 = _NPTokenizeName(classifierCopy);
  v11 = [v10 mutableCopy];

  scoreCopy = score;
  if ([v11 count] < 2)
  {
    lastObject2 = 0;
    firstObject2 = 0;
    goto LABEL_13;
  }

  firstObject = [v11 firstObject];
  v13 = [(NPNameParser *)self isPrefix:firstObject];

  if (v13)
  {
    firstObject2 = [v11 firstObject];
    [v11 removeObjectAtIndex:0];
  }

  else
  {
    firstObject2 = 0;
  }

  lastObject = [v11 lastObject];
  if ([(NPNameParser *)self isSuffix:lastObject])
  {
    v15 = [v11 count];

    if (v15 >= 2)
    {
      lastObject2 = [v11 lastObject];
      [v11 removeLastObject];
      goto LABEL_13;
    }
  }

  else
  {
  }

  lastObject2 = 0;
LABEL_13:
  selfCopy = self;
  classifier = [(NPNameParser *)self classifier];
  v17 = [classifier hiddenStatesFromObservationSequence:v11];

  v74 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self == %ld || self == %ld", 0, 1];
  v18 = [v11 count];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v79 objects:v83 count:16];
  obj = v19;
  v71 = classifierCopy;
  if (v20)
  {
    v21 = v20;
    v68 = v11;
    v22 = 0;
    v23 = 0;
    v24 = *v80;
    v25 = -1.79769313e308;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v80 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v79 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        if ([v27 isFavorite])
        {
          v29 = v27;

          v22 = v29;
        }

        oovIndices = [v27 oovIndices];
        v31 = [oovIndices count];

        if (v31 < v18)
        {
          goto LABEL_21;
        }

        if (v31 == v18)
        {
          [v27 score];
          if (v34 > v25)
          {
            v31 = v18;
LABEL_21:
            [v27 score];
            v25 = v32;
            v33 = v27;

            v18 = v31;
            v23 = v33;
            goto LABEL_27;
          }

          [v27 score];
          if (v35 == v25)
          {
            sequence = [v23 sequence];
            v76 = v23;
            v37 = [sequence filteredArrayUsingPredicate:v74];
            v75 = [v37 count];

            sequence2 = [v27 sequence];
            v39 = [sequence2 filteredArrayUsingPredicate:v74];
            v40 = [v39 count];

            v31 = v18;
            v41 = v40 > v75;
            v23 = v76;
            if (v41)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_27:
        objc_autoreleasePoolPop(v28);
      }

      v19 = obj;
      v21 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (!v21)
      {

        if (v22)
        {
          [v22 score];
          v43 = v42;
          [v23 score];
          classifierCopy = v71;
          v11 = v68;
          if (v43 > v44)
          {
            v22 = v22;
            goto LABEL_33;
          }
        }

        else
        {
          classifierCopy = v71;
          v11 = v68;
        }

        goto LABEL_35;
      }
    }
  }

  v22 = 0;
  v23 = v19;
LABEL_33:

  v23 = v22;
LABEL_35:
  v45 = [v11 count];
  oovIndices2 = [v23 oovIndices];
  v47 = [oovIndices2 count];

  if (v45 == 4 && v47 > 2 || v45 >= 5 && vcvts_n_f32_u64(v45, 1uLL) <= v47)
  {
    v48 = 0;
  }

  else
  {
    v77 = v22;
    v49 = objc_opt_new();
    v50 = objc_opt_new();
    v51 = objc_opt_new();
    observation = [v23 observation];
    v53 = [observation count];

    if (v53)
    {
      for (j = 0; v53 != j; ++j)
      {
        v55 = v23;
        sequence3 = [v23 sequence];
        v57 = [sequence3 objectAtIndexedSubscript:j];
        unsignedIntegerValue = [v57 unsignedIntegerValue];

        v23 = v55;
        if (unsignedIntegerValue == 2)
        {
          observation2 = [v55 observation];
          v63 = [observation2 objectAtIndexedSubscript:j];
          v64 = v50;
        }

        else
        {
          if (unsignedIntegerValue != 1)
          {
            if (!unsignedIntegerValue)
            {
              v59 = objc_autoreleasePoolPush();
              observation3 = [v55 observation];
              v61 = [observation3 objectAtIndexedSubscript:j];
              [v49 addObject:v61];

              v23 = v55;
              objc_autoreleasePoolPop(v59);
            }

            continue;
          }

          observation2 = [v55 observation];
          v63 = [observation2 objectAtIndexedSubscript:j];
          v64 = v51;
        }

        [v64 addObject:v63];
      }
    }

    v48 = [(NPNameParser *)selfCopy personNameCompomentsFromPrefix:firstObject2 suffix:lastObject2 givenNames:v49 middleNames:v51 familyNames:v50];
    classifierCopy = v71;
    if (scoreCopy)
    {
      [v23 score];
      *scoreCopy = v65;
    }

    v22 = v77;
    v19 = obj;
  }

  v66 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)personNameCompomentsFromPrefix:(id)prefix suffix:(id)suffix givenNames:(id)names middleNames:(id)middleNames familyNames:(id)familyNames
{
  namesCopy = names;
  middleNamesCopy = middleNames;
  familyNamesCopy = familyNames;
  suffixCopy = suffix;
  prefixCopy = prefix;
  v16 = objc_opt_new();
  [v16 setNamePrefix:prefixCopy];

  [v16 setNameSuffix:suffixCopy];
  if ([namesCopy count])
  {
    v17 = [namesCopy componentsJoinedByString:@" "];
    v18 = [v17 stringByReplacingOccurrencesOfString:@"|" withString:@" "];
    [v16 setGivenName:v18];
  }

  else
  {
    [v16 setGivenName:0];
  }

  if ([middleNamesCopy count])
  {
    v19 = [middleNamesCopy componentsJoinedByString:@" "];
    v20 = [v19 stringByReplacingOccurrencesOfString:@"|" withString:@" "];
    [v16 setMiddleName:v20];
  }

  else
  {
    [v16 setMiddleName:0];
  }

  if ([familyNamesCopy count])
  {
    v21 = [familyNamesCopy componentsJoinedByString:@" "];
    v22 = [v21 stringByReplacingOccurrencesOfString:@"|" withString:@" "];
    [v16 setFamilyName:v22];
  }

  else
  {
    [v16 setFamilyName:0];
  }

  return v16;
}

- (id)parseChineseName:(id)name normalize:(BOOL)normalize
{
  normalizeCopy = normalize;
  nameCopy = name;
  if (normalizeCopy)
  {
    v7 = [(NPNameParser *)self normalizeFullname:nameCopy];

    nameCopy = v7;
  }

  v8 = _NPTokenizeName(nameCopy);
  v9 = objc_opt_new();
  if ([v8 count] == 2)
  {
    lastObject = [v8 lastObject];
    [v9 setGivenName:lastObject];

    firstObject = [v8 firstObject];
    [v9 setFamilyName:firstObject];
    goto LABEL_23;
  }

  v12 = MEMORY[0x277CCAC68];
  v13 = [(NPNameComponentsData *)self->_nameComponentsData objectValueForEntry:3];
  firstObject = [v12 regularExpressionWithPattern:v13 options:0 error:0];

  v14 = [nameCopy length];
  if (v14 <= 2)
  {
    if (v14 == 2)
    {
      nameComponentsData = self->_nameComponentsData;
      v16 = [nameCopy substringToIndex:1];
      LODWORD(nameComponentsData) = [(NPNameComponentsData *)nameComponentsData collectionForEntry:2 contains:v16];

      if (nameComponentsData)
      {
        v17 = [nameCopy substringToIndex:1];
        [v9 setFamilyName:v17];

        v18 = [nameCopy substringFromIndex:1];
        v19 = v9;
        v20 = v18;
        goto LABEL_17;
      }
    }

    goto LABEL_13;
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v21 = [nameCopy substringToIndex:2];
      v18 = [v21 stringByApplyingTransform:@"Traditional-Simplified" reverse:0];

      if ([firstObject numberOfMatchesInString:v18 options:0 range:{0, objc_msgSend(v18, "length")}])
      {
        v22 = [nameCopy substringToIndex:2];
        [v9 setFamilyName:v22];

        v23 = [nameCopy substringFromIndex:2];
        [v9 setGivenName:v23];

LABEL_18:
        goto LABEL_23;
      }

      v19 = v9;
      v20 = nameCopy;
LABEL_17:
      [v19 setGivenName:v20];
      goto LABEL_18;
    }

LABEL_13:
    [v9 setGivenName:nameCopy];
    goto LABEL_23;
  }

  v24 = [nameCopy substringToIndex:2];
  v25 = [v24 stringByApplyingTransform:@"Traditional-Simplified" reverse:0];

  if ([firstObject numberOfMatchesInString:v25 options:0 range:{0, objc_msgSend(v25, "length")}])
  {
    v26 = [nameCopy substringToIndex:2];
    [v9 setFamilyName:v26];

    v27 = nameCopy;
    v28 = 2;
  }

  else
  {
    v29 = self->_nameComponentsData;
    v30 = [v25 substringToIndex:1];
    LODWORD(v29) = [(NPNameComponentsData *)v29 collectionForEntry:2 contains:v30];

    if (!v29)
    {
      [v9 setGivenName:nameCopy];
      goto LABEL_22;
    }

    v31 = [nameCopy substringToIndex:1];
    [v9 setFamilyName:v31];

    v27 = nameCopy;
    v28 = 1;
  }

  v32 = [v27 substringFromIndex:v28];
  [v9 setGivenName:v32];

LABEL_22:
LABEL_23:

  return v9;
}

- (id)parseJapaneseName:(id)name normalize:(BOOL)normalize
{
  normalizeCopy = normalize;
  nameCopy = name;
  if (normalizeCopy)
  {
    v8 = [(NPNameParser *)self normalizeFullname:nameCopy];

    nameCopy = v8;
  }

  v9 = _NPTokenizeName(nameCopy);
  v10 = objc_opt_new();
  if ([v9 count] == 2)
  {
    lastObject = [v9 lastObject];
    [v10 setGivenName:lastObject];

    firstObject = [v9 firstObject];
    [v10 setFamilyName:firstObject];

    goto LABEL_39;
  }

  if ([v9 count] >= 3)
  {
    [v10 setFamilyName:nameCopy];
    goto LABEL_39;
  }

  if (!_NPNameParserJapaneseSurnameTrie)
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 pathForResource:@"ja_surname" ofType:@"trie"];

    _NPNameParserJapaneseSurnameTrie = CFBurstTrieCreateFromFile();
    if (!_NPNameParserJapaneseSurnameTrie)
    {
      [NPNameParser parseJapaneseName:a2 normalize:self];
    }
  }

  v15 = objc_opt_new();
  v16 = [objc_alloc(MEMORY[0x277CCABF8]) initWithDominantScript:@"Jpan" languageMap:&unk_2858DB7E8];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v17 = [nameCopy length];
  v18 = *MEMORY[0x277CCA3D8];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __44__NPNameParser_parseJapaneseName_normalize___block_invoke;
  v57[3] = &unk_278E98020;
  v19 = v15;
  v58 = v19;
  v59 = &v60;
  [nameCopy enumerateLinguisticTagsInRange:0 scheme:v17 options:v18 orthography:6 usingBlock:{v16, v57}];
  if ((v61[3] & 1) == 0 && [v19 count])
  {
    if ([v19 count] == 1)
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      rangeValue = [v20 rangeValue];
      lastObject2 = [nameCopy substringWithRange:{rangeValue, v22}];
      [v10 setFamilyName:lastObject2];
LABEL_36:

      goto LABEL_37;
    }

    v24 = [v19 count];
    if ((v24 - 1) >= 5)
    {
      v25 = 5;
    }

    else
    {
      v25 = v24 - 1;
    }

    while (1)
    {
      v26 = [v19 objectAtIndexedSubscript:v25];
      rangeValue2 = [v26 rangeValue];
      v29 = v28;

      v30 = [v19 objectAtIndexedSubscript:0];
      v65.location = [v30 rangeValue];
      v68.location = rangeValue2;
      v68.length = v29;
      v31 = NSUnionRange(v65, v68);
      length = v31.length;

      if (CFBurstTrieContains())
      {
        break;
      }

      if (v25-- <= 0)
      {
        goto LABEL_28;
      }
    }

    if (v31.location == 0x7FFFFFFFFFFFFFFFLL || v31.length != 1)
    {
      if (v31.location != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_33;
      }
    }

    else if ([v19 count] <= 2)
    {
      length = 1;
LABEL_33:
      v48 = [nameCopy substringWithRange:{v31.location, length}];
      [v10 setFamilyName:v48];

      if (v25 >= [v19 count] - 1)
      {
        goto LABEL_38;
      }

      v20 = [v19 objectAtIndexedSubscript:v25 + 1];
      rangeValue3 = [v20 rangeValue];
      v51 = v50;
      lastObject2 = [v19 lastObject];
      v70.location = [lastObject2 rangeValue];
      v70.length = v52;
      v67.location = rangeValue3;
      v67.length = v51;
      v53 = NSUnionRange(v67, v70);
      v47 = [nameCopy substringWithRange:{v53.location, v53.length}];
      [v10 setGivenName:v47];
      goto LABEL_35;
    }

LABEL_28:
    if ([v19 count] != 2)
    {
      v20 = [v19 objectAtIndexedSubscript:0];
      rangeValue4 = [v20 rangeValue];
      v44 = v43;
      lastObject2 = [v19 lastObject];
      v69.location = [lastObject2 rangeValue];
      v69.length = v45;
      v66.location = rangeValue4;
      v66.length = v44;
      v46 = NSUnionRange(v66, v69);
      v47 = [nameCopy substringWithRange:{v46.location, v46.length}];
      [v10 setFamilyName:v47];
LABEL_35:

      goto LABEL_36;
    }

    v34 = [v19 objectAtIndexedSubscript:0];
    rangeValue5 = [v34 rangeValue];
    v37 = v36;

    v38 = [v19 objectAtIndexedSubscript:1];
    rangeValue6 = [v38 rangeValue];
    v56 = v40;
    v41 = rangeValue6;

    if (v37 == 3)
    {
      if (rangeValue5 + 3 != v41)
      {
        v37 = 3;
LABEL_47:
        v55 = [nameCopy substringWithRange:{rangeValue5, v37}];
        [v10 setFamilyName:v55];

        v20 = [nameCopy substringWithRange:{v41, v56}];
        [v10 setGivenName:v20];
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (v37 != 2 || v56 != 1 || rangeValue5 + 2 != v41)
    {
      goto LABEL_47;
    }

    if (CFBurstTrieContains())
    {
      --v41;
      ++v56;
      --v37;
    }

    goto LABEL_47;
  }

  [v10 setFamilyName:nameCopy];
LABEL_38:

  _Block_object_dispose(&v60, 8);
LABEL_39:

  return v10;
}

void __44__NPNameParser_parseJapaneseName_normalize___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if ([a2 isEqualToString:@"ja"])
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [v11 addObject:v12];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }
}

- (id)parseKoreanName:(id)name normalize:(BOOL)normalize
{
  normalizeCopy = normalize;
  v58 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (normalizeCopy)
  {
    v7 = [(NPNameParser *)self normalizeFullname:nameCopy];

    nameCopy = v7;
  }

  v8 = _NPTokenizeName(nameCopy);
  v9 = objc_opt_new();
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  if ([v8 count] >= 2)
  {
    v42 = whitespaceAndNewlineCharacterSet;
    v43 = v8;
    v44 = nameCopy;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v53;
      v45 = *v53;
      selfCopy = self;
      do
      {
        v15 = 0;
        v47 = v13;
        do
        {
          if (*v53 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v52 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          if ([(NPNameComponentsData *)self->_nameComponentsData collectionForEntry:4 contains:v16])
          {
            [v9 setGivenName:v16];
            [v9 setFamilyName:v16];
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v18 = v11;
            v19 = v11;
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v49;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v48 + 1) + 8 * i);
                  if (([v16 isEqualToString:{v24, v42, v43, v44}] & 1) == 0)
                  {
                    [v9 setGivenName:v24];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v21);
            }

            v14 = v45;
            self = selfCopy;
            v11 = v18;
            v13 = v47;
          }

          objc_autoreleasePoolPop(v17);
          ++v15;
        }

        while (v15 != v13);
        v13 = [v11 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v13);
    }

    familyName = [v9 familyName];
    v26 = [familyName length];

    v8 = v43;
    nameCopy = v44;
    whitespaceAndNewlineCharacterSet = v42;
    if (!v26)
    {
      v27 = [v11 objectAtIndexedSubscript:0];
      [v9 setFamilyName:v27];

      v28 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 1}];
      [v9 setGivenName:v28];
    }
  }

  if ([nameCopy length] < 2 || (objc_msgSend(v9, "givenName"), v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
  {
    v30 = 0;
  }

  else
  {
    v30 = [nameCopy substringToIndex:2];
    if ([(NPNameComponentsData *)self->_nameComponentsData collectionForEntry:4 contains:v30])
    {
      [v9 setFamilyName:v30];
      if ([nameCopy length] == 2)
      {
        [v9 setGivenName:0];
      }

      else
      {
        v41 = [nameCopy substringFromIndex:2];
        [v9 setGivenName:v41];
      }
    }
  }

  if ([nameCopy length] && (objc_msgSend(v9, "givenName"), v31 = objc_claimAutoreleasedReturnValue(), v31, !v31))
  {
    v32 = [nameCopy substringToIndex:1];

    if ([(NPNameComponentsData *)self->_nameComponentsData collectionForEntry:4 contains:v32])
    {
      [v9 setFamilyName:v32];
      if ([nameCopy length] == 1)
      {
        [v9 setGivenName:0];
      }

      else
      {
        v40 = [nameCopy substringFromIndex:1];
        [v9 setGivenName:v40];
      }
    }
  }

  else
  {
    v32 = v30;
  }

  givenName = [v9 givenName];

  if (!givenName)
  {
    [v9 setGivenName:nameCopy];
  }

  givenName2 = [v9 givenName];
  v35 = [givenName2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  [v9 setGivenName:v35];

  familyName2 = [v9 familyName];
  v37 = [familyName2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  [v9 setFamilyName:v37];

  v38 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)normalizeFullname:(id)fullname
{
  v3 = _NPStripQuotationMarks(fullname);
  v4 = _NPRemoveEmojis(v3);

  v5 = _NPRemoveParenthesisBracketsAndInside(v4);

  v6 = _NPRemoveAppSignature(v5);

  v7 = _NPCollapseWhitespaceAndStrip(v6);

  return v7;
}

- (BOOL)isPrefix:(id)prefix
{
  selfCopy = self;
  v4 = [(NPNameParser *)self normalizedAffix:prefix];
  LOBYTE(selfCopy) = [(NPNameComponentsData *)selfCopy->_nameComponentsData collectionForEntry:0 contains:v4];

  return selfCopy;
}

- (BOOL)isSuffix:(id)suffix
{
  selfCopy = self;
  v4 = [(NPNameParser *)self normalizedAffix:suffix];
  LOBYTE(selfCopy) = [(NPNameComponentsData *)selfCopy->_nameComponentsData collectionForEntry:1 contains:v4];

  return selfCopy;
}

- (unint64_t)frequencyOfLatinFamilyName:(id)name
{
  nameCopy = name;
  classifier = [(NPNameParser *)self classifier];
  v6 = [classifier frequencyForName:nameCopy type:2];

  return v6;
}

- (unint64_t)frequencyOfLatinGivenName:(id)name
{
  nameCopy = name;
  classifier = [(NPNameParser *)self classifier];
  v6 = [classifier frequencyForName:nameCopy type:0];

  return v6;
}

- (unint64_t)genderMajorityForGivenName:(id)name
{
  v4 = [(NPNameParser *)self normalizeFullname:name];
  lowercaseString = [v4 lowercaseString];

  classifier = [(NPNameParser *)self classifier];
  v7 = [classifier genderMajorityForGivenName:lowercaseString];

  return v7;
}

- (void)parseJapaneseName:(uint64_t)a1 normalize:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NPNameParser.m" lineNumber:428 description:@"Could not load ja_surname trie"];
}

@end