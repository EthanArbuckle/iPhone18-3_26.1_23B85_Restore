@interface GEOMAResourceInfo_MetroRegion
+ (id)_defaultQueryParameters;
+ (id)allExisitngInfos;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldPrefetchResource:(id)a3;
- (MADownloadOptions)downloadOptions;
- (NSURL)baseURL;
- (double)timeToLive;
- (unint64_t)policy;
@end

@implementation GEOMAResourceInfo_MetroRegion

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(NSString *)self->_countryCode isEqualToString:v4[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldPrefetchResource:(id)a3
{
  v4 = a3;
  if ([(GEOMAResourceInfo_MetroRegion *)self policy]== 2)
  {
    v5 = +[GEOCountryConfiguration sharedConfiguration];
    v6 = [v5 countryCode];

    v7 = [v4 attributes];
    v8 = [v7 objectForKeyedSubscript:GEOMetroRegionCountryCodeKey];
    v9 = [v8 isEqual:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MADownloadOptions)downloadOptions
{
  v4.receiver = self;
  v4.super_class = GEOMAResourceInfo_MetroRegion;
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
  v3 = GeoServicesConfig_MetroRegionAssetPrefetchCurrentCC[1];
  if (GEOConfigGetBOOL() && (+[GEOCountryConfiguration sharedConfiguration](GEOCountryConfiguration, "sharedConfiguration"), v4 = objc_claimAutoreleasedReturnValue(), [v4 countryCode], v5 = objc_claimAutoreleasedReturnValue(), v4, v6 = -[NSString isEqualToString:](self->_countryCode, "isEqualToString:", v5), v5, (v6 & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (NSURL)baseURL
{
  v6.receiver = self;
  v6.super_class = GEOMAResourceInfo_MetroRegion;
  v3 = [(GEOMAResourceInfo *)&v6 baseURL];
  v4 = [v3 URLByAppendingPathComponent:self->_countryCode isDirectory:1];

  return v4;
}

+ (id)_defaultQueryParameters
{
  v2 = +[GEOCountryConfiguration sharedConfiguration];
  v3 = [v2 countryCode];

  v7[0] = @"Type";
  v7[1] = @"_CompatibilityVersion";
  v8[0] = @"Metro";
  v8[1] = @"1";
  v7[2] = GEOMetroRegionCountryCodeKey;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"_UNK_";
  }

  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (id)allExisitngInfos
{
  +[NSMutableArray array];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000385C4;
  v5[3] = &unk_1000837A0;
  v3 = v7 = a1;
  v6 = v3;
  [GEOMAResource onFileAccessQueueSync:v5];

  return v3;
}

@end