@interface CWFAssetLocal
+ (BOOL)isValidAssetVersion:(id)a3;
+ (BOOL)isValidOSVersion:(id)a3;
+ (BOOL)isValidRestoreOSVersion:(id)a3;
+ (char)compareOSVersion:(id)a3 withVersion:(id)a4;
+ (char)compareSUCoreRestoreVersion:(id)a3 withVersion:(id)a4;
+ (id)assetIDFromLocalURL:(id)a3;
+ (id)restoreOSVersionFromOSVersion:(id)a3;
- (BOOL)sanityCheckAssetBuildAttribute:(id)a3;
- (BOOL)sanityCheckOSRestoreVersion:(id)a3;
- (BOOL)sanityCheckOSVersion:(id)a3;
- (BOOL)sanityCheckSKUVersion:(id)a3;
- (CWFAssetLocal)initWithAssetType:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 attributes:(id)a6 rootCatalogInfo:(id)a7 localURL:(id)a8;
- (id)getCoreWiFiCatalogDataFromMobileAssetFile:(id)a3;
@end

@implementation CWFAssetLocal

+ (id)assetIDFromLocalURL:(id)a3
{
  v3 = [a3 pathComponents];
  if ([v3 count] < 2)
  {
    v4 = &stru_1F5B8FC80;
  }

  else
  {
    v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 2}];
  }

  return v4;
}

+ (BOOL)isValidAssetVersion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v3];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

+ (BOOL)isValidRestoreOSVersion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v3];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x1E69E9840];
  return v5 != 0;
}

+ (BOOL)isValidOSVersion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [CWFAssetLocal restoreOSVersionFromOSVersion:v3];
  v6 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v5];
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

