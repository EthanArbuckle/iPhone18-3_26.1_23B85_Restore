@interface QRSELFLoggingUtils
+ (BOOL)emitCCQREvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata;
+ (BOOL)emitCCQRFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code;
+ (BOOL)emitCCQRStartedEventWithMetadata:(id)metadata;
+ (BOOL)emitQueryRewriteEvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata byPredictorType:(int)type;
+ (BOOL)emitQueryRewriteFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code byPredictorType:(int)type;
+ (BOOL)emitQueryRewriteStartedEventWithMetadata:(id)metadata byPredictorType:(int)type;
+ (BOOL)emitRDEvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata;
+ (BOOL)emitRDFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code;
+ (BOOL)emitRDStartedEventWithMetadata:(id)metadata;
+ (id)convertUUID:(id)d;
+ (id)createCCQRContextEvaluatedEvent:(QRResponse *)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createCCQRContextEvaluatedTier1Event:(QRResponse *)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createCCQRContextEventWrapper:(id)wrapper withMetaData:(id)data;
+ (id)createRDContextEvaluatedEvent:(QRResponse *)event withNLXMetadata:(id)metadata;
+ (id)createRDContextEventWrapper:(id)wrapper withMetaData:(id)data;
+ (int)convertMarrsErrorCode:(int64_t)code;
+ (int)convertRepetitionType:(int)type;
+ (int)convertRewriteType:(int)type;
+ (void)emitEvent:(id)event;
@end

@implementation QRSELFLoggingUtils

+ (id)convertUUID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (dCopy)
  {
    v8[1] = [dCopy highInt];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
    v6 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)convertRewriteType:(int)type
{
  if (type == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 1);
  }
}

+ (int)convertRepetitionType:(int)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

+ (int)convertMarrsErrorCode:(int64_t)code
{
  if (code == 129)
  {
    return 1;
  }

  else
  {
    return 2 * (code == 137);
  }
}

+ (BOOL)emitRDFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code
{
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x277D590B0]);
  [v7 setReason:{objc_msgSend(self, "convertMarrsErrorCode:", code)}];
  v8 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v8 setFailed:v7];
  v9 = [self createRDContextEventWrapper:v8 withMetaData:metadataCopy];
  [self emitEvent:v9];

  return 1;
}

+ (BOOL)emitCCQRFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code
{
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x277D59088]);
  [v7 setReason:{objc_msgSend(self, "convertMarrsErrorCode:", code)}];
  v8 = objc_alloc_init(MEMORY[0x277D59070]);
  [v8 setFailed:v7];
  v9 = [self createCCQRContextEventWrapper:v8 withMetaData:metadataCopy];
  [self emitEvent:v9];

  return 1;
}

+ (BOOL)emitQueryRewriteFailedEventWithMetadata:(id)metadata andErrorCode:(int64_t)code byPredictorType:(int)type
{
  v16 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (!type)
  {
    v9 = [self emitRDFailedEventWithMetadata:metadataCopy andErrorCode:code];
    goto LABEL_5;
  }

  if (type == 4)
  {
    v9 = [self emitCCQRFailedEventWithMetadata:metadataCopy andErrorCode:code];
LABEL_5:
    v10 = v9;
    goto LABEL_9;
  }

  v11 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "+[QRSELFLoggingUtils emitQueryRewriteFailedEventWithMetadata:andErrorCode:byPredictorType:]";
    _os_log_debug_impl(&dword_2227A9000, v11, OS_LOG_TYPE_DEBUG, "%s Query rewrite SELF logging event with NoLogging type.", &v14, 0xCu);
  }

  v10 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (BOOL)emitRDEvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata
{
  metadataCopy = metadata;
  memset(v10, 0, sizeof(v10));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v10, response->var0.var0, response->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((response->var0.var1 - response->var0.var0) >> 3));
  v7 = *&response->var3;
  v11 = *&response->var1;
  v12 = v7;
  var5 = response->var5;
  v8 = [self createRDContextEvaluatedEvent:v10 withNLXMetadata:metadataCopy];
  v14 = v10;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v14);
  [self emitEvent:v8];

  return 1;
}

