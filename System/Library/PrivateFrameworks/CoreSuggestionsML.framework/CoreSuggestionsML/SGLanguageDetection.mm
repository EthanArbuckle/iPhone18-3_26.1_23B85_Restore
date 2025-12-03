@interface SGLanguageDetection
+ (_NSRange)tokenRangeForText:(id)text maxTruncatedLength:(unint64_t)length tagger:(id)tagger taggerOptions:(unint64_t)options prevTextTokenMaxRange:(unint64_t)range originalLengthShortfall:(unint64_t)shortfall lowercaseText:(id)lowercaseText lowercaseRange:(_NSRange)self0;
+ (id)defaultLanguage;
+ (id)detectLanguageFromLanguageTags:(id)tags;
+ (id)detectLanguageFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)detectLanguageFromText:(id)text;
+ (id)detectLanguageFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)dominantLanguageTagFromLanguageTags:(id)tags;
+ (id)dominantLanguageTagFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)dominantLanguageTagFromText:(id)text;
+ (id)dominantLanguageTagFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement;
+ (id)languageForLocaleIdentifier:(id)identifier;
+ (id)languageTagsFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags;
+ (void)logMatchingForRange:(_NSRange)range lowercaseRange:(_NSRange)lowercaseRange text:(id)text lowercaseText:(id)lowercaseText;
@end

@implementation SGLanguageDetection

+ (void)logMatchingForRange:(_NSRange)range lowercaseRange:(_NSRange)lowercaseRange text:(id)text lowercaseText:(id)lowercaseText
{
  length = lowercaseRange.length;
  location = lowercaseRange.location;
  v9 = range.length;
  v10 = range.location;
  v31 = *MEMORY[0x277D85DE8];
  textCopy = text;
  lowercaseTextCopy = lowercaseText;
  v14 = location + length == [lowercaseTextCopy length];
  if (((v14 ^ (v10 + v9 != [textCopy length])) & 1) == 0)
  {
    v15 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v29 = location + length;
      *&v29[4] = 1024;
      *&v29[6] = [lowercaseTextCopy length];
      *v30 = 1024;
      *&v30[2] = v10 + v9;
      *&v30[6] = 1024;
      *&v30[8] = [textCopy length];
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: mismatched lowercase rangeEnd %d, stringEnd %d / original rangeEnd %d, stringEnd %d", buf, 0x1Au);
    }

    objc_autoreleasePoolPop(v15);
  }

  if (location == v10 && length != v9)
  {
    v16 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v29 = v10;
      *&v29[4] = 1024;
      *&v29[6] = length;
      *v30 = 1024;
      *&v30[2] = v10;
      *&v30[6] = 1024;
      *&v30[8] = v9;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: lowercase tokenRange is loc %d, len %d but original range is loc %d, len %d", buf, 0x1Au);
    }

    v17 = length - v9;
    if (length - v9 < 0)
    {
      v17 = v9 - length;
    }

    if (v17 >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109888;
        *v29 = v10;
        *&v29[4] = 1024;
        *&v29[6] = length;
        *v30 = 1024;
        *&v30[2] = v10;
        *&v30[6] = 1024;
        *&v30[8] = v9;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGLanguageDetection: strange! lowercase is loc %d, len %d but original is loc %d, len %d", buf, 0x1Au);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v20 = [lowercaseTextCopy substringWithRange:{location, length}];
        v21 = [lowercaseTextCopy length];
        v22 = [textCopy substringWithRange:{v10, v9}];
        v23 = [textCopy length];
        *buf = 138413058;
        *v29 = v20;
        *&v29[8] = 1024;
        *v30 = v21;
        *&v30[4] = 2112;
        *&v30[6] = v22;
        *&v30[14] = 1024;
        *&v30[16] = v23;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGLanguageDetection: possible problem! lowercase '%@' strlen %d and original '%@' strlen %d", buf, 0x22u);
      }
    }

    v18 = [textCopy length];
    if (v18 > [lowercaseTextCopy length] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      v24 = [textCopy length];
      v25 = [lowercaseTextCopy length];
      defaultLanguage = [self defaultLanguage];
      v27 = [MEMORY[0x277CCAAE8] dominantLanguageForString:textCopy];
      *buf = 67109890;
      *v29 = v24;
      *&v29[4] = 1024;
      *&v29[6] = v25;
      *v30 = 2112;
      *&v30[2] = defaultLanguage;
      *&v30[10] = 2112;
      *&v30[12] = v27;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGLanguageDetection: original len %d is longer than the lowercased len %d in locale %@, detected %@", buf, 0x22u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (_NSRange)tokenRangeForText:(id)text maxTruncatedLength:(unint64_t)length tagger:(id)tagger taggerOptions:(unint64_t)options prevTextTokenMaxRange:(unint64_t)range originalLengthShortfall:(unint64_t)shortfall lowercaseText:(id)lowercaseText lowercaseRange:(_NSRange)self0
{
  v57 = *MEMORY[0x277D85DE8];
  textCopy = text;
  taggerCopy = tagger;
  lowercaseTextCopy = lowercaseText;
  [taggerCopy setString:textCopy];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3010000000;
  v47 = &unk_2479DE472;
  v48 = xmmword_2479D4580;
  v17 = [textCopy length];
  if (v17 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = v17;
  }

  v19 = lengthCopy - range;
  v20 = *MEMORY[0x277CCA408];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __156__SGLanguageDetection_tokenRangeForText_maxTruncatedLength_tagger_taggerOptions_prevTextTokenMaxRange_originalLengthShortfall_lowercaseText_lowercaseRange___block_invoke;
  v36[3] = &unk_278EB8410;
  v21 = textCopy;
  v37 = v21;
  v40 = a2;
  selfCopy = self;
  shortfallCopy = shortfall;
  lowercaseRangeCopy = lowercaseRange;
  v22 = lowercaseTextCopy;
  v38 = v22;
  v39 = &v44;
  [taggerCopy enumerateTagsInRange:range unit:v19 scheme:0 options:v20 usingBlock:{options, v36}];
  v23 = v45;
  v24 = v45[4];
  if (v24 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = MEMORY[0x277D86220];
    v26 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v22 length];
      v32 = [v21 length];
      *buf = 67109888;
      v50 = v31;
      v51 = 1024;
      location = lowercaseRange.location;
      v53 = 1024;
      length = lowercaseRange.length;
      v55 = 1024;
      v56 = v32;
      _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "SGLanguageDetection: lowercase len %d, range loc %d / len %d found no range in original len %d", buf, 0x1Au);
    }

    v23 = v45;
    v24 = v45[4];
  }

  v27 = v23[5];

  _Block_object_dispose(&v44, 8);
  v28 = *MEMORY[0x277D85DE8];
  v29 = v24;
  v30 = v27;
  result.length = v30;
  result.location = v29;
  return result;
}

