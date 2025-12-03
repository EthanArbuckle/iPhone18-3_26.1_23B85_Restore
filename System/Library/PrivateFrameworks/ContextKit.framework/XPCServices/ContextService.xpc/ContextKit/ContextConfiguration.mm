@interface ContextConfiguration
+ (id)desiredLanguageTags;
+ (id)sharedInstance;
+ (void)_triggerConfigurationUpdate;
+ (void)_updateConfiguration:(id)configuration;
+ (void)initialize;
+ (void)registerUpdateHandler:(id)handler;
+ (void)reloadFromGlobalPlist:(id)plist indexSpecificPlist:(id)specificPlist developerPlist:(id)developerPlist indexVersionId:(id)id;
- (ContextConfiguration)init;
- (id)abGroupOfDictionary:(id)dictionary;
- (id)debugStatus;
- (void)_performReinitWithIndexVersion:(id)version;
- (void)_updateFromPlist:(id)plist;
@end

@implementation ContextConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_alloc_init(ContextConfiguration);
    v4 = qword_100557138;
    qword_100557138 = v3;

    v5 = os_log_create("com.apple.siri.context.service", "configuration");
    v6 = qword_100557140;
    qword_100557140 = v5;

    objc_opt_class();
    objc_opt_class();
    v13 = 8;
    *out_token = 0;
    if (sysctlbyname("hw.memsize", out_token, &v13, 0, 0) == -1)
    {
      v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      v7 = 0;
      if (v8)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not read system memsize, assuming it's enough", v12, 2u);
        v7 = 0;
      }
    }

    else
    {
      v7 = *out_token >> 23 < 0xE1uLL;
    }

    byte_100557148 = v7;
    [self registerUpdateHandler:&stru_1004839A8];
    if (+[_PASDeviceInfo isInternalBuild])
    {
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
      v11 = dispatch_queue_create("ContextConfiguration-force-update", v10);

      out_token[0] = 0;
      notify_register_dispatch([@"com.apple.contextkit.configurationChanged.force" UTF8String], out_token, v11, &stru_1004839E8);
    }
  }
}

+ (id)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = qword_100557138;
  objc_sync_exit(v2);

  return v3;
}