+ (id)restoreOSVersionFromOSVersion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3 || ([v3 isEqual:&stru_1F5B8FC80] & 1) != 0 || (objc_msgSend(v4, "containsString:", @",") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v8 = [v4 componentsSeparatedByString:@"."];
    v9 = [v8 count];
    if (v9 > 5)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }

      v5 = 0;
    }

    else
    {
      v10 = v9;
      v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v12 = [v8 objectAtIndexedSubscript:0];
      v13 = [v12 isEqualToString:&stru_1F5B8FC80];

      if (v13)
      {
        [v11 appendString:@"0"];
      }

      else
      {
        v16 = [v8 objectAtIndexedSubscript:0];
        [v11 appendString:v16];
      }

      for (i = 1; i != 5; ++i)
      {
        if (i >= v10 || ([v8 objectAtIndexedSubscript:i], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", &stru_1F5B8FC80), v18, (v19 & 1) != 0))
        {
          v20 = @"0";
        }

        else
        {
          v20 = [v8 objectAtIndexedSubscript:i];
        }

        [v11 appendFormat:@".%@", v20];
      }

      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, 0", v11];
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (char)compareOSVersion:(id)a3 withVersion:(id)a4
{
  v5 = a4;
  v6 = [CWFAssetLocal restoreOSVersionFromOSVersion:a3];
  v7 = [CWFAssetLocal restoreOSVersionFromOSVersion:v5];

  LOBYTE(v5) = [CWFAssetLocal compareSUCoreRestoreVersion:v6 withVersion:v7];
  return v5;
}

+ (char)compareSUCoreRestoreVersion:(id)a3 withVersion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v6];

  v8 = [objc_alloc(sub_1E0BFC038()) initWithRestoreVersion:v5];
  if ([v7 isComparable:v8])
  {
    v9 = [v7 compare:v8];
    if (v9 == -1)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v9 == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = -2;
  }

  return v11;
}

- (BOOL)sanityCheckOSRestoreVersion:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_55;
  }

  v6 = [v4 objectForKey:@"_OSRestoreVersionCompatibilities"];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    goto LABEL_54;
  }

  v8 = MGCopyAnswer();
  v9 = v8;
  if (!v8 || [v8 isEqual:&stru_1F5B8FC80])
  {
    v20 = CWFGetOTAOSLog();
    if (v20)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    goto LABEL_53;
  }

  v10 = [v7 objectForKey:v9];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  v12 = [v11 objectForKey:@"_MinOSRestoreVersion"];
  firstSupportedBuild = self->_firstSupportedBuild;
  self->_firstSupportedBuild = v12;

  v14 = [v11 objectForKey:@"_MaxOSRestoreVersion"];
  lastSupportedBuild = self->_lastSupportedBuild;
  self->_lastSupportedBuild = v14;

  if (![CWFAssetLocal isValidRestoreOSVersion:self->_firstSupportedBuild]|| ![CWFAssetLocal isValidRestoreOSVersion:self->_lastSupportedBuild])
  {
    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_42:
    v36 = self->_firstSupportedBuild;
    v38 = self->_lastSupportedBuild;
LABEL_43:
    _os_log_send_and_compose_impl();
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
    v18 = 0;
    goto LABEL_56;
  }

  if (([CWFAssetLocal compareOSRestoreVersion:self->_firstSupportedBuild withVersion:self->_lastSupportedBuild]- 1) <= 0xFDu)
  {
    v23 = CWFGetOTAOSLog();
    if (v23)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  v16 = [sub_1E0BFCECC() sharedDevice];
  v17 = [v16 restoreVersion];

  if (([CWFAssetLocal compareOSRestoreVersion:self->_firstSupportedBuild withVersion:v17]- 1) <= 0xFDu)
  {
    v24 = CWFGetOTAOSLog();
    if (v24)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v37 = self->_firstSupportedBuild;
    goto LABEL_50;
  }

  if (([CWFAssetLocal compareOSRestoreVersion:v17 withVersion:self->_lastSupportedBuild]- 1) <= 0xFDu)
  {
    v26 = CWFGetOTAOSLog();
    if (v26)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v39 = self->_lastSupportedBuild;
LABEL_50:
    _os_log_send_and_compose_impl();
LABEL_51:

    goto LABEL_52;
  }

  v18 = 1;
LABEL_56:

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)sanityCheckOSVersion:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_55;
  }

  v6 = [v4 objectForKey:@"_OSVersionCompatibilities"];
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    goto LABEL_54;
  }

  v8 = MGCopyAnswer();
  v9 = v8;
  if (!v8 || [v8 isEqual:&stru_1F5B8FC80])
  {
    v20 = CWFGetOTAOSLog();
    if (v20)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    goto LABEL_53;
  }

  v10 = [v7 objectForKey:v9];
  v11 = v10;
  if (!v10 || ![v10 count])
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  v12 = [v11 objectForKey:@"_MinOSVersion"];
  firstSupportedOS = self->_firstSupportedOS;
  self->_firstSupportedOS = v12;

  v14 = [v11 objectForKey:@"_MaxOSVersion"];
  lastSupportedOS = self->_lastSupportedOS;
  self->_lastSupportedOS = v14;

  if (![CWFAssetLocal isValidOSVersion:self->_firstSupportedOS]|| ![CWFAssetLocal isValidOSVersion:self->_lastSupportedOS])
  {
    v22 = CWFGetOTAOSLog();
    if (v22)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

LABEL_42:
    v36 = self->_firstSupportedOS;
    v38 = self->_lastSupportedOS;
LABEL_43:
    _os_log_send_and_compose_impl();
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
    v18 = 0;
    goto LABEL_56;
  }

  if (([CWFAssetLocal compareOSVersion:self->_firstSupportedOS withVersion:self->_lastSupportedOS]- 1) <= 0xFDu)
  {
    v23 = CWFGetOTAOSLog();
    if (v23)
    {
      v17 = CWFGetOTAOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    goto LABEL_42;
  }

  v16 = [sub_1E0BFCECC() sharedDevice];
  v17 = [v16 productVersion];

  if (([CWFAssetLocal compareOSVersion:self->_firstSupportedOS withVersion:v17]- 1) <= 0xFDu)
  {
    v24 = CWFGetOTAOSLog();
    if (v24)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v37 = self->_firstSupportedOS;
    goto LABEL_50;
  }

  if (([CWFAssetLocal compareOSVersion:v17 withVersion:self->_lastSupportedOS]- 1) <= 0xFDu)
  {
    v26 = CWFGetOTAOSLog();
    if (v26)
    {
      v25 = CWFGetOTAOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v39 = self->_lastSupportedOS;
LABEL_50:
    _os_log_send_and_compose_impl();
LABEL_51:

    goto LABEL_52;
  }

  v18 = 1;
LABEL_56:

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)sanityCheckSKUVersion:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = MGCopyAnswer();
    v5 = +[CWFAssetPowerTable getDeviceSKU];
    v6 = [v3 objectForKey:@"WiFiSKU"];
    v7 = v6;
    if (v6 && [v6 count] && v5 && objc_msgSend(v5, "length"))
    {
      v8 = [v7 objectForKey:v4];
      v9 = v8;
      if (v8 && [v8 count])
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
        v11 = [v10 UTF8String];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v9;
        v12 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v9);
              }

              v16 = *(*(&v20 + 1) + 8 * i);
              if (!strcmp([v16 UTF8String], v11))
              {

                goto LABEL_19;
              }
            }

            v13 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_17;
      }