void __156__SGLanguageDetection_tokenRangeForText_maxTruncatedLength_tagger_taggerOptions_prevTextTokenMaxRange_originalLengthShortfall_lowercaseText_lowercaseRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a3 + a4;
  if (a3 + a4 > [*(a1 + 32) length])
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 56) object:*(a1 + 64) file:@"SGLanguageDetection.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(textTagRange) <= text.length"}];
  }

  if ((*(a1 + 72) + v9) > *(a1 + 80))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 88);
    [*(a1 + 64) logMatchingForRange:a3 lowercaseRange:a4 text:? lowercaseText:?];
    v13 = *(*(a1 + 48) + 8);
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    *a5 = 1;
  }
}

+ (id)languageTagsFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags
{
  v78 = *MEMORY[0x277D85DE8];
  textCopy = text;
  v10 = [textCopy length];
  if (v10)
  {
    v39 = a2;
    tagsCopy = tags;
    if (v10 > 2 * length)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [textCopy substringToIndex:2 * length];

      objc_autoreleasePoolPop(v11);
      textCopy = v12;
    }

    v13 = objc_opt_new();
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v43 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];

    if (v43)
    {
      v15 = [self languageForLocaleIdentifier:v43];
      [v13 addObject:v15];
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v17 = [preferredLanguages countByEnumeratingWithState:&v71 objects:v77 count:16];
    if (v17)
    {
      v18 = *v72;
LABEL_8:
      v19 = 0;
      while (1)
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v20 = [self languageForLocaleIdentifier:*(*(&v71 + 1) + 8 * v19)];
        [v13 addObject:v20];

        if ([v13 count] > 2)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [preferredLanguages countByEnumeratingWithState:&v71 objects:v77 count:16];
          if (v17)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    v21 = objc_alloc(MEMORY[0x277CCAAE8]);
    v76 = *MEMORY[0x277CCA3D8];
    v42 = v76;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
    v23 = [v21 initWithTagSchemes:v22 options:0];

    v24 = objc_alloc(MEMORY[0x277CCAAE8]);
    v75[0] = *MEMORY[0x277CCA408];
    v75[1] = v42;
    v75[2] = *MEMORY[0x277CCA3F0];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
    v26 = [v24 initWithTagSchemes:v25 options:0];

    localizedLowercaseString = [textCopy localizedLowercaseString];
    [v23 setString:localizedLowercaseString];
    v69[0] = 0;
    v69[1] = v69;
    v69[2] = 0x3032000000;
    v69[3] = __Block_byref_object_copy__1400;
    v69[4] = __Block_byref_object_dispose__1401;
    v70 = objc_opt_new();
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__1400;
    v67 = __Block_byref_object_dispose__1401;
    v68 = objc_opt_new();
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v62[3] = 0;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v61[3] = 0;
    v28 = [localizedLowercaseString length];
    v29 = v28 == [textCopy length];
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v31 = [localizedLowercaseString length];
    if (length + 20 >= v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = length + 20;
    }

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __70__SGLanguageDetection_languageTagsFromText_withMaxLength_withMaxTags___block_invoke;
    v44[3] = &unk_278EB83E8;
    v33 = localizedLowercaseString;
    v45 = v33;
    v54 = v39;
    selfCopy = self;
    lengthCopy = length;
    v40 = v13;
    v46 = v40;
    v50 = &v63;
    v51 = v69;
    v60 = v29;
    textCopy = textCopy;
    v47 = textCopy;
    v57 = length + 20;
    v34 = v26;
    v48 = v34;
    v52 = v62;
    v58 = 536870926;
    v53 = v61;
    v35 = uppercaseLetterCharacterSet;
    v49 = v35;
    v59 = tagsCopy;
    [v23 enumerateTagsInRange:0 unit:v32 scheme:0 options:v42 usingBlock:{536870926, v44}];
    v36 = v64[5];

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(v62, 8);
    _Block_object_dispose(&v63, 8);

    _Block_object_dispose(v69, 8);
  }

  else
  {
    v36 = MEMORY[0x277CBEBF8];
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void __70__SGLanguageDetection_languageTagsFromText_withMaxLength_withMaxTags___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  if (a3 + a4 > [*(a1 + 32) length])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:*(a1 + 104) object:*(a1 + 112) file:@"SGLanguageDetection.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(lowercaseRange) <= lowercaseText.length"}];
  }

  if ((a3 + a4) >= *(a1 + 120))
  {
    *a5 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    goto LABEL_37;
  }

  if ([v9 isEqualToString:@"und"])
  {
    v10 = v9;
    goto LABEL_37;
  }

  v10 = [*(a1 + 112) languageForLocaleIdentifier:v9];

  if (!v10)
  {
    v11 = objc_autoreleasePoolPush();
    goto LABEL_14;
  }

  if (![*(a1 + 40) containsObject:v10])
  {
    v11 = objc_autoreleasePoolPush();
    if (([*(*(*(a1 + 80) + 8) + 40) containsObject:v10] & 1) == 0)
    {
      [*(*(*(a1 + 80) + 8) + 40) addObject:v10];
LABEL_24:
      objc_autoreleasePoolPop(v11);
      goto LABEL_37;
    }

LABEL_14:
    v12 = *(a1 + 152);
    v13 = objc_autoreleasePoolPush();
    if (v12 != 1)
    {
      v14 = [*(a1 + 112) tokenRangeForText:*(a1 + 48) maxTruncatedLength:*(a1 + 128) tagger:*(a1 + 56) taggerOptions:*(a1 + 136) prevTextTokenMaxRange:*(*(*(a1 + 88) + 8) + 24) originalLengthShortfall:*(*(*(a1 + 96) + 8) + 24) lowercaseText:*(a1 + 32) lowercaseRange:{a3, a4}];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_autoreleasePoolPop(v13);
        v16 = 0;
LABEL_23:

        goto LABEL_24;
      }

      a4 = v15;
      *(*(*(a1 + 88) + 8) + 24) = v14 + v15;
      *(*(*(a1 + 96) + 8) + 24) = (a3 - v14) & ~((a3 - v14) >> 63);
      a3 = v14;
    }

    v16 = [*(a1 + 48) substringWithRange:{a3, a4}];
    objc_autoreleasePoolPop(v13);
    if ([v16 rangeOfCharacterFromSet:*(a1 + 64)] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 56) setString:v16];
      v17 = [*(a1 + 56) string];
      v24[0] = 0;
      v24[1] = [v17 length];

      v18 = [*(a1 + 56) tagAtIndex:0 unit:0 scheme:*MEMORY[0x277CCA3D8] tokenRange:v24];
      if (v18)
      {
        v19 = v18;
        if ([v18 isEqualToString:@"und"])
        {
          v20 = v19;
        }

        else
        {
          v20 = [*(a1 + 112) languageForLocaleIdentifier:v19];

          if ([*(a1 + 40) containsObject:v20])
          {
            [*(*(*(a1 + 72) + 8) + 40) addObject:v20];
          }

          else
          {
            v21 = [*(a1 + 56) tagAtIndex:0 unit:0 scheme:*MEMORY[0x277CCA3F0] tokenRange:v24];
            v22 = v21;
            if (v10 && (!v21 || ([v21 isEqualToString:*MEMORY[0x277CCA390]] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", *MEMORY[0x277CCA3A0])))
            {
              [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
            }
          }
        }
      }

      else
      {
        v20 = 0;
      }

      objc_autoreleasePoolPop(v11);
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
LABEL_35:
  if ([*(*(*(a1 + 72) + 8) + 40) count] >= *(a1 + 144))
  {
    *a5 = 1;
  }

LABEL_37:
}

+ (id)dominantLanguageTagFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  v30 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  if ([tagsCopy count] >= count && objc_msgSend(tagsCopy, "count"))
  {
    if ([tagsCopy count] == 1)
    {
      firstObject = [tagsCopy firstObject];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:tagsCopy];
      if ([v11 count] == 1)
      {
        firstObject = [tagsCopy firstObject];
      }

      else if ([v11 count] <= 2)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = v11;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = 0;
          v17 = *v26;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v25 + 1) + 8 * i);
              v20 = [v12 countForObject:v19];
              if (v20 >= v16)
              {
                v21 = v20;
                v22 = v19;

                v15 = v22;
                v16 = v21;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }

        v23 = [tagsCopy count];
        if (v16 >= count && v16 / v23 >= agreement)
        {
          firstObject = v15;
        }

        else
        {
          firstObject = 0;
        }

        v11 = v24;
      }

      else
      {
        firstObject = 0;
      }
    }
  }

  else
  {
    firstObject = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)dominantLanguageTagFromLanguageTags:(id)tags
{
  tagsCopy = tags;
  v4 = [objc_opt_class() dominantLanguageTagFromLanguageTags:tagsCopy withMinimumCount:0 withMinimumAgreement:0.6];

  return v4;
}

