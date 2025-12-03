@interface CDMSELFLogUtil
+ (BOOL)cdmAllServicesSetupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAllServicesSetupFailed:(id)failed logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAllServicesSetupStarted:(id)started logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAllServicesWarmupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAllServicesWarmupFailed:(id)failed logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAllServicesWarmupStarted:(id)started logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAssetSetupEnded:(id)ended contextId:(id)id logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAssetSetupStarted:(id)started contextId:(id)id serviceNames:(id)names logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmAssetsReported:(id)reported metadata:(id)metadata dataDispatcherContext:(id)context;
+ (BOOL)cdmClientSetupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmClientWarmupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmEnded:(id)ended metadata:(id)metadata logMessage:(id)message machAbsoluteTime:(unint64_t)time dataDispatcherContext:(id)context;
+ (BOOL)cdmSetupMissingAssetsDetected:(id)detected contextId:(id)id serviceNames:(id)names logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)cdmXpcProcessingEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)contextUpdateEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)curareRequestLink:(id)link nlId:(id)id metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)emitCurareContext:(id)context metadata:(id)metadata dataDispatcherContext:(id)dispatcherContext;
+ (BOOL)emitEventsFromContainer:(id)container mainEventLogMessage:(id)message machAbsoluteTime:(unint64_t)time logLevel:(id)level dataDispatcherContext:(id)context;
+ (BOOL)emitNLXRequestLink:(id)link logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)emitRequestLink:(id)link metadata:(id)metadata dataDispatcherContext:(id)context;
+ (BOOL)isEventSampledForEmission:(id)emission;
+ (BOOL)matchingSpanEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context;
+ (BOOL)orchestratorRequestLink:(id)link nlId:(id)id metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context;
+ (id)convertNLAssetToSISchemaAsset:(id)asset nlAsset:(id)nlAsset;
+ (id)createSELFMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithConnectionId:(id)connectionId;
+ (id)createSELFMetadataWithRequestId:(id)id;
+ (id)getAssetNameWithLocaleSuffix:(id)suffix locale:(id)locale;
+ (id)getVersionForAsset:(id)asset;
+ (id)mintRequestIdAndCreateSELFMetadataWithRequestId;
+ (int)getLocaleForAsset:(id)asset;
+ (int)stringNodeNameToEnum:(id)enum;
+ (int)stringServiceTypeToEnum:(id)enum;
+ (int)stringXPCSystemEventTypeToEnum:(id)enum;
+ (unsigned)getSampleRateForEvent:(id)event;
@end

@implementation CDMSELFLogUtil

+ (unsigned)getSampleRateForEvent:(id)event
{
  cdmXpcEventProcessingContext = [event cdmXpcEventProcessingContext];

  if (cdmXpcEventProcessingContext)
  {
    return 5;
  }

  else
  {
    return 100;
  }
}

+ (id)mintRequestIdAndCreateSELFMetadataWithRequestId
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69D11C0]);
  v3 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 stringWithFormat:@"%@:0", uUIDString];
  [v2 setIdA:v6];

  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v2 idA];
    *buf = 136315394;
    v13 = "+[CDMSELFLogUtil mintRequestIdAndCreateSELFMetadataWithRequestId]";
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s Generated request id with UUID: %@", buf, 0x16u);
  }

  v8 = [CDMSELFLogUtil createSELFMetadataWithRequestId:v2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)getAssetNameWithLocaleSuffix:(id)suffix locale:(id)locale
{
  suffixCopy = suffix;
  localeCopy = locale;
  v7 = localeCopy;
  if (suffixCopy && localeCopy && ![suffixCopy hasSuffix:localeCopy])
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", suffixCopy, v7];
  }

  else
  {
    v8 = suffixCopy;
  }

  v9 = v8;

  return v9;
}

