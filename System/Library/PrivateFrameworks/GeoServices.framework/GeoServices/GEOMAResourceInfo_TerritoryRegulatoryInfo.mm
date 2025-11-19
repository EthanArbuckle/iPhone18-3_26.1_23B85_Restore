@interface GEOMAResourceInfo_TerritoryRegulatoryInfo
+ (id)_defaultQueryParameters;
+ (id)allExisitngInfos;
- (GEOMAResourceInfo_TerritoryRegulatoryInfo)init;
- (MADownloadOptions)downloadOptions;
- (double)timeToLive;
- (unint64_t)policy;
@end

@implementation GEOMAResourceInfo_TerritoryRegulatoryInfo

- (MADownloadOptions)downloadOptions
{
  v4.receiver = self;
  v4.super_class = GEOMAResourceInfo_TerritoryRegulatoryInfo;
  v2 = [(GEOMAResourceInfo *)&v4 _backgroundDownloadOptions];

  return v2;
}

- (double)timeToLive
{
  v2 = GeoServicesConfig_TerritoryRegulatoryAssetTTLDays[1];
  result = GEOConfigGetUInteger();
  if (result < 86400.0)
  {
    result = 86400.0;
  }

  if (result > 7776000.0)
  {
    return 7776000.0;
  }

  return result;
}

- (unint64_t)policy
{
  v2 = GeoServicesConfig_TerritoryRegulatoryAssetPolicy[1];
  result = GEOConfigGetUInteger();
  if (result - 1 >= 4)
  {
    return 1;
  }

  return result;
}

- (GEOMAResourceInfo_TerritoryRegulatoryInfo)init
{
  v3.receiver = self;
  v3.super_class = GEOMAResourceInfo_TerritoryRegulatoryInfo;
  return [(GEOMAResourceInfo *)&v3 initWithType:1 overrides:0];
}

+ (id)_defaultQueryParameters
{
  v4[0] = @"Type";
  v4[1] = @"_CompatibilityVersion";
  v5[0] = @"Territories";
  v5[1] = &off_100089078;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)allExisitngInfos
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100038B94;
  v10 = sub_100038BA4;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100038BAC;
  v5[3] = &unk_1000830A8;
  v5[4] = &v6;
  v5[5] = a1;
  [GEOMAResource onFileAccessQueueSync:v5];
  v2 = v7[5];
  if (!v2)
  {
    v2 = &__NSArray0__struct;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end