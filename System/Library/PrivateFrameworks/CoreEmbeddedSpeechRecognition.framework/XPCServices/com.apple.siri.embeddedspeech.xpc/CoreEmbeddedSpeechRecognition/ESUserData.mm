@interface ESUserData
+ (BOOL)_addVocabWord:(id)word vocabularyLabel:(id)label toVocabularyWords:(id)words;
+ (BOOL)_isEntityInExclusionList:(id)list bundleId:(id)id type:(id)type;
+ (id)_extractedLabelForLabel:(id)label;
+ (id)_fetchAppEntityMappingForBundleId:(id)id appEntityConfig:(id)config assistantSchemas:(id)schemas entityType:(id)type;
+ (id)_fetchExtractedEntityMappingsForEntities:(id)entities extractionVocabLabels:(id)labels originalInputString:(id)string;
+ (id)_normalize:(id)_normalize;
+ (id)_sanitizeTextForDatatypes:(id)datatypes detector:(id)detector;
+ (unint64_t)_totalContactComponentsInSet:(id)set;
+ (void)_applyContactLimitsToFirstPartyContacts:(id)contacts thirdPartyContacts:(id)partyContacts groupNames:(id)names;
+ (void)_limitVocabularyWords:(id)words toApplicableSpeechCategories:(id)categories;
- (BOOL)_processAppEntity:(id)entity vocabularyWords:(id)words;
- (ESUserData)initWithItems:(id)items applicableSpeechCategories:(id)categories;
- (NSSet)codepathIds;
- (id)_applyEntityCleanup:(id)cleanup enableEmojiCleanup:(BOOL)emojiCleanup enableSpecialCharacterCleanup:(BOOL)characterCleanup customRegex:(id)regex;
- (id)_applyEntityCleanupToNonAppEntity:(id)entity;
- (id)_textDatatypeDetector;
- (id)description;
- (void)_performEntityExtractionAndAddToVocabWords:(id)words vocabularyWords:(id)vocabularyWords extractionVocabLabels:(id)labels;
- (void)_populateUserDataFromItems:(id)items applicableSpeechCategories:(id)categories;
- (void)_processContactItem:(id)item contactWords:(id)words vocabularyWords:(id)vocabularyWords;
- (void)_processRadioItem:(id)item radioWords:(id)words;
- (void)_processSingleVocabItem:(unsigned __int16)item fieldContent:(id)content vocabularyLabel:(id)label vocabularyWords:(id)words;
- (void)_processVocabularyItem:(id)item vocabularyWords:(id)words;
- (void)logEntityCleanupConfig;
- (void)logEntityExtractionConfig;
@end

@implementation ESUserData

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  firstPartyContactWords = [(ESUserData *)self firstPartyContactWords];
  thirdPartyContactWords = [(ESUserData *)self thirdPartyContactWords];
  groupNameWords = [(ESUserData *)self groupNameWords];
  vocabularyWords = [(ESUserData *)self vocabularyWords];
  radioWords = [(ESUserData *)self radioWords];
  v10 = [NSString stringWithFormat:@"<%@: %p firstPartyContactWords: %@; thirdPartyContactWords: %@; groupNameWords: %@; vocabularyWords: %@; radioWords: %@>", v4, self, firstPartyContactWords, thirdPartyContactWords, groupNameWords, vocabularyWords, radioWords];;

  return v10;
}

- (NSSet)codepathIds
{
  v2 = [(NSMutableSet *)self->_codepathIds copy];

  return v2;
}

- (id)_textDatatypeDetector
{
  if ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableDatatypeCleanupFromNonAppEntities])
  {
    textDatatypeDetector = self->_textDatatypeDetector;
    if (!textDatatypeDetector)
    {
      v10 = 0;
      v4 = [NSDataDetector dataDetectorWithTypes:48 error:&v10];
      v5 = v10;
      v6 = self->_textDatatypeDetector;
      self->_textDatatypeDetector = v4;

      if (v5)
      {
        v7 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v12 = "[ESUserData _textDatatypeDetector]";
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Entity Cleanup: Failed to initialize NSDataDetector for NSTextCheckingTypes-based entity sanitization, skipping enrolling entities of impacted types.", buf, 0xCu);
        }
      }

      textDatatypeDetector = self->_textDatatypeDetector;
    }

    v8 = textDatatypeDetector;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_processVocabularyItem:(id)item vocabularyWords:(id)words
{
  wordsCopy = words;
  content = [item content];
  v13 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C228;
  v11[3] = &unk_100054DD0;
  v11[4] = self;
  v8 = wordsCopy;
  v12 = v8;
  [content recursivelyEnumerateFieldsWithError:&v13 usingBlock:v11];
  v9 = v13;
  if (v9)
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[ESUserData _processVocabularyItem:vocabularyWords:]";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error enumerating CCItemFields: %@", buf, 0x16u);
    }
  }
}

