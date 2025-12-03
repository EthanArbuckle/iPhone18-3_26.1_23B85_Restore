@interface CSUtils
+ (unint64_t)getAssetTypeForNamespace:(id)namespace;
+ (void)getTrialIdsForAssetType:(unint64_t)type withCompletion:(id)completion;
@end

@implementation CSUtils

+ (void)getTrialIdsForAssetType:(unint64_t)type withCompletion:(id)completion
{
  completionCopy = completion;
  if (type == 3)
  {
    v6 = 114;
    v7 = 322;
  }

  else if (type == 4)
  {
    v6 = 117;
    v7 = 404;
  }

  else
  {
    v8 = CSLogContextFacilityCoreSpeech;
    v9 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    v6 = 0;
    if (v9)
    {
      v11 = 136315394;
      v12 = "+[CSUtils(Trial) getTrialIdsForAssetType:withCompletion:]";
      v13 = 2050;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Unknown namespaceId for assetType %{public}lu ", &v11, 0x16u);
      v7 = 0;
      v6 = 0;
    }
  }

  if (completionCopy)
  {
    v10 = [TRINamespace namespaceNameFromId:v7];
    completionCopy[2](completionCopy, v6, v10);
  }
}

+ (unint64_t)getAssetTypeForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v4 = [TRINamespace namespaceNameFromId:322];
  v5 = [namespaceCopy isEqualToString:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = [TRINamespace namespaceNameFromId:404];
    v8 = [namespaceCopy isEqualToString:v7];

    if (v8)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end