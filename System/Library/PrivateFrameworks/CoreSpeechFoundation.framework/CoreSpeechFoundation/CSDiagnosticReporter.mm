@interface CSDiagnosticReporter
+ (id)sharedInstance;
- (CSDiagnosticReporter)init;
- (void)submitAudioIssueReport:(id)report withError:(id)error;
- (void)submitDiagnosticReportWithType:(id)type withSubType:(id)subType withDuration:(double)duration withContext:(id)context;
- (void)submitDiagnosticReportWithType:(id)type withSubType:(id)subType withSubTypeContext:(id)context withDuration:(double)duration withContext:(id)withContext;
@end

@implementation CSDiagnosticReporter

- (void)submitDiagnosticReportWithType:(id)type withSubType:(id)subType withSubTypeContext:(id)context withDuration:(double)duration withContext:(id)withContext
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  withContextCopy = withContext;
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __111__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withSubTypeContext_withDuration_withContext___block_invoke;
  v21[3] = &unk_1E865B8F0;
  v21[4] = self;
  v22 = typeCopy;
  v23 = subTypeCopy;
  v24 = contextCopy;
  durationCopy = duration;
  v25 = withContextCopy;
  v17 = withContextCopy;
  v18 = contextCopy;
  v19 = subTypeCopy;
  v20 = typeCopy;
  dispatch_async(queue, v21);
}

void __111__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withSubTypeContext_withDuration_withContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) reporter];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [MEMORY[0x1E696AE30] processInfo];
  v7 = [v6 processName];
  v8 = [v2 signatureWithDomain:@"CoreSpeech" type:v3 subType:v4 subtypeContext:v5 detectedProcess:v7 triggerThresholdValues:0];

  v9 = [*(a1 + 32) reporter];
  v10 = *(a1 + 72);
  v11 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __111__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withSubTypeContext_withDuration_withContext___block_invoke_2;
  v15[3] = &unk_1E865B8A0;
  v12 = v8;
  v16 = v12;
  LOBYTE(v8) = [v9 snapshotWithSignature:v12 duration:0 event:v11 payload:v15 reply:v10];

  if ((v8 & 1) == 0)
  {
    v13 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withSubTypeContext:withDuration:withContext:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1DDA4B000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to send signature: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __111__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withSubTypeContext_withDuration_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getkSymptomDiagnosticReplySuccess();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = getkSymptomDiagnosticReplySessionID();
      v12 = [v3 objectForKeyedSubscript:v11];
      v17 = 136315650;
      v18 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withSubTypeContext:withDuration:withContext:]_block_invoke_2";
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Auto bug captured for signature: %@ with sessionID: %@", &v17, 0x20u);
LABEL_6:
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v10 = v7;
    v11 = getkSymptomDiagnosticReplyReason();
    v12 = [v3 objectForKeyedSubscript:v11];
    v14 = getkSymptomDiagnosticReplyReasonString();
    v15 = [v3 objectForKeyedSubscript:v14];
    v17 = 136315906;
    v18 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withSubTypeContext:withDuration:withContext:]_block_invoke";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Auto bug capture dampened for signature: %@ with error code: %@ reason: %@", &v17, 0x2Au);

    goto LABEL_6;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)submitDiagnosticReportWithType:(id)type withSubType:(id)subType withDuration:(double)duration withContext:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withDuration_withContext___block_invoke;
  block[3] = &unk_1E865B8C8;
  block[4] = self;
  v18 = typeCopy;
  durationCopy = duration;
  v19 = subTypeCopy;
  v20 = contextCopy;
  v14 = contextCopy;
  v15 = subTypeCopy;
  v16 = typeCopy;
  dispatch_async(queue, block);
}