- (void)_processSingleVocabItem:(unsigned __int16)item fieldContent:(id)content vocabularyLabel:(id)label vocabularyWords:(id)words
{
  itemCopy = item;
  contentCopy = content;
  labelCopy = label;
  wordsCopy = words;
  if (itemCopy == 54389)
  {
    _textDatatypeDetector = [(ESUserData *)self _textDatatypeDetector];
    v14 = [ESUserData _sanitizeTextForDatatypes:contentCopy detector:_textDatatypeDetector];

    if (!v14)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = [(ESUserData *)self _applyEntityCleanupToNonAppEntity:contentCopy];
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  [ESUserData _addVocabWord:v14 vocabularyLabel:labelCopy toVocabularyWords:wordsCopy];
  if (itemCopy == 26515 || itemCopy == 54389 || itemCopy == 53485)
  {
    v15 = [ESUserData _extractedLabelForLabel:labelCopy];
    v17 = @"default";
    v18 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(ESUserData *)self _performEntityExtractionAndAddToVocabWords:v14 vocabularyWords:wordsCopy extractionVocabLabels:v16];
  }

LABEL_9:
}

- (void)_performEntityExtractionAndAddToVocabWords:(id)words vocabularyWords:(id)vocabularyWords extractionVocabLabels:(id)labels
{
  wordsCopy = words;
  vocabularyWordsCopy = vocabularyWords;
  labelsCopy = labels;
  if ((self->_extractedEntityBudget || [(CESRAppEntityConfig *)self->_appEntityConfig enableEntityExtraction]) && self->_entityTagger)
  {
    [(CESRSpeechProfileMetrics *)self->_metrics setIsExtractionSetupSuccessful:1];
    [(CESRSpeechProfileMetrics *)self->_metrics setNumEntitiesExtractionAttempted:[(CESRSpeechProfileMetrics *)self->_metrics numEntitiesExtractionAttempted]+ 1];
    v11 = [(_EAREntityTagger *)self->_entityTagger tagEntitiesWithTagNamesIn:wordsCopy];
    v12 = [ESUserData _fetchExtractedEntityMappingsForEntities:v11 extractionVocabLabels:labelsCopy originalInputString:wordsCopy];
    if ([v12 count])
    {
      [(NSMutableSet *)self->_codepathIds addObject:@"5d947328-fccf-4c7f-b772-a156ab177a0a"];
      -[CESRSpeechProfileMetrics setNumEntitiesExtracted:](self->_metrics, "setNumEntitiesExtracted:", -[CESRSpeechProfileMetrics numEntitiesExtracted](self->_metrics, "numEntitiesExtracted") + [v12 count]);
      [(CESRSpeechProfileMetrics *)self->_metrics setNumEntitiesContainingExtractions:[(CESRSpeechProfileMetrics *)self->_metrics numEntitiesContainingExtractions]+ 1];
    }

    if (self->_extractedEntityBudget)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000C714;
      v13[3] = &unk_100054DF8;
      v14 = vocabularyWordsCopy;
      selfCopy = self;
      [v12 enumerateKeysAndObjectsUsingBlock:v13];
    }
  }
}

- (BOOL)_processAppEntity:(id)entity vocabularyWords:(id)words
{
  wordsCopy = words;
  entityCopy = entity;
  content = [entityCopy content];
  displayRepresentation = [content displayRepresentation];
  title = [displayRepresentation title];

  v35 = content;
  typeIdentifier = [content typeIdentifier];
  sourceBundleId = [entityCopy sourceBundleId];

  if ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEmojiCleanupFromAppEntities])
  {
    entitiesExcludedFromEmojiCleanup = [(CESREntityCleanupConfig *)self->_entityCleanupConfig entitiesExcludedFromEmojiCleanup];
    v13 = [ESUserData _isEntityInExclusionList:entitiesExcludedFromEmojiCleanup bundleId:sourceBundleId type:typeIdentifier]^ 1;
  }

  else
  {
    v13 = 0;
  }

  v33 = typeIdentifier;
  if ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableSpecialCharacterCleanupFromAppEntities])
  {
    specialCharactersToRemove = [(CESREntityCleanupConfig *)self->_entityCleanupConfig specialCharactersToRemove];
    if ([specialCharactersToRemove count])
    {
      [(CESREntityCleanupConfig *)self->_entityCleanupConfig entitiesExcludedFromSpecialCharacterCleanup];
      v16 = v15 = wordsCopy;
      v17 = [ESUserData _isEntityInExclusionList:v16 bundleId:sourceBundleId type:typeIdentifier]^ 1;

      wordsCopy = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  applyRegex = [(CESREntityCleanupConfig *)self->_entityCleanupConfig applyRegex];
  v19 = [applyRegex valueForKey:sourceBundleId];

  v20 = wordsCopy;
  if (v19)
  {
    v21 = v33;
    v22 = [v19 valueForKey:v33];
  }

  else
  {
    v22 = 0;
    v21 = v33;
  }

  v23 = [(ESUserData *)self _applyEntityCleanup:title enableEmojiCleanup:v13 enableSpecialCharacterCleanup:v17 customRegex:v22, sourceBundleId];
  appEntityConfig = self->_appEntityConfig;
  assistantDefinedSchemas = [v35 assistantDefinedSchemas];
  v26 = [ESUserData _fetchAppEntityMappingForBundleId:v32 appEntityConfig:appEntityConfig assistantSchemas:assistantDefinedSchemas entityType:v21];

  primaryVocabLabel = [v26 primaryVocabLabel];
  v28 = v20;
  v29 = [ESUserData _addVocabWord:v23 vocabularyLabel:primaryVocabLabel toVocabularyWords:v20];

  if (v29)
  {
    extractionVocabLabels = [v26 extractionVocabLabels];
    [(ESUserData *)self _performEntityExtractionAndAddToVocabWords:v23 vocabularyWords:v20 extractionVocabLabels:extractionVocabLabels];

    v28 = v20;
  }

  return v29;
}

- (void)_processRadioItem:(id)item radioWords:(id)words
{
  wordsCopy = words;
  content = [item content];
  v13 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000CC70;
  v11[3] = &unk_100054DD0;
  v11[4] = self;
  v8 = wordsCopy;
  v12 = v8;
  [content recursivelyEnumerateFieldsWithError:&v13 usingBlock:v11];
  v9 = v13;

  if (v9)
  {
    v10 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[ESUserData _processRadioItem:radioWords:]";
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Error enumerating CCItemFields: %@", buf, 0x16u);
    }
  }
}