+ (BOOL)emitCCQREvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = objc_alloc(MEMORY[0x277D5AC78]);
  v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v9 = [v7 initWithNSUUID:v8];

  memset(v19, 0, sizeof(v19));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v19, response->var0.var0, response->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((response->var0.var1 - response->var0.var0) >> 3));
  v10 = *&response->var3;
  v20 = *&response->var1;
  v21 = v10;
  var5 = response->var5;
  v11 = [self createCCQRContextEvaluatedEvent:v19 withNLXMetadata:metadataCopy andLinkId:v9];
  v23 = v19;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v23);
  memset(v15, 0, sizeof(v15));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v15, response->var0.var0, response->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((response->var0.var1 - response->var0.var0) >> 3));
  v12 = *&response->var3;
  v16 = *&response->var1;
  v17 = v12;
  v18 = response->var5;
  v13 = [self createCCQRContextEvaluatedTier1Event:v15 withNLXMetadata:metadataCopy andLinkId:v9];
  v23 = v15;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v23);
  [self emitEvent:v11];
  [self emitEvent:v13];

  return 1;
}

+ (BOOL)emitQueryRewriteEvaluatedEventWithResponse:(QRResponse *)response andNLXMetadata:(id)metadata byPredictorType:(int)type
{
  v24 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (!type)
  {
    memset(v15, 0, sizeof(v15));
    std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v15, response->var0.var0, response->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((response->var0.var1 - response->var0.var0) >> 3));
    v16 = *&response->var1;
    v17 = *&response->var3;
    var5 = response->var5;
    v9 = v15;
    v10 = [self emitRDEvaluatedEventWithResponse:v15 andNLXMetadata:metadataCopy];
    goto LABEL_5;
  }

  if (type == 4)
  {
    memset(v19, 0, sizeof(v19));
    std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v19, response->var0.var0, response->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((response->var0.var1 - response->var0.var0) >> 3));
    v20 = *&response->var1;
    v21 = *&response->var3;
    v22 = response->var5;
    v9 = v19;
    v10 = [self emitCCQREvaluatedEventWithResponse:v19 andNLXMetadata:metadataCopy];
LABEL_5:
    v11 = v10;
    *buf = v9;
    std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_9;
  }

  v12 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "+[QRSELFLoggingUtils emitQueryRewriteEvaluatedEventWithResponse:andNLXMetadata:byPredictorType:]";
    _os_log_debug_impl(&dword_2227A9000, v12, OS_LOG_TYPE_DEBUG, "%s Query rewrite SELF logging event with NoLogging type.", buf, 0xCu);
  }

  v11 = 1;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)emitRDStartedEventWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(MEMORY[0x277D590B8]);
  [v5 setExists:1];
  v6 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v6 setStartedOrChanged:v5];
  v7 = [self createRDContextEventWrapper:v6 withMetaData:metadataCopy];
  [self emitEvent:v7];

  return 1;
}

+ (BOOL)emitCCQRStartedEventWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(MEMORY[0x277D59098]);
  [v5 setExists:1];
  v6 = objc_alloc_init(MEMORY[0x277D59070]);
  [v6 setStartedOrChanged:v5];
  v7 = [self createCCQRContextEventWrapper:v6 withMetaData:metadataCopy];
  [self emitEvent:v7];

  return 1;
}

+ (BOOL)emitQueryRewriteStartedEventWithMetadata:(id)metadata byPredictorType:(int)type
{
  v14 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (!type)
  {
    v7 = [self emitRDStartedEventWithMetadata:metadataCopy];
    goto LABEL_5;
  }

  if (type == 4)
  {
    v7 = [self emitCCQRStartedEventWithMetadata:metadataCopy];
LABEL_5:
    v8 = v7;
    goto LABEL_9;
  }

  v9 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "+[QRSELFLoggingUtils emitQueryRewriteStartedEventWithMetadata:byPredictorType:]";
    _os_log_debug_impl(&dword_2227A9000, v9, OS_LOG_TYPE_DEBUG, "%s Query rewrite SELF logging event with NoLogging type.", &v12, 0xCu);
  }

  v8 = 1;
