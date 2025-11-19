@interface CDMRepetitionDetectionService
+ (id)getCDMServiceAssetConfig;
- (id)doInference:(id)a3 status:(id *)a4;
- (id)getPredictor:(id)a3 FilesPath:(id)a4 status:(id *)a5;
- (id)handle:(id)a3;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)a3;
@end

@implementation CDMRepetitionDetectionService

- (id)handleRequestCommandTypeNames
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMRepetitionDetectionRequestCommand];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v7 = @"marrs/rd";
  v8 = @"com.apple.siri.nl.marrs.rd";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];
  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)doInference:(id)a3 status:(id *)a4
{
  v4 = [(QueryRewriter *)self->_repetitionDetector predictWithInput:a3 status:a4];

  return v4;
}

- (id)getPredictor:(id)a3 FilesPath:(id)a4 status:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E69AE150]) initWithLocale:v7 filesPath:v8 predictorType:0 status:a5];

  return v9;
}

- (id)handle:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[CDMRepetitionDetectionService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling Repetition Detection", buf, 0xCu);
  }

  if (!self->_repetitionDetector)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CDMRepetitionDetectionService handle:]";
      _os_log_error_impl(&dword_1DC287000, v11, OS_LOG_TYPE_ERROR, "%s [ERR]: Repetition Detection: Predictor is not initialized correctly!", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v6 = [v4 qrRequest];
  v7 = v6 == 0;

  if (v7)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v21 = "[CDMRepetitionDetectionService handle:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Repetition Detection: qrRequest is nil. Skipping RD Inference", buf, 0xCu);
    }

LABEL_14:
    v12 = 0;
    goto LABEL_21;
  }

  v8 = CDMLogContext;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v4 qrRequest];
    *buf = 136315650;
    v21 = "[CDMRepetitionDetectionService handle:]";
    v22 = 2112;
    v23 = @"queryrewrite";
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nQUERYREWRITEQRRequest: %@", buf, 0x20u);
  }

  v9 = [v4 qrRequest];
  v19 = 0;
  v10 = [(CDMRepetitionDetectionService *)self doInference:v9 status:&v19];
  v11 = v19;

  v12 = [[CDMRepetitionDetectionResponseCommand alloc] initWithResponse:v10];
  [(CDMBaseCommand *)v12 setCmdError:v11];
  if ([v10 repetitionType] == 3)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMRepetitionDetectionService handle:]";
      v14 = "%s Service Result: Full Repetition";
LABEL_17:
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[CDMRepetitionDetectionService handle:]";
      v14 = "%s Service Result: No/Partial/Unavailable Repetition";
      goto LABEL_17;
    }
  }

  v15 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v21 = "[CDMRepetitionDetectionService handle:]";
    v22 = 2112;
    v23 = @"queryrewrite";
    v24 = 2112;
    v25 = v10;
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nQUERYREWRITEQRResponse: %@", buf, 0x20u);
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)setup:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMRepetitionDetectionService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up Repetition Detection service", buf, 0xCu);
  }

  v6 = [v4 dynamicConfig];
  v7 = [v6 getAssetForFactorName:@"com.apple.siri.nl.marrs.rd"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  v9 = [v4 dynamicConfig];
  v10 = [v9 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.rd"];

  if (v10)
  {
    v11 = [v4 dynamicConfig];
    v12 = [v11 languageCode];
    v13 = [v10 resourcePath];
    v23 = 0;
    v14 = [(CDMRepetitionDetectionService *)self getPredictor:v12 FilesPath:v13 status:&v23];
    v15 = v23;
    repetitionDetector = self->_repetitionDetector;
    self->_repetitionDetector = v14;

    if (v15)
    {
      v17 = [v15 localizedDescription];
      v18 = [(CDMBaseService *)self createErrorWithCode:1 description:v17];

      self->super.super._serviceState = 4;
    }

    else
    {
      self->super.super._serviceState = 2;
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v25 = "[CDMRepetitionDetectionService setup:]";
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s Repetition Detector loaded", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find Repetition Detection model bundle directory"];
    self->super.super._serviceState = 4;
  }

  v20 = [(CDMBaseService *)self createSetupResponseCommand];
  [v20 setCmdError:v18];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end