+ (int)getLocaleForAsset:(id)asset
{
  uppercaseString = [asset uppercaseString];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"LOCALE_", uppercaseString];

  v5 = v4;
  if ([v5 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"LOCALE_AR_AE"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"LOCALE_AR_SA"])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:@"LOCALE_CA_ES"])
  {
    v6 = 3;
  }

  else if ([v5 isEqualToString:@"LOCALE_CS_CZ"])
  {
    v6 = 4;
  }

  else if ([v5 isEqualToString:@"LOCALE_DA_DK"])
  {
    v6 = 5;
  }

  else if ([v5 isEqualToString:@"LOCALE_DE_AT"])
  {
    v6 = 6;
  }

  else if ([v5 isEqualToString:@"LOCALE_DE_CH"])
  {
    v6 = 7;
  }

  else if ([v5 isEqualToString:@"LOCALE_DE_DE"])
  {
    v6 = 8;
  }

  else if ([v5 isEqualToString:@"LOCALE_EL_GR"])
  {
    v6 = 9;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_AE"])
  {
    v6 = 10;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_AU"])
  {
    v6 = 11;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_CA"])
  {
    v6 = 12;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_GB"])
  {
    v6 = 13;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_ID"])
  {
    v6 = 14;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_IE"])
  {
    v6 = 15;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_IN"])
  {
    v6 = 16;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_MY"])
  {
    v6 = 17;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_NZ"])
  {
    v6 = 18;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_PH"])
  {
    v6 = 19;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_SG"])
  {
    v6 = 20;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_SA"])
  {
    v6 = 21;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_US"])
  {
    v6 = 22;
  }

  else if ([v5 isEqualToString:@"LOCALE_EN_ZA"])
  {
    v6 = 23;
  }

  else if ([v5 isEqualToString:@"LOCALE_ES_CL"])
  {
    v6 = 24;
  }

  else if ([v5 isEqualToString:@"LOCALE_ES_CO"])
  {
    v6 = 25;
  }

  else if ([v5 isEqualToString:@"LOCALE_ES_ES"])
  {
    v6 = 26;
  }

  else if ([v5 isEqualToString:@"LOCALE_ES_MX"])
  {
    v6 = 27;
  }

  else if ([v5 isEqualToString:@"LOCALE_ES_US"])
  {
    v6 = 28;
  }

  else if ([v5 isEqualToString:@"LOCALE_FI_FI"])
  {
    v6 = 29;
  }

  else if ([v5 isEqualToString:@"LOCALE_FR_BE"])
  {
    v6 = 30;
  }

  else if ([v5 isEqualToString:@"LOCALE_FR_CA"])
  {
    v6 = 31;
  }

  else if ([v5 isEqualToString:@"LOCALE_FR_CH"])
  {
    v6 = 32;
  }

  else if ([v5 isEqualToString:@"LOCALE_FR_FR"])
  {
    v6 = 33;
  }

  else if ([v5 isEqualToString:@"LOCALE_HE_IL"])
  {
    v6 = 34;
  }

  else if ([v5 isEqualToString:@"LOCALE_HI_IN"])
  {
    v6 = 35;
  }

  else if ([v5 isEqualToString:@"LOCALE_HR_HR"])
  {
    v6 = 36;
  }

  else if ([v5 isEqualToString:@"LOCALE_HU_HU"])
  {
    v6 = 37;
  }

  else if ([v5 isEqualToString:@"LOCALE_ID_ID"])
  {
    v6 = 38;
  }

  else if ([v5 isEqualToString:@"LOCALE_IT_CH"])
  {
    v6 = 39;
  }

  else if ([v5 isEqualToString:@"LOCALE_IT_IT"])
  {
    v6 = 40;
  }

  else if ([v5 isEqualToString:@"LOCALE_JA_JP"])
  {
    v6 = 41;
  }

  else if ([v5 isEqualToString:@"LOCALE_KO_KR"])
  {
    v6 = 42;
  }

  else if ([v5 isEqualToString:@"LOCALE_MS_MY"])
  {
    v6 = 43;
  }

  else if ([v5 isEqualToString:@"LOCALE_NB_NO"])
  {
    v6 = 44;
  }

  else if ([v5 isEqualToString:@"LOCALE_NL_BE"])
  {
    v6 = 45;
  }

  else if ([v5 isEqualToString:@"LOCALE_NL_NL"])
  {
    v6 = 46;
  }

  else if ([v5 isEqualToString:@"LOCALE_PL_PL"])
  {
    v6 = 47;
  }

  else if ([v5 isEqualToString:@"LOCALE_PT_BR"])
  {
    v6 = 48;
  }

  else if ([v5 isEqualToString:@"LOCALE_PT_PT"])
  {
    v6 = 49;
  }

  else if ([v5 isEqualToString:@"LOCALE_RO_RO"])
  {
    v6 = 50;
  }

  else if ([v5 isEqualToString:@"LOCALE_RU_RU"])
  {
    v6 = 51;
  }

  else if ([v5 isEqualToString:@"LOCALE_SK_SK"])
  {
    v6 = 52;
  }

  else if ([v5 isEqualToString:@"LOCALE_SV_SE"])
  {
    v6 = 53;
  }

  else if ([v5 isEqualToString:@"LOCALE_TH_TH"])
  {
    v6 = 54;
  }

  else if ([v5 isEqualToString:@"LOCALE_TR_TR"])
  {
    v6 = 55;
  }

  else if ([v5 isEqualToString:@"LOCALE_UK_UA"])
  {
    v6 = 56;
  }

  else if ([v5 isEqualToString:@"LOCALE_VI_VN"])
  {
    v6 = 57;
  }

  else if ([v5 isEqualToString:@"LOCALE_WUU_CN"])
  {
    v6 = 58;
  }

  else if ([v5 isEqualToString:@"LOCALE_YUE_CN"])
  {
    v6 = 59;
  }

  else if ([v5 isEqualToString:@"LOCALE_ZH_CN"])
  {
    v6 = 60;
  }

  else if ([v5 isEqualToString:@"LOCALE_ZH_HK"])
  {
    v6 = 61;
  }

  else if ([v5 isEqualToString:@"LOCALE_ZH_TW"])
  {
    v6 = 62;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getVersionForAsset:(id)asset
{
  v16 = *MEMORY[0x1E69E9840];
  if (asset)
  {
    v3 = [asset componentsSeparatedByString:@"."];
    v4 = objc_alloc_init(MEMORY[0x1E69CF648]);
    if ([v3 count] >= 2 && objc_msgSend(v3, "count") < 4)
    {
      v7 = [v3 objectAtIndexedSubscript:0];
      [v4 setMajor:{objc_msgSend(v7, "intValue")}];

      v8 = [v3 objectAtIndexedSubscript:1];
      [v4 setMinor:{objc_msgSend(v8, "intValue")}];

      if ([v3 count] == 3)
      {
        v9 = [v3 objectAtIndexedSubscript:2];
        [v4 setPatch:{objc_msgSend(v9, "intValue")}];
      }

      v6 = v4;
    }

    else
    {
      v5 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "+[CDMSELFLogUtil getVersionForAsset:]";
        v14 = 2048;
        v15 = [v3 count];
        _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Version info count is %lu", &v12, 0x16u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)convertNLAssetToSISchemaAsset:(id)asset nlAsset:(id)nlAsset
{
  v5 = MEMORY[0x1E69CF570];
  nlAssetCopy = nlAsset;
  assetCopy = asset;
  v8 = objc_alloc_init(v5);
  getAssetSetName = [nlAssetCopy getAssetSetName];
  [v8 setTrialNamespace:getAssetSetName];

  getAssetLocale = [nlAssetCopy getAssetLocale];
  v11 = [CDMSELFLogUtil getAssetNameWithLocaleSuffix:assetCopy locale:getAssetLocale];

  [v8 setAssetName:v11];
  getAssetLocale2 = [nlAssetCopy getAssetLocale];
  [v8 setAssetLocale:{+[CDMSELFLogUtil getLocaleForAsset:](CDMSELFLogUtil, "getLocaleForAsset:", getAssetLocale2)}];

  getAssetVersion = [nlAssetCopy getAssetVersion];

  v14 = [CDMSELFLogUtil getVersionForAsset:getAssetVersion];
  [v8 setAssetVersion:v14];

  return v8;
}

+ (int)stringXPCSystemEventTypeToEnum:(id)enum
{
  v14 = *MEMORY[0x1E69E9840];
  enumCopy = enum;
  if (enumCopy)
  {
    v4 = +[CDMXPCSystemEventTypeNames getNameStringToEnumDict];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:enumCopy];
      if (v6)
      {
        v7 = v6;
        intValue = [v6 intValue];
LABEL_14:

        goto LABEL_15;
      }

      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringXPCSystemEventTypeToEnum:]";
        _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMXPCSystemEventType with string key, but received nil!", &v12, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringXPCSystemEventTypeToEnum:]";
        _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMXPCSystemEventTypeNames stringToEnumDict, but received nil!", &v12, 0xCu);
      }
    }

    intValue = 0;
    goto LABEL_14;
  }

  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "+[CDMSELFLogUtil stringXPCSystemEventTypeToEnum:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Nil given to stringXPCSystemEventTypeToEnum method!", &v12, 0xCu);
  }

  intValue = 0;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return intValue;
}

+ (int)stringServiceTypeToEnum:(id)enum
{
  v14 = *MEMORY[0x1E69E9840];
  enumCopy = enum;
  if (enumCopy)
  {
    v4 = +[CDMServiceTypeNames getNameStringToEnumDict];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:enumCopy];
      if (v6)
      {
        v7 = v6;
        intValue = [v6 intValue];
LABEL_14:

        goto LABEL_15;
      }

      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringServiceTypeToEnum:]";
        _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMServiceType with string key, but received nil!", &v12, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringServiceTypeToEnum:]";
        _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMServiceTypeNames stringToEnumDict, but received nil!", &v12, 0xCu);
      }
    }

    intValue = 0;
    goto LABEL_14;
  }

  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "+[CDMSELFLogUtil stringServiceTypeToEnum:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Nil given to stringServiceTypeToEnum method!", &v12, 0xCu);
  }

  intValue = 0;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return intValue;
}

+ (int)stringNodeNameToEnum:(id)enum
{
  v14 = *MEMORY[0x1E69E9840];
  enumCopy = enum;
  if (enumCopy)
  {
    v4 = +[CDMServiceNodeNames getNameStringToEnumDict];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:enumCopy];
      if (v6)
      {
        v7 = v6;
        intValue = [v6 intValue];
LABEL_14:

        goto LABEL_15;
      }

      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringNodeNameToEnum:]";
        _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMServiceName with string key, but received nil!", &v12, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "+[CDMSELFLogUtil stringNodeNameToEnum:]";
        _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to fetch CDMServiceNodeNames stringToEnumDict, but received nil!", &v12, 0xCu);
      }
    }

    intValue = 0;
    goto LABEL_14;
  }

  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "+[CDMSELFLogUtil stringNodeNameToEnum:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: Nil given to stringNodeNameToEnum method!", &v12, 0xCu);
  }

  intValue = 0;