- (ContextConfiguration)init
{
  v24.receiver = self;
  v24.super_class = ContextConfiguration;
  v2 = [(ContextConfiguration *)&v24 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 29);
    *(v2 + 29) = v3;

    v2[144] = 1;
    v5 = [NSSet setWithArray:&off_1004A9DF0];
    v6 = *(v2 + 40);
    *(v2 + 40) = v5;

    *(v2 + 10) = xmmword_1003159E0;
    *(v2 + 17) = xmmword_1003159F0;
    *(v2 + 18) = xmmword_100315A00;
    *(v2 + 15) = xmmword_100315A10;
    *(v2 + 16) = xmmword_100315A20;
    *(v2 + 22) = 0x3F8000003F333333;
    *(v2 + 46) = 1065353216;
    *(v2 + 38) = 0x4000;
    *(v2 + 8) = xmmword_100315A30;
    *(v2 + 24) = xmmword_100315A40;
    *(v2 + 40) = xmmword_100315A50;
    *(v2 + 56) = xmmword_100315A60;
    *(v2 + 72) = xmmword_100315A70;
    *(v2 + 88) = vdupq_n_s64(2uLL);
    *(v2 + 41) = 0;
    *(v2 + 21) = xmmword_100315A80;
    *(v2 + 22) = vdupq_n_s64(0x32uLL);
    *(v2 + 23) = vdupq_n_s64(0x64uLL);
    *(v2 + 24) = xmmword_100315A90;
    *(v2 + 104) = xmmword_100315AA0;
    *(v2 + 15) = 250;
    v2[128] = 1;
    v7 = *(v2 + 50);
    *(v2 + 50) = 0;

    v8 = *(v2 + 51);
    *(v2 + 51) = 0;

    v2[129] = 0;
    *(v2 + 188) = xmmword_100315AB0;
    v9 = *(v2 + 53);
    *(v2 + 52) = 2;
    *(v2 + 53) = 0;

    v10 = *(v2 + 54);
    *(v2 + 54) = 0;

    *(v2 + 55) = 0;
    *(v2 + 146) = 0;
    v2[150] = byte_100557148 ^ 1;
    *(v2 + 28) = vdupq_n_s64(3uLL);
    v2[151] = 1;
    *(v2 + 153) = 1;
    v2[155] = 1;
    *(v2 + 58) = 2;
    *(v2 + 78) = 1;
    *(v2 + 204) = 0x3F3333333F000000;
    v2[158] = 0;
    v11 = *(v2 + 17);
    *(v2 + 17) = 0;

    *(v2 + 59) = 0x408C200000000000;
    *(v2 + 60) = 3;
    v12 = +[ContextConfiguration desiredLanguageTags];
    v13 = *(v2 + 61);
    *(v2 + 61) = v12;

    v14 = [NSString stringWithFormat:@"./, \n\t\u2028\u2029\n\v\f\r%C", 133];;
    v15 = *(v2 + 62);
    *(v2 + 62) = v14;

    v16 = *(v2 + 63);
    *(v2 + 63) = @"- 's:/—";

    v17 = *(v2 + 64);
    *(v2 + 64) = @"‘’“”„“«»‹›";

    v18 = *(v2 + 65);
    *(v2 + 65) = @"-—";

    *(v2 + 33) = xmmword_100315AC0;
    *(v2 + 34) = xmmword_100315AD0;
    *(v2 + 35) = xmmword_100315AE0;
    *(v2 + 36) = xmmword_100315AF0;
    *(v2 + 74) = 50;
    *(v2 + 75) = 0x4031000000000000;
    *(v2 + 53) = 1069547520;
    *(v2 + 38) = xmmword_100315A80;
    *(v2 + 78) = 6;
    v19 = [[NSSet alloc] initWithArray:&off_1004A9E08];
    v20 = *(v2 + 79);
    *(v2 + 79) = v19;

    v21 = [[NSSet alloc] initWithArray:&off_1004A9E20];
    v22 = *(v2 + 80);
    *(v2 + 80) = v21;

    *(v2 + 81) = 5;
    *(v2 + 54) = 1045220557;
    *(v2 + 41) = xmmword_100315B00;
    *(v2 + 42) = xmmword_100315B10;
    *(v2 + 86) = 15;
    [v2 _performReinitWithIndexVersion:@"not-initialized"];
  }

  return v2;
}

+ (id)desiredLanguageTags
{
  v2 = objc_alloc_init(NSMutableOrderedSet);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = +[NSLocale preferredLanguages];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[NSLocale alloc] initWithLocaleIdentifier:*(*(&v17 + 1) + 8 * i)];
        languageCode = [v8 languageCode];
        scriptCode = [v8 scriptCode];
        v11 = [scriptCode length];

        if (v11)
        {
          languageCode2 = [v8 languageCode];
          scriptCode2 = [v8 scriptCode];
          v14 = [NSString stringWithFormat:@"%@-%@", languageCode2, scriptCode2];

          languageCode = v14;
        }

        [v2 addObject:languageCode];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v15 = [v2 copy];

  return v15;
}

- (void)_performReinitWithIndexVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = dispatch_semaphore_create(selfCopy->_maxConcurrency);
  [(ContextConfiguration *)selfCopy setMaxConcurrencySemaphore:v5];

  indexVersionIdSuffix = selfCopy->_indexVersionIdSuffix;
  if (indexVersionIdSuffix)
  {
    indexVersionIdSuffix = [NSString stringWithFormat:@"%@%@", versionCopy, indexVersionIdSuffix];
  }

  else
  {
    indexVersionIdSuffix = versionCopy;
  }

  indexVersionId = selfCopy->_indexVersionId;
  selfCopy->_indexVersionId = indexVersionIdSuffix;

  objc_sync_exit(selfCopy);
}

