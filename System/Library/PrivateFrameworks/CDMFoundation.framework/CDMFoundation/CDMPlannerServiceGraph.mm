@interface CDMPlannerServiceGraph
+ (id)responseFeatureStoreStreamId;
@end

@implementation CDMPlannerServiceGraph

+ (id)responseFeatureStoreStreamId
{
  v9 = *MEMORY[0x1E69E9840];
  if (+[CDMPlatformUtils isInternalInstall])
  {
    v2 = @"CdmPlannerResponse";
    v3 = @"CdmPlannerResponse";
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315138;
      v8 = "+[CDMPlannerServiceGraph responseFeatureStoreStreamId]";
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Device not on internal build. Not inserting CdmPlannerResponse to FeatureStore.", &v7, 0xCu);
    }

    v2 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

@end