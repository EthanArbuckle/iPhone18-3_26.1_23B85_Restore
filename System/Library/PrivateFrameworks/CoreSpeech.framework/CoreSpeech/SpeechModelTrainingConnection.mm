@interface SpeechModelTrainingConnection
+ (void)initialize;
- (SpeechModelTrainingConnection)initWithXPCConnection:(id)connection;
- (id)createDispatchTimerWithInterval:(double)interval queue:(id)queue block:(id)block;
- (void)_assetForLanguage:(id)language completion:(id)completion;
- (void)buildPhoneticMatchWithLanguage:(id)language saveIntermediateFsts:(BOOL)fsts completion:(id)completion;
- (void)buildSpeechProfileForLanguage:(id)language;
- (void)dealloc;
- (void)extractBundledOovs:(id)oovs appLmDataFileSandboxExtension:(id)extension appBundleId:(id)id completion:(id)completion;
- (void)generateAudioWithTexts:(id)texts language:(id)language completion:(id)completion;
- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedNbest:(id)nbest recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2;
- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedTokens:(id)tokens recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2;
- (void)recordWordsAndOov:(id)oov data:(id)data vocab:(id)vocab;
- (void)trainAllAppLMWithLanguage:(id)language;
- (void)trainAllAppLMWithLanguage:(id)language completion:(id)completion;
- (void)trainAllAppLMWithLanguage:(id)language outOf:(id)of into:(id)into completion:(id)completion;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension completion:(id)completion;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension completion:(id)completion;
- (void)trainGlobalNNLMwithFidesSessionURL:(id)l completion:(id)completion;
- (void)trainPartialAllAppLMWithLanguage:(id)language;
- (void)trainPartialAllAppLMWithLanguage:(id)language completion:(id)completion;
- (void)trainPersonalizedLMWithLanguage:(id)language configuration:(id)configuration fides:(BOOL)fides write:(BOOL)write completion:(id)completion;
- (void)upperCaseString:(id)string withReply:(id)reply;
@end

@implementation SpeechModelTrainingConnection

- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedTokens:(id)tokens recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2
{
  dCopy = d;
  parametersCopy = parameters;
  languageCopy = language;
  taskCopy = task;
  tokensCopy = tokens;
  textCopy = text;
  correctedTextCopy = correctedText;
  alternativesCopy = alternatives;
  completionCopy = completion;
  v24 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E9A4;
  block[3] = &unk_100038FF0;
  v38 = tokensCopy;
  v39 = parametersCopy;
  selfCopy = self;
  v41 = dCopy;
  v42 = languageCopy;
  v43 = taskCopy;
  v47 = completionCopy;
  rateCopy = rate;
  v44 = textCopy;
  v45 = correctedTextCopy;
  v46 = alternativesCopy;
  v36 = completionCopy;
  v25 = alternativesCopy;
  v26 = correctedTextCopy;
  v27 = textCopy;
  v28 = taskCopy;
  v29 = languageCopy;
  v30 = dCopy;
  v31 = parametersCopy;
  v32 = tokensCopy;
  dispatch_async(v24, block);
}

- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedNbest:(id)nbest recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2
{
  dCopy = d;
  parametersCopy = parameters;
  languageCopy = language;
  taskCopy = task;
  nbestCopy = nbest;
  textCopy = text;
  correctedTextCopy = correctedText;
  alternativesCopy = alternatives;
  completionCopy = completion;
  v24 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EC84;
  block[3] = &unk_100038FC8;
  v37 = parametersCopy;
  v38 = dCopy;
  v39 = languageCopy;
  v40 = taskCopy;
  v41 = nbestCopy;
  v42 = textCopy;
  v43 = correctedTextCopy;
  v44 = alternativesCopy;
  v45 = completionCopy;
  rateCopy = rate;
  v25 = completionCopy;
  v26 = alternativesCopy;
  v27 = correctedTextCopy;
  v28 = textCopy;
  v29 = nbestCopy;
  v30 = taskCopy;
  v31 = languageCopy;
  v32 = dCopy;
  v33 = parametersCopy;
  dispatch_async(v24, block);
}