- (void)_processContactItem:(id)item contactWords:(id)words vocabularyWords:(id)vocabularyWords
{
  wordsCopy = words;
  itemCopy = item;
  v9 = +[NSMutableDictionary dictionary];
  content = [itemCopy content];
  v19 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CF04;
  v16[3] = &unk_100054DD0;
  v11 = v9;
  v17 = v11;
  selfCopy = self;
  [content recursivelyEnumerateFieldsWithError:&v19 usingBlock:v16];
  v12 = v19;

  LODWORD(content) = [itemCopy isBoosted];
  v13 = [ESUserDataContactWord alloc];
  if (content)
  {
    v14 = [(ESUserDataContactWord *)v13 initWithComponents:v11 frequency:2];
    [wordsCopy insertObject:v14 atIndex:0];
  }

  else
  {
    v14 = [(ESUserDataContactWord *)v13 initWithComponents:v11 frequency:1];
    [wordsCopy addObject:v14];
  }

  if (v12)
  {
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[ESUserData _processContactItem:contactWords:vocabularyWords:]";
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Error enumerating CCItemFields: %@", buf, 0x16u);
    }
  }
}

- (id)_applyEntityCleanupToNonAppEntity:(id)entity
{
  entityCleanupConfig = self->_entityCleanupConfig;
  entityCopy = entity;
  v6 = [(ESUserData *)self _applyEntityCleanup:entityCopy enableEmojiCleanup:[(CESREntityCleanupConfig *)entityCleanupConfig enableEmojiCleanupFromNonAppEntities] enableSpecialCharacterCleanup:[(CESREntityCleanupConfig *)self->_entityCleanupConfig enableSpecialCharacterCleanupFromNonAppEntities] customRegex:0];

  return v6;
}

- (id)_applyEntityCleanup:(id)cleanup enableEmojiCleanup:(BOOL)emojiCleanup enableSpecialCharacterCleanup:(BOOL)characterCleanup customRegex:(id)regex
{
  characterCleanupCopy = characterCleanup;
  emojiCleanupCopy = emojiCleanup;
  cleanupCopy = cleanup;
  regexCopy = regex;
  v12 = regexCopy;
  if (emojiCleanupCopy)
  {
    v13 = cleanupCopy;
LABEL_7:
    v15 = [(EAREntityCleanup *)self->_entityCleaner removeEmojis:cleanupCopy];
    v14 = cleanupCopy;
    if (v15)
    {
      v16 = [ESUserData _normalize:v15];
      v17 = [ESUserData _normalize:cleanupCopy];
      v18 = [v16 isEqualToString:v17];

      v14 = cleanupCopy;
      if ((v18 & 1) == 0)
      {
        [(NSMutableSet *)self->_codepathIds addObject:@"7e65308b-bea2-4201-9f02-4ae398303003"];
        v14 = cleanupCopy;
        if (emojiCleanupCopy)
        {
          [(CESRSpeechProfileMetrics *)self->_metrics setNumEntitiesContainingEmoji:[(CESRSpeechProfileMetrics *)self->_metrics numEntitiesContainingEmoji]+ 1];
          v14 = v15;
        }
      }
    }

    goto LABEL_12;
  }

  if (!regexCopy && !characterCleanupCopy && ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEntityCleanup]& 1) == 0)
  {
    v14 = cleanupCopy;
    goto LABEL_27;
  }

  v14 = cleanupCopy;
  if (([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEntityCleanup]& 1) != 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (characterCleanupCopy || [(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEntityCleanup])
  {
    entityCleaner = self->_entityCleaner;
    specialCharactersToRemove = [(CESREntityCleanupConfig *)self->_entityCleanupConfig specialCharactersToRemove];
    allObjects = [specialCharactersToRemove allObjects];
    v22 = [(EAREntityCleanup *)entityCleaner removeSpecialCharacters:allObjects fromString:v14];

    if (v22)
    {
      v23 = [ESUserData _normalize:v22];
      v24 = [ESUserData _normalize:v14];
      v25 = [v23 isEqualToString:v24];

      if ((v25 & 1) == 0)
      {
        [(NSMutableSet *)self->_codepathIds addObject:@"4d8033c8-b9f3-4168-ae10-e04ac69ae864"];
        if (characterCleanupCopy)
        {
          [(CESRSpeechProfileMetrics *)self->_metrics setNumEntitiesContainingSpecialCharacters:[(CESRSpeechProfileMetrics *)self->_metrics numEntitiesContainingSpecialCharacters]+ 1];
          v26 = [(EAREntityCleanup *)self->_entityCleaner removeDuplicateWhitespace:v22];

          v14 = v26;
        }
      }
    }
  }

  v27 = [ESUserData _normalize:v14];
  v28 = [ESUserData _normalize:cleanupCopy];
  v29 = [v27 isEqualToString:v28];

  if ((v29 & 1) == 0)
  {
    [(CESRSpeechProfileMetrics *)self->_metrics setNumEntitiesCleaned:[(CESRSpeechProfileMetrics *)self->_metrics numEntitiesCleaned]+ 1];
  }

  if (v12)
  {
    v30 = [(EAREntityCleanup *)self->_entityCleaner applyRegex:v12 toString:v14];
    v31 = v30;
    if (v30)
    {
      v32 = v30;

      v14 = v32;
    }

    else
    {
      v33 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        v35 = 136315394;
        v36 = "[ESUserData _applyEntityCleanup:enableEmojiCleanup:enableSpecialCharacterCleanup:customRegex:]";
        v37 = 2112;
        v38 = v12;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Entity Cleanup: Failed applying regex: %@", &v35, 0x16u);
      }
    }
  }

LABEL_27:

  return v14;
}

