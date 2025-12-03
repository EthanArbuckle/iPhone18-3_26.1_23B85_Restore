@interface SpeechModelTrainingClient
+ (void)initialize;
- (SpeechModelTrainingClient)init;
- (void)buildSpeechProfileForLanguage:(id)language;
- (void)dealloc;
- (void)extractBundledOovs:(id)oovs appLmDataFileSandboxExtension:(id)extension appBundleId:(id)id completion:(id)completion;
- (void)generateAudioWithTexts:(id)texts language:(id)language completion:(id)completion;
- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedNbest:(id)nbest recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2;
- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedTokens:(id)tokens recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2;
- (void)invalidate;
- (void)trainAllAppLMWithLanguage:(id)language;
- (void)trainAllAppLMWithLanguage:(id)language completion:(id)completion;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension completion:(id)completion;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension;
- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension completion:(id)completion;
- (void)trainGlobalNNLMwithFidesSessionURL:(id)l completion:(id)completion;
- (void)trainPartialAllAppLMWithLanguage:(id)language;
- (void)trainPartialAllAppLMWithLanguage:(id)language completion:(id)completion;
- (void)trainPersonalizedLMWithLanguage:(id)language configuration:(id)configuration asset:(id)asset directory:(id)directory completion:(id)completion;
- (void)upperCaseString:(id)string completion:(id)completion;
- (void)wakeUpWithCompletion:(id)completion;
- (void)xpcExitClean;
@end

@implementation SpeechModelTrainingClient

- (void)invalidate
{
  v3 = qword_10029DF20;
  if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating", v4, 2u);
  }

  [(NSXPCConnection *)self->_smtConnection invalidate];
}

- (void)xpcExitClean
{
  v2 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E2A0];
  [v2 xpcExitClean];
}

- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedNbest:(id)nbest recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000A440;
  v29[3] = &unk_100252368;
  completionCopy = completion;
  v18 = completionCopy;
  alternativesCopy = alternatives;
  correctedTextCopy = correctedText;
  textCopy = text;
  nbestCopy = nbest;
  taskCopy = task;
  languageCopy = language;
  parametersCopy = parameters;
  dCopy = d;
  v27 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v29];
  [v27 generateConfusionPairsWithUUID:dCopy parameters:parametersCopy language:languageCopy task:taskCopy samplingRate:rate recognizedNbest:nbestCopy recognizedText:textCopy correctedText:correctedTextCopy selectedAlternatives:alternativesCopy completion:v18];
}

- (void)generateConfusionPairsWithUUID:(id)d parameters:(id)parameters language:(id)language task:(id)task samplingRate:(unint64_t)rate recognizedTokens:(id)tokens recognizedText:(id)text correctedText:(id)self0 selectedAlternatives:(id)self1 completion:(id)self2
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000A6AC;
  v29[3] = &unk_100252368;
  completionCopy = completion;
  v18 = completionCopy;
  alternativesCopy = alternatives;
  correctedTextCopy = correctedText;
  textCopy = text;
  tokensCopy = tokens;
  taskCopy = task;
  languageCopy = language;
  parametersCopy = parameters;
  dCopy = d;
  v27 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v29];
  [v27 generateConfusionPairsWithUUID:dCopy parameters:parametersCopy language:languageCopy task:taskCopy samplingRate:rate recognizedTokens:tokensCopy recognizedText:textCopy correctedText:correctedTextCopy selectedAlternatives:alternativesCopy completion:v18];
}

- (void)generateAudioWithTexts:(id)texts language:(id)language completion:(id)completion
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A88C;
  v12[3] = &unk_100252368;
  completionCopy = completion;
  v8 = completionCopy;
  languageCopy = language;
  textsCopy = texts;
  v11 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v12];
  [v11 generateAudioWithTexts:textsCopy language:languageCopy completion:v8];
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
    v4 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E280];
    [v4 buildSpeechProfileForLanguage:languageCopy];
  }
}

- (void)extractBundledOovs:(id)oovs appLmDataFileSandboxExtension:(id)extension appBundleId:(id)id completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AE38;
  v15[3] = &unk_100252368;
  completionCopy = completion;
  v10 = completionCopy;
  idCopy = id;
  extensionCopy = extension;
  oovsCopy = oovs;
  v14 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v15];
  [v14 extractBundledOovs:oovsCopy appLmDataFileSandboxExtension:extensionCopy appBundleId:idCopy completion:v10];
}

- (void)trainPartialAllAppLMWithLanguage:(id)language completion:(id)completion
{
  completionCopy = completion;
  languageCopy = language;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E260];
  [v8 trainPartialAllAppLMWithLanguage:languageCopy completion:completionCopy];
}