- (void)generateAudioWithTexts:(id)texts language:(id)language completion:(id)completion
{
  textsCopy = texts;
  languageCopy = language;
  completionCopy = completion;
  v10 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F5A4;
  block[3] = &unk_100038F78;
  v16 = languageCopy;
  v17 = completionCopy;
  v15 = textsCopy;
  v11 = languageCopy;
  v12 = textsCopy;
  v13 = completionCopy;
  dispatch_async(v10, block);
}

- (void)buildPhoneticMatchWithLanguage:(id)language saveIntermediateFsts:(BOOL)fsts completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v10 = qword_10003FF30;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000F844;
  v13[3] = &unk_100038F50;
  selfCopy = self;
  v16 = completionCopy;
  v14 = languageCopy;
  fstsCopy = fsts;
  v11 = languageCopy;
  v12 = completionCopy;
  dispatch_async(v10, v13);
}

- (void)buildSpeechProfileForLanguage:(id)language
{
  languageCopy = language;
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
    v8 = languageCopy;
    v9 = v4;
    v6 = v4;
    dispatch_async(v5, v7);
  }
}

- (void)extractBundledOovs:(id)oovs appLmDataFileSandboxExtension:(id)extension appBundleId:(id)id completion:(id)completion
{
  oovsCopy = oovs;
  extensionCopy = extension;
  idCopy = id;
  completionCopy = completion;
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
  v13 = completionCopy;
  v50 = v13;
  v14 = objc_retainBlock(v49);
  v15 = [[_EARAppLmArtifact alloc] initWithPath:oovsCopy];
  v16 = v15;
  if (v15)
  {
    getLocale = [v15 getLocale];
    v18 = getLocale;
    if (getLocale)
    {
      v32 = oovsCopy;
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
      v19 = [getLocale stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
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
            getProns = [v25 getProns];
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_1000123D0;
            v35[3] = &unk_100038ED8;
            v35[4] = &v53;
            [getProns enumerateObjectsUsingBlock:v35];
          }

          else
          {
            getProns = qword_10003FF28;
            if (os_log_type_enabled(getProns, OS_LOG_TYPE_INFO))
            {
              validationError = [v25 validationError];
              *v51 = 138412290;
              v52 = validationError;
              _os_log_impl(&_mh_execute_header, getProns, OS_LOG_TYPE_INFO, "UaaP: Artifact contained invalid custom prons; skipping. %@", v51, 0xCu);
            }
          }

          loadOovs = [v16 loadOovs];
          if (!loadOovs)
          {
            v31 = qword_10003FF28;
            if (os_log_type_enabled(qword_10003FF28, OS_LOG_TYPE_INFO))
            {
              *v51 = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "UaaP: Could not get OOVs from artifact", v51, 2u);
            }

            loadOovs = &__NSArray0__struct;
          }

          (v14[2])(v14, loadOovs, *(*(&v53 + 1) + 40), 0);

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

      oovsCopy = v32;
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
      *(&buf + 4) = oovsCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "UaaP: Failed to read app lm artifact at %@", &buf, 0xCu);
    }

    v18 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:255 userInfo:0];
    (v14[2])(v14, &__NSArray0__struct, &__NSDictionary0__struct, v18);
  }
}

- (void)trainPartialAllAppLMWithLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v7 = [@"pruned" stringByAppendingPathComponent:@"current/lm.arpa"];
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:languageCopy outOf:v7 into:@"tempAllApp" completion:completionCopy];
}