- (void)_populateUserDataFromItems:(id)items applicableSpeechCategories:(id)categories
{
  itemsCopy = items;
  categoriesCopy = categories;
  v57 = +[NSMutableOrderedSet orderedSet];
  v54 = +[NSMutableOrderedSet orderedSet];
  v53 = +[NSMutableOrderedSet orderedSet];
  v52 = +[NSMutableOrderedSet orderedSet];
  v59 = +[NSMutableDictionary dictionary];
  overallAppEntityLimit = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
  v6 = +[CESRSpeechProfileBuilder appEntityFeatureFlagEnabled];
  [(ESUserData *)self logEntityCleanupConfig];
  [(ESUserData *)self logEntityExtractionConfig];
  v7 = AFSiriLogContextSpeech;
  v8 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG);
  v55 = v6;
  if (v6)
  {
    if (v8)
    {
      *buf = 136315138;
      *&buf[4] = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
      v9 = "%s Siri/asr_speech_profile_app_entities feature flag enabled, App Entities will be consumed.";
LABEL_55:
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v9, buf, 0xCu);
    }
  }

  else if (v8)
  {
    *buf = 136315138;
    *&buf[4] = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
    v9 = "%s Siri/asr_speech_profile_app_entities feature flag disabled, App Entities will not be consumed.";
    goto LABEL_55;
  }

  v10 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [itemsCopy count];
    *buf = 136315650;
    *&buf[4] = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
    *&buf[12] = 2048;
    *&buf[14] = v12;
    *&buf[22] = 2112;
    v76 = categoriesCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Processing %tu items for speech categories: %@.", buf, 0x20u);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = itemsCopy;
  v13 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (!v13)
  {
    v56 = 0;
    goto LABEL_37;
  }

  v56 = 0;
  v14 = *v65;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v65 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v64 + 1) + 8 * i);
      v17 = objc_autoreleasePoolPush();
      content = [v16 content];
      itemType = [objc_opt_class() itemType];

      if (itemType > 61351)
      {
        switch(itemType)
        {
          case 61352:
            if ([categoriesCopy containsObject:@"\\NT-appcontact"])
            {
              [(ESUserData *)self _processContactItem:v16 contactWords:v54 vocabularyWords:v59];
            }

            break;
          case 63369:
            if ([categoriesCopy containsObject:@"\\NT-appcontact"])
            {
              [(ESUserData *)self _processContactItem:v16 contactWords:v53 vocabularyWords:v59];
            }

            break;
          case 61509:
LABEL_21:
            if ([categoriesCopy containsObject:@"\\NT-contact"])
            {
              [(ESUserData *)self _processContactItem:v16 contactWords:v57 vocabularyWords:v59];
            }

            break;
          default:
LABEL_25:
            [(ESUserData *)self _processVocabularyItem:v16 vocabularyWords:v59];
            break;
        }
      }

      else
      {
        switch(itemType)
        {
          case 19668:
            goto LABEL_21;
          case 47341:
            if (overallAppEntityLimit > 0)
            {
              v20 = v55;
            }

            else
            {
              v20 = 0;
            }

            if (v20 == 1)
            {
              v56 = (v56 + 1);
              overallAppEntityLimit -= [(ESUserData *)self _processAppEntity:v16 vocabularyWords:v59];
            }

            break;
          case 49066:
            if ([categoriesCopy containsObject:@"\\NT-playlist"])
            {
              [(ESUserData *)self _processRadioItem:v16 radioWords:v52];
            }

            break;
          default:
            goto LABEL_25;
        }
      }

      objc_autoreleasePoolPop(v17);
    }

    v13 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
  }

  while (v13);