- (void)trainPartialAllAppLMWithLanguage:(id)language
{
  languageCopy = language;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E240];
  [v5 trainPartialAllAppLMWithLanguage:languageCopy];
}

- (void)trainAllAppLMWithLanguage:(id)language
{
  languageCopy = language;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E220];
  [v5 trainAllAppLMWithLanguage:languageCopy];
}

- (void)trainAllAppLMWithLanguage:(id)language completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B404;
  v9[3] = &unk_100252368;
  completionCopy = completion;
  v6 = completionCopy;
  languageCopy = language;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v9];
  [v8 trainAllAppLMWithLanguage:languageCopy completion:v6];
}

- (void)wakeUpWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B5B8;
  v6[3] = &unk_100252368;
  completionCopy = completion;
  v4 = completionCopy;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v6];
  [v5 wakeUpWithCompletion:v4];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  extensionCopy = extension;
  modelFileCopy = modelFile;
  fileCopy = file;
  idCopy = id;
  configurationCopy = configuration;
  languageCopy = language;
  v23 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E200];
  [v23 trainAppLMWithLanguage:languageCopy configuration:configurationCopy appBundleId:idCopy appLmDataFile:fileCopy appLmModelFile:modelFileCopy appLmDataFileSandboxExtension:extensionCopy completion:completionCopy];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmModelFile:(id)modelFile appLmDataFileSandboxExtension:(id)extension
{
  extensionCopy = extension;
  modelFileCopy = modelFile;
  fileCopy = file;
  idCopy = id;
  configurationCopy = configuration;
  languageCopy = language;
  v20 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E1E0];
  [v20 trainAppLMWithLanguage:languageCopy configuration:configurationCopy appBundleId:idCopy appLmDataFile:fileCopy appLmModelFile:modelFileCopy appLmDataFileSandboxExtension:extensionCopy];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension
{
  extensionCopy = extension;
  fileCopy = file;
  idCopy = id;
  configurationCopy = configuration;
  languageCopy = language;
  v17 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E1C0];
  [v17 trainAppLMWithLanguage:languageCopy configuration:configurationCopy appBundleId:idCopy appLmDataFile:fileCopy appLmDataFileSandboxExtension:extensionCopy];
}

- (void)trainAppLMWithLanguage:(id)language configuration:(id)configuration appBundleId:(id)id appLmDataFile:(id)file appLmDataFileSandboxExtension:(id)extension completion:(id)completion
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BD20;
  v21[3] = &unk_100252368;
  completionCopy = completion;
  v14 = completionCopy;
  extensionCopy = extension;
  fileCopy = file;
  idCopy = id;
  configurationCopy = configuration;
  languageCopy = language;
  v20 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v21];
  [v20 trainAppLMWithLanguage:languageCopy configuration:configurationCopy appBundleId:idCopy appLmDataFile:fileCopy appLmDataFileSandboxExtension:extensionCopy completion:v14];
}

- (void)trainGlobalNNLMwithFidesSessionURL:(id)l completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BEF8;
  v9[3] = &unk_100252368;
  completionCopy = completion;
  v6 = completionCopy;
  lCopy = l;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v9];
  [v8 trainGlobalNNLMwithFidesSessionURL:lCopy completion:v6];
}

