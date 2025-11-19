@interface ESSpeechProfileBuilderConnection
+ (BOOL)_isProfileValidFromVersionsMap:(id)a3;
+ (id)userProfileWithAssetConfig:(id)a3 modelOverridePath:(id)a4 overrides:(id)a5 isJit:(BOOL)a6 returningFoundPath:(id *)a7 error:(id *)a8;
+ (void)_addContactWords:(id)a3 toSpeechProfile:(id)a4 forSpeechCategory:(id)a5;
+ (void)_addUserData:(id)a3 toSpeechProfile:(id)a4 addedCategoriesOut:(id)a5;
- (ESSpeechProfileBuilderConnection)initWithXPCConnection:(id)a3;
- (id)_speechProfileWithError:(id *)a3;
- (void)addCodepathId:(id)a3 completion:(id)a4;
- (void)addVocabularyItems:(id)a3 sourceBundleIds:(id)a4 isBoosted:(id)a5 completion:(id)a6;
- (void)beginWithCategoriesAndVersions:(id)a3 bundleId:(id)a4 completion:(id)a5;
- (void)cancelWithCompletion:(id)a3;
- (void)dealloc;
- (void)finishAndSaveProfile:(BOOL)a3 completion:(id)a4;
- (void)getCodepathIdsWithCompletion:(id)a3;
- (void)getVersionForCategory:(id)a3 completion:(id)a4;
- (void)removeCodepathId:(id)a3 completion:(id)a4;
- (void)setProfileConfigWithLanguage:(id)a3 profileDir:(id)a4 userId:(id)a5 personaId:(id)a6 dataProtectionClass:(int64_t)a7 isInUserVault:(BOOL)a8 completion:(id)a9;
@end

@implementation ESSpeechProfileBuilderConnection

- (id)_speechProfileWithError:(id *)a3
{
  p_profile = &self->_profile;
  profile = self->_profile;
  if (profile)
  {
    v5 = profile;
    goto LABEL_30;
  }

  assetConfig = self->_assetConfig;
  v32 = 0;
  v9 = [ESSpeechProfileBuilderConnection userProfileWithAssetConfig:assetConfig modelOverridePath:0 overrides:0 isJit:0 returningFoundPath:0 error:&v32];
  v10 = v32;
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = *p_profile;
    *p_profile = 0;

    if (a3)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      [v14 setObject:@"Failed to load speech assets" forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
      if (v11)
      {
        [v14 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:9];
      v15 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:9 userInfo:v14];
      *a3 = v15;
    }

    v16 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "[ESSpeechProfileBuilderConnection _speechProfileWithError:]";
      v37 = 2112;
      v38 = v11;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Could not create EAR profile builder: %@", buf, 0x16u);
    }

    v5 = 0;
    goto LABEL_29;
  }

  v17 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "[ESSpeechProfileBuilderConnection _speechProfileWithError:]";
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s Created _EARProfileBuilder from asset config.", buf, 0xCu);
  }

  v18 = [CESRSpeechProfileBuilder profileFilePathFromBasePath:self->_baseDirectory language:self->_language userId:self->_userId];
  v19 = +[NSFileManager defaultManager];
  v20 = [v19 fileExistsAtPath:v18];

  if (v20)
  {
    [v9 readUserProfileWithPath:v18 reuseProfile:1];
    v21 = [v9 templateToVersion];
    v22 = [v21 mutableCopy];

    if (![ESSpeechProfileBuilderConnection _isProfileValidFromVersionsMap:v22])
    {
      if (a3)
      {
        v33 = NSLocalizedFailureReasonErrorKey;
        v34 = @"Failed to read the existing speech profile";
        v28 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:6];
        v29 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:6 userInfo:v28];
        *a3 = v29;
      }

      v5 = 0;
      goto LABEL_28;
    }

    v23 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v36 = "[ESSpeechProfileBuilderConnection _speechProfileWithError:]";
      v37 = 2112;
      v38 = v18;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "%s Existing profile found at %@", buf, 0x16u);
    }

    [v22 addEntriesFromDictionary:self->_committedCategoryToVersion];
    objc_storeStrong(&self->_committedCategoryToVersion, v22);
    v24 = [v9 experimentIds];
    if (v24)
    {
      v25 = [v9 experimentIds];
      v26 = [v25 mutableCopy];
      codepathIds = self->_codepathIds;
      self->_codepathIds = v26;
    }

    else
    {
      v30 = self->_codepathIds;
      v25 = self->_codepathIds;
      self->_codepathIds = v30;
    }
  }

  objc_storeStrong(p_profile, v9);
  v5 = *p_profile;
