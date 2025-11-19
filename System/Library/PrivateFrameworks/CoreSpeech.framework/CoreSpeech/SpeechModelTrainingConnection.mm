@interface SpeechModelTrainingConnection
+ (void)initialize;
- (SpeechModelTrainingConnection)initWithXPCConnection:(id)a3;
- (id)createDispatchTimerWithInterval:(double)a3 queue:(id)a4 block:(id)a5;
- (void)_assetForLanguage:(id)a3 completion:(id)a4;
- (void)buildPhoneticMatchWithLanguage:(id)a3 saveIntermediateFsts:(BOOL)a4 completion:(id)a5;
- (void)buildSpeechProfileForLanguage:(id)a3;
- (void)dealloc;
- (void)extractBundledOovs:(id)a3 appLmDataFileSandboxExtension:(id)a4 appBundleId:(id)a5 completion:(id)a6;
- (void)generateAudioWithTexts:(id)a3 language:(id)a4 completion:(id)a5;
- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12;
- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedTokens:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12;
- (void)recordWordsAndOov:(id)a3 data:(id)a4 vocab:(id)a5;
- (void)trainAllAppLMWithLanguage:(id)a3;
- (void)trainAllAppLMWithLanguage:(id)a3 completion:(id)a4;
- (void)trainAllAppLMWithLanguage:(id)a3 outOf:(id)a4 into:(id)a5 completion:(id)a6;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7 completion:(id)a8;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8 completion:(id)a9;
- (void)trainGlobalNNLMwithFidesSessionURL:(id)a3 completion:(id)a4;
- (void)trainPartialAllAppLMWithLanguage:(id)a3;
- (void)trainPartialAllAppLMWithLanguage:(id)a3 completion:(id)a4;
- (void)trainPersonalizedLMWithLanguage:(id)a3 configuration:(id)a4 fides:(BOOL)a5 write:(BOOL)a6 completion:(id)a7;
- (void)upperCaseString:(id)a3 withReply:(id)a4;
@end

@implementation SpeechModelTrainingConnection

- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedTokens:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12
{
  v33 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E9A4;
  block[3] = &unk_100038FF0;
  v38 = v19;
  v39 = v16;
  v40 = self;
  v41 = v33;
  v42 = v17;
  v43 = v18;
  v47 = v23;
  v48 = a7;
  v44 = v20;
  v45 = v21;
  v46 = v22;
  v36 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v18;
  v29 = v17;
  v30 = v33;
  v31 = v16;
  v32 = v19;
  dispatch_async(v24, block);
}

- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12
{
  v34 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC84;
  block[3] = &unk_100038FC8;
  v37 = v16;
  v38 = v34;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v46 = a7;
  v25 = v23;
  v26 = v22;
  v27 = v21;
  v28 = v20;
  v29 = v19;
  v30 = v18;
  v31 = v17;
  v32 = v34;
  v33 = v16;
  dispatch_async(v24, block);
}

- (void)generateAudioWithTexts:(id)a3 language:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F5A4;
  block[3] = &unk_100038F78;
  v16 = v8;
  v17 = v9;
  v15 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, block);
}

- (void)buildPhoneticMatchWithLanguage:(id)a3 saveIntermediateFsts:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_10003FF30;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F844;
  v13[3] = &unk_100038F50;
  v15 = self;
  v16 = v9;
  v14 = v8;
  v17 = a4;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)buildSpeechProfileForLanguage:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    NSLog(@"buildSpeechProfile is unavailable when siri_vocabulary_speech_profile feature flag is enabled.");
  }

  else
  {
    v4 = os_transaction_create();
    v5 = qword_10003FF30;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000117E0;
    v7[3] = &unk_100038F28;
    v8 = v3;
    v9 = v4;
    v6 = v4;
    dispatch_async(v5, v7);
  }
}