LABEL_37:

  [ESUserData _limitVocabularyWords:v59 toApplicableSpeechCategories:categoriesCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v76) = 0;
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10000E2EC;
  v63[3] = &unk_100054D80;
  v63[4] = buf;
  [(NSDictionary *)v59 enumerateKeysAndObjectsUsingBlock:v63];
  v21 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    overallAppEntityLimit2 = [(CESRAppEntityConfig *)self->_appEntityConfig overallAppEntityLimit];
    *v68 = 136315650;
    v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
    v70 = 2048;
    v71 = v56;
    v72 = 2048;
    v73 = overallAppEntityLimit2 - overallAppEntityLimit;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Processed %ld App Entities, enrolled %ld.", v68, 0x20u);
  }

  v22 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v41 = [(NSOrderedSet *)v52 count];
    *v68 = 136315394;
    v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
    v70 = 2048;
    v71 = v41;
    _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s Processed %tu radio entities.", v68, 0x16u);
  }

  if ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEntityCleanup])
  {
    v23 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      codepathIds = [(ESUserData *)self codepathIds];
      v47 = [codepathIds containsObject:@"7e65308b-bea2-4201-9f02-4ae398303003"];
      v48 = @"DOES NOT HAVE";
      if (v47)
      {
        v48 = @"HAS";
      }

      *v68 = 136315394;
      v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
      v70 = 2112;
      v71 = v48;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: %@ at least one emoji.", v68, 0x16u);
    }

    v24 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      codepathIds2 = [(ESUserData *)self codepathIds];
      v50 = [codepathIds2 containsObject:@"4d8033c8-b9f3-4168-ae10-e04ac69ae864"];
      v51 = @"DOES NOT HAVE";
      if (v50)
      {
        v51 = @"HAS";
      }

      *v68 = 136315394;
      v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
      v70 = 2112;
      v71 = v51;
      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: %@ at least one special character.", v68, 0x16u);
    }
  }

  if ([(CESRAppEntityConfig *)self->_appEntityConfig enableEntityExtraction])
  {
    v25 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      codepathIds3 = [(ESUserData *)self codepathIds];
      v44 = [codepathIds3 containsObject:@"5d947328-fccf-4c7f-b772-a156ab177a0a"];
      v45 = @"DOES NOT HAVE";
      if (v44)
      {
        v45 = @"HAS";
      }

      *v68 = 136315394;
      v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
      v70 = 2112;
      v71 = v45;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: %@ at least one extracted entity.", v68, 0x16u);
    }
  }

  v26 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v42 = ([(CESRAppEntityConfig *)self->_appEntityConfig overallEntityExtractionLimit]- self->_extractedEntityBudget);
    *v68 = 136315394;
    v69 = "[ESUserData _populateUserDataFromItems:applicableSpeechCategories:]";
    v70 = 2048;
    v71 = v42;
    _os_log_debug_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "%s Enrolled %ld extracted entities.", v68, 0x16u);
  }

  [ESUserData _applyContactLimitsToFirstPartyContacts:v57 thirdPartyContacts:v54 groupNames:v53];
  v27 = [ESUserData _totalContactComponentsInSet:v57];
  v28 = [ESUserData _totalContactComponentsInSet:v54];
  v29 = [(NSOrderedSet *)v53 count];
  v30 = [(NSOrderedSet *)v52 count];
  [(CESRSpeechProfileMetrics *)self->_metrics setTotalNumEntitiesReceived:*(*&buf[8] + 24) + v28 + v27 + v29 + v30];
  firstPartyContactWords = self->_firstPartyContactWords;
  self->_firstPartyContactWords = v57;
  v32 = v57;

  thirdPartyContactWords = self->_thirdPartyContactWords;
  self->_thirdPartyContactWords = v54;
  v34 = v54;

  groupNameWords = self->_groupNameWords;
  self->_groupNameWords = v53;
  v36 = v53;

  radioWords = self->_radioWords;
  self->_radioWords = v52;
  v38 = v52;

  vocabularyWords = self->_vocabularyWords;
  self->_vocabularyWords = v59;

  _Block_object_dispose(buf, 8);
}

- (void)logEntityExtractionConfig
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    appEntityConfig = self->_appEntityConfig;
    v6 = v3;
    v15 = 136315394;
    v16 = "[ESUserData logEntityExtractionConfig]";
    v17 = 2048;
    overallEntityExtractionLimit = [(CESRAppEntityConfig *)appEntityConfig overallEntityExtractionLimit];
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: Entity Extraction Limit is %ld", &v15, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = self->_appEntityConfig;
    v8 = v3;
    enableEntityExtraction = [(CESRAppEntityConfig *)v7 enableEntityExtraction];
    v10 = @"IS";
    if (!enableEntityExtraction)
    {
      v10 = @"IS NOT";
    }

    v15 = 136315394;
    v16 = "[ESUserData logEntityExtractionConfig]";
    v17 = 2112;
    overallEntityExtractionLimit = v10;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: Extraction %@ enabled.", &v15, 0x16u);
  }

  [(CESRSpeechProfileMetrics *)self->_metrics setIsExtractionIngestionEnabled:[(CESRAppEntityConfig *)self->_appEntityConfig overallEntityExtractionLimit]> 0];
  v4 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    metrics = self->_metrics;
    v12 = v4;
    isExtractionIngestionEnabled = [(CESRSpeechProfileMetrics *)metrics isExtractionIngestionEnabled];
    v14 = @"IS NOT";
    if (isExtractionIngestionEnabled)
    {
      v14 = @"IS";
    }

    v15 = 136315394;
    v16 = "[ESUserData logEntityExtractionConfig]";
    v17 = 2112;
    overallEntityExtractionLimit = v14;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: Extraction Ingestion %@ enabled.", &v15, 0x16u);
  }
}