+ (id)dominantLanguageTagFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  textCopy = text;
  v12 = [objc_opt_class() languageTagsFromText:textCopy withMaxLength:length withMaxTags:tags];

  v13 = [objc_opt_class() dominantLanguageTagFromLanguageTags:v12 withMinimumCount:count withMinimumAgreement:agreement];

  return v13;
}

+ (id)dominantLanguageTagFromText:(id)text
{
  textCopy = text;
  v4 = [objc_opt_class() dominantLanguageTagFromText:textCopy withMaxLength:30 withMaxTags:8 withMinimumCount:0 withMinimumAgreement:0.6];

  return v4;
}

+ (id)detectLanguageFromLanguageTags:(id)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  tagsCopy = tags;
  if ([tagsCopy count])
  {
    [self dominantLanguageTagFromLanguageTags:tagsCopy withMinimumCount:count withMinimumAgreement:agreement];
  }

  else
  {
    [objc_opt_class() defaultLanguage];
  }
  v9 = ;

  return v9;
}

+ (id)detectLanguageFromLanguageTags:(id)tags
{
  v3 = [self dominantLanguageTagFromLanguageTags:tags];
  v4 = v3;
  if (v3)
  {
    defaultLanguage = v3;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v6 = defaultLanguage;

  return v6;
}

+ (id)detectLanguageFromText:(id)text withMaxLength:(unint64_t)length withMaxTags:(unint64_t)tags withMinimumCount:(unint64_t)count withMinimumAgreement:(double)agreement
{
  textCopy = text;
  v12 = [objc_opt_class() dominantLanguageTagFromText:textCopy withMaxLength:length withMaxTags:tags withMinimumCount:count withMinimumAgreement:agreement];

  if (v12)
  {
    defaultLanguage = v12;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v14 = defaultLanguage;

  return v14;
}

+ (id)detectLanguageFromText:(id)text
{
  v3 = [self dominantLanguageTagFromText:text];
  v4 = v3;
  if (v3)
  {
    defaultLanguage = v3;
  }

  else
  {
    defaultLanguage = [objc_opt_class() defaultLanguage];
  }

  v6 = defaultLanguage;

  return v6;
}

+ (id)defaultLanguage
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [currentLocale objectForKey:*MEMORY[0x277CBE6C0]];

  if (v3 && [v3 length] >= 2)
  {
    v4 = [SGLanguageDetection languageForLocaleIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)languageForLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = objc_autoreleasePoolPush();
  if ([identifierCopy length] <= 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGLanguageDetection.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"localeIdentifier.length >= 2"}];
  }

  letterCharacterSet = [MEMORY[0x277CCA900] letterCharacterSet];
  v8 = [SGStringSplitter splitString:identifierCopy withCharacterSet:letterCharacterSet];

  firstObject = [v8 firstObject];
  lowercaseString = [firstObject lowercaseString];

  lastObject = [v8 lastObject];
  v12 = [v8 count];
  v13 = [lowercaseString isEqualToString:@"zh"];
  if (v12 == 1)
  {
    if (v13)
    {
      v14 = @"zh-Hans";
      goto LABEL_33;
    }

LABEL_32:
    v14 = lowercaseString;
    goto LABEL_33;
  }

  if (v13)
  {
    v15 = [v8 objectAtIndexedSubscript:1];
    v16 = [v15 isEqualToString:@"Hans"];

    v14 = @"zh-Hans";
    if ((v16 & 1) == 0)
    {
      v17 = [v8 objectAtIndexedSubscript:1];
      v18 = [v17 isEqualToString:@"Hant"];

      if (v18 & 1) != 0 || ([lastObject isEqualToString:@"HK"])
      {
        v14 = @"zh-Hant";
      }

      else
      {
        v14 = @"zh-Hant";
        if (([lastObject isEqualToString:@"MO"] & 1) == 0 && !objc_msgSend(lastObject, "isEqualToString:", @"TW"))
        {
          v14 = @"zh-Hans";
        }
      }
    }
  }

  else
  {
    v14 = @"hi";
    if (![lowercaseString isEqualToString:@"hi"])
    {
      if ([lowercaseString isEqualToString:@"uz"])
      {
        v21 = [v8 objectAtIndexedSubscript:1];
        v22 = [v21 isEqualToString:@"Cyrl"];

        if (v22)
        {
          v14 = @"uz";
          goto LABEL_33;
        }

        v23 = [v8 objectAtIndexedSubscript:1];
        v24 = [v23 isEqualToString:@"Arab"];

        if (v24)
        {
          goto LABEL_23;
        }

        v25 = [v8 objectAtIndexedSubscript:1];
        v26 = [v25 isEqualToString:@"Latn"];

        if (v26 & 1) != 0 || ([lastObject isEqualToString:@"UZ"] & 1) != 0 || (objc_msgSend(lastObject, "isEqualToString:", @"AZ"))
        {
          v14 = @"uz-Latn";
          goto LABEL_33;
        }

        if ([lastObject isEqualToString:@"AF"])
        {
LABEL_23:
          v14 = @"uz-Arab";
          goto LABEL_33;
        }
      }

      if ([lowercaseString isEqualToString:@"sr"])
      {
        v27 = [v8 objectAtIndexedSubscript:1];
        v28 = [v27 isEqualToString:@"Latn"];

        if (v28)
        {
          v14 = @"sr-Latn";
          goto LABEL_33;
        }
      }

      goto LABEL_32;
    }

    v19 = [v8 objectAtIndexedSubscript:1];
    v20 = [v19 isEqualToString:@"Latn"];

    if (v20)
    {
      v14 = @"hi-Latn";
    }
  }

LABEL_33:

  objc_autoreleasePoolPop(v6);

  return v14;
}

@end