LABEL_9:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)createCCQRContextEvaluatedTier1Event:(QRResponse *)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  metadataCopy = metadata;
  idCopy = id;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  var0 = event->var0.var0;
  if (event->var0.var1 != event->var0.var0)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = var0 + v11;
      if (v13[39] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v13 + 2), *(v13 + 3));
      }

      else
      {
        v14 = *(v13 + 1);
        __p.__r_.__value_.__r.__words[2] = *(v13 + 4);
        *&__p.__r_.__value_.__l.__data_ = v14;
      }

      v15 = [MarrsSiriNLUTypesConverter stdString2NSString:&__p];
      [v9 addObject:v15];

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v12;
      var0 = event->var0.var0;
      v11 += 56;
    }

    while (v12 < 0x6DB6DB6DB6DB6DB7 * ((event->var0.var1 - event->var0.var0) >> 3));
  }

  v16 = objc_alloc_init(MEMORY[0x277D59080]);
  [v16 setRewrittenUserUtterances:v9];
  [v16 setLinkId:idCopy];
  v17 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v17 setEventMetadata:metadataCopy];
  [v17 setMarrsQueryRewriteEvaluatedTier1:v16];

  return v17;
}

+ (id)createRDContextEvaluatedEvent:(QRResponse *)event withNLXMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = objc_alloc_init(MEMORY[0x277D590A8]);
  [v7 setRepetitionType:{objc_msgSend(self, "convertRepetitionType:", event->var1)}];
  var2 = event->var2;
  *&var2 = var2;
  [v7 setFullRepetitionConfidence:var2];
  var3 = event->var3;
  *&var3 = var3;
  [v7 setPartialRepetitionConfidence:var3];
  var4 = event->var4;
  *&var4 = var4;
  [v7 setNoRepetitionConfidence:var4];
  v11 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v11 setEnded:v7];
  v12 = [self createRDContextEventWrapper:v11 withMetaData:metadataCopy];

  return v12;
}

+ (id)createCCQRContextEvaluatedEvent:(QRResponse *)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (event->var0.var1 != event->var0.var0)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = objc_alloc_init(MEMORY[0x277D59090]);
      [v13 setConfidence:*(&event->var0.var0[1].var0.var0 + v11)];
      [v13 setRewriteType:{objc_msgSend(self, "convertRewriteType:", *(&event->var0.var0[1].var0.var1 + v11))}];
      [v10 addObject:v13];

      ++v12;
      v11 += 56;
    }

    while (v12 < 0x6DB6DB6DB6DB6DB7 * ((event->var0.var1 - event->var0.var0) >> 3));
  }

  v14 = objc_alloc_init(MEMORY[0x277D59078]);
  [v14 setQueryRewriteHypotheses:v10];
  [v14 setLinkId:idCopy];
  v15 = objc_alloc_init(MEMORY[0x277D59070]);
  [v15 setEnded:v14];
  v16 = [self createCCQRContextEventWrapper:v15 withMetaData:metadataCopy];

  return v16;
}

+ (id)createRDContextEventWrapper:(id)wrapper withMetaData:(id)data
{
  wrapperCopy = wrapper;
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v7 setMarrsRepetitionDetectionContext:wrapperCopy];
  [v7 setEventMetadata:dataCopy];

  return v7;
}

+ (id)createCCQRContextEventWrapper:(id)wrapper withMetaData:(id)data
{
  wrapperCopy = wrapper;
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v7 setMarrsQueryRewriteContext:wrapperCopy];
  [v7 setEventMetadata:dataCopy];

  return v7;
}

+ (void)emitEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([eventCopy hasEventMetadata] && (objc_msgSend(eventCopy, "eventMetadata"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasNlId"), v4, (v5 & 1) != 0))
  {
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:eventCopy];

    v7 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      eventMetadata = [eventCopy eventMetadata];
      nlId = [eventMetadata nlId];
      toNSUUID = [nlId toNSUUID];
      uUIDString = [toNSUUID UUIDString];
      v13 = 136315394;
      v14 = "+[QRSELFLoggingUtils emitEvent:]";
      v15 = 2080;
      uTF8String = [uUIDString UTF8String];
      _os_log_debug_impl(&dword_2227A9000, v7, OS_LOG_TYPE_DEBUG, "%s Emitted event with NL ID: %s", &v13, 0x16u);
    }
  }

  else
  {
    v7 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "+[QRSELFLoggingUtils emitEvent:]";
      _os_log_debug_impl(&dword_2227A9000, v7, OS_LOG_TYPE_DEBUG, "%s Due to NL ID being Nil, this event won't be emitted.", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end