LABEL_19:
    }

    v17 = 1;
    goto LABEL_21;
  }

LABEL_17:
  v17 = 0;
LABEL_21:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)sanityCheckAssetBuildAttribute:(id)a3
{
  v3 = [a3 objectForKey:@"Build"];
  v4 = v3 != 0;

  return v4;
}

- (id)getCoreWiFiCatalogDataFromMobileAssetFile:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v3 path];
  v7 = [v5 fileExistsAtPath:v6];

  if ((v7 & 1) == 0)
  {
    v21 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [v3 path];
      v26 = 136446722;
      v27 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v28 = 1024;
      v29 = 326;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_1E0BBF000, v21, OS_LOG_TYPE_ERROR, "%{public}s::%d:Path doesn't exist %@", &v26, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_22;
  }

  v8 = [v3 URLByDeletingLastPathComponent];
  v9 = [v8 URLByDeletingLastPathComponent];
  v10 = [v9 URLByAppendingPathComponent:@"com_apple_MobileAsset_CoreWiFi.xml"];

  v11 = [v10 path];
  LOBYTE(v9) = [v5 fileExistsAtPath:v11];

  if ((v9 & 1) == 0)
  {
    v23 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v10 path];
      v26 = 136446722;
      v27 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v28 = 1024;
      v29 = 329;
      v30 = 2112;
      v31 = v24;
      v25 = "%{public}s::%d:Core WiFi Mobile Asset Catalog XML File doesn't exist %@";
LABEL_20:
      _os_log_impl(&dword_1E0BBF000, v23, OS_LOG_TYPE_ERROR, v25, &v26, 0x1Cu);
    }

LABEL_21:

LABEL_22:
    v13 = 0;
    goto LABEL_8;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfURL:v10];
  if (!v12)
  {
    v23 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v10 path];
      v26 = 136446722;
      v27 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
      v28 = 1024;
      v29 = 332;
      v30 = 2112;
      v31 = v24;
      v25 = "%{public}s::%d:Core WiFi Mobile Asset Catalog XML File Empty %@";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 objectForKeyedSubscript:@"lastTimeChecked"];

  if (v14)
  {
    v15 = [v13 objectForKeyedSubscript:@"lastTimeChecked"];
    [v4 setObject:v15 forKeyedSubscript:@"lastTimeChecked"];
  }

  v16 = [v13 objectForKeyedSubscript:@"postedDate"];

  if (v16)
  {
    v17 = [v13 objectForKeyedSubscript:@"postedDate"];
    [v4 setObject:v17 forKeyedSubscript:@"postedDate"];
  }

LABEL_8:
  v18 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136446722;
    v27 = "[CWFAssetLocal getCoreWiFiCatalogDataFromMobileAssetFile:]";
    v28 = 1024;
    v29 = 344;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Core WiFi Mobile Asset Catalog XML Data %@", &v26, 0x1Cu);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v4;
}