- (void)extractBundledOovs:(id)a3 appLmDataFileSandboxExtension:(id)a4 appBundleId:(id)a5 completion:(id)a6
{
  v10 = a3;
  v33 = a4;
  v34 = a5;
  v11 = a6;
  v12 = qword_10003FF28;
  if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "UaaP: Extracting OOVs", &buf, 2u);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100012250;
  v49[3] = &unk_100038EB0;
  v13 = v11;
  v50 = v13;
  v14 = objc_retainBlock(v49);
  v15 = [[_EARAppLmArtifact alloc] initWithPath:v10];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 getLocale];
    v18 = v17;
    if (v17)
    {
      v32 = v10;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v59 = 0x3032000000;
      v60 = sub_1000122FC;
      v61 = sub_10001230C;
      v62 = 0;
      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = sub_1000122FC;
      v47 = sub_10001230C;
      v48 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = sub_1000122FC;
      v41 = sub_10001230C;
      v42 = 0;
      v19 = [v17 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100012314;
      v36[3] = &unk_100038D58;
      v36[4] = &buf;
      v36[5] = &v43;
      v36[6] = &v37;
      [(SpeechModelTrainingConnection *)self _assetForLanguage:v19 completion:v36];

      v20 = v38[5];
      if (v20)
      {
        v21 = qword_10003FF28;
        if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
        {
          LODWORD(v53) = 138412290;
          *(&v53 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "UaaP: Failed to fetch assets for use in parsing custom prons: %@", &v53, 0xCu);
          v20 = v38[5];
        }

        (v14[2])(v14, &__NSArray0__struct, &__NSDictionary0__struct, v20);
      }

      else
      {
        v25 = [v16 loadCustomPronData:v44[5] dataRoot:0];
        if (v25)
        {
          *&v53 = 0;
          *(&v53 + 1) = &v53;
          v54 = 0x3032000000;
          v55 = sub_1000122FC;
          v56 = sub_10001230C;
          v57 = objc_alloc_init(NSMutableDictionary);
          if ([v25 isValid])
          {
            v26 = [v25 getProns];
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_1000123D0;
            v35[3] = &unk_100038ED8;
            v35[4] = &v53;
            [v26 enumerateObjectsUsingBlock:v35];
          }

          else
          {
            v26 = qword_10003FF28;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v29 = [v25 validationError];
              *v51 = 138412290;
              v52 = v29;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "UaaP: Artifact contained invalid custom prons; skipping. %@", v51, 0xCu);
            }
          }

          v30 = [v16 loadOovs];
          if (!v30)
          {
            v31 = qword_10003FF28;
            if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
            {
              *v51 = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "UaaP: Could not get OOVs from artifact", v51, 2u);
            }

            v30 = &__NSArray0__struct;
          }

          (v14[2])(v14, v30, *(*(&v53 + 1) + 40), 0);

          _Block_object_dispose(&v53, 8);
        }

        else
        {
          v27 = qword_10003FF28;
          if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
          {
            LOWORD(v53) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "UaaP: Failed to load custom prons from artifact", &v53, 2u);
          }

          v28 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:255 userInfo:0];
          (v14[2])(v14, &__NSArray0__struct, &__NSDictionary0__struct, v28);
        }
      }

      _Block_object_dispose(&v37, 8);

      v10 = v32;
      _Block_object_dispose(&v43, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v23 = qword_10003FF28;
      if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "UaaP: Could not determine locale for incoming artifact", &buf, 2u);
      }

      v24 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:255 userInfo:0];
      (v14[2])(v14, &__NSArray0__struct, &__NSDictionary0__struct, v24);

      v18 = 0;
    }
  }

  else
  {
    v22 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "UaaP: Failed to read app lm artifact at %@", &buf, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:255 userInfo:0];
    (v14[2])(v14, &__NSArray0__struct, &__NSDictionary0__struct, v18);
  }
}

- (void)trainPartialAllAppLMWithLanguage:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [@"pruned" stringByAppendingPathComponent:@"current/lm.arpa"];
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:v8 outOf:v7 into:@"tempAllApp" completion:v6];
}

- (void)trainPartialAllAppLMWithLanguage:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [@"pruned" stringByAppendingPathComponent:@"current/lm.arpa"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012660;
  v8[3] = &unk_100038E88;
  v7 = v5;
  v9 = v7;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:v4 outOf:v6 into:@"tempAllApp" completion:v8];
}

- (void)trainAllAppLMWithLanguage:(id)a3
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012828;
  v6[3] = &unk_100038E88;
  v7 = os_transaction_create();
  v5 = v7;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:v4 completion:v6];
}

- (void)trainAllAppLMWithLanguage:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012A0C;
  v8[3] = &unk_100038E60;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:v7 outOf:@"current/lm.arpa" into:@"allApp" completion:v8];
}

- (void)trainAllAppLMWithLanguage:(id)a3 outOf:(id)a4 into:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013294;
  block[3] = &unk_100038DF8;
  v23 = v11;
  v24 = v13;
  v20 = v12;
  v21 = v10;
  v22 = self;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8 completion:(id)a9
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = qword_10003FF30;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100013DD4;
  v24[3] = &unk_100038DA8;
  v25 = v13;
  v26 = self;
  v27 = v16;
  v28 = v15;
  v29 = v14;
  v30 = v17;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v13;
  v23 = v17;
  dispatch_async(v18, v24);
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_transaction_create();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100014BD8;
  v24[3] = &unk_100038D08;
  v20 = v15;
  v25 = v20;
  v21 = v13;
  v26 = v21;
  v27 = v19;
  v22 = v19;
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:v21 configuration:v14 appBundleId:v20 appLmDataFile:v16 appLmModelFile:v17 appLmDataFileSandboxExtension:v18 completion:v24];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = os_transaction_create();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014E98;
  v21[3] = &unk_100038D08;
  v18 = v14;
  v22 = v18;
  v19 = v12;
  v23 = v19;
  v24 = v17;
  v20 = v17;
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:v19 configuration:v13 appBundleId:v18 appLmDataFile:v15 appLmDataFileSandboxExtension:v16 completion:v21];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7 completion:(id)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = sub_100012EE4(v22);
  v20 = [v19 stringByAppendingPathComponent:v15];
  v21 = [v20 stringByStandardizingPath];
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:v22 configuration:v14 appBundleId:v15 appLmDataFile:v16 appLmModelFile:v21 appLmDataFileSandboxExtension:v17 completion:v18];
}

