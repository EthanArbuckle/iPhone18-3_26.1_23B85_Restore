@interface CDMFeatureStoreUtils
+ (BOOL)checkFeatureStoreEnabledForExternalBuilds:(id)builds;
+ (BOOL)insertJsonStringToFeatureStore:(id)store interactionId:(id)id streamId:(id)streamId;
+ (BOOL)insertLVCRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertLVCResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertMDRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertMDResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertMRRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertMRResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertNLv4ParserRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertNLv4ParserResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertPSCRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertPSCResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertPreprocessingWrapperToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertRequestToFeatureStoreAsJson:(id)json;
+ (BOOL)insertResponseToFeatureStoreAsJson:(id)json;
+ (BOOL)insertSNLCRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertSNLCResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertSpanMatchResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertTokenizerResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertUaaPParserRequestToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)insertUaaPParserResponseToFeatureStore:(id)store interactionId:(id)id;
+ (BOOL)platformSupportedAndEnabled;
+ (id)allowedFSMessagesOnExternalBuilds;
+ (id)cacheStreamInstance:(id)instance;
+ (id)streamCache;
@end

@implementation CDMFeatureStoreUtils

+ (BOOL)insertPreprocessingWrapperToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore:interactionId:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore", &v15, 0xCu);
  }

  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_10;
  }

  if (!+[CDMPlatformUtils isInternalInstall])
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315138;
      v16 = "+[CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore:interactionId:]";
      _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Device not on internal build. Not inserting PreprocessingWrapper to FeatureStore.", &v15, 0xCu);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:storeCopy formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v10 interactionId:idCopy streamId:@"PreprocessingWrapper"];
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)insertUaaPParserResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertUaaPParserResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"NLv4Response"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertUaaPParserResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"NLv4Response";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"NLv4Response"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertUaaPParserRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertUaaPParserRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"NLv4Request"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertUaaPParserRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"NLv4Request";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"NLv4Request"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertNLv4ParserResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertNLv4ParserResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"NLv4Response"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertNLv4ParserResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"NLv4Response";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"NLv4Response"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertNLv4ParserRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertNLv4ParserRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"NLv4Request"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertNLv4ParserRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"NLv4Request";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"NLv4Request"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMRResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMRResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"MRResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMRResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"MRResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"MRResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMRRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMRRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"MRRequest"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMRRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"MRRequest";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"MRRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMDResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMDResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"MDResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMDResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"MDResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"MDResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMDRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMDRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"MDRequest"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertMDRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"MDRequest";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"MDRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertLVCResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertLVCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"LVCResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertLVCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"LVCResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"LVCResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertLVCRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertLVCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"LVCRequest"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertLVCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"LVCRequest";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"LVCRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertPSCResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertPSCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"PSCResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertPSCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"PSCResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"PSCResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertPSCRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertPSCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"PSCRequest"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertPSCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"PSCRequest";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"PSCRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSNLCResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSNLCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"SNLCITFMResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSNLCResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"SNLCITFMResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"SNLCITFMResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSNLCRequestToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSNLCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"SNLCITFMRequest"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSNLCRequestToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"SNLCITFMRequest";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"SNLCITFMRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSpanMatchResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSpanMatchResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"SpanMatchResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertSpanMatchResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"SpanMatchResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSpanMatchResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"SpanMatchResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertTokenizerResponseToFeatureStore:(id)store interactionId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertTokenizerResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_8;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"TokenizerResponse"] & 1) == 0)
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertTokenizerResponseToFeatureStore:interactionId:]";
      v17 = 2112;
      v18 = @"TokenizerResponse";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeTokenizerResponseWithResponse:storeCopy formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:idCopy streamId:@"TokenizerResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertJsonStringToFeatureStore:(id)store interactionId:(id)id streamId:(id)streamId
{
  v31 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  idCopy = id;
  streamIdCopy = streamId;
  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 136315394;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = v18;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:streamIdCopy] & 1) == 0)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = streamIdCopy;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!idCopy)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = streamIdCopy;
      v19 = "%s [WARN]: A nil interaction ID was passed in for streamId=%@. Skip saving to FeatureStore";
      v20 = v13;
      v21 = 22;
LABEL_20:
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v12 = CDMOSLoggerForCategory(0);
  v13 = v12;
  if (!storeCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = idCopy;
      v29 = 2112;
      v30 = streamIdCopy;
      v19 = "%s [WARN]: The passed in Feature is nil with interactionId=%@ for streamId=%@. Skip saving to FeatureStore";
      v20 = v13;
      v21 = 32;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
    v27 = 2112;
    v28 = idCopy;
    v29 = 2112;
    v30 = streamIdCopy;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s interactionId=%@, streamId=%@", buf, 0x20u);
  }

  v13 = [CDMFeatureStoreUtils cacheStreamInstance:streamIdCopy];
  v14 = [objc_alloc(MEMORY[0x1E699C0D0]) initWithJsonStr:storeCopy interactionId:idCopy dataVersion:1];
  v24 = 0;
  v15 = [v13 insert:v14 error:&v24];
  v16 = v24;
  if (v16)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = streamIdCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error while inserting into FeatureStore for streamId=%@: %@", buf, 0x20u);
    }
  }

