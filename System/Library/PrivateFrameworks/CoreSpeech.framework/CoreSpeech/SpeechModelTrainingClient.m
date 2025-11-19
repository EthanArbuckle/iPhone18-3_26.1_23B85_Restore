@interface SpeechModelTrainingClient
+ (void)initialize;
- (SpeechModelTrainingClient)init;
- (void)buildSpeechProfileForLanguage:(id)a3;
- (void)dealloc;
- (void)extractBundledOovs:(id)a3 appLmDataFileSandboxExtension:(id)a4 appBundleId:(id)a5 completion:(id)a6;
- (void)generateAudioWithTexts:(id)a3 language:(id)a4 completion:(id)a5;
- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12;
- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedTokens:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12;
- (void)invalidate;
- (void)trainAllAppLMWithLanguage:(id)a3;
- (void)trainAllAppLMWithLanguage:(id)a3 completion:(id)a4;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7 completion:(id)a8;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8;
- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8 completion:(id)a9;
- (void)trainGlobalNNLMwithFidesSessionURL:(id)a3 completion:(id)a4;
- (void)trainPartialAllAppLMWithLanguage:(id)a3;
- (void)trainPartialAllAppLMWithLanguage:(id)a3 completion:(id)a4;
- (void)trainPersonalizedLMWithLanguage:(id)a3 configuration:(id)a4 asset:(id)a5 directory:(id)a6 completion:(id)a7;
- (void)upperCaseString:(id)a3 completion:(id)a4;
- (void)wakeUpWithCompletion:(id)a3;
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

- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedNbest:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000A440;
  v29[3] = &unk_100252368;
  v30 = a12;
  v18 = v30;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v29];
  [v27 generateConfusionPairsWithUUID:v26 parameters:v25 language:v24 task:v23 samplingRate:a7 recognizedNbest:v22 recognizedText:v21 correctedText:v20 selectedAlternatives:v19 completion:v18];
}

- (void)generateConfusionPairsWithUUID:(id)a3 parameters:(id)a4 language:(id)a5 task:(id)a6 samplingRate:(unint64_t)a7 recognizedTokens:(id)a8 recognizedText:(id)a9 correctedText:(id)a10 selectedAlternatives:(id)a11 completion:(id)a12
{
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000A6AC;
  v29[3] = &unk_100252368;
  v30 = a12;
  v18 = v30;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a8;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v29];
  [v27 generateConfusionPairsWithUUID:v26 parameters:v25 language:v24 task:v23 samplingRate:a7 recognizedTokens:v22 recognizedText:v21 correctedText:v20 selectedAlternatives:v19 completion:v18];
}

- (void)generateAudioWithTexts:(id)a3 language:(id)a4 completion:(id)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A88C;
  v12[3] = &unk_100252368;
  v13 = a5;
  v8 = v13;
  v9 = a4;
  v10 = a3;
  v11 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v12];
  [v11 generateAudioWithTexts:v10 language:v9 completion:v8];
}

- (void)buildSpeechProfileForLanguage:(id)a3
{
  v5 = a3;
  if (_os_feature_enabled_impl())
  {
    NSLog(@"buildSpeechProfile is unavailable when siri_vocabulary_speech_profile feature flag is enabled.");
  }

  else
  {
    v4 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E280];
    [v4 buildSpeechProfileForLanguage:v5];
  }
}

- (void)extractBundledOovs:(id)a3 appLmDataFileSandboxExtension:(id)a4 appBundleId:(id)a5 completion:(id)a6
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AE38;
  v15[3] = &unk_100252368;
  v16 = a6;
  v10 = v16;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v15];
  [v14 extractBundledOovs:v13 appLmDataFileSandboxExtension:v12 appBundleId:v11 completion:v10];
}

- (void)trainPartialAllAppLMWithLanguage:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E260];
  [v8 trainPartialAllAppLMWithLanguage:v7 completion:v6];
}

- (void)trainPartialAllAppLMWithLanguage:(id)a3
{
  v4 = a3;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E240];
  [v5 trainPartialAllAppLMWithLanguage:v4];
}

- (void)trainAllAppLMWithLanguage:(id)a3
{
  v4 = a3;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E220];
  [v5 trainAllAppLMWithLanguage:v4];
}

- (void)trainAllAppLMWithLanguage:(id)a3 completion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B404;
  v9[3] = &unk_100252368;
  v10 = a4;
  v6 = v10;
  v7 = a3;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v9];
  [v8 trainAllAppLMWithLanguage:v7 completion:v6];
}