- (void)_assetForLanguage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = qword_10003FF38;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000151F4;
  v10[3] = &unk_100038CE0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_sync(v7, v10);
}

- (void)trainGlobalNNLMwithFidesSessionURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000155AC;
  v23[3] = &unk_100038B78;
  v25 = v26;
  v7 = a4;
  v24 = v7;
  v8 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100015708;
  v20[3] = &unk_100038BA0;
  v21 = v7;
  v22 = v26;
  v9 = v7;
  v10 = objc_retainBlock(v20);
  v11 = qword_10003FF30;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015830;
  v15[3] = &unk_100038CB8;
  v16 = v6;
  v17 = self;
  v18 = v10;
  v19 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v6;
  dispatch_async(v11, v15);

  _Block_object_dispose(v26, 8);
}

- (void)recordWordsAndOov:(id)a3 data:(id)a4 vocab:(id)a5
{
  v7 = a3;
  v32 = a4;
  v31 = a5;
  v8 = [v7 objectForKeyedSubscript:@"enableWordRecording"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"enableWordRecording"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [v7 objectForKeyedSubscript:@"enableWordRecording"];
      v12 = [v11 BOOLValue];

      goto LABEL_7;
    }

    v13 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v39 = @"enableWordRecording";
      v40 = 1024;
      v41 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "recipe[%@] cannot be parsed as a BOOL. Default value of %d is used. ", buf, 0x12u);
    }
  }

  v12 = 0;
LABEL_7:
  v14 = [v7 objectForKeyedSubscript:@"language"];
  v15 = v14;
  if (!v14)
  {
    v14 = @"en-US";
  }

  v16 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v17 = [v32 wordFrequency];
  if (v17)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v30 = [NSString stringWithFormat:@"%@.%@", @"com.apple.siri.speech-global-nnlm.oov-recorder", v16];
    v29 = [objc_alloc(sub_100018C4C()) initWithKey:v30];
    v19 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v30;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "OOV recorder is initialized with key %@", buf, 0xCu);
    }

    v20 = [NSString stringWithFormat:@"%@.%@", @"com.apple.siri.speech-global-nnlm.word-recorder", v16];
    v21 = [objc_alloc(sub_100018C4C()) initWithKey:v20];
    v22 = qword_10003FF28;
    if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Unigram recorder is initialized with key %@", buf, 0xCu);
    }

    v23 = objc_opt_new();
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100018D2C;
    v33[3] = &unk_100038B50;
    v24 = v21;
    v34 = v24;
    v35 = v31;
    v25 = v23;
    v36 = v25;
    v26 = v29;
    v37 = v26;
    [v17 enumerateKeysAndObjectsUsingBlock:v33];
    if ([v25 count])
    {
      v27 = qword_10003FF28;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [v25 componentsJoinedByString:@" "];
        *buf = 138412290;
        v39 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "OOV detected: %@", buf, 0xCu);
      }
    }
  }
}

- (id)createDispatchTimerWithInterval:(double)a3 queue:(id)a4 block:(id)a5
{
  v7 = a5;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a4);
  if (v8)
  {
    v9 = a3 * 1000000000.0;
    v10 = dispatch_time(0, v9);
    dispatch_source_set_timer(v8, v10, v9, 0);
    dispatch_source_set_event_handler(v8, v7);
    dispatch_resume(v8);
  }

  return v8;
}

- (void)trainPersonalizedLMWithLanguage:(id)a3 configuration:(id)a4 fides:(BOOL)a5 write:(BOOL)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193DC;
  block[3] = &unk_100038B28;
  block[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = a5;
  v24 = a6;
  v16 = v13;
  v17 = v12;
  v18 = v14;
  dispatch_async(v15, block);
}

- (void)upperCaseString:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v5 = [a3 uppercaseString];
  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SpeechModelTrainingConnection;
  [(SpeechModelTrainingConnection *)&v3 dealloc];
}

- (SpeechModelTrainingConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SpeechModelTrainingConnection;
  v6 = [(SpeechModelTrainingConnection *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = objc_alloc_init(NSMutableArray);
    consumedSandboxExtensions = v7->_consumedSandboxExtensions;
    v7->_consumedSandboxExtensions = v8;

    objc_initWeak(&location, v7);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10001B604;
    v15 = &unk_100038A38;
    objc_copyWeak(&v16, &location);
    v10 = objc_retainBlock(&v12);
    [v5 setInterruptionHandler:{v10, v12, v13, v14, v15}];
    [v5 setInvalidationHandler:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.speech.speechmodeltraining", "SpeechModelTrainingConnection");
    v3 = qword_10003FF28;
    qword_10003FF28 = v2;

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.SpeechModelTrainingConnection", v4);
    v6 = qword_10003FF30;
    qword_10003FF30 = v5;

    qword_10003FF38 = dispatch_queue_create("com.apple.speechmodeltrainingd.asset-fetch", 0);

    _objc_release_x1();
  }
}

@end