- (void)trainPersonalizedLMWithLanguage:(id)language configuration:(id)configuration asset:(id)asset directory:(id)directory completion:(id)completion
{
  languageCopy = language;
  configurationCopy = configuration;
  assetCopy = asset;
  directoryCopy = directory;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000C7D4;
  v45[3] = &unk_10024E1A0;
  completionCopy = completion;
  v46 = completionCopy;
  v40 = objc_retainBlock(v45);
  v15 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  firstObject = [v15 firstObject];

  v17 = [firstObject stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM"];
  stringByStandardizingPath = [v17 stringByStandardizingPath];

  v19 = [firstObject stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM_Fides"];
  stringByStandardizingPath2 = [v19 stringByStandardizingPath];

  v21 = qword_10029DF20;
  if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v50 = stringByStandardizingPath;
    v51 = 2112;
    v52 = stringByStandardizingPath2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "personalizedLMPath=%@ fidesPersonalizedLMPath=%@", buf, 0x16u);
  }

  if ([directoryCopy isEqualToString:stringByStandardizingPath])
  {
    v22 = qword_10029DF20;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Client is 24-hour job", buf, 2u);
    }

    selfCopy2 = self;
    v24 = languageCopy;
    v25 = languageCopy;
    v26 = configurationCopy;
    v27 = assetCopy;
    v28 = 0;
LABEL_11:
    [(SpeechModelTrainingClient *)selfCopy2 trainPersonalizedLMWithLanguage:v25 configuration:v26 asset:v27 fides:v28 activity:0 completion:completionCopy];
    goto LABEL_12;
  }

  if ([directoryCopy isEqualToString:stringByStandardizingPath2])
  {
    v29 = qword_10029DF20;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Client is DictationPersonalizationFidesPlugin", buf, 2u);
    }

    selfCopy2 = self;
    v24 = languageCopy;
    v25 = languageCopy;
    v26 = configurationCopy;
    v27 = assetCopy;
    v28 = 1;
    goto LABEL_11;
  }

  if ([directoryCopy length])
  {
    directoryCopy = [[NSString alloc] initWithFormat:@"Input directory path(%@) does not match expected path", directoryCopy];
    v31 = qword_10029DF20;
    v32 = directoryCopy;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v47 = NSLocalizedDescriptionKey;
    v48 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v34 = [NSError errorWithDomain:@"com.apple.siri.speechmodeltraining" code:202 userInfo:v33];
    (v40[2])(v40, 0, v34);

    v24 = languageCopy;
  }

  else
  {
    v35 = qword_10029DF20;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Client is PersonalizedLmFidesPlugin", buf, 2u);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10000C7EC;
    v43[3] = &unk_100252368;
    v36 = v40;
    v44 = v36;
    v37 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v43];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000C8DC;
    v41[3] = &unk_10024E1A0;
    v42 = v36;
    v24 = languageCopy;
    [v37 trainPersonalizedLMWithLanguage:languageCopy configuration:configurationCopy fides:0 write:0 completion:v41];
  }

LABEL_12:
}

- (void)upperCaseString:(id)string completion:(id)completion
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CA68;
  v15[3] = &unk_10024E150;
  completionCopy = completion;
  v6 = completionCopy;
  stringCopy = string;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000CA80;
  v13[3] = &unk_100252368;
  v8 = objc_retainBlock(v15);
  v14 = v8;
  v9 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000CA98;
  v11[3] = &unk_10024E178;
  v12 = v8;
  v10 = v8;
  [v9 upperCaseString:stringCopy withReply:v11];
}

- (void)dealloc
{
  v3 = qword_10029DF20;
  if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc-ing", buf, 2u);
  }

  [(NSXPCConnection *)self->_smtConnection invalidate];
  v4.receiver = self;
  v4.super_class = SpeechModelTrainingClient;
  [(SpeechModelTrainingClient *)&v4 dealloc];
}

- (SpeechModelTrainingClient)init
{
  v12.receiver = self;
  v12.super_class = SpeechModelTrainingClient;
  v2 = [(SpeechModelTrainingClient *)&v12 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.corespeech.speechmodeltraining.xpc" options:0];
    smtConnection = v2->_smtConnection;
    v2->_smtConnection = v3;

    v5 = v2->_smtConnection;
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SpeechModelTrainingProtocol];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v14 count:4];
    v8 = [NSSet setWithArray:v7];

    [v6 setClasses:v8 forSelector:"trainPersonalizedLMWithLanguage:configuration:fides:write:completion:" argumentIndex:0 ofReply:1];
    [v6 setClasses:v8 forSelector:"trainAppLMWithLanguage:configuration:appBundleId:appLmDataFile:appLmDataFileSandboxExtension:completion:" argumentIndex:0 ofReply:1];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v13 count:2];
    v10 = [NSSet setWithArray:v9];
    [v6 setClasses:v10 forSelector:"trainAppLMWithLanguage:configuration:appBundleId:appLmDataFile:appLmDataFileSandboxExtension:completion:" argumentIndex:1 ofReply:1];

    [v6 setClasses:v8 forSelector:"trainAllAppLMWithLanguage:completion:" argumentIndex:0 ofReply:1];
    [v6 setClasses:v8 forSelector:"buildPhoneticMatchWithLanguage:saveIntermediateFsts:completion:" argumentIndex:0 ofReply:1];

    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];
    [(NSXPCConnection *)v2->_smtConnection setInterruptionHandler:&stru_10024E108];
    [(NSXPCConnection *)v2->_smtConnection setInvalidationHandler:&stru_10024E128];
    [(NSXPCConnection *)v2->_smtConnection resume];
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = os_log_create("com.apple.speech.speechmodeltraining", "SpeechModelTrainingClient");
    v3 = qword_10029DF20;
    qword_10029DF20 = v2;
  }
}

@end