LABEL_15:

  v10 = *MEMORY[0x1E69E9840];
  return intValue;
}

+ (BOOL)cdmAssetsReported:(id)reported metadata:(id)metadata dataDispatcherContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  reportedCopy = reported;
  metadataCopy = metadata;
  contextCopy = context;
  v9 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v31 = "+[CDMSELFLogUtil cdmAssetsReported:metadata:dataDispatcherContext:]";
    v32 = 2112;
    v33 = @"assets";
    v34 = 2112;
    v35 = reportedCopy;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nAssets available are: %@", buf, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(reportedCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = reportedCopy;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v11 objectForKey:v16];
        v18 = [CDMSELFLogUtil convertNLAssetToSISchemaAsset:v16 nlAsset:v17];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x1E69D1420] createCDMAssetsReportedLog:v10 metadata:metadataCopy];
  v20 = [CDMSELFLogUtil emitEventsFromContainer:v19 mainEventLogMessage:@"Logging assets information!" dataDispatcherContext:contextCopy];
  if (!v20)
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "+[CDMSELFLogUtil cdmAssetsReported:metadata:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDMAssetsReported event, but there was an issue with emission. Log was not emitted!", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (BOOL)cdmXpcProcessingEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v12 = [v9 createCdmXpcEventProcessingEndedLog:ended metadata:metadata];
  v13 = [CDMSELFLogUtil emitEventsFromContainer:v12 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v13)
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "+[CDMSELFLogUtil cdmXpcProcessingEnded:metadata:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM XPC Processing ended event, but there was an issue with emission. Log was not emitted!", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)cdmSetupMissingAssetsDetected:(id)detected contextId:(id)id serviceNames:(id)names logMessage:(id)message dataDispatcherContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  detectedCopy = detected;
  idCopy = id;
  namesCopy = names;
  messageCopy = message;
  contextCopy = context;
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = namesCopy;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        idCopy = [CDMSELFLogUtil stringServiceTypeToEnum:*(*(&v29 + 1) + 8 * i), idCopy];
        v21 = [MEMORY[0x1E696AD98] numberWithInt:idCopy];
        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x1E69D1420] createCDMSetupMissingAssetsDetectedLog:idCopy services:v14 metadata:detectedCopy];
  v23 = [CDMSELFLogUtil emitEventsFromContainer:v22 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];
  if (!v23)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v34 = "+[CDMSELFLogUtil cdmSetupMissingAssetsDetected:contextId:serviceNames:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDMSetupMissingAssetsDetected event, but there was an issue with emission. Log was not emitted!!", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)cdmAssetSetupEnded:(id)ended contextId:(id)id logMessage:(id)message dataDispatcherContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v12 = [v9 createCDMAssetSetupEndedLog:id metadata:ended];
  v13 = [CDMSELFLogUtil emitEventsFromContainer:v12 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v13)
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "+[CDMSELFLogUtil cdmAssetSetupEnded:contextId:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDMAssetSetup ended event, but there was an issue with emission. Log was not emitted!!", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)cdmAssetSetupStarted:(id)started contextId:(id)id serviceNames:(id)names logMessage:(id)message dataDispatcherContext:(id)context
{
  v36 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  idCopy = id;
  namesCopy = names;
  messageCopy = message;
  contextCopy = context;
  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = namesCopy;
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        idCopy = [CDMSELFLogUtil stringServiceTypeToEnum:*(*(&v29 + 1) + 8 * i), idCopy];
        v21 = [MEMORY[0x1E696AD98] numberWithInt:idCopy];
        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v17);
  }

  v22 = [MEMORY[0x1E69D1420] createCDMAssetSetupStartedLog:idCopy serviceTypes:v14 metadata:startedCopy];
  v23 = [CDMSELFLogUtil emitEventsFromContainer:v22 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];
  if (!v23)
  {
    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v34 = "+[CDMSELFLogUtil cdmAssetSetupStarted:contextId:serviceNames:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDMAssetSetup started event, but there was an issue with emission. Log was not emitted!!", buf, 0xCu);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)cdmAllServicesWarmupFailed:(id)failed logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesWarmupFailedLog:failed];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesWarmupFailed:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Warmup failed event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmAllServicesWarmupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesWarmupEndedLog:ended];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesWarmupEnded:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Warmup ended event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmAllServicesWarmupStarted:(id)started logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesWarmupStartedLog:started];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesWarmupStarted:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Warmup started event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmClientWarmupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMClientWarmupEndedLog:ended];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmClientWarmupEnded:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM Client Warmup ended event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmAllServicesSetupFailed:(id)failed logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesSetupFailedLog:failed];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesSetupFailed:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Setup failed event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmAllServicesSetupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesSetupEndedLog:ended];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesSetupEnded:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Setup ended event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmAllServicesSetupStarted:(id)started logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMAllServicesSetupStartedLog:started];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmAllServicesSetupStarted:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM All Services Setup started event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)cdmClientSetupEnded:(id)ended logMessage:(id)message dataDispatcherContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v10 = [v7 createCDMClientSetupEndedLog:ended];
  v11 = [CDMSELFLogUtil emitEventsFromContainer:v10 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v11)
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "+[CDMSELFLogUtil cdmClientSetupEnded:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM Client Setup ended event, but there was an issue with emission. Log was not emitted!", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)contextUpdateEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v12 = [v9 createContextUpdateEndedLog:0 contextUpdateResponse:ended metadata:metadata];
  v13 = [CDMSELFLogUtil emitEventsFromContainer:v12 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];

  if (!v13)
  {
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v17 = 136315138;
      v18 = "+[CDMSELFLogUtil contextUpdateEnded:metadata:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM context update ended (response) event, but the converted object is nil!", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)matchingSpanEnded:(id)ended metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = CDMLogContext;
  contextCopy = context;
  messageCopy = message;
  metadataCopy = metadata;
  endedCopy = ended;
  v14 = os_signpost_id_generate(v9);
  v15 = CDMLogContext;
  v16 = v15;
  v17 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v26) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SpanMatcher", "SELFLogSpanMatching", &v26, 2u);
  }

  v18 = [MEMORY[0x1E69D1420] createMatchingSpanEndedLog:0 spanMatchResponse:endedCopy metadata:metadataCopy];

  v19 = [CDMSELFLogUtil emitEventsFromContainer:v18 mainEventLogMessage:messageCopy dataDispatcherContext:contextCopy];
  if (v19)
  {
    v20 = CDMLogContext;
    v21 = v20;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v26) = 0;
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_END, v14, "SpanMatcher", "", &v26, 2u);
    }
  }

  else
  {
    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "+[CDMSELFLogUtil matchingSpanEnded:metadata:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM matching span ended (response) event, but the converted object is nil!", &v26, 0xCu);
    }

    v23 = CDMLogContext;
    v21 = v23;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      LOWORD(v26) = 0;
      goto LABEL_13;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)cdmEnded:(id)ended metadata:(id)metadata logMessage:(id)message machAbsoluteTime:(unint64_t)time dataDispatcherContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69D1420];
  contextCopy = context;
  messageCopy = message;
  v14 = [v11 createCDMRequestEndedLog:ended metadata:metadata];
  v15 = [CDMSELFLogUtil emitEventsFromContainer:v14 mainEventLogMessage:messageCopy machAbsoluteTime:time dataDispatcherContext:contextCopy];

  if (!v15)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 136315138;
      v20 = "+[CDMSELFLogUtil cdmEnded:metadata:logMessage:machAbsoluteTime:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a CDM ended (response) event, but the converted object is nil!", &v19, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (BOOL)emitRequestLink:(id)link metadata:(id)metadata dataDispatcherContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  metadataCopy = metadata;
  contextCopy = context;
  if (!linkCopy)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v26 = 136315138;
    v27 = "+[CDMSELFLogUtil emitRequestLink:metadata:dataDispatcherContext:]";
    v17 = "%s [WARN]: SELF RequestLink was attemped to be emitted, but the received RequestLinkData was nil! RequestLink not emitted!";