- (void)logEntityCleanupConfig
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    entityCleanupConfig = self->_entityCleanupConfig;
    v11 = v3;
    enableEmojiCleanupFromAppEntities = [(CESREntityCleanupConfig *)entityCleanupConfig enableEmojiCleanupFromAppEntities];
    v13 = @"IS NOT";
    if (enableEmojiCleanupFromAppEntities)
    {
      v13 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v13;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Emoji Removal %@ enabled for AppEntities", &v39, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v14 = self->_entityCleanupConfig;
    v15 = v3;
    enableEmojiCleanupFromNonAppEntities = [(CESREntityCleanupConfig *)v14 enableEmojiCleanupFromNonAppEntities];
    v17 = @"IS NOT";
    if (enableEmojiCleanupFromNonAppEntities)
    {
      v17 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v17;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Emoji Removal %@ enabled for Non-AppEntities", &v39, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v18 = self->_entityCleanupConfig;
    v19 = v3;
    enableSpecialCharacterCleanupFromAppEntities = [(CESREntityCleanupConfig *)v18 enableSpecialCharacterCleanupFromAppEntities];
    v21 = @"IS NOT";
    if (enableSpecialCharacterCleanupFromAppEntities)
    {
      v21 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v21;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Special Character Removal %@ enabled for AppEntities", &v39, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v22 = self->_entityCleanupConfig;
    v23 = v3;
    enableSpecialCharacterCleanupFromNonAppEntities = [(CESREntityCleanupConfig *)v22 enableSpecialCharacterCleanupFromNonAppEntities];
    v25 = @"IS NOT";
    if (enableSpecialCharacterCleanupFromNonAppEntities)
    {
      v25 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v25;
    _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Special Character Removal %@ enabled for Non-AppEntities", &v39, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v26 = self->_entityCleanupConfig;
    v27 = v3;
    applyRegex = [(CESREntityCleanupConfig *)v26 applyRegex];
    v29 = [applyRegex count];
    v30 = @"IS";
    if (!v29)
    {
      v30 = @"IS NOT";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v30;
    _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Apply Regex %@ enabled", &v39, 0x16u);

    v3 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v31 = self->_entityCleanupConfig;
    v32 = v3;
    enableEntityCleanup = [(CESREntityCleanupConfig *)v31 enableEntityCleanup];
    v34 = @"IS NOT";
    if (enableEntityCleanup)
    {
      v34 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v34;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Cleanup %@ enabled.", &v39, 0x16u);
  }

  if (([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEmojiCleanupFromAppEntities]& 1) != 0 || ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableEmojiCleanupFromNonAppEntities]& 1) != 0 || ([(CESREntityCleanupConfig *)self->_entityCleanupConfig enableSpecialCharacterCleanupFromAppEntities]& 1) != 0 || [(CESREntityCleanupConfig *)self->_entityCleanupConfig enableSpecialCharacterCleanupFromNonAppEntities])
  {
    metrics = self->_metrics;
    p_metrics = &self->_metrics;
    [(CESRSpeechProfileMetrics *)metrics setIsCleanupIngestionEnabled:1];
  }

  else
  {
    applyRegex2 = [(CESREntityCleanupConfig *)self->_entityCleanupConfig applyRegex];
    v8 = [applyRegex2 count] != 0;
    v9 = self->_metrics;
    p_metrics = &self->_metrics;
    [(CESRSpeechProfileMetrics *)v9 setIsCleanupIngestionEnabled:v8];
  }

  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v35 = *p_metrics;
    v36 = v6;
    isCleanupIngestionEnabled = [(CESRSpeechProfileMetrics *)v35 isCleanupIngestionEnabled];
    v38 = @"IS NOT";
    if (isCleanupIngestionEnabled)
    {
      v38 = @"IS";
    }

    v39 = 136315394;
    v40 = "[ESUserData logEntityCleanupConfig]";
    v41 = 2112;
    v42 = v38;
    _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "%s Entity Cleanup: Cleanup Ingestion %@ enabled.", &v39, 0x16u);
  }
}

- (ESUserData)initWithItems:(id)items applicableSpeechCategories:(id)categories
{
  itemsCopy = items;
  categoriesCopy = categories;
  v27.receiver = self;
  v27.super_class = ESUserData;
  v8 = [(ESUserData *)&v27 init];
  if (v8)
  {
    v9 = objc_alloc_init(CESRSpeechProfileConfig);
    appEntityConfig = [v9 appEntityConfig];
    appEntityConfig = v8->_appEntityConfig;
    v8->_appEntityConfig = appEntityConfig;

    directDonationConfig = [v9 directDonationConfig];
    directDonationConfig = v8->_directDonationConfig;
    v8->_directDonationConfig = directDonationConfig;

    entityCleanupConfig = [v9 entityCleanupConfig];
    entityCleanupConfig = v8->_entityCleanupConfig;
    v8->_entityCleanupConfig = entityCleanupConfig;

    textDatatypeDetector = v8->_textDatatypeDetector;
    v8->_textDatatypeDetector = 0;

    v17 = objc_alloc_init(EAREntityCleanup);
    entityCleaner = v8->_entityCleaner;
    v8->_entityCleaner = v17;

    v19 = objc_alloc_init(_EAREntityTagger);
    entityTagger = v8->_entityTagger;
    v8->_entityTagger = v19;

    v8->_extractedEntityBudget = [(CESRAppEntityConfig *)v8->_appEntityConfig overallEntityExtractionLimit];
    v21 = objc_alloc_init(NSMutableSet);
    codepathIds = v8->_codepathIds;
    v8->_codepathIds = v21;

    v23 = objc_alloc_init(CESRSpeechProfileMetrics);
    metrics = v8->_metrics;
    v8->_metrics = v23;

    [(ESUserData *)v8 _populateUserDataFromItems:itemsCopy applicableSpeechCategories:categoriesCopy];
    v25 = v8;
  }

  return v8;
}