void __92__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withDuration_withContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) reporter];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696AE30] processInfo];
  v6 = [v5 processName];
  v7 = [v2 signatureWithDomain:@"CoreSpeech" type:v3 subType:v4 detectedProcess:v6 triggerThresholdValues:0];

  v8 = [*(a1 + 32) reporter];
  v9 = *(a1 + 64);
  v10 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withDuration_withContext___block_invoke_2;
  v14[3] = &unk_1E865B8A0;
  v11 = v7;
  v15 = v11;
  LOBYTE(v7) = [v8 snapshotWithSignature:v11 duration:0 event:v10 payload:v14 reply:v9];

  if ((v7 & 1) == 0)
  {
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withDuration:withContext:]_block_invoke";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1DDA4B000, v12, OS_LOG_TYPE_DEFAULT, "%s Failed to send signature: %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __92__CSDiagnosticReporter_submitDiagnosticReportWithType_withSubType_withDuration_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getkSymptomDiagnosticReplySuccess();
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = [v5 BOOLValue];

  v7 = CSLogContextFacilityCoreSpeech;
  v8 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = v7;
      v11 = getkSymptomDiagnosticReplySessionID();
      v12 = [v3 objectForKeyedSubscript:v11];
      v17 = 136315650;
      v18 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withDuration:withContext:]_block_invoke_2";
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Auto bug captured for signature: %@ with sessionID: %@", &v17, 0x20u);
LABEL_6:
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v10 = v7;
    v11 = getkSymptomDiagnosticReplyReason();
    v12 = [v3 objectForKeyedSubscript:v11];
    v14 = getkSymptomDiagnosticReplyReasonString();
    v15 = [v3 objectForKeyedSubscript:v14];
    v17 = 136315906;
    v18 = "[CSDiagnosticReporter submitDiagnosticReportWithType:withSubType:withDuration:withContext:]_block_invoke";
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Auto bug capture dampened for signature: %@ with error code: %@ reason: %@", &v17, 0x2Au);

    goto LABEL_6;
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)submitAudioIssueReport:(id)report withError:(id)error
{
  v6 = MEMORY[0x1E696AEC0];
  errorCopy = error;
  reportCopy = report;
  domain = [errorCopy domain];
  code = [errorCopy code];

  v11 = [v6 stringWithFormat:@"%@.%ld", domain, code];

  [(CSDiagnosticReporter *)self submitDiagnosticReportWithType:@"Audio" withSubType:reportCopy withSubTypeContext:v11 withDuration:0 withContext:10.0];
}

- (CSDiagnosticReporter)init
{
  if (+[CSUtils isDarwinOS])
  {
    goto LABEL_10;
  }

  if (CSIsInternalBuild_onceToken != -1)
  {
    dispatch_once(&CSIsInternalBuild_onceToken, &__block_literal_global_53);
  }

  if (CSIsInternalBuild_isInternal != 1)
  {
LABEL_10:
    selfCopy = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CSDiagnosticReporter;
    v3 = [(CSDiagnosticReporter *)&v12 init];
    if (v3)
    {
      v4 = dispatch_queue_create("CSDiagnosticReporter", 0);
      queue = v3->_queue;
      v3->_queue = v4;

      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v6 = getSDRDiagnosticReporterClass_softClass;
      v17 = getSDRDiagnosticReporterClass_softClass;
      if (!getSDRDiagnosticReporterClass_softClass)
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __getSDRDiagnosticReporterClass_block_invoke;
        v13[3] = &unk_1E865C120;
        v13[4] = &v14;
        __getSDRDiagnosticReporterClass_block_invoke(v13);
        v6 = v15[3];
      }

      v7 = v6;
      _Block_object_dispose(&v14, 8);
      v8 = objc_alloc_init(v6);
      reporter = v3->_reporter;
      v3->_reporter = v8;
    }

    self = v3;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_9738 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9738, &__block_literal_global_9739);
  }

  v3 = sharedInstance_sharedReporter;

  return v3;
}

uint64_t __38__CSDiagnosticReporter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSDiagnosticReporter);
  v1 = sharedInstance_sharedReporter;
  sharedInstance_sharedReporter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end