LABEL_9:
    _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, v17, &v26, 0xCu);
    goto LABEL_10;
  }

  targetName = [linkCopy targetName];

  if (!targetName)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v26 = 136315138;
    v27 = "+[CDMSELFLogUtil emitRequestLink:metadata:dataDispatcherContext:]";
    v17 = "%s [WARN]: SELF RequestLink was attempted to be emitted, but the target name was not set in the received RequestLinkData! RequestLink not emitted!";
    goto LABEL_9;
  }

  targetName2 = [linkCopy targetName];
  v12 = [targetName2 isEqualToString:@"ORCHESTRATOR"];

  if (v12)
  {
    targetUUID = [linkCopy targetUUID];
    nlId = [linkCopy nlId];
    v15 = [CDMSELFLogUtil orchestratorRequestLink:targetUUID nlId:nlId metadata:metadataCopy logMessage:@"SELF emitting RequestLink message linking NLX and Orchestrator" dataDispatcherContext:contextCopy];
LABEL_13:
    v18 = v15;

LABEL_14:
    goto LABEL_15;
  }

  targetName3 = [linkCopy targetName];
  v20 = [targetName3 isEqualToString:@"CURARE"];

  if (v20)
  {
    targetUUID2 = [linkCopy targetUUID];
    [CDMSELFLogUtil emitCurareContext:targetUUID2 metadata:metadataCopy dataDispatcherContext:contextCopy];

    targetUUID = [linkCopy targetUUID];
    nlId = [linkCopy nlId];
    v15 = [CDMSELFLogUtil curareRequestLink:targetUUID nlId:nlId metadata:metadataCopy logMessage:@"SELF emitting RequestLink message linking NLX and Curare" dataDispatcherContext:contextCopy];
    goto LABEL_13;
  }

  targetName4 = [linkCopy targetName];
  v25 = [targetName4 isEqualToString:@"LIGHTHOUSE"];

  if (v25)
  {
    targetUUID = [linkCopy targetUUID];
    v18 = [CDMSELFLogUtil emitCurareContext:targetUUID metadata:metadataCopy dataDispatcherContext:contextCopy];
    goto LABEL_14;
  }

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v26 = 136315138;
    v27 = "+[CDMSELFLogUtil emitRequestLink:metadata:dataDispatcherContext:]";
    v17 = "%s [WARN]: SELF RequestLink was attempted to be emitted, but the requestId target was neither ORCHESTRATOR nor CURARE! RequestLink not emitted!";
    goto LABEL_9;
  }

