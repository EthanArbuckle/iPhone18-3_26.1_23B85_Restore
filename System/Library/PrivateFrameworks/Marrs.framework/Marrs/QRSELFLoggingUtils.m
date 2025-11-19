@interface QRSELFLoggingUtils
+ (BOOL)emitCCQREvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4;
+ (BOOL)emitCCQRFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4;
+ (BOOL)emitCCQRStartedEventWithMetadata:(id)a3;
+ (BOOL)emitQueryRewriteEvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4 byPredictorType:(int)a5;
+ (BOOL)emitQueryRewriteFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4 byPredictorType:(int)a5;
+ (BOOL)emitQueryRewriteStartedEventWithMetadata:(id)a3 byPredictorType:(int)a4;
+ (BOOL)emitRDEvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4;
+ (BOOL)emitRDFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4;
+ (BOOL)emitRDStartedEventWithMetadata:(id)a3;
+ (id)convertUUID:(id)a3;
+ (id)createCCQRContextEvaluatedEvent:(QRResponse *)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createCCQRContextEvaluatedTier1Event:(QRResponse *)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5;
+ (id)createCCQRContextEventWrapper:(id)a3 withMetaData:(id)a4;
+ (id)createRDContextEvaluatedEvent:(QRResponse *)a3 withNLXMetadata:(id)a4;
+ (id)createRDContextEventWrapper:(id)a3 withMetaData:(id)a4;
+ (int)convertMarrsErrorCode:(int64_t)a3;
+ (int)convertRepetitionType:(int)a3;
+ (int)convertRewriteType:(int)a3;
+ (void)emitEvent:(id)a3;
@end

@implementation QRSELFLoggingUtils

+ (id)convertUUID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v8[1] = [v3 highInt];
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
    v6 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)convertRewriteType:(int)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

+ (int)convertRepetitionType:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)convertMarrsErrorCode:(int64_t)a3
{
  if (a3 == 129)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 137);
  }
}

+ (BOOL)emitRDFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D590B0]);
  [v7 setReason:{objc_msgSend(a1, "convertMarrsErrorCode:", a4)}];
  v8 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v8 setFailed:v7];
  v9 = [a1 createRDContextEventWrapper:v8 withMetaData:v6];
  [a1 emitEvent:v9];

  return 1;
}

+ (BOOL)emitCCQRFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277D59088]);
  [v7 setReason:{objc_msgSend(a1, "convertMarrsErrorCode:", a4)}];
  v8 = objc_alloc_init(MEMORY[0x277D59070]);
  [v8 setFailed:v7];
  v9 = [a1 createCCQRContextEventWrapper:v8 withMetaData:v6];
  [a1 emitEvent:v9];

  return 1;
}

+ (BOOL)emitQueryRewriteFailedEventWithMetadata:(id)a3 andErrorCode:(int64_t)a4 byPredictorType:(int)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!a5)
  {
    v9 = [a1 emitRDFailedEventWithMetadata:v8 andErrorCode:a4];
    goto LABEL_5;
  }

  if (a5 == 4)
  {
    v9 = [a1 emitCCQRFailedEventWithMetadata:v8 andErrorCode:a4];
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

+ (BOOL)emitRDEvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4
{
  v6 = a4;
  memset(v10, 0, sizeof(v10));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v10, a3->var0.var0, a3->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
  v7 = *&a3->var3;
  v11 = *&a3->var1;
  v12 = v7;
  var5 = a3->var5;
  v8 = [a1 createRDContextEvaluatedEvent:v10 withNLXMetadata:v6];
  v14 = v10;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v14);
  [a1 emitEvent:v8];

  return 1;
}

+ (BOOL)emitCCQREvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4
{
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D5AC78]);
  v8 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v9 = [v7 initWithNSUUID:v8];

  memset(v19, 0, sizeof(v19));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v19, a3->var0.var0, a3->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
  v10 = *&a3->var3;
  v20 = *&a3->var1;
  v21 = v10;
  var5 = a3->var5;
  v11 = [a1 createCCQRContextEvaluatedEvent:v19 withNLXMetadata:v6 andLinkId:v9];
  v23 = v19;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v23);
  memset(v15, 0, sizeof(v15));
  std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v15, a3->var0.var0, a3->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
  v12 = *&a3->var3;
  v16 = *&a3->var1;
  v17 = v12;
  v18 = a3->var5;
  v13 = [a1 createCCQRContextEvaluatedTier1Event:v15 withNLXMetadata:v6 andLinkId:v9];
  v23 = v15;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&v23);
  [a1 emitEvent:v11];
  [a1 emitEvent:v13];

  return 1;
}