LABEL_28:

LABEL_29:
LABEL_30:

  return v5;
}

- (void)finishAndSaveProfile:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v52 = a4;
  v53 = self;
  stagedCategoryToVersion = self->_stagedCategoryToVersion;
  self = (self + 24);
  committedItems = self->_committedItems;
  v8 = [(NSMutableDictionary *)stagedCategoryToVersion allKeys];
  [(NSMutableDictionary *)committedItems addObjectsFromArray:v8];

  stagedItems = v53->_stagedItems;
  v10 = v53->_committedItems;
  v11 = [(objc_class *)self->super.isa allKeys];
  v12 = [NSSet setWithArray:v11];
  [(NSMutableDictionary *)v10 setObject:stagedItems forKey:v12];

  [(NSMutableDictionary *)v53->_committedCategoryToVersion addEntriesFromDictionary:self->super.isa];
  v13 = v53->_stagedItems;
  v53->_stagedItems = 0;

  isa = self->super.isa;
  self->super.isa = 0;

  if (!v4)
  {
LABEL_48:
    v52[2](v52, 1, 0);
    goto LABEL_49;
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_1000085B4;
  v70 = sub_1000085C4;
  v71 = +[NSMutableArray array];
  v15 = v53->_committedItems;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000085CC;
  v65[3] = &unk_100054C48;
  v65[4] = &v66;
  [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v65];
  [(NSMutableDictionary *)v53->_committedItems removeAllObjects];
  v64 = 0;
  v16 = [(ESSpeechProfileBuilderConnection *)v53 _speechProfileWithError:&v64];
  v17 = v64;
  v18 = v17;
  if (!v16 || v17)
  {
    (v52)[2](v52, 0, v17);

    _Block_object_dispose(&v66, 8);
  }

  else
  {
    [v16 setTemplateToVersion:v53->_committedCategoryToVersion];
    if (v53->_dataProtectionClass == 6)
    {
      [v16 setUserId:v53->_userId];
    }

    else
    {
      [v16 setUserId:&stru_100055AC8];
    }

    [v16 removeAllWords];
    v19 = +[NSMutableSet set];
    v20 = objc_alloc_init(CESRSpeechProfileMetrics);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v21 = v67[5];
    v22 = [v21 countByEnumeratingWithState:&v60 objects:v81 count:16];
    if (v22)
    {
      v23 = *v61;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v61 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v60 + 1) + 8 * i);
          [ESSpeechProfileBuilderConnection _addUserData:v25 toSpeechProfile:v16 addedCategoriesOut:v19];
          codepathIds = v53->_codepathIds;
          v27 = [v25 codepathIds];
          [(NSMutableSet *)codepathIds unionSet:v27];

          v28 = [v25 metrics];
          v29 = v28;
          if (v28)
          {
            [v20 setTotalNumEntitiesReceived:{objc_msgSend(v20, "totalNumEntitiesReceived") + objc_msgSend(v28, "totalNumEntitiesReceived")}];
            if ([v20 isCleanupIngestionEnabled])
            {
              v30 = 1;
            }

            else
            {
              v30 = [v29 isCleanupIngestionEnabled];
            }

            [v20 setIsCleanupIngestionEnabled:v30];
            [v20 setNumEntitiesContainingEmoji:{objc_msgSend(v20, "numEntitiesContainingEmoji") + objc_msgSend(v29, "numEntitiesContainingEmoji")}];
            [v20 setNumEntitiesContainingSpecialCharacters:{objc_msgSend(v20, "numEntitiesContainingSpecialCharacters") + objc_msgSend(v29, "numEntitiesContainingSpecialCharacters")}];
            [v20 setNumEntitiesCleaned:{objc_msgSend(v20, "numEntitiesCleaned") + objc_msgSend(v29, "numEntitiesCleaned")}];
            if ([v20 isExtractionIngestionEnabled])
            {
              v31 = 1;
            }

            else
            {
              v31 = [v29 isExtractionIngestionEnabled];
            }

            [v20 setIsExtractionIngestionEnabled:v31];
            if ([v20 isExtractionSetupSuccessful])
            {
              v32 = 1;
            }

            else
            {
              v32 = [v29 isExtractionSetupSuccessful];
            }

            [v20 setIsExtractionSetupSuccessful:v32];
            [v20 setNumEntitiesExtractionAttempted:{objc_msgSend(v20, "numEntitiesExtractionAttempted") + objc_msgSend(v29, "numEntitiesExtractionAttempted")}];
            [v20 setNumEntitiesContainingExtractions:{objc_msgSend(v20, "numEntitiesContainingExtractions") + objc_msgSend(v29, "numEntitiesContainingExtractions")}];
            [v20 setNumEntitiesExtracted:{objc_msgSend(v20, "numEntitiesExtracted") + objc_msgSend(v29, "numEntitiesExtracted")}];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v60 objects:v81 count:16];
      }

      while (v22);
    }

    [v16 setExperimentIds:v53->_codepathIds];
    [v16 signalEndOfUserData];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v33 = v53->_seenCategories;
    v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
    if (v34)
    {
      v35 = *v57;
      do
      {
        for (j = 0; j != v34; j = j + 1)
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v56 + 1) + 8 * j);
          if (([v19 containsObject:v37] & 1) == 0)
          {
            [v16 removeLmeDataForTemplateName:v37];
          }
        }

        v34 = [(NSMutableSet *)v33 countByEnumeratingWithState:&v56 objects:v80 count:16];
      }

      while (v34);
    }

    v55 = 0;
    v38 = [CESRSpeechProfileBuilder profileFilePathFromBasePath:v53->_baseDirectory language:v53->_language userId:v53->_userId];
    v39 = [v38 stringByDeletingLastPathComponent];
    v40 = +[NSFileManager defaultManager];
    [v40 createDirectoryAtPath:v39 withIntermediateDirectories:1 attributes:0 error:0];

    dataProtectionClass = v53->_dataProtectionClass;
    v54 = 0;
    v42 = [v16 writeProfileToFile:v38 protectionClass:dataProtectionClass length:&v55 error:&v54];
    v43 = v54;
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      v45 = qword_100061630;
      if (os_log_type_enabled(qword_100061630, OS_LOG_TYPE_DEFAULT))
      {
        language = v53->_language;
        *buf = 136315907;
        v73 = "[ESSpeechProfileBuilderConnection finishAndSaveProfile:completion:]";
        v74 = 2114;
        v75 = language;
        v76 = 2048;
        v77 = v55;
        v78 = 2113;
        v79 = v38;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s Speech profile for %{public}@ updated successfully. Wrote %lu bytes to %{private}@", buf, 0x2Au);
      }

      [(CESRSpeechProfileSelfHelper *)v53->_selfHelper logASRSpeechProfileUpdateEndedWithUserDataMetrics:v20];
      selfHelper = v53->_selfHelper;
      v53->_selfHelper = 0;

      [(NSMutableSet *)v53->_seenCategories removeAllObjects];
      transaction = v53->_transaction;
      v53->_transaction = 0;
    }

    else
    {
      v49 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v73 = "[ESSpeechProfileBuilderConnection finishAndSaveProfile:completion:]";
        v74 = 2112;
        v75 = @"Failed to write profile";
        v76 = 2112;
        v77 = v43;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "%s %@: %@", buf, 0x20u);
      }

      v50 = objc_alloc_init(NSMutableDictionary);
      transaction = v50;
      if (v43)
      {
        [(OS_os_transaction *)v50 setObject:v43 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      [(OS_os_transaction *)transaction setObject:@"Failed to write profile" forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
      [(CESRSpeechProfileSelfHelper *)v53->_selfHelper logASRSpeechProfileUpdateFailedWithReason:7];
      v51 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:7 userInfo:transaction];
      (v52)[2](v52, 0, v51);
    }

    _Block_object_dispose(&v66, 8);
    if (v44)
    {
      goto LABEL_48;
    }
  }