LABEL_10:

  v18 = 0;
LABEL_15:

  v22 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)emitCurareContext:(id)context metadata:(id)metadata dataDispatcherContext:(id)dispatcherContext
{
  v15 = *MEMORY[0x1E69E9840];
  dispatcherContextCopy = dispatcherContext;
  if (context)
  {
    v8 = [MEMORY[0x1E69D1420] createNLXCurareContext:context metadata:metadata];
    v9 = [CDMSELFLogUtil emitEventsFromContainer:v8 mainEventLogMessage:@"SELF emitting CurareContext" dataDispatcherContext:dispatcherContextCopy];
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 136315138;
      v14 = "+[CDMSELFLogUtil emitCurareContext:metadata:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v10, OS_LOG_TYPE_INFO, "%s [WARN]: SELF CurareContext - given curare ID was nil! Not emitting CurareContext log as it is meaningless.", &v13, 0xCu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)curareRequestLink:(id)link nlId:(id)id metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  idCopy = id;
  metadataCopy = metadata;
  messageCopy = message;
  contextCopy = context;
  if (!linkCopy)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = "+[CDMSELFLogUtil curareRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      v18 = "%s [WARN]: Tried to create a Curare RequestLink but received nil sourceId (Curare Id)!";
LABEL_9:
      _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, v18, &v22, 0xCu);
    }