+ (id)_sanitizeTextForDatatypes:(id)datatypes detector:(id)detector
{
  datatypesCopy = datatypes;
  detectorCopy = detector;
  if (detectorCopy)
  {
    v7 = [NSMutableString stringWithString:datatypesCopy];
    v31 = detectorCopy;
    v32 = datatypesCopy;
    [detectorCopy matchesInString:datatypesCopy options:0 range:{0, objc_msgSend(datatypesCopy, "length")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v43 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      v33 = *v41;
      v34 = v8;
      while (2)
      {
        v12 = 0;
        v35 = v10;
        do
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v40 + 1) + 8 * v12);
          if ([v13 resultType] == 16)
          {
            v14 = [NSSet setWithObjects:NSTextCheckingCityKey, NSTextCheckingCountryKey, NSTextCheckingStateKey, NSTextCheckingStreetKey, NSTextCheckingZIPKey, NSTextCheckingPhoneKey, 0];
            addressComponents = [v13 addressComponents];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v37;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v37 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v36 + 1) + 8 * i);
                  v22 = [addressComponents objectForKeyedSubscript:v21];

                  if (v22)
                  {
                    v23 = [addressComponents objectForKeyedSubscript:v21];
                    [v7 replaceOccurrencesOfString:v23 withString:@" " options:0 range:{0, objc_msgSend(v7, "length")}];
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v18);
            }

            v24 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
            v25 = +[NSCharacterSet punctuationCharacterSet];
            [v24 formUnionWithCharacterSet:v25];

            v26 = [v7 stringByTrimmingCharactersInSet:v24];
            [v7 setString:v26];

            v11 = v33;
            v8 = v34;
            v10 = v35;
          }

          else if ([v13 resultType] == 32)
          {

            v29 = 0;
            goto LABEL_27;
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if ([v7 length])
    {
      v27 = v7;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v7 = v28;
    v29 = v7;
LABEL_27:

    detectorCopy = v31;
    datatypesCopy = v32;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)_extractedLabelForLabel:(id)label
{
  labelCopy = label;
  v4 = [CESRVocabularyLabel alloc];
  lmeTemplate = [labelCopy lmeTemplate];
  lmeTag = [labelCopy lmeTag];

  v7 = [lmeTag stringByAppendingString:@"-extracted"];
  v8 = [v4 initWithLmeTemplate:lmeTemplate lmeTag:v7];

  return v8;
}

+ (BOOL)_addVocabWord:(id)word vocabularyLabel:(id)label toVocabularyWords:(id)words
{
  wordCopy = word;
  labelCopy = label;
  wordsCopy = words;
  v10 = wordsCopy;
  if (labelCopy)
  {
    v11 = [wordsCopy objectForKeyedSubscript:labelCopy];

    if (v11)
    {
      v12 = [v10 objectForKeyedSubscript:labelCopy];
      [v12 addObject:wordCopy];
    }

    else
    {
      v12 = [NSMutableOrderedSet orderedSetWithObject:wordCopy];
      [v10 setObject:v12 forKeyedSubscript:labelCopy];
    }
  }

  return labelCopy != 0;
}

+ (id)_fetchExtractedEntityMappingsForEntities:(id)entities extractionVocabLabels:(id)labels originalInputString:(id)string
{
  entitiesCopy = entities;
  labelsCopy = labels;
  stringCopy = string;
  v29 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = entitiesCopy;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v31;
    *&v12 = 136315394;
    v28 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        entityContent = [v16 entityContent];
        tagName = [v16 tagName];
        if ([entityContent isEqualToString:stringCopy])
        {
          v19 = AFSiriLogContextSpeech;
          if (!os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_15;
          }

          *buf = 136315138;
          v35 = "+[ESUserData _fetchExtractedEntityMappingsForEntities:extractionVocabLabels:originalInputString:]";
          v20 = v19;
          v21 = "%s Entity Extraction: Extracted entity equals original string. Skipping.";
          v22 = 12;
          goto LABEL_9;
        }

        v23 = [labelsCopy objectForKey:tagName];
        if (v23)
        {
          goto LABEL_14;
        }

        v23 = [labelsCopy objectForKey:@"default"];
        v24 = AFSiriLogContextSpeech;
        v25 = os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG);
        if (v23)
        {
          if (v25)
          {
            *buf = v28;
            v35 = "+[ESUserData _fetchExtractedEntityMappingsForEntities:extractionVocabLabels:originalInputString:]";
            v36 = 2112;
            v37 = tagName;
            _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%s Entity Extraction: No mapping found for extracted entity with tagName: %@. Using default mapping.", buf, 0x16u);
          }

LABEL_14:
          [v29 setObject:v23 forKey:entityContent];

          goto LABEL_15;
        }

        if (v25)
        {
          *buf = v28;
          v35 = "+[ESUserData _fetchExtractedEntityMappingsForEntities:extractionVocabLabels:originalInputString:]";
          v36 = 2112;
          v37 = tagName;
          v20 = v24;
          v21 = "%s Entity Extraction: No mapping found for extracted entity with tagName %@. Skipping.";
          v22 = 22;
LABEL_9:
          _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, v21, buf, v22);
        }

LABEL_15:

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v26 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      v13 = v26;
    }

    while (v26);
  }

  return v29;
}