LABEL_49:
}

- (void)cancelWithCompletion:(id)a3
{
  stagedItems = self->_stagedItems;
  self->_stagedItems = 0;
  v6 = a3;

  stagedCategoryToVersion = self->_stagedCategoryToVersion;
  self->_stagedCategoryToVersion = 0;

  v6[2](v6, 1, 0);
}

- (void)addVocabularyItems:(id)a3 sourceBundleIds:(id)a4 isBoosted:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_stagedItems && self->_stagedCategoryToVersion)
  {
    v14 = [v10 count];
    if (v14 == [v12 count] && (v15 = objc_msgSend(v10, "count"), v15 == objc_msgSend(v11, "count")))
    {
      v16 = [v10 count];
      if (v16)
      {
        v17 = v16;
        for (i = 0; i != v17; ++i)
        {
          v19 = [v10 objectAtIndex:i];
          v20 = [v12 objectAtIndexedSubscript:i];
          [v19 setIsBoosted:{objc_msgSend(v20, "BOOLValue")}];

          v21 = [v11 objectAtIndexedSubscript:i];
          [v19 setSourceBundleId:v21];
        }
      }
    }

    else
    {
      v25 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v29 = "[ESSpeechProfileBuilderConnection addVocabularyItems:sourceBundleIds:isBoosted:completion:]";
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Internal inconsistency error: CCSharedItems list and corresponding isBoosted BOOLeans list are out of sync. This batch of items will not be boosted.", buf, 0xCu);
      }

      v12 = 0;
    }

    [(NSMutableArray *)self->_stagedItems addObjectsFromArray:v10];
    v13[2](v13, 1, 0);
  }

  else
  {
    v22 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[ESSpeechProfileBuilderConnection addVocabularyItems:sourceBundleIds:isBoosted:completion:]";
      v30 = 2112;
      v31 = @"Add called before categories have been set with Begin";
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s %@.", buf, 0x16u);
    }

    v26 = NSLocalizedFailureReasonErrorKey;
    v27 = @"Add called before categories have been set with Begin";
    v23 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:3];
    v24 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:3 userInfo:v23];
    (v13)[2](v13, 0, v24);
  }
}