LABEL_13:
    v17 = 0;
    goto LABEL_14;
  }

  if (!idCopy)
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = "+[CDMSELFLogUtil curareRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      v18 = "%s [WARN]: Tried to create a Curare RequestLink but had nil nluRequestId!";
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E69D1420] createNLXRequestLinkWithTarget:16 andTargetId:linkCopy metadata:metadataCopy];
  if (![CDMSELFLogUtil emitNLXRequestLink:v16 logMessage:messageCopy dataDispatcherContext:contextCopy])
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v22 = 136315138;
      v23 = "+[CDMSELFLogUtil curareRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a Curare RequestLink, but there was an issue and could not emit!", &v22, 0xCu);
    }

    goto LABEL_13;
  }

  v17 = 1;
LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (BOOL)orchestratorRequestLink:(id)link nlId:(id)id metadata:(id)metadata logMessage:(id)message dataDispatcherContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  idCopy = id;
  metadataCopy = metadata;
  messageCopy = message;
  contextCopy = context;
  if (!linkCopy)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "+[CDMSELFLogUtil orchestratorRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      v19 = "%s [WARN]: Tried to create an orchestrator RequestLink but received nil sourceId (Orchestration Id)!";
LABEL_12:
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, v19, &v23, 0xCu);
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (!idCopy)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "+[CDMSELFLogUtil orchestratorRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      v19 = "%s [WARN]: Tried to create an orchestrator RequestLink but had nil nluRequestId!";
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (AFDeviceSupportsSAE())
  {
    v16 = 43;
  }

  else
  {
    v16 = 1;
  }

  v17 = [MEMORY[0x1E69D1420] createNLXRequestLinkWithTarget:v16 andTargetId:linkCopy metadata:metadataCopy];
  if (![CDMSELFLogUtil emitNLXRequestLink:v17 logMessage:messageCopy dataDispatcherContext:contextCopy])
  {
    v20 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v23 = 136315138;
      v24 = "+[CDMSELFLogUtil orchestratorRequestLink:nlId:metadata:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v20, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit an orchestrator RequestLink, but there was an issue and could not emit!", &v23, 0xCu);
    }

    goto LABEL_16;
  }

  v18 = 1;
LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (BOOL)emitNLXRequestLink:(id)link logMessage:(id)message dataDispatcherContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  messageCopy = message;
  if (linkCopy)
  {
    mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
    [mEMORY[0x1E69CE1F0] emitMessage:linkCopy];

    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315394;
      v13 = "+[CDMSELFLogUtil emitNLXRequestLink:logMessage:dataDispatcherContext:]";
      v14 = 2112;
      v15 = messageCopy;
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "+[CDMSELFLogUtil emitNLXRequestLink:logMessage:dataDispatcherContext:]";
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Tried to emit a SELF RequestLink, but the given RequestLink was nil!", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return linkCopy != 0;
}