- (void)wakeUpWithCompletion:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000B5B8;
  v6[3] = &unk_100252368;
  v7 = a3;
  v4 = v7;
  v5 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v6];
  [v5 wakeUpWithCompletion:v4];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8 completion:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E200];
  [v23 trainAppLMWithLanguage:v22 configuration:v21 appBundleId:v20 appLmDataFile:v19 appLmModelFile:v18 appLmDataFileSandboxExtension:v17 completion:v16];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmModelFile:(id)a7 appLmDataFileSandboxExtension:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E1E0];
  [v20 trainAppLMWithLanguage:v19 configuration:v18 appBundleId:v17 appLmDataFile:v16 appLmModelFile:v15 appLmDataFileSandboxExtension:v14];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:&stru_10024E1C0];
  [v17 trainAppLMWithLanguage:v16 configuration:v15 appBundleId:v14 appLmDataFile:v13 appLmDataFileSandboxExtension:v12];
}

- (void)trainAppLMWithLanguage:(id)a3 configuration:(id)a4 appBundleId:(id)a5 appLmDataFile:(id)a6 appLmDataFileSandboxExtension:(id)a7 completion:(id)a8
{
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000BD20;
  v21[3] = &unk_100252368;
  v22 = a8;
  v14 = v22;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v21];
  [v20 trainAppLMWithLanguage:v19 configuration:v18 appBundleId:v17 appLmDataFile:v16 appLmDataFileSandboxExtension:v15 completion:v14];
}

- (void)trainGlobalNNLMwithFidesSessionURL:(id)a3 completion:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000BEF8;
  v9[3] = &unk_100252368;
  v10 = a4;
  v6 = v10;
  v7 = a3;
  v8 = [(SpeechModelTrainingClient *)self _serviceProxyWithErrorHandler:v9];
  [v8 trainGlobalNNLMwithFidesSessionURL:v7 completion:v6];
}

- (void)trainPersonalizedLMWithLanguage:(id)a3 configuration:(id)a4 asset:(id)a5 directory:(id)a6 completion:(id)a7
{
  v39 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000C7D4;
  v45[3] = &unk_10024E1A0;
  v14 = a7;
  v46 = v14;
  v40 = objc_retainBlock(v45);
  v15 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v16 = [v15 firstObject];

  v17 = [v16 stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM"];
  v18 = [v17 stringByStandardizingPath];

  v19 = [v16 stringByAppendingPathComponent:@"Assistant/SpeechPersonalizedLM_Fides"];
  v20 = [v19 stringByStandardizingPath];

  v21 = qword_10029DF20;
  if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v50 = v18;
    v51 = 2112;
    v52 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "personalizedLMPath=%@ fidesPersonalizedLMPath=%@", buf, 0x16u);
  }

  if ([v13 isEqualToString:v18])
  {
    v22 = qword_10029DF20;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Client is 24-hour job", buf, 2u);
    }

    v23 = self;
    v24 = v39;
    v25 = v39;
    v26 = v11;
    v27 = v12;
    v28 = 0;
LABEL_11:
    [(SpeechModelTrainingClient *)v23 trainPersonalizedLMWithLanguage:v25 configuration:v26 asset:v27 fides:v28 activity:0 completion:v14];
    goto LABEL_12;
  }

  if ([v13 isEqualToString:v20])
  {
    v29 = qword_10029DF20;
    if (os_log_type_enabled(qword_10029DF20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Client is DictationPersonalizationFidesPlugin", buf, 2u);
    }

    v23 = self;
    v24 = v39;
    v25 = v39;
    v26 = v11;
    v27 = v12;
    v28 = 1;
    goto LABEL_11;
  }

  if ([v13 length])
  {
    v30 = [[NSString alloc] initWithFormat:@"Input directory path(%@) does not match expected path", v13];
    v31 = qword_10029DF20;
    v32 = v30;
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

    v24 = v39;
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
    v24 = v39;
    [v37 trainPersonalizedLMWithLanguage:v39 configuration:v11 fides:0 write:0 completion:v41];
  }

LABEL_12:
}

- (void)upperCaseString:(id)a3 completion:(id)a4
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CA68;
  v15[3] = &unk_10024E150;
  v16 = a4;
  v6 = v16;
  v7 = a3;
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
  [v9 upperCaseString:v7 withReply:v11];
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
  if (objc_opt_class() == a1)
  {
    v2 = os_log_create("com.apple.speech.speechmodeltraining", "SpeechModelTrainingClient");
    v3 = qword_10029DF20;
    qword_10029DF20 = v2;
  }
}

@end