+ (void)reloadFromGlobalPlist:(id)plist indexSpecificPlist:(id)specificPlist developerPlist:(id)developerPlist indexVersionId:(id)id
{
  plistCopy = plist;
  specificPlistCopy = specificPlist;
  developerPlistCopy = developerPlist;
  idCopy = id;
  v14 = qword_100557140;
  if (os_log_type_enabled(qword_100557140, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412802;
    v21 = plistCopy;
    v22 = 2112;
    v23 = specificPlistCopy;
    v24 = 2112;
    v25 = developerPlistCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "reloadFromPlist, global plist:%@, index-specific plist:%@, developer:%@", &v20, 0x20u);
  }

  v15 = objc_alloc_init(ContextConfiguration);
  v16 = v15;
  if (plistCopy)
  {
    [(ContextConfiguration *)v15 _updateFromPlist:plistCopy];
  }

  else
  {
    v17 = qword_100557140;
    if (os_log_type_enabled(qword_100557140, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Warning] No global configuration found", &v20, 2u);
    }
  }

  if (!specificPlistCopy || specificPlistCopy == plistCopy)
  {
    v18 = qword_100557140;
    if (os_log_type_enabled(qword_100557140, OS_LOG_TYPE_DEBUG))
    {
      sub_10029864C(v18);
    }
  }

  else
  {
    [(ContextConfiguration *)v16 _updateFromPlist:specificPlistCopy];
  }

  if (developerPlistCopy == plistCopy || !developerPlistCopy || developerPlistCopy == specificPlistCopy)
  {
    v19 = qword_100557140;
    if (os_log_type_enabled(qword_100557140, OS_LOG_TYPE_DEBUG))
    {
      sub_100298690(v19);
    }
  }

  else
  {
    [(ContextConfiguration *)v16 _updateFromPlist:developerPlistCopy];
  }

  [(ContextConfiguration *)v16 _performReinitWithIndexVersion:idCopy];
  [self _updateConfiguration:v16];
}

+ (void)_updateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = qword_100557138;
  qword_100557138 = configurationCopy;

  objc_sync_exit(v5);

  [self _triggerConfigurationUpdate];
}

+ (void)_triggerConfigurationUpdate
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"contextConfigurationDidChange" object:0];
}