+ (BOOL)isEventSampledForEmission:(id)emission
{
  v22 = *MEMORY[0x1E69E9840];
  emissionCopy = emission;
  v4 = [CDMSELFLogUtil getSampleRateForEvent:emissionCopy];
  if (v4 > 0x63)
  {
    goto LABEL_9;
  }

  v5 = v4;
  eventMetadata = [emissionCopy eventMetadata];
  nlId = [eventMetadata nlId];
  toSafeNSUUID = [nlId toSafeNSUUID];
  uUIDString = [toSafeNSUUID UUIDString];
  v10 = [uUIDString substringToIndex:8];

  uTF8String = [v10 UTF8String];
  if (uTF8String)
  {
    v12 = strtoul(uTF8String, 0, 16);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:@"Invalid NL ID substring" format:@"The substring from NL ID is nil!"];
    v12 = 0;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "+[CDMSELFLogUtil isEventSampledForEmission:]";
    v20 = 2048;
    v21 = v12;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s NLX SELF log sampling value: %lu", &v18, 0x16u);
  }

  if (v12 % 0x64 < v5)
  {

LABEL_9:
    v14 = 1;
    goto LABEL_13;
  }

  v15 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315138;
    v19 = "+[CDMSELFLogUtil isEventSampledForEmission:]";
    _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s NLX SELF log sampled via NL ID", &v18, 0xCu);
  }

  v14 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (BOOL)emitEventsFromContainer:(id)container mainEventLogMessage:(id)message machAbsoluteTime:(unint64_t)time logLevel:(id)level dataDispatcherContext:(id)context
{
  v59 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  messageCopy = message;
  levelCopy = level;
  contextCopy = context;
  v15 = contextCopy;
  if (!contextCopy || ([(CDMDataDispatcherContext *)contextCopy callingBundleId], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
      _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s No datadispatchercontext found - using default logging policy", buf, 0xCu);
    }

    v18 = objc_alloc_init(CDMDataDispatcherContext);
    v15 = v18;
  }

  if (![CDMSELFLoggingPolicy isSELFLoggingAllowed:[(CDMDataDispatcherContext *)v15 cdmSELFLoggingPolicyType]])
  {
    tier1Events = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(tier1Events, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    *buf = 136315138;
    v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
    v32 = "%s Tried to emit a SELF event, but logging is not allowed!";
LABEL_22:
    _os_log_debug_impl(&dword_1DC287000, tier1Events, OS_LOG_TYPE_DEBUG, v32, buf, 0xCu);
    goto LABEL_29;
  }

  if (![(CDMDataDispatcherContext *)v15 isSampledForEmission])
  {
    tier1Events = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(tier1Events, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    *buf = 136315138;
    v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
    v32 = "%s Supressing SELF log emission, not sampled.";
    goto LABEL_22;
  }

  if (containerCopy)
  {
    mainEvent = [containerCopy mainEvent];

    if (!mainEvent)
    {
      goto LABEL_53;
    }

    mainEvent2 = [containerCopy mainEvent];
    if ([mainEvent2 hasEventMetadata])
    {
      mainEvent3 = [containerCopy mainEvent];
      eventMetadata = [mainEvent3 eventMetadata];
      hasNlId = [eventMetadata hasNlId];

      if (hasNlId)
      {
        mainEvent4 = [containerCopy mainEvent];
        v25 = [CDMSELFLogUtil isEventSampledForEmission:mainEvent4];

        if (!v25)
        {
          v34 = 0;
          goto LABEL_31;
        }

        cdmSELFLoggingPolicyType = [(CDMDataDispatcherContext *)v15 cdmSELFLoggingPolicyType];
        v27 = CDMOSLoggerForCategory(0);
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
        if (cdmSELFLoggingPolicyType == 1)
        {
          if (v28)
          {
            *buf = 136315138;
            v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
            _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s CDM Log policy - Siri", buf, 0xCu);
          }

          mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedStream];
          mainEvent5 = [containerCopy mainEvent];
          if (time)
          {
            [mEMORY[0x1E69CE1F0] emitMessage:mainEvent5 timestamp:time];
          }

          else
          {
            [mEMORY[0x1E69CE1F0] emitMessage:mainEvent5];
          }
        }

        else
        {
          if (v28)
          {
            *buf = 136315138;
            v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
            _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s CDM Log policy - Non Siri", buf, 0xCu);
          }

          mEMORY[0x1E69CE1F0] = [MEMORY[0x1E69CE1F0] sharedAnalytics];
          mainEvent5 = [mEMORY[0x1E69CE1F0] defaultMessageStream];
          mainEvent6 = [containerCopy mainEvent];
          streamUUID = [(CDMDataDispatcherContext *)v15 streamUUID];
          if (time)
          {
            [mainEvent5 emitMessage:mainEvent6 timestamp:time isolatedStreamUUID:streamUUID];
          }

          else
          {
            [mainEvent5 emitMessage:mainEvent6 isolatedStreamUUID:streamUUID];
          }
        }

        if ([levelCopy isEqualToString:@"LOG_DEBUG"])
        {
          v39 = CDMOSLoggerForCategory(0);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
LABEL_52:

LABEL_53:
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            tier1Events = [containerCopy tier1Events];
            v42 = [tier1Events countByEnumeratingWithState:&v50 objects:v54 count:16];
            if (v42)
            {
              v43 = v42;
              v49 = levelCopy;
              v44 = *v51;
              do
              {
                for (i = 0; i != v43; ++i)
                {
                  if (*v51 != v44)
                  {
                    objc_enumerationMutation(tier1Events);
                  }

                  v46 = *(*(&v50 + 1) + 8 * i);
                  if ([(CDMDataDispatcherContext *)v15 cdmSELFLoggingPolicyType]== 1)
                  {
                    mEMORY[0x1E69CE1F0]2 = [MEMORY[0x1E69CE1F0] sharedStream];
                    v48 = mEMORY[0x1E69CE1F0]2;
                    if (time)
                    {
                      [mEMORY[0x1E69CE1F0]2 emitMessage:v46 timestamp:time];
                    }

                    else
                    {
                      [mEMORY[0x1E69CE1F0]2 emitMessage:v46];
                    }
                  }

                  else
                  {
                    v48 = CDMOSLoggerForCategory(0);
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315138;
                      v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
                      _os_log_impl(&dword_1DC287000, v48, OS_LOG_TYPE_INFO, "%s [WARN]: Got a tier1Event for non-siri client", buf, 0xCu);
                    }
                  }
                }

                v43 = [tier1Events countByEnumeratingWithState:&v50 objects:v54 count:16];
              }

              while (v43);
              v34 = 1;
              levelCopy = v49;
            }

            else
            {
              v34 = 1;
            }

            goto LABEL_30;
          }
        }

        else
        {
          if ([levelCopy isEqualToString:@"LOG_WARN"])
          {
            v39 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
              v57 = 2112;
              v58 = messageCopy;
              _os_log_impl(&dword_1DC287000, v39, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
            }

            goto LABEL_52;
          }

          v40 = [levelCopy isEqualToString:@"LOG_ERROR"];
          v41 = CDMOSLoggerForCategory(0);
          v39 = v41;
          if (v40)
          {
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
              v57 = 2112;
              v58 = messageCopy;
              _os_log_error_impl(&dword_1DC287000, v39, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
            }

            goto LABEL_52;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
            _os_log_impl(&dword_1DC287000, v39, OS_LOG_TYPE_INFO, "%s [WARN]: Did not get a valid log level for SELF emitEventsFromContainer. Defaulting to debug level.", buf, 0xCu);
          }

          v39 = CDMOSLoggerForCategory(0);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_52;
          }
        }

        *buf = 136315394;
        v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
        v57 = 2112;
        v58 = messageCopy;
        _os_log_debug_impl(&dword_1DC287000, v39, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        goto LABEL_52;
      }
    }

    else
    {
    }

    tier1Events = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(tier1Events, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
      v33 = "%s [WARN]: Tried to emit a SELF event, but the event's NL ID was nil! This event is not emitted as it is created from a test.";
      goto LABEL_28;
    }
  }

  else
  {
    tier1Events = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(tier1Events, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "+[CDMSELFLogUtil emitEventsFromContainer:mainEventLogMessage:machAbsoluteTime:logLevel:dataDispatcherContext:]";
      v33 = "%s [WARN]: Tried to emit a SELF event, but the given eventContainer was nil!";
LABEL_28:
      _os_log_impl(&dword_1DC287000, tier1Events, OS_LOG_TYPE_INFO, v33, buf, 0xCu);
    }
  }

