@interface QueryRewriter
- (QueryRewriter)initWithLocale:(id)a3 filesPath:(id)a4 predictorType:(int)a5 status:(id *)a6;
- (id)predictWithInput:(id)a3 status:(id *)a4;
@end

@implementation QueryRewriter

- (id)predictWithInput:(id)a3 status:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[MarrsSiriNLUTypesUtils emptyResponse];
  v7 = MEMORY[0x277D5DEF8];
  v8 = [v5 cdmRequestId];
  v9 = [v7 extractRequestLinkData:v8];

  if (v9)
  {
    v10 = [v5 nluRequestId];
    v27 = v9;
    v11 = [v9 trpId];
    v12 = [v9 targetUUID];
    v13 = [v5 resultCandidateId];
    v14 = [v5 cdmRequestId];
    v15 = +[QRSELFLoggingUtils createEventMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:](QRSELFLoggingUtils, "createEventMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:", v10, v11, v12, v13, [v14 requester]);

    v9 = v27;
  }

  else
  {
    v16 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[QueryRewriter predictWithInput:status:]";
      _os_log_error_impl(&dword_2227A9000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to generate metadata as RequestLinkData is nil", buf, 0xCu);
    }

    v15 = 0;
  }

  [QRSELFLoggingUtils emitQueryRewriteStartedEventWithMetadata:v15 byPredictorType:self->_predictorType];
  v17 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    predictorName = self->_predictorName;
    *buf = 136315394;
    *&buf[4] = "[QueryRewriter predictWithInput:status:]";
    *&buf[12] = 2112;
    *&buf[14] = predictorName;
    _os_log_debug_impl(&dword_2227A9000, v17, OS_LOG_TYPE_DEBUG, "%s Self logging emitted started event for predictor type %@", buf, 0x16u);
  }

  ptr = self->_plugin.__ptr_;
  [MarrsSiriNLUTypesConverter toPluginRequestObj:v5];
  (**ptr)(buf, ptr, v34);
  v33 = &v34[8];
  std::vector<marrs::qr::orchestration::QRInteraction>::__destroy_vector::operator()[abi:ne200100](&v33);
  v19 = [MarrsSiriNLUTypesConverter fromPluginResponseObj:buf];

  memset(v29, 0, sizeof(v29));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v29, *buf, *&buf[8], 0x6DB6DB6DB6DB6DB7 * ((*&buf[8] - *buf) >> 3));
  v30 = v38;
  v31 = v39;
  v32 = v40;
  [QRSELFLoggingUtils emitQueryRewriteEvaluatedEventWithResponse:v29 andNLXMetadata:v15 byPredictorType:self->_predictorType];
  *v34 = v29;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v34);
  v20 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v26 = self->_predictorName;
    *v34 = 136315394;
    *&v34[4] = "[QueryRewriter predictWithInput:status:]";
    v35 = 2112;
    v36 = v26;
    _os_log_debug_impl(&dword_2227A9000, v20, OS_LOG_TYPE_DEBUG, "%s Self logging emitted evaluated event for predictor type %@", v34, 0x16u);
  }

  if (v40)
  {
    v21 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v34 = 136315138;
      *&v34[4] = "[QueryRewriter predictWithInput:status:]";
      _os_log_debug_impl(&dword_2227A9000, v21, OS_LOG_TYPE_DEBUG, "%s Removing rewriteHypotheses as rewrite is not needed", v34, 0xCu);
    }

    v22 = [v19 rewriteHypotheses];
    [v22 removeAllObjects];
  }

  *v34 = buf;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](v34);
  [PredictorUtils reportPredictStatusWithPredictorName:self->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0 locale:self->_locale];
  if (a4)
  {
    *a4 = [PredictorUtils getPredictStatusWithPredictorName:self->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

- (QueryRewriter)initWithLocale:(id)a3 filesPath:(id)a4 predictorType:(int)a5 status:(id *)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v17 = a4;
  v19.receiver = self;
  v19.super_class = QueryRewriter;
  v9 = [(QueryRewriter *)&v19 init];
  v9->_predictorType = a5;
  v10 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315394;
    buf_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    v22 = 1024;
    LODWORD(v23) = a5;
    _os_log_debug_impl(&dword_2227A9000, v10, OS_LOG_TYPE_DEBUG, "%s Marrs Predictor Initializing: Setting up type %d predictor", &buf, 0x12u);
  }

  v11 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315650;
    buf_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&dword_2227A9000, v11, OS_LOG_TYPE_DEBUG, "%s Path: %@, locale: %@", &buf, 0x20u);
  }

  if (a5 <= 1)
  {
    if (!a5)
    {
      [MarrsSiriNLUTypesConverter NSString2StdString:v17];
      [MarrsSiriNLUTypesConverter NSString2StdString:v18];
      operator new();
    }

    if (a5 == 1)
    {
      [MarrsSiriNLUTypesConverter NSString2StdString:v17];
      [MarrsSiriNLUTypesConverter NSString2StdString:v18];
      operator new();
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        [MarrsSiriNLUTypesConverter NSString2StdString:v17];
        [MarrsSiriNLUTypesConverter NSString2StdString:v18];
        operator new();
      case 3:
        [MarrsSiriNLUTypesConverter NSString2StdString:v17];
        [MarrsSiriNLUTypesConverter NSString2StdString:v18];
        operator new();
      case 4:
        [MarrsSiriNLUTypesConverter NSString2StdString:v17];
        [MarrsSiriNLUTypesConverter NSString2StdString:v18];
        operator new();
    }
  }

  [(QueryRewriter *)v9 setLocale:v18];
  v12 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __p = 136315394;
    __p_4 = "[QueryRewriter initWithLocale:filesPath:predictorType:status:]";
    __sz_4 = 1024;
    __sz_6 = a5;
    _os_log_debug_impl(&dword_2227A9000, v12, OS_LOG_TYPE_DEBUG, "%s Marrs Predictor Initializing: %d predictor setup complete", &__p, 0x12u);
  }

  [PredictorUtils reportInitStatusWithPredictorName:v9->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0 locale:v18];
  if (a6)
  {
    *a6 = [PredictorUtils getInitStatusWithPredictorName:v9->_predictorName domain:@"com.apple.siri.marrs.QueryRewrite" code:0];
  }

  v13 = v9;

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

@end