- (void)beginWithCategoriesAndVersions:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateStarted];
  v35 = 0;
  v9 = [(ESSpeechProfileBuilderConnection *)self _speechProfileWithError:&v35];
  v10 = v35;
  v11 = v10;
  if (!v9 || v10)
  {
    v8[2](v8, 0, v10);
    goto LABEL_10;
  }

  if (self->_stagedItems || self->_stagedCategoryToVersion)
  {
    v12 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[ESSpeechProfileBuilderConnection beginWithCategoriesAndVersions:bundleId:completion:]";
      v45 = 2112;
      v46 = @"Begin called while there are already active categories.";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v41 = NSLocalizedFailureReasonErrorKey;
    v42 = @"Begin called while there are already active categories.";
    v13 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:3];
    v14 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:3 userInfo:v13];
    v8[2](v8, 0, v14);

    goto LABEL_8;
  }

  v13 = +[CESRSpeechProfileBuilder supportedCategories];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [v7 allKeys];
  v15 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = *v32;
  while (2)
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v31 + 1) + 8 * i);
      if ([(NSMutableSet *)self->_seenCategories containsObject:v19])
      {
        v24 = [NSString stringWithFormat:@"Speech category %@ has already been committed with a call to Begin followed by Finish", v19];
        v25 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v44 = "[ESSpeechProfileBuilderConnection beginWithCategoriesAndVersions:bundleId:completion:]";
          v45 = 2112;
          v46 = v24;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s %@.", buf, 0x16u);
        }

        v38 = NSLocalizedFailureReasonErrorKey;
        v39 = v24;
        v26 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:3];
        v27 = 3;
        goto LABEL_27;
      }

      if (([v13 containsObject:v19] & 1) == 0)
      {
        v24 = [NSString stringWithFormat:@"Speech category %@ is unsupported", v19];
        v28 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v44 = "[ESSpeechProfileBuilderConnection beginWithCategoriesAndVersions:bundleId:completion:]";
          v45 = 2112;
          v46 = v24;
          _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s %@.", buf, 0x16u);
        }

        v36 = NSLocalizedFailureReasonErrorKey;
        v37 = v24;
        v26 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        [(CESRSpeechProfileSelfHelper *)self->_selfHelper logASRSpeechProfileUpdateFailedWithReason:5];
        v27 = 5;
LABEL_27:
        v29 = [NSError errorWithDomain:@"CESRProfileErrorDomain" code:v27 userInfo:v26];
        v8[2](v8, 0, v29);

        goto LABEL_8;
      }
    }

    v16 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v20 = objc_alloc_init(NSMutableArray);
  stagedItems = self->_stagedItems;
  self->_stagedItems = v20;

  v22 = objc_alloc_init(NSMutableDictionary);
  stagedCategoryToVersion = self->_stagedCategoryToVersion;
  self->_stagedCategoryToVersion = v22;

  [(NSMutableDictionary *)self->_stagedCategoryToVersion addEntriesFromDictionary:v7];
  v8[2](v8, 1, 0);