LABEL_22:
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)insertResponseToFeatureStoreAsJson:(id)json
{
  v19 = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson", &v15, 0xCu);
  }

  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_12;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"SiriNluResponseAsJson"] & 1) == 0)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
      v17 = 2112;
      v18 = @"SiriNluResponseAsJson";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_17;
  }

  if (jsonCopy && ([jsonCopy requestId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    requestId = [jsonCopy requestId];
    v9 = [requestId idA];
  }

  else
  {
    requestId = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(requestId, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
      _os_log_impl(&dword_1DC287000, requestId, OS_LOG_TYPE_INFO, "%s [WARN]: The response or requestId within the response is nil. Cannot extract interactionId!", &v15, 0xCu);
    }

    v9 = 0;
  }

  v12 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalNluResponseWithResponse:jsonCopy formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v12 interactionId:v9 streamId:@"SiriNluResponseAsJson"];

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)insertRequestToFeatureStoreAsJson:(id)json
{
  v19 = *MEMORY[0x1E69E9840];
  jsonCopy = json;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson", &v15, 0xCu);
  }

  if (([self platformSupportedAndEnabled] & 1) == 0)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = NSStringFromSelector(a2);
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
      v17 = 2112;
      v18 = v10;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s FeatureStore is 1) not enabled on this platform yet or 2) FF is off. So skipping %@", &v15, 0x16u);
    }

    goto LABEL_12;
  }

  if (([self checkFeatureStoreEnabledForExternalBuilds:@"SiriNluRequestAsJson"] & 1) == 0)
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
      v17 = 2112;
      v18 = @"SiriNluRequestAsJson";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", &v15, 0x16u);
    }

LABEL_12:
    v11 = 0;
    goto LABEL_17;
  }

  if (jsonCopy && ([jsonCopy requestId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    requestId = [jsonCopy requestId];
    v9 = [requestId idA];
  }

  else
  {
    requestId = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(requestId, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
      _os_log_impl(&dword_1DC287000, requestId, OS_LOG_TYPE_INFO, "%s [WARN]: The request or requestId within the request is nil. Cannot extract interactionId!", &v15, 0xCu);
    }

    v9 = 0;
  }

  v12 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalNluRequestWithRequest:jsonCopy formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v12 interactionId:v9 streamId:@"SiriNluRequestAsJson"];

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)checkFeatureStoreEnabledForExternalBuilds:(id)builds
{
  v12 = *MEMORY[0x1E69E9840];
  buildsCopy = builds;
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v5 = 1;
  }

  else if (+[CDMFeatureFlags isFeatureStoreEnabledForExternalBuilds])
  {
    allowedFSMessagesOnExternalBuilds = [self allowedFSMessagesOnExternalBuilds];
    v5 = [allowedFSMessagesOnExternalBuilds containsObject:buildsCopy];
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315138;
      v11 = "+[CDMFeatureStoreUtils checkFeatureStoreEnabledForExternalBuilds:]";
      _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s FeatureFlag SiriNL/SiriMiniFeatureStoreEnabledForExternalBuilds disabled, skip inserting into FeatureStore", &v10, 0xCu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)platformSupportedAndEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  if (!+[CDMFeatureFlags isFeatureStoreEnabled])
  {
    v3 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
LABEL_7:

      result = 0;
      goto LABEL_8;
    }

    v6 = 136315138;
    v7 = "+[CDMFeatureStoreUtils platformSupportedAndEnabled]";
    v4 = "%s FeatureFlag SiriNL/SiriMiniFeatureStoreEnabled disabled, skip inserting into FeatureStore";
LABEL_10:
    _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, v4, &v6, 0xCu);
    goto LABEL_7;
  }

  if (([MEMORY[0x1E699C0E0] isSupportedUser] & 1) == 0)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v6 = 136315138;
    v7 = "+[CDMFeatureStoreUtils platformSupportedAndEnabled]";
    v4 = "%s Current user is not a FeatureStore-supported user, skip inserting into FeatureStore";
    goto LABEL_10;
  }

  result = 1;
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)allowedFSMessagesOnExternalBuilds
{
  if (allowedFSMessagesOnExternalBuilds_onceToken != -1)
  {
    dispatch_once(&allowedFSMessagesOnExternalBuilds_onceToken, &__block_literal_global_157);
  }

  v3 = allowedFSMessagesOnExternalBuilds_allowedFSMessagesOnExternalBuilds;

  return v3;
}

uint64_t __57__CDMFeatureStoreUtils_allowedFSMessagesOnExternalBuilds__block_invoke()
{
  allowedFSMessagesOnExternalBuilds_allowedFSMessagesOnExternalBuilds = [MEMORY[0x1E695DFD8] setWithObjects:{@"SiriNluRequestAsJson", @"SiriNluResponseAsJson", @"MDRequest", @"MDResponse", @"MRRequest", @"MRResponse", @"SpanMatchResponse", 0}];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cacheStreamInstance:(id)instance
{
  v15 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[CDMFeatureStoreUtils streamCache];
  v7 = [v6 objectForKey:instanceCopy];
  if (!v7)
  {
    v7 = [MEMORY[0x1E699C0D8] getWithStreamId:instanceCopy];
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[CDMFeatureStoreUtils cacheStreamInstance:]";
      v13 = 2112;
      v14 = instanceCopy;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Inserting stream for %@ into FeatureStore stream cache.", &v11, 0x16u);
    }

    [v6 setValue:v7 forKey:instanceCopy];
  }

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)streamCache
{
  if (streamCache_onceToken != -1)
  {
    dispatch_once(&streamCache_onceToken, &__block_literal_global_4363);
  }

  v3 = streamCache_streamCache;

  return v3;
}

void __35__CDMFeatureStoreUtils_streamCache__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "+[CDMFeatureStoreUtils streamCache]_block_invoke";
    _os_log_impl(&dword_1DC287000, v0, OS_LOG_TYPE_INFO, "%s Initializing FeatureStore stream cache.", &v4, 0xCu);
  }

  v1 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = streamCache_streamCache;
  streamCache_streamCache = v1;

  v3 = *MEMORY[0x1E69E9840];
}

@end