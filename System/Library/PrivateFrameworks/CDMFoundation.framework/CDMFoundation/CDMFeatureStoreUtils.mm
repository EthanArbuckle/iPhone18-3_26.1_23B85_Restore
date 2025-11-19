@interface CDMFeatureStoreUtils
+ (BOOL)checkFeatureStoreEnabledForExternalBuilds:(id)a3;
+ (BOOL)insertJsonStringToFeatureStore:(id)a3 interactionId:(id)a4 streamId:(id)a5;
+ (BOOL)insertLVCRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertLVCResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertMDRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertMDResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertMRRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertMRResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertNLv4ParserRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertNLv4ParserResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertPSCRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertPSCResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertPreprocessingWrapperToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertRequestToFeatureStoreAsJson:(id)a3;
+ (BOOL)insertResponseToFeatureStoreAsJson:(id)a3;
+ (BOOL)insertSNLCRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertSNLCResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertSpanMatchResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertTokenizerResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertUaaPParserRequestToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)insertUaaPParserResponseToFeatureStore:(id)a3 interactionId:(id)a4;
+ (BOOL)platformSupportedAndEnabled;
+ (id)allowedFSMessagesOnExternalBuilds;
+ (id)cacheStreamInstance:(id)a3;
+ (id)streamCache;
@end

@implementation CDMFeatureStoreUtils

+ (BOOL)insertPreprocessingWrapperToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore:interactionId:]";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertPreprocessingWrapperToFeatureStore", &v15, 0xCu);
  }

  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  v10 = [_TtC13CDMFoundation20CDMProtobufConverter serializePreprocessingWrapperWithWrapper:v7 formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v10 interactionId:v8 streamId:@"PreprocessingWrapper"];
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)insertUaaPParserResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"NLv4Response"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"NLv4Response"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertUaaPParserRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"NLv4Request"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeUaaPParserRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"NLv4Request"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertNLv4ParserResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"NLv4Response"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"NLv4Response"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertNLv4ParserRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"NLv4Request"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeNlv4ParserRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"NLv4Request"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMRResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"MRResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"MRResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMRRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"MRRequest"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMRRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"MRRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMDResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"MDResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"MDResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertMDRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"MDRequest"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeMDRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"MDRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertLVCResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"LVCResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"LVCResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertLVCRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"LVCRequest"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"LVCRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertPSCResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"PSCResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"PSCResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertPSCRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"PSCRequest"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"PSCRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSNLCResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"SNLCITFMResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"SNLCITFMResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSNLCRequestToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"SNLCITFMRequest"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeITFMParserRequestWithRequest:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"SNLCITFMRequest"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertSpanMatchResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"SpanMatchResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeSpanMatchResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"SpanMatchResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertTokenizerResponseToFeatureStore:(id)a3 interactionId:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"TokenizerResponse"] & 1) == 0)
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

  v9 = [_TtC13CDMFoundation20CDMProtobufConverter serializeTokenizerResponseWithResponse:v7 formatType:@"json"];
  v10 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v9 interactionId:v8 streamId:@"TokenizerResponse"];

LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)insertJsonStringToFeatureStore:(id)a3 interactionId:(id)a4 streamId:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:v11] & 1) == 0)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = v11;
      _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s FeatureStoreEnabledForExternalBuilds is not enabled OR streamId=%@ not allowed to be logged", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (!v10)
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = v11;
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
  if (!v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "+[CDMFeatureStoreUtils insertJsonStringToFeatureStore:interactionId:streamId:]";
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
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
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s interactionId=%@, streamId=%@", buf, 0x20u);
  }

  v13 = [CDMFeatureStoreUtils cacheStreamInstance:v11];
  v14 = [objc_alloc(MEMORY[0x1E699C0D0]) initWithJsonStr:v9 interactionId:v10 dataVersion:1];
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
      v28 = v11;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Error while inserting into FeatureStore for streamId=%@: %@", buf, 0x20u);
    }
  }

LABEL_22:
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)insertResponseToFeatureStoreAsJson:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson", &v15, 0xCu);
  }

  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"SiriNluResponseAsJson"] & 1) == 0)
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

  if (v5 && ([v5 requestId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 requestId];
    v9 = [v8 idA];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMFeatureStoreUtils insertResponseToFeatureStoreAsJson:]";
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: The response or requestId within the response is nil. Cannot extract interactionId!", &v15, 0xCu);
    }

    v9 = 0;
  }

  v12 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalNluResponseWithResponse:v5 formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v12 interactionId:v9 streamId:@"SiriNluResponseAsJson"];

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)insertRequestToFeatureStoreAsJson:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson", &v15, 0xCu);
  }

  if (([a1 platformSupportedAndEnabled] & 1) == 0)
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

  if (([a1 checkFeatureStoreEnabledForExternalBuilds:@"SiriNluRequestAsJson"] & 1) == 0)
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

  if (v5 && ([v5 requestId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v5 requestId];
    v9 = [v8 idA];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMFeatureStoreUtils insertRequestToFeatureStoreAsJson:]";
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: The request or requestId within the request is nil. Cannot extract interactionId!", &v15, 0xCu);
    }

    v9 = 0;
  }

  v12 = [_TtC13CDMFoundation20CDMProtobufConverter serializeExternalNluRequestWithRequest:v5 formatType:@"json"];
  v11 = [CDMFeatureStoreUtils insertJsonStringToFeatureStore:v12 interactionId:v9 streamId:@"SiriNluRequestAsJson"];

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)checkFeatureStoreEnabledForExternalBuilds:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v5 = 1;
  }

  else if (+[CDMFeatureFlags isFeatureStoreEnabledForExternalBuilds])
  {
    v6 = [a1 allowedFSMessagesOnExternalBuilds];
    v5 = [v6 containsObject:v4];
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

+ (id)cacheStreamInstance:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = +[CDMFeatureStoreUtils streamCache];
  v7 = [v6 objectForKey:v4];
  if (!v7)
  {
    v7 = [MEMORY[0x1E699C0D8] getWithStreamId:v4];
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[CDMFeatureStoreUtils cacheStreamInstance:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Inserting stream for %@ into FeatureStore stream cache.", &v11, 0x16u);
    }

    [v6 setValue:v7 forKey:v4];
  }

  objc_sync_exit(v5);
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