LABEL_8:

LABEL_10:
}

- (void)getVersionForCategory:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v8 = [(ESSpeechProfileBuilderConnection *)self _speechProfileWithError:&v13];
  v9 = v13;
  v10 = v9;
  if (!v8 || v9)
  {
    v7[2](v7, -1, v9);
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_committedCategoryToVersion objectForKey:v6];

    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_committedCategoryToVersion objectForKey:v6];
      v7[2](v7, [v12 longLongValue], 0);
    }

    else
    {
      v7[2](v7, -1, 0);
    }
  }
}

- (void)getCodepathIdsWithCompletion:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [(ESSpeechProfileBuilderConnection *)self _speechProfileWithError:&v8];
  v6 = v8;
  v7 = v6;
  if (!v5 || v6)
  {
    v4[2](v4, 0, v6);
  }

  else
  {
    (v4)[2](v4, self->_codepathIds, 0);
  }
}

- (void)addCodepathId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(ESSpeechProfileBuilderConnection *)self _speechProfileWithError:&v11];
  v9 = v11;
  v10 = v9;
  if (!v8 || v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    [(NSMutableSet *)self->_codepathIds addObject:v6];
    v7[2](v7, 1, 0);
  }
}

- (void)removeCodepathId:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(ESSpeechProfileBuilderConnection *)self _speechProfileWithError:&v11];
  v9 = v11;
  v10 = v9;
  if (!v8 || v9)
  {
    v7[2](v7, 0, v9);
  }

  else
  {
    [(NSMutableSet *)self->_codepathIds removeObject:v6];
    v7[2](v7, 1, 0);
  }
}

- (void)setProfileConfigWithLanguage:(id)a3 profileDir:(id)a4 userId:(id)a5 personaId:(id)a6 dataProtectionClass:(int64_t)a7 isInUserVault:(BOOL)a8 completion:(id)a9
{
  v24 = a3;
  v23 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  objc_storeStrong(&self->_language, a3);
  objc_storeStrong(&self->_baseDirectory, a4);
  objc_storeStrong(&self->_userId, a5);
  objc_storeStrong(&self->_personaId, a6);
  self->_dataProtectionClass = a7;
  self->_isInUserVault = a8;
  v19 = [[SFEntitledAssetConfig alloc] initWithLanguage:self->_language assetType:3];
  assetConfig = self->_assetConfig;
  self->_assetConfig = v19;

  if (self->_personaId && self->_isInUserVault)
  {
    v21 = [[SFSpeechProfileContainer alloc] initWithPersona:{self->_personaId, v23}];
    container = self->_container;
    self->_container = v21;
  }

  v18[2](v18, 1, 0);
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ESSpeechProfileBuilderConnection;
  [(ESSpeechProfileBuilderConnection *)&v3 dealloc];
}

- (ESSpeechProfileBuilderConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = ESSpeechProfileBuilderConnection;
  v6 = [(ESSpeechProfileBuilderConnection *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = os_transaction_create();
    transaction = v7->_transaction;
    v7->_transaction = v8;

    stagedItems = v7->_stagedItems;
    v7->_stagedItems = 0;

    v11 = objc_alloc_init(NSMutableDictionary);
    committedItems = v7->_committedItems;
    v7->_committedItems = v11;

    stagedCategoryToVersion = v7->_stagedCategoryToVersion;
    v7->_stagedCategoryToVersion = 0;

    v14 = objc_alloc_init(NSMutableDictionary);
    committedCategoryToVersion = v7->_committedCategoryToVersion;
    v7->_committedCategoryToVersion = v14;

    v16 = objc_alloc_init(NSMutableSet);
    seenCategories = v7->_seenCategories;
    v7->_seenCategories = v16;

    v18 = objc_alloc_init(NSMutableSet);
    codepathIds = v7->_codepathIds;
    v7->_codepathIds = v18;

    v20 = objc_alloc_init(CESRSpeechProfileSelfHelper);
    selfHelper = v7->_selfHelper;
    v7->_selfHelper = v20;

    objc_initWeak(&location, v7);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100009680;
    v27[3] = &unk_100054F38;
    objc_copyWeak(&v28, &location);
    v22 = objc_retainBlock(v27);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000097A0;
    v25[3] = &unk_100054F38;
    objc_copyWeak(&v26, &location);
    v23 = objc_retainBlock(v25);
    [v5 setInterruptionHandler:v22];
    [v5 setInvalidationHandler:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (void)_addContactWords:(id)a3 toSpeechProfile:(id)a4 forSpeechCategory:(id)a5
{
  v7 = a3;
  v25 = a4;
  v24 = a5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = +[NSMutableArray array];
        v13 = [v11 components];
        v14 = [v13 mutableCopy];

        v15 = [v14 objectForKeyedSubscript:@"\\contact-first-phonetic"];
        v16 = [v14 objectForKeyedSubscript:@"\\contact-last-phonetic"];
        v17 = [v14 objectForKeyedSubscript:@"\\contact-middle-phonetic"];
        if (v15)
        {
          [v14 removeObjectForKey:@"\\contact-first-phonetic"];
        }

        if (v16)
        {
          [v14 removeObjectForKey:@"\\contact-last-phonetic"];
        }

        if (v17)
        {
          [v14 removeObjectForKey:@"\\contact-middle-phonetic"];
        }

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100009B64;
        v26[3] = &unk_100054C98;
        v27 = v15;
        v28 = v16;
        v29 = v17;
        v30 = v11;
        v31 = v12;
        v18 = v15;
        v19 = v16;
        v20 = v17;
        v21 = v12;
        [v14 enumerateKeysAndObjectsUsingBlock:v26];
        [v25 addWordWithParts:v21 templateName:v24];

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }
}

+ (void)_addUserData:(id)a3 toSpeechProfile:(id)a4 addedCategoriesOut:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 groupNameWords];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v7 groupNameWords];
    [ESSpeechProfileBuilderConnection _addContactWords:v12 toSpeechProfile:v8 forSpeechCategory:@"\\NT-appcontact"];

    [v9 addObject:@"\\NT-appcontact"];
  }

  v13 = [v7 firstPartyContactWords];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v7 firstPartyContactWords];
    [ESSpeechProfileBuilderConnection _addContactWords:v15 toSpeechProfile:v8 forSpeechCategory:@"\\NT-contact"];

    [v9 addObject:@"\\NT-contact"];
  }

  v16 = [v7 thirdPartyContactWords];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [v7 thirdPartyContactWords];
    [ESSpeechProfileBuilderConnection _addContactWords:v18 toSpeechProfile:v8 forSpeechCategory:@"\\NT-appcontact"];

    [v9 addObject:@"\\NT-appcontact"];
  }

  v36 = v7;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v7 radioWords];
  v19 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        v23 = v8;
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v41 + 1) + 8 * i);
        v25 = [_EARWordPart alloc];
        v26 = +[NSSet set];
        v27 = [v25 initWithOrthography:v24 pronunciations:v26 tagName:@"\\radiostation-callSign-first" frequency:1];

        v49 = v27;
        v28 = [NSArray arrayWithObjects:&v49 count:1];
        v8 = v23;
        [v23 addWordWithParts:v28 templateName:@"\\NT-playlist"];

        v29 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v46 = "+[ESSpeechProfileBuilderConnection _addUserData:toSpeechProfile:addedCategoriesOut:]";
          v47 = 2112;
          v48 = v24;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s Adding #radio vocab %@ to speech profile", buf, 0x16u);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v20);
  }

  v30 = [v36 radioWords];
  v31 = [v30 count];

  if (v31)
  {
    [v35 addObject:@"\\NT-playlist"];
  }

  v32 = [v36 vocabularyWords];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10000A09C;
  v38[3] = &unk_100054C70;
  v39 = v35;
  v40 = v8;
  v33 = v8;
  v34 = v35;
  [v32 enumerateKeysAndObjectsUsingBlock:v38];
}

+ (id)userProfileWithAssetConfig:(id)a3 modelOverridePath:(id)a4 overrides:(id)a5 isJit:(BOOL)a6 returningFoundPath:(id *)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v58 = a5;
  if (v14 && AFIsInternalInstall())
  {
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v64 = "+[ESSpeechProfileBuilderConnection userProfileWithAssetConfig:modelOverridePath:overrides:isJit:returningFoundPath:error:]";
      v65 = 2112;
      v66 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Using model override at path: %@", buf, 0x16u);
    }

    v56 = v14;
    v16 = v14;
    v17 = 0;