- (id)abGroupOfDictionary:(id)dictionary
{
  selfCopy = self;
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v30 = objc_opt_new();
    v4 = [dictionaryCopy objectForKeyedSubscript:@"Salt"];
    v5 = sub_1002966B4(v4);
    unsignedIntegerValue = [v5 unsignedIntegerValue];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allKeys = [dictionaryCopy allKeys];
    v8 = [allKeys sortedArrayUsingSelector:"compare:"];

    v9 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v31 = unsignedIntegerValue + 1;
      v32 = v8;
      v11 = *v36;
      v33 = dictionaryCopy;
      v34 = *v36;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = [dictionaryCopy objectForKeyedSubscript:{v13, selfCopy}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            if ([v15 count])
            {
              v16 = [v15 objectForKeyedSubscript:@"A/B Activation"];
              v17 = sub_100296714(v16);

              if (v17)
              {
                v18 = [v17 objectForKeyedSubscript:@"Range"];
                v19 = objc_opt_class();
                v20 = sub_100297E04(v18, v19);

                v21 = [v17 objectForKeyedSubscript:@"Modulo"];
                v22 = sub_1002966B4(v21);

                if ([v20 length])
                {
                  v23 = v22 == 0;
                }

                else
                {
                  v23 = 1;
                }

                if (!v23)
                {
                  v24 = +[CTKABHelper index]* v31;
                  v25 = v24 % [v22 unsignedIntegerValue];
                  v26 = NSRangeFromString(v20);
                  if (v25 >= v26.location && v25 - v26.location < v26.length)
                  {
                    [v30 addEntriesFromDictionary:v15];
                    [(NSArray *)selfCopy->_matchedABGroups addObject:v13];
                  }
                }

                v8 = v32;
                dictionaryCopy = v33;
              }

              v11 = v34;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (void)_updateFromPlist:(id)plist
{
  plistCopy = plist;
  if (!plistCopy)
  {
    goto LABEL_36;
  }

  v146 = plistCopy;
  if (![plistCopy count])
  {
    goto LABEL_36;
  }

  v5 = [v146 objectForKeyedSubscript:@"LuceneContextEngine"];
  v6 = sub_100296714(v5);

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"Enabled"];
    sub_100297B28(&self->_luceneEnabled, v7);

    v8 = [v6 objectForKeyedSubscript:@"Languages"];
    sub_100297B80(&self->_luceneSupportedLanguages, v8);

    v9 = [v6 objectForKeyedSubscript:@"MinRelativeScore"];
    sub_100297C1C(&self->_luceneMinRelativeScore, v9);

    v10 = [v6 objectForKeyedSubscript:@"MinAbsoluteScore"];
    sub_100297C1C(&self->_luceneMinAbsoluteScore, v10);

    v11 = [v6 objectForKeyedSubscript:@"MinScoreTitlePrimary"];
    sub_100297C1C(&self->_luceneMinScoreTitlePrimary, v11);

    v12 = [v6 objectForKeyedSubscript:@"MinScoreTitleMatch"];
    sub_100297C1C(&self->_luceneMinScoreTitleMatch, v12);

    v13 = [v6 objectForKeyedSubscript:@"MinTitleMatchPrimaryAllNamesOK"];
    sub_100297C74(&self->_luceneMinTitleMatchPrimaryAllNamesOK, v13);

    v14 = [v6 objectForKeyedSubscript:@"MinTitleMatchAllNamesOK"];
    sub_100297C74(&self->_luceneMinTitleMatchAllNamesOK, v14);

    v15 = [v6 objectForKeyedSubscript:@"MinTitleMatchForScoreBoost"];
    sub_100297C74(&self->_luceneMinTitleMatchForScoreBoost, v15);

    v16 = [v6 objectForKeyedSubscript:@"MaxUniqueTotalTokens"];
    sub_100297C74(&self->_luceneMaxUniqueTotalTokens, v16);

    v17 = [v6 objectForKeyedSubscript:@"MaxUniqueNotSkippedTokens"];
    sub_100297C74(&self->_luceneMaxUniqueNotSkippedTokens, v17);

    v18 = [v6 objectForKeyedSubscript:@"MaxUniquePrimaryTokens"];
    sub_100297C74(&self->_luceneMaxUniquePrimaryTokens, v18);

    v19 = [v6 objectForKeyedSubscript:@"ForceSecondaryAfterPosition"];
    sub_100297C74(&self->_luceneForceSecondaryAfterPosition, v19);

    v20 = [v6 objectForKeyedSubscript:@"IgnoreAfterPosition"];
    sub_100297C74(&self->_luceneIgnoreAfterPosition, v20);

    v21 = [v6 objectForKeyedSubscript:@"MinTokenCountToAugment"];
    sub_100297CCC(&self->_minTokenCountToAugment, v21);

    v22 = [v6 objectForKeyedSubscript:@"MinPrefixAdditionalResults"];
    sub_100297CCC(&self->_minPrefixAdditionalResults, v22);

    v23 = [v6 objectForKeyedSubscript:@"QueryDefaultNumResults"];
    sub_100297C74(&self->_luceneQueryDefaultNumResults, v23);

    v24 = [v6 objectForKeyedSubscript:@"QueryMaxNumResults"];
    sub_100297C74(&self->_luceneQueryMaxNumResults, v24);

    v25 = [v6 objectForKeyedSubscript:@"IndexPath"];
    sub_100297D24(&self->_luceneIndexPath, v25);

    v26 = [v6 objectForKeyedSubscript:@"MinFileSizeForNSDataMMap"];
    sub_100297C74(&self->_luceneMinFileSizeForNSDataMMap, v26);

    v27 = [v6 objectForKeyedSubscript:@"BlendAlpha"];
    sub_100297C1C(&self->_luceneBlendAlpha, v27);

    v28 = [v6 objectForKeyedSubscript:@"BlendBeta"];
    sub_100297C1C(&self->_luceneBlendBeta, v28);

    v29 = [v6 objectForKeyedSubscript:@"BlendGamma"];
    sub_100297C1C(&self->_luceneBlendGamma, v29);

    v30 = [v6 objectForKeyedSubscript:@"TermResultMinCount"];
    sub_100297C74(&self->_luceneTermResultMinCount, v30);

    v31 = [v6 objectForKeyedSubscript:@"TermResultMinCountRegularKeyword"];
    sub_100297C74(&self->_luceneTermResultMinCountRegularKeyword, v31);

    v32 = [v6 objectForKeyedSubscript:@"TermResultMinCountNoPrefixRegularKeyword"];
    sub_100297C74(&self->_luceneTermResultMinCountNoPrefixRegularKeyword, v32);

    v33 = [v6 objectForKeyedSubscript:@"TermResultMinCountNoPrefixTopic"];
    sub_100297C74(&self->_luceneTermResultMinCountNoPrefixTopic, v33);

    v34 = [v6 objectForKeyedSubscript:@"TermResultMinCountNoPrefixName"];
    sub_100297C74(&self->_luceneTermResultMinCountNoPrefixName, v34);

    v35 = [v6 objectForKeyedSubscript:@"TermResultMinCountNoPrefixFirstLastName"];
    sub_100297C74(&self->_luceneTermResultMinCountNoPrefixFirstLastName, v35);

    v36 = [v6 objectForKeyedSubscript:@"TermResultMinCountNoPrefixIntermediate"];
    sub_100297C74(&self->_luceneTermResultMinCountNoPrefixIntermediate, v36);

    v37 = [v6 objectForKeyedSubscript:@"TermResultFirstOccurrencePowerLawDecay"];
    sub_100297CCC(&self->_luceneTermResultFirstOccurrencePowerLawDecay, v37);

    v38 = [v6 objectForKeyedSubscript:@"TermResultUnigramScoreMultiplier"];
    sub_100297C74(&self->_luceneTermResultUnigramScoreMultiplier, v38);

    v39 = [v6 objectForKeyedSubscript:@"TermResultBigramScoreMultiplier"];
    sub_100297C74(&self->_luceneTermResultBigramScoreMultiplier, v39);

    v40 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixQuoted"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixQuoted, v40);

    v41 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixRegularKeyword"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixRegularKeyword, v41);

    v42 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixTopic"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixTopic, v42);

    v43 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixName"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixName, v43);

    v44 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixFirstLastName"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixFirstLastName, v44);

    v45 = [v6 objectForKeyedSubscript:@"TermResultDefaultMinPrefixIntermediate"];
    sub_100297CCC(&self->_luceneTermResultDefaultMinPrefixIntermediate, v45);

    v46 = [v6 objectForKeyedSubscript:@"TermResultGivenSurnameEnabled"];
    sub_100297B28(&self->_luceneTermResultGivenSurnameEnabled, v46);

    v47 = [v6 objectForKeyedSubscript:@"GivenSurnameMinGivenCount"];
    sub_100297C74(&self->_luceneGivenSurnameMinGivenCount, v47);

    v48 = [v6 objectForKeyedSubscript:@"GivenSurnameEarlyMentionLimit"];
    sub_100297C74(&self->_luceneGivenSurnameEarlyMentionLimit, v48);

    v49 = [v6 objectForKeyedSubscript:@"MaxTermResults"];
    sub_100297C74(&self->_luceneMaxTermResults, v49);

    v50 = [v6 objectForKeyedSubscript:@"MaxTermResultsWithDocument"];
    sub_100297C74(&self->_luceneMaxTermResultsWithDocument, v50);

    v51 = [v6 objectForKeyedSubscript:@"MaxTermAndBigramResults"];
    sub_100297C74(&self->_luceneMaxTermAndBigramResults, v51);

    v52 = [v6 objectForKeyedSubscript:@"MaxTermAndBigramResultsWithDocument"];
    sub_100297C74(&self->_luceneMaxTermAndBigramResultsWithDocument, v52);

    v53 = [v6 objectForKeyedSubscript:@"IndexVersionIdSuffix"];
    sub_100297D24(&self->_indexVersionIdSuffix, v53);

    v54 = [v6 objectForKeyedSubscript:@"NGramBreakingSeparators"];
    sub_100297D24(&self->_nGramBreakingSeparators, v54);

    v55 = [v6 objectForKeyedSubscript:@"AllowedNGramSeparators"];
    sub_100297D24(&self->_allowedNGramSeparators, v55);

    v56 = [v6 objectForKeyedSubscript:@"QuotedTokenCharacterSet"];
    sub_100297D24(&self->_quotedTokenCharacterSet, v56);

    v57 = [v6 objectForKeyedSubscript:@"PartialNGramCharacterSet"];
    sub_100297D24(&self->_partialNGramCharacterSet, v57);

    v58 = [v6 objectForKeyedSubscript:@"BigramMaxEnclosedStopwords"];
    sub_100297C74(&self->_bigramMaxEnclosedStopwords, v58);

    v59 = [v6 objectForKeyedSubscript:@"BigramMaxOffsetDelta"];
    sub_100297C74(&self->_bigramMaxOffsetDelta, v59);

    v60 = [v6 objectForKeyedSubscript:@"MinUIContextLength"];
    sub_100297C74(&self->_minUIContextLength, v60);

    v61 = [v6 objectForKeyedSubscript:@"MaxUIContextLength"];
    sub_100297C74(&self->_maxUIContextLength, v61);

    v62 = [v6 objectForKeyedSubscript:@"MinUIPositionY"];
    sub_100297C74(&self->_minUIPositionY, v62);

    v63 = [v6 objectForKeyedSubscript:@"SmallUIHeight"];
    sub_100297C74(&self->_smallUIHeight, v63);

    v64 = [v6 objectForKeyedSubscript:@"VerticalGroupBuffer"];
    sub_100297C74(&self->_verticalGroupBuffer, v64);

    v65 = [v6 objectForKeyedSubscript:@"HorizontalGroupBuffer"];
    sub_100297C74(&self->_horizontalGroupBuffer, v65);

    v66 = [v6 objectForKeyedSubscript:@"MaxUIContentCount"];
    sub_100297C74(&self->_maxUIContentCount, v66);

    v67 = [v6 objectForKeyedSubscript:@"MinTitleUIFontSize"];
    sub_100297DAC(&self->_minTitleUIFontSize, v67);

    v68 = [v6 objectForKeyedSubscript:@"MinFontDeltaForTitle"];
    sub_100297C1C(&self->_minFontDeltaForTitle, v68);

    v69 = [v6 objectForKeyedSubscript:@"TitleMinPrefix"];
    sub_100297CCC(&self->_titleMinPrefix, v69);

    v70 = [v6 objectForKeyedSubscript:@"StructuredExtractionMinPrefix"];
    sub_100297CCC(&self->_structuredExtractionMinPrefix, v70);

    v71 = [v6 objectForKeyedSubscript:@"StructuredExtractionDemotedResultMinPrefix"];
    sub_100297CCC(&self->_structuredExtractionDemotedResultMinPrefix, v71);

    v72 = [v6 objectForKeyedSubscript:@"StructuredExtractionUIBlockList"];
    sub_100297B80(&self->_structuredExtractionUIBlockList, v72);

    v73 = [v6 objectForKeyedSubscript:@"StructuredExtractionUIOffScreenIgnoreList"];
    sub_100297B80(&self->_structuredExtractionUIOffScreenIgnoreList, v73);

    v74 = [v6 objectForKeyedSubscript:@"SurroundingEntitiesSearchRange"];
    sub_100297C74(&self->_surroundingEntitiesSearchRange, v74);

    v75 = [v6 objectForKeyedSubscript:@"SurroundingEntitiesMaxDistanceScore"];
    sub_100297C74(&self->_surroundingEntitiesMaxDistanceScore, v75);

    v76 = [v6 objectForKeyedSubscript:@"SurroundingEntitiesDistanceScoreHorizontalSkew"];
    sub_100297C1C(&self->_surroundingEntitiesDistanceScoreHorizontalSkew, v76);

    v77 = [v6 objectForKeyedSubscript:@"SurroundingEntitiesMaxLabelLength"];
    sub_100297C74(&self->_surroundingEntitiesMaxLabelLength, v77);

    v78 = [v6 objectForKeyedSubscript:@"ConstellationMaxTopicDistance"];
    sub_100297C74(&self->_constellationMaxTopicDistance, v78);

    v79 = [v6 objectForKeyedSubscript:@"ConstellationMaxOverallTopics"];
    sub_100297C74(&self->_constellationMaxOverallTopics, v79);
  }

  v80 = [v146 objectForKeyedSubscript:@"ContextService"];
  v81 = sub_100296714(v80);

  if (v81)
  {
    v82 = [v81 objectForKeyedSubscript:@"MaxConcurrency"];
    sub_100297C74(&self->_maxConcurrency, v82);

    v83 = [v81 objectForKeyedSubscript:@"MaxConcurrencyTimeoutSecs"];
    sub_100297C1C(&self->_maxConcurrencySemaphoreTimeoutSecs, v83);

    v84 = [v81 objectForKeyedSubscript:@"FindResultsTimeoutSecs"];
    sub_100297C1C(&self->_findResultsTimeoutSecs, v84);

    v85 = [v81 objectForKeyedSubscript:@"FindResultsSlowSecs"];
    sub_100297C1C(&self->_findResultsSlowSecs, v85);

    v86 = [v81 objectForKeyedSubscript:@"PortraitEnabled"];
    sub_100297B28(&self->_portraitEnabled, v86);

    v87 = [v81 objectForKeyedSubscript:@"HighLevelTopicsEnabled"];
    sub_100297B28(&self->_highLevelTopicsEnabled, v87);

    v88 = [v81 objectForKeyedSubscript:@"InternalGradingEnabled"];
    sub_100297B28(&self->_internalGradingEnabled, v88);

    v89 = [v81 objectForKeyedSubscript:@"DigitalHealthEnabled"];
    sub_100297B28(&self->_digitalHealthEnabled, v89);

    v90 = [v81 objectForKeyedSubscript:@"FallbackModeQuerySuggestionsEnabled"];
    sub_100297B28(&self->_fallbackModeQuerySuggestionsEnabled, v90);

    v91 = [v81 objectForKeyedSubscript:@"ExtraQueryCompletionsEnabled"];
    sub_100297B28(&self->_extraQueryCompletionsEnabled, v91);

    v92 = [v81 objectForKeyedSubscript:@"ExtraQueryCompletionsTopKLanguages"];
    sub_100297C74(&self->_extraQueryCompletionsTopKLanguages, v92);

    v93 = [v81 objectForKeyedSubscript:@"TagsEnabled"];
    sub_100297B28(&self->_tagsEnabled, v93);

    v94 = [v81 objectForKeyedSubscript:@"CoreNLPTaggingEnabled"];
    sub_100297B28(&self->_coreNLPTaggingEnabled, v94);

    v95 = [v81 objectForKeyedSubscript:@"CoreNLPMinScore"];
    sub_100297C1C(&self->_coreNLPMinScore, v95);

    v96 = [v81 objectForKeyedSubscript:@"CoreNLPRelevantScore"];
    sub_100297C1C(&self->_coreNLPRelevantScore, v96);

    v97 = [v81 objectForKeyedSubscript:@"RawTextEnabled"];
    sub_100297B28(&self->_rawTextEnabled, v97);

    v98 = [v81 objectForKeyedSubscript:@"HideCompletionsTimeLimit"];
    sub_100297DAC(&self->_hideCompletionsTimeLimit, v98);

    v99 = [v81 objectForKeyedSubscript:@"MustPrefixMatchLength"];
    sub_100297C74(&self->_mustPrefixMatchLength, v99);

    v100 = [v81 objectForKeyedSubscript:@"MaxFingerprints"];
    sub_100297C74(&self->_maxFingerprints, v100);

    v101 = [v81 objectForKeyedSubscript:@"Debug"];
    v102 = sub_100296714(v101);

    if (!v102)
    {
LABEL_18:

      goto LABEL_19;
    }

    v103 = [v102 objectForKeyedSubscript:@"DelaySecs"];
    sub_100297C1C(&self->_debugDelaySecs, v103);

    v104 = [v102 objectForKeyedSubscript:@"ForceLanguageTag"];
    sub_100297D24(&self->_debugForceLanguageTag, v104);

    v105 = [v102 objectForKeyedSubscript:@"DisableMetricsLogging"];
    sub_100297B28(&self->_debugDisableMetricsLogging, v105);

    v106 = [v102 objectForKeyedSubscript:@"UseMadvise"];
    sub_100297B28(&self->_debugUseMadvise, v106);

    v107 = [v102 objectForKeyedSubscript:@"UIFeedback"];
    sub_100297B28(&self->_debugUIFeedback, v107);

    v108 = [v102 objectForKeyedSubscript:@"UseOldIndexInput"];
    sub_100297B28(&self->_debugUseOldIndexInput, v108);

    v109 = [v102 objectForKeyedSubscript:@"NSDataBufferSize"];
    sub_100297C74(&self->_debugNSDataBufferSize, v109);

    v110 = [v102 objectForKeyedSubscript:@"FakeResults"];
    v111 = objc_opt_class();
    v112 = sub_100297E04(v110, v111);
    if (v112)
    {
      v113 = v112;
      v114 = [NSMutableArray arrayWithArray:v112];

      if (v114)
      {
        v145 = v102;
        v115 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v114 count]);
        v116 = [v114 count];
        if (v116)
        {
          v117 = v116;
          for (i = 0; i != v117; ++i)
          {
            v119 = [v114 objectAtIndexedSubscript:i];
            v120 = objc_opt_class();
            v121 = sub_100297E04(v119, v120);
            v122 = v121;
            v123 = @"Illegal value";
            if (v121)
            {
              v123 = v121;
            }

            v124 = v123;

            v125 = [[CKContextResult alloc] initWithTitle:v124 query:v124 url:0 category:@"fakeResult"];
            [(NSArray *)v115 setObject:v125 atIndexedSubscript:i];
          }
        }

        debugFakeResults = self->_debugFakeResults;
        self->_debugFakeResults = v115;

        v102 = v145;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v114 = self->_debugFakeResults;
    self->_debugFakeResults = 0;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
  v127 = [v146 objectForKeyedSubscript:@"Blacklist"];
  v128 = sub_100296714(v127);

  if (v128)
  {
    v129 = [v128 objectForKeyedSubscript:@"Title"];
    v130 = sub_100297EFC(v129);

    if ([v130 count])
    {
      blacklistTitles = self->_blacklistTitles;
      if (!blacklistTitles)
      {
        v132 = objc_opt_new();
        v133 = self->_blacklistTitles;
        self->_blacklistTitles = v132;

        blacklistTitles = self->_blacklistTitles;
      }

      [(NSSet *)blacklistTitles addObjectsFromArray:v130];
    }

    v134 = [v128 objectForKeyedSubscript:@"Portrait"];
    v135 = sub_100297EFC(v134);

    if ([v135 count])
    {
      blacklistPortrait = self->_blacklistPortrait;
      if (!blacklistPortrait)
      {
        v137 = objc_opt_new();
        v138 = self->_blacklistPortrait;
        self->_blacklistPortrait = v137;

        blacklistPortrait = self->_blacklistPortrait;
      }

      [(NSSet *)blacklistPortrait addObjectsFromArray:v135];
    }

    v139 = [v128 objectForKeyedSubscript:@"RemoveAllOnMatch"];
    sub_100297B28(&self->_blacklistRemoveAllOnMatch, v139);
  }

  v140 = [v146 objectForKeyedSubscript:@"A/B Groups"];
  v141 = sub_100296714(v140);

  if ([v141 count])
  {
    v142 = [(ContextConfiguration *)self abGroupOfDictionary:v141];
    [(ContextConfiguration *)self _updateFromPlist:v142];
  }

  if (byte_100557148 == 1)
  {
    v143 = [v146 objectForKeyedSubscript:@"LowMemDevices"];
    v144 = sub_100296714(v143);

    if ([v144 count])
    {
      [(ContextConfiguration *)self _updateFromPlist:v144];
    }
  }

LABEL_36:

  _objc_release_x1();
}

+ (void)registerUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSNotificationCenter defaultCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100298020;
  v7[3] = &unk_100483A10;
  v8 = handlerCopy;
  v5 = handlerCopy;
  v6 = [v4 addObserverForName:@"contextConfigurationDidChange" object:0 queue:0 usingBlock:v7];
}

- (id)debugStatus
{
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  v5 = objc_opt_class();
  outCount = 0;
  v6 = class_copyPropertyList(v5, &outCount);
  v7 = +[NSMutableArray array];
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v9 = [NSString stringWithUTF8String:property_getName(v6[i])];
      [v7 addObject:v9];
    }
  }

  free(v6);
  [v7 sortUsingSelector:"compare:"];
  obj = v7;
  v10 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        v14 = v3;
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v21 + 1) + 8 * j);
        v16 = [(ContextConfiguration *)selfCopy valueForKey:v15];
        v17 = [NSString stringWithFormat:@"%@", v16];

        v19 = v15;
        v3 = v14;
        [v14 appendFormat:@"%@: %@\n", v19, v17];
      }

      v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v11);
  }

  [v3 appendFormat:@"isLowMemDevice: %i", byte_100557148];

  return v3;
}

@end