- (void)trainPartialAllAppLMWithLanguage:(id)language
{
  languageCopy = language;
  v5 = os_transaction_create();
  v6 = [@"pruned" stringByAppendingPathComponent:@"current/lm.arpa"];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012660;
  v8[3] = &unk_100038E88;
  v7 = v5;
  v9 = v7;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:languageCopy outOf:v6 into:@"tempAllApp" completion:v8];
}

- (void)trainAllAppLMWithLanguage:(id)language
{
  languageCopy = language;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012828;
  v6[3] = &unk_100038E88;
  v7 = os_transaction_create();
  v5 = v7;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:languageCopy completion:v6];
}

- (void)trainAllAppLMWithLanguage:(id)language completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100012A0C;
  v8[3] = &unk_100038E60;
  languageCopy = language;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = languageCopy;
  [(SpeechModelTrainingConnection *)self trainAllAppLMWithLanguage:v7 outOf:@"current/lm.arpa" into:@"allApp" completion:v8];
}

- (void)trainAllAppLMWithLanguage:(id)language outOf:(id)of into:(id)into completion:(id)completion
{
  languageCopy = language;
  ofCopy = of;
  intoCopy = into;
  completionCopy = completion;
  v14 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013294;
  block[3] = &unk_100038DF8;
  v23 = ofCopy;
  v24 = completionCopy;
  v20 = intoCopy;
  v21 = languageCopy;
  selfCopy = self;
  v15 = ofCopy;
  v16 = languageCopy;
  v17 = intoCopy;
  v18 = completionCopy;
  dispatch_async(v14, block);
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension completion:(id)completion
{
  languageCopy = language;
  idCopy = id;
  fileCopy = file;
  modelFileCopy = modelFile;
  completionCopy = completion;
  v18 = qword_10003FF30;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100013DD4;
  v24[3] = &unk_100038DA8;
  v25 = languageCopy;
  selfCopy = self;
  v27 = modelFileCopy;
  v28 = fileCopy;
  v29 = idCopy;
  v30 = completionCopy;
  v19 = idCopy;
  v20 = fileCopy;
  v21 = modelFileCopy;
  v22 = languageCopy;
  v23 = completionCopy;
  dispatch_async(v18, v24);
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension
{
  languageCopy = language;
  configurationCopy = configuration;
  idCopy = id;
  fileCopy = file;
  modelFileCopy = modelFile;
  extensionCopy = extension;
  v19 = os_transaction_create();
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100014BD8;
  v24[3] = &unk_100038D08;
  v20 = idCopy;
  v25 = v20;
  v21 = languageCopy;
  v26 = v21;
  v27 = v19;
  v22 = v19;
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:v21 configuration:configurationCopy appBundleId:v20 appLmDataFile:fileCopy appLmModelFile:modelFileCopy appLmDataFileSandboxExtension:extensionCopy completion:v24];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension
{
  languageCopy = language;
  configurationCopy = configuration;
  idCopy = id;
  fileCopy = file;
  extensionCopy = extension;
  v17 = os_transaction_create();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100014E98;
  v21[3] = &unk_100038D08;
  v18 = idCopy;
  v22 = v18;
  v19 = languageCopy;
  v23 = v19;
  v24 = v17;
  v20 = v17;
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:v19 configuration:configurationCopy appBundleId:v18 appLmDataFile:fileCopy appLmDataFileSandboxExtension:extensionCopy completion:v21];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension completion:(id)completion
{
  languageCopy = language;
  configurationCopy = configuration;
  idCopy = id;
  fileCopy = file;
  extensionCopy = extension;
  completionCopy = completion;
  v19 = sub_100012EE4(languageCopy);
  v20 = [v19 stringByAppendingPathComponent:idCopy];
  stringByStandardizingPath = [v20 stringByStandardizingPath];
  [(SpeechModelTrainingConnection *)self trainAppLMWithLanguage:languageCopy configuration:configurationCopy appBundleId:idCopy appLmDataFile:fileCopy appLmModelFile:stringByStandardizingPath appLmDataFileSandboxExtension:extensionCopy completion:completionCopy];
}

- (void)_assetForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v7 = qword_10003FF38;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000151F4;
  v10[3] = &unk_100038CE0;
  v11 = languageCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = languageCopy;
  dispatch_sync(v7, v10);
}

- (void)trainGlobalNNLMwithFidesSessionURL:(id)l completion:(id)completion
{
  lCopy = l;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000155AC;
  v23[3] = &unk_100038B78;
  v25 = v26;
  completionCopy = completion;
  v24 = completionCopy;
  v8 = objc_retainBlock(v23);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100015708;
  v20[3] = &unk_100038BA0;
  v21 = completionCopy;
  v22 = v26;
  v9 = completionCopy;
  v10 = objc_retainBlock(v20);
  v11 = qword_10003FF30;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100015830;
  v15[3] = &unk_100038CB8;
  v16 = lCopy;
  selfCopy = self;
  v18 = v10;
  v19 = v8;
  v12 = v8;
  v13 = v10;
  v14 = lCopy;
  dispatch_async(v11, v15);

  _Block_object_dispose(v26, 8);
}

- (void)recordWordsAndOov:(id)oov data:(id)data vocab:(id)vocab
{
  oovCopy = oov;
  dataCopy = data;
  vocabCopy = vocab;
  v8 = [oovCopy objectForKeyedSubscript:@"enableWordRecording"];

  if (v8)
  {
    v9 = [oovCopy objectForKeyedSubscript:@"enableWordRecording"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [oovCopy objectForKeyedSubscript:@"enableWordRecording"];
      bOOLValue = [v11 BOOLValue];

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

  bOOLValue = 0;
LABEL_7:
  v14 = [oovCopy objectForKeyedSubscript:@"language"];
  v15 = v14;
  if (!v14)
  {
    v14 = @"en-US";
  }

  v16 = [(__CFString *)v14 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  wordFrequency = [dataCopy wordFrequency];
  if (wordFrequency)
  {
    v18 = bOOLValue;
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
    v35 = vocabCopy;
    v25 = v23;
    v36 = v25;
    v26 = v29;
    v37 = v26;
    [wordFrequency enumerateKeysAndObjectsUsingBlock:v33];
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

- (id)createDispatchTimerWithInterval:(double)interval queue:(id)queue block:(id)block
{
  blockCopy = block;
  v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  if (v8)
  {
    v9 = interval * 1000000000.0;
    v10 = dispatch_time(0, v9);
    dispatch_source_set_timer(v8, v10, v9, 0);
    dispatch_source_set_event_handler(v8, blockCopy);
    dispatch_resume(v8);
  }

  return v8;
}

- (void)trainPersonalizedLMWithLanguage:(id)language configuration:(id)configuration fides:(BOOL)fides write:(BOOL)write completion:(id)completion
{
  languageCopy = language;
  configurationCopy = configuration;
  completionCopy = completion;
  v15 = qword_10003FF30;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000193DC;
  block[3] = &unk_100038B28;
  block[4] = self;
  v20 = languageCopy;
  v21 = configurationCopy;
  v22 = completionCopy;
  fidesCopy = fides;
  writeCopy = write;
  v16 = configurationCopy;
  v17 = languageCopy;
  v18 = completionCopy;
  dispatch_async(v15, block);
}

- (void)upperCaseString:(id)string withReply:(id)reply
{
  replyCopy = reply;
  uppercaseString = [string uppercaseString];
  if (replyCopy)
  {
    replyCopy[2](replyCopy, uppercaseString);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SpeechModelTrainingConnection;
  [(SpeechModelTrainingConnection *)&v3 dealloc];
}

- (SpeechModelTrainingConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = SpeechModelTrainingConnection;
  v6 = [(SpeechModelTrainingConnection *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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
    [connectionCopy setInterruptionHandler:{v10, v12, v13, v14, v15}];
    [connectionCopy setInvalidationHandler:v10];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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