- (CWFAssetLocal)initWithAssetType:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5 attributes:(id)a6 rootCatalogInfo:(id)a7 localURL:(id)a8
{
  v94 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v87.receiver = self;
  v87.super_class = CWFAssetLocal;
  v20 = [(CWFAssetLocal *)&v87 init];
  v85 = v18;
  v86 = v15;
  v82 = v14;
  if (v20)
  {
    v21 = [v14 copy];
    assetType = v20->_assetType;
    v20->_assetType = v21;

    v23 = [v19 copy];
    localURL = v20->_localURL;
    v20->_localURL = v23;

    if (v18)
    {
      v25 = v18;
      [v25 objectForKeyedSubscript:@"RootAssetID"];
    }

    else
    {
      v25 = [(CWFAssetLocal *)v20 getCoreWiFiCatalogDataFromMobileAssetFile:v19];
      [CWFAssetLocal assetIDFromLocalURL:v19];
    }
    v26 = ;
    assetID = v20->_assetID;
    v20->_assetID = v26;

    v28 = [v25 objectForKeyedSubscript:@"lastTimeChecked"];

    if (v28)
    {
      v29 = [v25 objectForKeyedSubscript:@"lastTimeChecked"];
      lastTimeCatalogChecked = v20->_lastTimeCatalogChecked;
      v20->_lastTimeCatalogChecked = v29;
    }

    v31 = [v25 objectForKeyedSubscript:@"postedDate"];

    if (v31)
    {
      v32 = [v25 objectForKeyedSubscript:@"postedDate"];
      catalogPostedDate = v20->_catalogPostedDate;
      v20->_catalogPostedDate = v32;
    }

    v80 = v16;
    v34 = [CWFAssetLocal isValidAssetVersion:v16];
    v84 = v25;
    if (v15)
    {
      v35 = +[CWFAssetPowerTable sharedObj];
      v36 = [v35 assetSpecifierToTrack];
      v37 = [v15 isEqual:v36] ^ 1;
    }

    else
    {
      v37 = 1;
    }

    v38 = [(CWFAssetLocal *)v20 sanityCheckOSVersion:v17];
    v39 = [(CWFAssetLocal *)v20 sanityCheckOSRestoreVersion:v17];
    v81 = [(CWFAssetLocal *)v20 sanityCheckSKUVersion:v17];
    v83 = [(CWFAssetLocal *)v20 sanityCheckAssetBuildAttribute:v17];
    if (v18)
    {
      v40 = v18;
      v41 = MEMORY[0x1E696AEC0];
      v42 = [v17 objectForKey:@"Build"];
      v43 = [v40 objectForKeyedSubscript:@"RootAssetID"];
      v44 = [v41 stringWithFormat:@"Root_%@_%@", v42, v43];
      assetBuild = v20->_assetBuild;
      v20->_assetBuild = v44;
    }

    else
    {
      v46 = [v17 objectForKey:@"Build"];
      v42 = v20->_assetBuild;
      v20->_assetBuild = v46;
    }

    if (!v34)
    {
      v62 = CWFGetOTAOSLog();
      if (v62)
      {
        v63 = CWFGetOTAOSLog();
      }

      else
      {
        v63 = MEMORY[0x1E69E9C10];
        v71 = MEMORY[0x1E69E9C10];
      }

      v16 = v80;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315394;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v90 = 2112;
        v91 = v80;
        v79 = &v88;
        _os_log_send_and_compose_impl();
      }

      v55 = 0;
      v56 = 0;
      goto LABEL_70;
    }

    v16 = v80;
    v47 = [v80 copy];
    assetVersion = v20->_assetVersion;
    v20->_assetVersion = v47;

    if (v37)
    {
      v64 = CWFGetOTAOSLog();
      if (v64)
      {
        v65 = CWFGetOTAOSLog();
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
        v72 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v73 = +[CWFAssetPowerTable sharedObj];
        v74 = [v73 assetSpecifierToTrack];
        v88 = 136315650;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v90 = 2112;
        v91 = v86;
        v92 = 2112;
        v93 = v74;
        v79 = &v88;
        _os_log_send_and_compose_impl();
      }

      v56 = 0;
      v55 = 1;
      v16 = v80;
      goto LABEL_70;
    }

    v49 = CWFGetOTAOSLog();
    v50 = v49;
    if (v17)
    {
      if (v38)
      {
        if (v39)
        {
          if (v81)
          {
            if (v49)
            {
              v51 = CWFGetOTAOSLog();
            }

            else
            {
              v51 = MEMORY[0x1E69E9C10];
              v52 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v53 = [(CWFAssetLocal *)v20 description];
              v88 = 136315394;
              v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
              v90 = 2112;
              v91 = v53;
              v79 = &v88;
              _os_log_send_and_compose_impl();
            }

            v54 = 1;
            v39 = 1;
            v38 = 1;
            v55 = 1;
            v56 = 1;
          }

          else
          {
            if (v49)
            {
              v69 = CWFGetOTAOSLog();
            }

            else
            {
              v69 = MEMORY[0x1E69E9C10];
              v78 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              v88 = 136315138;
              v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
              v79 = &v88;
              _os_log_send_and_compose_impl();
            }

            v54 = 0;
            v56 = 0;
            v39 = 1;
            v38 = 1;
            v55 = 1;
          }

          goto LABEL_27;
        }

        if (v49)
        {
          v68 = CWFGetOTAOSLog();
        }

        else
        {
          v68 = MEMORY[0x1E69E9C10];
          v77 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v88 = 136315138;
          v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
          v79 = &v88;
          _os_log_send_and_compose_impl();
        }

        v39 = 0;
        v56 = 0;
        v38 = 1;
        goto LABEL_69;
      }

      if (v49)
      {
        v67 = CWFGetOTAOSLog();
      }

      else
      {
        v67 = MEMORY[0x1E69E9C10];
        v76 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315138;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v79 = &v88;
        _os_log_send_and_compose_impl();
      }

      v38 = 0;
    }

    else
    {
      if (v49)
      {
        v66 = CWFGetOTAOSLog();
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
        v75 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v88 = 136315138;
        v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
        v79 = &v88;
        _os_log_send_and_compose_impl();
      }
    }

    v56 = 0;
LABEL_69:
    v55 = 1;
LABEL_70:
    v54 = v81;
    goto LABEL_27;
  }

  v60 = CWFGetOTAOSLog();
  if (v60)
  {
    v61 = CWFGetOTAOSLog();
  }

  else
  {
    v61 = MEMORY[0x1E69E9C10];
    v70 = MEMORY[0x1E69E9C10];
  }

  v84 = v61;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v88 = 136315138;
    v89 = "[CWFAssetLocal initWithAssetType:assetSpecifier:assetVersion:attributes:rootCatalogInfo:localURL:]";
    v79 = &v88;
    _os_log_send_and_compose_impl();
  }

  v83 = 0;
  v54 = 0;
  v39 = 0;
  v38 = 0;
  v55 = 0;
  v56 = 0;
LABEL_27:

  v57 = +[CWFAssetPowerTableTelemetry sharedObj];
  BYTE4(v79) = v83;
  BYTE3(v79) = v54;
  BYTE2(v79) = v39;
  BYTE1(v79) = v38;
  LOBYTE(v79) = v55;
  [v57 setAssetLocalInfo:v82 assetSpecifier:v86 assetVersion:v16 assetBuild:v20->_assetBuild lastTimeCatalogChecked:v20->_lastTimeCatalogChecked catalogPostedDate:v20->_catalogPostedDate assetVersionSanity:v79 osVersionSanity:v17 osRestoreVersionSanity:v19 skuSanity:? sanityCheckAssetBuildAttribute:? attributes:? localURL:?];

  if ((v56 & 1) == 0)
  {

    v20 = 0;
  }

  v58 = *MEMORY[0x1E69E9840];
  return v20;
}

@end