+ (BOOL)emitQueryRewriteEvaluatedEventWithResponse:(QRResponse *)a3 andNLXMetadata:(id)a4 byPredictorType:(int)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (!a5)
  {
    memset(v15, 0, sizeof(v15));
    std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v15, a3->var0.var0, a3->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
    v16 = *&a3->var1;
    v17 = *&a3->var3;
    var5 = a3->var5;
    v9 = v15;
    v10 = [a1 emitRDEvaluatedEventWithResponse:v15 andNLXMetadata:v8];
    goto LABEL_5;
  }

  if (a5 == 4)
  {
    memset(v19, 0, sizeof(v19));
    std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(v19, a3->var0.var0, a3->var0.var1, 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
    v20 = *&a3->var1;
    v21 = *&a3->var3;
    v22 = a3->var5;
    v9 = v19;
    v10 = [a1 emitCCQREvaluatedEventWithResponse:v19 andNLXMetadata:v8];
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

+ (BOOL)emitRDStartedEventWithMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D590B8]);
  [v5 setExists:1];
  v6 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v6 setStartedOrChanged:v5];
  v7 = [a1 createRDContextEventWrapper:v6 withMetaData:v4];
  [a1 emitEvent:v7];

  return 1;
}

+ (BOOL)emitCCQRStartedEventWithMetadata:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D59098]);
  [v5 setExists:1];
  v6 = objc_alloc_init(MEMORY[0x277D59070]);
  [v6 setStartedOrChanged:v5];
  v7 = [a1 createCCQRContextEventWrapper:v6 withMetaData:v4];
  [a1 emitEvent:v7];

  return 1;
}

+ (BOOL)emitQueryRewriteStartedEventWithMetadata:(id)a3 byPredictorType:(int)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!a4)
  {
    v7 = [a1 emitRDStartedEventWithMetadata:v6];
    goto LABEL_5;
  }

  if (a4 == 4)
  {
    v7 = [a1 emitCCQRStartedEventWithMetadata:v6];
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

+ (id)createCCQRContextEvaluatedTier1Event:(QRResponse *)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  var0 = a3->var0.var0;
  if (a3->var0.var1 != a3->var0.var0)
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
      var0 = a3->var0.var0;
      v11 += 56;
    }

    while (v12 < 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
  }

  v16 = objc_alloc_init(MEMORY[0x277D59080]);
  [v16 setRewrittenUserUtterances:v9];
  [v16 setLinkId:v8];
  v17 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v17 setEventMetadata:v7];
  [v17 setMarrsQueryRewriteEvaluatedTier1:v16];

  return v17;
}

+ (id)createRDContextEvaluatedEvent:(QRResponse *)a3 withNLXMetadata:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D590A8]);
  [v7 setRepetitionType:{objc_msgSend(a1, "convertRepetitionType:", a3->var1)}];
  var2 = a3->var2;
  *&var2 = var2;
  [v7 setFullRepetitionConfidence:var2];
  var3 = a3->var3;
  *&var3 = var3;
  [v7 setPartialRepetitionConfidence:var3];
  var4 = a3->var4;
  *&var4 = var4;
  [v7 setNoRepetitionConfidence:var4];
  v11 = objc_alloc_init(MEMORY[0x277D590A0]);
  [v11 setEnded:v7];
  v12 = [a1 createRDContextEventWrapper:v11 withMetaData:v6];

  return v12;
}

+ (id)createCCQRContextEvaluatedEvent:(QRResponse *)a3 withNLXMetadata:(id)a4 andLinkId:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a3->var0.var1 != a3->var0.var0)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = objc_alloc_init(MEMORY[0x277D59090]);
      [v13 setConfidence:*(&a3->var0.var0[1].var0.var0 + v11)];
      [v13 setRewriteType:{objc_msgSend(a1, "convertRewriteType:", *(&a3->var0.var0[1].var0.var1 + v11))}];
      [v10 addObject:v13];

      ++v12;
      v11 += 56;
    }

    while (v12 < 0x6DB6DB6DB6DB6DB7 * ((a3->var0.var1 - a3->var0.var0) >> 3));
  }

  v14 = objc_alloc_init(MEMORY[0x277D59078]);
  [v14 setQueryRewriteHypotheses:v10];
  [v14 setLinkId:v9];
  v15 = objc_alloc_init(MEMORY[0x277D59070]);
  [v15 setEnded:v14];
  v16 = [a1 createCCQRContextEventWrapper:v15 withMetaData:v8];

  return v16;
}

+ (id)createRDContextEventWrapper:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v7 setMarrsRepetitionDetectionContext:v5];
  [v7 setEventMetadata:v6];

  return v7;
}

+ (id)createCCQRContextEventWrapper:(id)a3 withMetaData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v7 setMarrsQueryRewriteContext:v5];
  [v7 setEventMetadata:v6];

  return v7;
}

+ (void)emitEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 hasEventMetadata] && (objc_msgSend(v3, "eventMetadata"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasNlId"), v4, (v5 & 1) != 0))
  {
    v6 = [MEMORY[0x277D552B8] sharedStream];
    [v6 emitMessage:v3];

    v7 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v3 eventMetadata];
      v9 = [v8 nlId];
      v10 = [v9 toNSUUID];
      v11 = [v10 UUIDString];
      v13 = 136315394;
      v14 = "+[QRSELFLoggingUtils emitEvent:]";
      v15 = 2080;
      v16 = [v11 UTF8String];
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