LABEL_10:
    v25 = a6;
    v52 = a8;
    if (a7)
    {
      v26 = v16;
      *a7 = v16;
    }

    v27 = [v16 stringByAppendingPathComponent:@"mini.json"];
    v53 = v16;
    v28 = [v16 stringByAppendingPathComponent:@"ncs"];
    v29 = [v28 stringByAppendingPathComponent:@"en_US_napg.json"];
    v30 = [v28 stringByAppendingPathComponent:@"vocdelta.voc"];
    v31 = [v28 stringByAppendingPathComponent:@"pg.voc"];
    v32 = [v28 stringByAppendingPathComponent:@"mrec.psh"];
    v33 = [_EARUserProfile alloc];
    v57 = v13;
    v34 = [v13 language];
    v59 = v17;
    LOBYTE(v51) = v25;
    v54 = v29;
    v55 = v27;
    v35 = [v33 initWithConfig:v27 language:v34 overrides:v58 textNormalizationModelRoot:0 sdapiOverrides:v29 emptyVoc:v30 pgVoc:v31 paramsetHolder:v32 isJit:v51 error:&v59];
    v20 = v59;

    if (v35)
    {
      v36 = v35;
      v14 = v56;
      v13 = v57;
    }

    else
    {
      v37 = AFSiriLogContextSpeech;
      v14 = v56;
      v13 = v57;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_FAULT))
      {
        v46 = v37;
        v47 = [v20 localizedDescription];
        *buf = 136315394;
        v64 = "+[ESSpeechProfileBuilderConnection userProfileWithAssetConfig:modelOverridePath:overrides:isJit:returningFoundPath:error:]";
        v65 = 2112;
        v66 = v47;
        _os_log_fault_impl(&_mh_execute_header, v46, OS_LOG_TYPE_FAULT, "%s Failed to initialize _EARUserProfile, error: %@", buf, 0x16u);

        v13 = v57;
      }

      if (v52)
      {
        v38 = v20;
        *v52 = v20;
      }
    }

    v39 = v53;
LABEL_19:

    v40 = v20;
    v41 = v35;
    goto LABEL_20;
  }

  v18 = +[SFEntitledAssetManager sharedInstance];
  [v18 refreshAssetSetWithConfig:v13 regionId:0];

  v19 = +[ESAssetManager sharedInstance];
  v60 = 0;
  v16 = [v19 installedQuasarModelPathForAssetConfig:v13 error:&v60 triggerDownload:0 ignoreSpellingModel:1];
  v20 = v60;

  v21 = AFSiriLogContextSpeech;
  if (v16)
  {
    v56 = v14;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      [v13 assetType];
      v23 = SFEntitledAssetTypeToString();
      v24 = [v13 language];
      *buf = 136315906;
      v64 = "+[ESSpeechProfileBuilderConnection userProfileWithAssetConfig:modelOverridePath:overrides:isJit:returningFoundPath:error:]";
      v65 = 2112;
      v66 = v23;
      v67 = 2112;
      v68 = v24;
      v69 = 2112;
      v70 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Using model from %@ asset for %@ at path: %@", buf, 0x2Au);
    }

    v17 = v20;
    goto LABEL_10;
  }

  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
  {
    v48 = v21;
    [v13 assetType];
    v49 = SFEntitledAssetTypeToString();
    v50 = [v13 language];
    *buf = 136315650;
    v64 = "+[ESSpeechProfileBuilderConnection userProfileWithAssetConfig:modelOverridePath:overrides:isJit:returningFoundPath:error:]";
    v65 = 2112;
    v66 = v49;
    v67 = 2112;
    v68 = v50;
    _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%s No installed %@ asset for language: %@", buf, 0x20u);

    if (a8)
    {
LABEL_25:
      v43 = a8;
      v44 = kAFAssistantErrorDomain;
      if (v20)
      {
        v61 = NSUnderlyingErrorKey;
        v62 = v20;
        v39 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      }

      else
      {
        v39 = 0;
      }

      v45 = [NSError errorWithDomain:v44 code:600 userInfo:v39];
      v35 = 0;
      v40 = 0;
      v41 = 0;
      *v43 = v45;
      if (!v20)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (a8)
  {
    goto LABEL_25;
  }

  v41 = 0;
  v40 = v20;
LABEL_20:

  return v41;
}

+ (BOOL)_isProfileValidFromVersionsMap:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v8 + 1) + 8 * i) longLongValue] & 0x8000000000000000) == 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end