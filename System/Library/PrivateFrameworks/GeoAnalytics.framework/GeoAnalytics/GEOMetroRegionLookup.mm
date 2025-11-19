@interface GEOMetroRegionLookup
- (id)_lookupRegionWithLocation:(id)a3 countryCode:(id)a4;
- (id)lookupRegionWithLocation:(id)a3;
- (id)lookupRegionWithLocation:(id)a3 countryCodeHint:(id)a4;
@end

@implementation GEOMetroRegionLookup

- (id)_lookupRegionWithLocation:(id)a3 countryCode:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[GEOMetroRegionAssetProvider sharedProvider];
  v8 = [v7 urlForInstalledCountryCode:v6];

  v9 = GEOGetMetroRegionLog();
  v10 = os_log_type_enabled(&v9->super, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1AB634000, &v9->super, OS_LOG_TYPE_INFO, "MA-URL for country code '%@' is '%@'", &v16, 0x16u);
    }

    v9 = [[GEOMetroRegionData alloc] initWithFileURL:v8];
    v11 = objc_alloc_init(MEMORY[0x1E69A1E70]);
    v12 = [v5 copy];
    [v11 setLatLng:v12];

    v13 = [(GEOMetroRegionData *)v9 metroNameForLocation:v11];
  }

  else
  {
    if (v10)
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1AB634000, &v9->super, OS_LOG_TYPE_INFO, "MA-URL unavailable for country code '%@'", &v16, 0xCu);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)lookupRegionWithLocation:(id)a3 countryCodeHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length])
  {
    v8 = [(GEOMetroRegionLookup *)self _lookupRegionWithLocation:v6 countryCode:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(GEOMetroRegionLookup *)self lookupRegionWithLocation:v6];
    }

    v12 = v10;
  }

  else
  {
    v11 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_INFO, "Country code not provided", v14, 2u);
    }

    v12 = @"UNKNOWN";
  }

  return v12;
}

- (id)lookupRegionWithLocation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v6 = [v5 countryCode];

  if (v6)
  {
    v7 = [(GEOMetroRegionLookup *)self _lookupRegionWithLocation:v4 countryCode:v6];
    v8 = v7;
    v9 = @"UNKNOWN";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v11 = GEOGetMetroRegionLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AB634000, v11, OS_LOG_TYPE_INFO, "Could not determine country code", v13, 2u);
    }

    v10 = @"UNKNOWN";
  }

  return v10;
}

@end