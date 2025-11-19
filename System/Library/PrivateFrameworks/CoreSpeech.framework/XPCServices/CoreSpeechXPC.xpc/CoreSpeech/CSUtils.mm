@interface CSUtils
+ (unint64_t)getAssetTypeForNamespace:(id)a3;
+ (void)getTrialIdsForAssetType:(unint64_t)a3 withCompletion:(id)a4;
@end

@implementation CSUtils

+ (void)getTrialIdsForAssetType:(unint64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
  if (a3 == 3)
  {
    v6 = 114;
    v7 = 322;
  }

  else if (a3 == 4)
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
      v14 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s Unknown namespaceId for assetType %{public}lu ", &v11, 0x16u);
      v7 = 0;
      v6 = 0;
    }
  }

  if (v5)
  {
    v10 = [TRINamespace namespaceNameFromId:v7];
    v5[2](v5, v6, v10);
  }
}

+ (unint64_t)getAssetTypeForNamespace:(id)a3
{
  v3 = a3;
  v4 = [TRINamespace namespaceNameFromId:322];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v7 = [TRINamespace namespaceNameFromId:404];
    v8 = [v3 isEqualToString:v7];

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