+ (id)_fetchAppEntityMappingForBundleId:(id)id appEntityConfig:(id)config assistantSchemas:(id)schemas entityType:(id)type
{
  idCopy = id;
  configCopy = config;
  schemasCopy = schemas;
  typeCopy = type;
  if ([CESRUtilities isFirstPartyBundleId:idCopy])
  {
    v13 = [configCopy appEntityMappingForBundleId:idCopy appEntityName:typeCopy];
  }

  else
  {
    [NSSet setWithArray:schemasCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v24 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
LABEL_5:
      v18 = 0;
      while (1)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * v18) type];
        v19 = CCAssistantSchemaTypeAsString();
        v13 = [configCopy appEntityMappingForAssistantSchemaType:v19];

        if (v13)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v16)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v13 = 0;
    }
  }

  return v13;
}

+ (void)_applyContactLimitsToFirstPartyContacts:(id)contacts thirdPartyContacts:(id)partyContacts groupNames:(id)names
{
  contactsCopy = contacts;
  partyContactsCopy = partyContacts;
  namesCopy = names;
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [contactsCopy count]);
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [namesCopy count]);
  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [partyContactsCopy count]);
  if ([namesCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [namesCopy objectAtIndex:v13];
      [v11 addObject:v14];

      v15 = v13 + 1;
      v16 = [namesCopy count];
      if (v13 > 0x62)
      {
        break;
      }

      ++v13;
    }

    while (v15 < v16);
    v17 = 5000 - v15;
  }

  else
  {
    v17 = 5000;
  }

  if ([contactsCopy count])
  {
    v18 = 0;
    while (v17)
    {
      --v17;
      v19 = [contactsCopy objectAtIndex:v18];
      [v10 addObject:v19];

      if (++v18 >= [contactsCopy count])
      {
        goto LABEL_13;
      }
    }

    v17 = -1;
  }

LABEL_13:
  if ([partyContactsCopy count])
  {
    v20 = 0;
    v21 = v17 & (v17 >> 63);
    v35 = v21 - 1;
    v22 = v17 - v21;
    while (v20 != v22)
    {
      --v17;
      v23 = [partyContactsCopy objectAtIndex:v20];
      [v12 addObject:v23];

      if (++v20 >= [partyContactsCopy count])
      {
        goto LABEL_19;
      }
    }

    v17 = v35;
  }

LABEL_19:
  if ([namesCopy count] >= 0x65 && v17 >= 1)
  {
    v24 = 101;
    do
    {
      v25 = [namesCopy objectAtIndex:v24 - 1];
      [v11 addObject:v25];

      if (v24 >= [namesCopy count])
      {
        break;
      }

      ++v24;
    }

    while (v17-- > 1);
  }

  v27 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    v28 = v27;
    *buf = 136315650;
    v37 = "+[ESUserData _applyContactLimitsToFirstPartyContacts:thirdPartyContacts:groupNames:]";
    v38 = 2048;
    v39 = [contactsCopy count];
    v40 = 2048;
    v41 = [v10 count];
    _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%s Processed first party contacts: %tu (accepted=%tu)", buf, 0x20u);

    v27 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v29 = v27;
    v30 = [partyContactsCopy count];
    v31 = [v12 count];
    *buf = 136315650;
    v37 = "+[ESUserData _applyContactLimitsToFirstPartyContacts:thirdPartyContacts:groupNames:]";
    v38 = 2048;
    v39 = v30;
    v40 = 2048;
    v41 = v31;
    _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%s Processed third party contacts: %tu (accepted=%tu)", buf, 0x20u);

    v27 = AFSiriLogContextSpeech;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v32 = v27;
    v33 = [namesCopy count];
    v34 = [v11 count];
    *buf = 136315650;
    v37 = "+[ESUserData _applyContactLimitsToFirstPartyContacts:thirdPartyContacts:groupNames:]";
    v38 = 2048;
    v39 = v33;
    v40 = 2048;
    v41 = v34;
    _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "%s Processed group names: %tu (accepted=%tu)", buf, 0x20u);
  }

  [contactsCopy removeAllObjects];
  [contactsCopy addObjectsFromArray:v10];
  [partyContactsCopy removeAllObjects];
  [partyContactsCopy addObjectsFromArray:v12];
  [namesCopy removeAllObjects];
  [namesCopy addObjectsFromArray:v11];
}

+ (id)_normalize:(id)_normalize
{
  precomposedStringWithCanonicalMapping = [_normalize precomposedStringWithCanonicalMapping];
  v4 = [precomposedStringWithCanonicalMapping stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v4;
}

+ (BOOL)_isEntityInExclusionList:(id)list bundleId:(id)id type:(id)type
{
  typeCopy = type;
  v8 = [list objectForKey:id];
  v9 = v8;
  v10 = v8 && (![v8 count] || typeCopy && (objc_msgSend(v9, "containsObject:", typeCopy) & 1) != 0);

  return v10;
}

+ (void)_limitVocabularyWords:(id)words toApplicableSpeechCategories:(id)categories
{
  wordsCopy = words;
  categoriesCopy = categories;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [wordsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        lmeTemplate = [v12 lmeTemplate];
        v14 = [categoriesCopy containsObject:lmeTemplate];

        if ((v14 & 1) == 0)
        {
          [wordsCopy removeObjectForKey:v12];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (unint64_t)_totalContactComponentsInSet:(id)set
{
  setCopy = set;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010520;
  v6[3] = &unk_100054DA8;
  v6[4] = &v7;
  [setCopy enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end