LABEL_29:
  v34 = 0;
LABEL_30:

LABEL_31:
  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (id)createSELFMetadataWithRequestId:(id)id
{
  v3 = [MEMORY[0x1E69D1420] extractRequestLinkData:id];
  v4 = v3;
  if (v3)
  {
    nlId = [v3 nlId];
    trpId = [v4 trpId];
    targetUUID = [v4 targetUUID];
    resultCandidateId = [v4 resultCandidateId];
    targetName = [v4 targetName];
    v10 = [CDMSELFLogUtil createSELFMetadataWithNlId:nlId andWithTrpId:trpId andWithRequestId:targetUUID andWithResultCandidateId:resultCandidateId andWithConnectionId:targetName];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)createSELFMetadataWithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithConnectionId:(id)connectionId
{
  v32 = *MEMORY[0x1E69E9840];
  idCopy = id;
  trpIdCopy = trpId;
  requestIdCopy = requestId;
  candidateIdCopy = candidateId;
  connectionIdCopy = connectionId;
  v16 = connectionIdCopy;
  v29 = 0;
  if (connectionIdCopy)
  {
    if ([connectionIdCopy isEqualToString:@"ORCHESTRATOR"])
    {
      v17 = 1;
    }

    else if ([v16 isEqualToString:@"CURARE"])
    {
      v17 = 2;
    }

    else if ([v16 isEqualToString:@"LIGHTHOUSE"])
    {
      v17 = 3;
    }

    else
    {
      if (![v16 isEqualToString:@"SPOTLIGHT"])
      {
        goto LABEL_11;
      }

      v17 = 5;
    }

    v29 = v17;
  }

LABEL_11:
  v18 = [MEMORY[0x1E69D13F8] convertFromUUID:requestIdCopy];
  v19 = AFDeviceSupportsSAE();
  v20 = CDMOSLoggerForCategory(0);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    if (v21)
    {
      *buf = 136315138;
      v31 = "+[CDMSELFLogUtil createSELFMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithConnectionId:]";
      _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Device supports AssistantEngine flow, use incoming requestId as subRequestId for NLX", buf, 0xCu);
    }

    v22 = 0;
    v23 = v18;
  }

  else
  {
    if (v21)
    {
      *buf = 136315138;
      v31 = "+[CDMSELFLogUtil createSELFMetadataWithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithConnectionId:]";
      _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Device does NOT support AssistantEngine flow, use incoming requestId as is for NLX", buf, 0xCu);
    }

    v23 = 0;
    v22 = v18;
  }

  v24 = MEMORY[0x1E69D1420];
  v25 = v18;
  v26 = [v24 createNLXClientEventMetadataWithNlId:idCopy andWithTrpId:trpIdCopy andWithRequestId:v22 andWithSubRequestId:v23 andWithResultCandidateId:candidateIdCopy andWithRequester:&v29];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

@end