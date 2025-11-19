@interface CWFAssetPowerTable
+ (BOOL)isChipsetDownloadOnly;
+ (BOOL)isChipsetFullySupported;
+ (BOOL)isSupportedDeviceClass;
+ (BOOL)isSupportedOTAPTDownloadOnly;
+ (BOOL)isSupportedOTAPTUpdate;
+ (BOOL)shouldAllowTestingOnUnSupportedChipset;
+ (id)currentLatestAssetVersion;
+ (id)currentLatestPowerTableAssemblyDate;
+ (id)currentLatestPowerTableAssemblyDateFromPT:(id)a3;
+ (id)currentLatestPowerTableVersion;
+ (id)currentLatestPowerTableVersionFromPT:(id)a3;
+ (id)currentLatestPowerTableVersionInfoDict;
+ (id)getDeviceSKU;
+ (id)getPowerTableAssemblyDateFromDict:(id)a3;
+ (id)getPowerTableVersionFromDict:(id)a3;
+ (id)getPowerTableVersionInfoDict:(id)a3;
+ (id)sharedObj;
- (CWFAssetPowerTable)init;
- (id)assetSpecifierToTrack;
- (id)description;
- (id)transferAssetFromSrc:(id)a3 toDst:(id)a4 withAsseID:(id)a5 withVersion:(id)a6 assetBuild:(id)a7 firstSupportedOS:(id)a8 lastSupportedOS:(id)a9 firstSupportedBuild:(id)a10 lastSupportedBuild:(id)a11 ptVersionInfo:(id)a12 lastTimeCatalogChecked:(id)a13 catalogPostedDate:(id)a14;
- (void)createTopLevelDir;
- (void)garbageCollectWithNewAsset:(id)a3 prevAsset:(id)a4;
- (void)processLocalAsset:(id)a3;
@end

@implementation CWFAssetPowerTable

- (CWFAssetPowerTable)init
{
  v13 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CWFAssetPowerTable;
  v2 = [(CWFAssetPowerTable *)&v6 init];
  if (v2)
  {
    if (MEMORY[0x1EEE84668])
    {
      v3 = objc_alloc_init(CWFAssetPowerTableElectionManager);
      [(CWFAssetPowerTable *)v2 set_elector:v3];
    }

    else
    {
      v3 = CWFGetOTAOSLog();
      if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_INFO))
      {
        *buf = 136446722;
        v8 = "[CWFAssetPowerTable init]";
        v9 = 1024;
        v10 = 95;
        v11 = 2080;
        v12 = "[CWFAssetPowerTable init]";
        _os_log_impl(&dword_1E0BBF000, &v3->super.super, OS_LOG_TYPE_INFO, "%{public}s::%d:%s: No elector, symbols not found", buf, 0x1Cu);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)sharedObj
{
  if (qword_1ED7E3AA8 != -1)
  {
    dispatch_once(&qword_1ED7E3AA8, &unk_1F5B89DB0);
  }

  v3 = qword_1ED7E3AA0;

  return v3;
}

- (id)assetSpecifierToTrack
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MGCopyAnswer();
  v4 = MGCopyAnswer();
  if (!v3 || [v3 isEqualToString:&stru_1F5B8FC80])
  {
    v10 = CWFGetOTAOSLog();
    if (v10)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

LABEL_38:
    _os_log_send_and_compose_impl();
LABEL_39:

    goto LABEL_40;
  }

  if (!v4 || [v4 isEqualToString:&stru_1F5B8FC80])
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if ([v4 containsString:@"="])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"=" withString:@"EQ"];

    v4 = v5;
  }

  if (+[CWFAssetPowerTable isChipsetDownloadOnly]&& !self->_powerTableAPIMajorVersion)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"PowerTable", v3, v4, v20];
    goto LABEL_13;
  }

  if (!+[CWFAssetPowerTable isChipsetFullySupported])
  {
    v15 = CWFGetOTAOSLog();
    if (v15)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  powerTableAPIMajorVersion = self->_powerTableAPIMajorVersion;
  if (powerTableAPIMajorVersion && ![(NSString *)powerTableAPIMajorVersion isEqualToString:&stru_1F5B8FC80])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@_%@", @"PowerTable", v3, v4, self->_powerTableAPIMajorVersion];
    v7 = LABEL_13:;
    goto LABEL_14;
  }

  v13 = CWFGetOTAOSLog();
  if (v13)
  {
    v14 = CWFGetOTAOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v21 = self->_powerTableAPIMajorVersion;
    _os_log_send_and_compose_impl();
  }

LABEL_40:
  v7 = 0;
LABEL_14:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (BOOL)isChipsetFullySupported
{
  v2 = CWFHashedChipsetName();
  v3 = [&unk_1F5BB9DA8 containsObject:v2];

  if (v3)
  {
    return 1;
  }

  return MEMORY[0x1EEE66B58](CWFAssetPowerTable, sel_shouldAllowTestingOnUnSupportedChipset);
}

+ (BOOL)isChipsetDownloadOnly
{
  v2 = CWFHashedChipsetName();
  v3 = [&unk_1F5BB9DC0 containsObject:v2];

  return v3;
}

+ (BOOL)isSupportedDeviceClass
{
  v2 = MGCopyAnswer();
  v3 = [&unk_1F5BB9DD8 containsObject:v2];

  return v3;
}

+ (BOOL)isSupportedOTAPTUpdate
{
  v2 = +[CWFAssetPowerTable isSupportedDeviceClass];
  if (v2)
  {

    LOBYTE(v2) = +[CWFAssetPowerTable isChipsetFullySupported];
  }

  return v2;
}

+ (BOOL)isSupportedOTAPTDownloadOnly
{
  v2 = +[CWFAssetPowerTable isSupportedDeviceClass];
  if (v2)
  {

    LOBYTE(v2) = +[CWFAssetPowerTable isChipsetDownloadOnly];
  }

  return v2;
}

+ (BOOL)shouldAllowTestingOnUnSupportedChipset
{
  v2 = MGCopyAnswer();
  v3 = [v2 BOOLValue];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"OTAPowerTableAllowTestingOnUnSupportedChipset"];

  return v5;
}

+ (id)getDeviceSKU
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = v2;
  if (!v2)
  {
    v12 = CWFGetOTAOSLog();
    if (v12)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ([v2 length] != 16)
  {
    v13 = CWFGetOTAOSLog();
    if (v13)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    [v3 length];
LABEL_28:
    _os_log_send_and_compose_impl();
LABEL_29:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = [v3 subdataWithRange:{8, 8}];
  v5 = v4;
  if (v4 && [v4 length] == 8)
  {
    v6 = CWFGetOTAOSLog();
    if (v6)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (v11)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }
  }

  _os_log_send_and_compose_impl();
LABEL_10:

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getPowerTableVersionFromDict:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v23 = 1024;
      v24 = 215;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:infoDict doesn't exist", &v21, 0x12u);
    }

    v10 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  v5 = [v3 allKeys];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v16 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v23 = 1024;
      v24 = 218;
      v25 = 2112;
      v26 = v4;
      v17 = "%{public}s::%d:infoDict bad %@";
LABEL_16:
      _os_log_impl(&dword_1E0BBF000, v16, OS_LOG_TYPE_ERROR, v17, &v21, 0x1Cu);
    }

LABEL_17:

    v10 = 0;
    v8 = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_8;
  }

  v7 = [v6 lastObject];
  if (!v7)
  {
    v16 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v23 = 1024;
      v24 = 221;
      v25 = 2112;
      v26 = v4;
      v17 = "%{public}s::%d:lastKey bad %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v4 objectForKeyedSubscript:v7];
  if (!v9)
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v23 = 1024;
      v24 = 224;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v21, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"TableVersion"];

  if (!v11)
  {
    v20 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableVersionFromDict:]";
      v23 = 1024;
      v24 = 226;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v21, 0x1Cu);
    }

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"TableVersion"];
LABEL_8:
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)getPowerTableAssemblyDateFromDict:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v18 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v23 = 1024;
      v24 = 241;
      _os_log_impl(&dword_1E0BBF000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:infoDict doesn't exist", &v21, 0x12u);
    }

    v10 = 0;
    v8 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  v5 = [v3 allKeys];
  v6 = v5;
  if (!v5 || ![v5 count])
  {
    v16 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v23 = 1024;
      v24 = 244;
      v25 = 2112;
      v26 = v4;
      v17 = "%{public}s::%d:infoDict bad %@";
LABEL_16:
      _os_log_impl(&dword_1E0BBF000, v16, OS_LOG_TYPE_ERROR, v17, &v21, 0x1Cu);
    }

LABEL_17:

    v10 = 0;
    v8 = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_8;
  }

  v7 = [v6 lastObject];
  if (!v7)
  {
    v16 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v23 = 1024;
      v24 = 247;
      v25 = 2112;
      v26 = v4;
      v17 = "%{public}s::%d:lastKey bad %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v4 objectForKeyedSubscript:v7];
  if (!v9)
  {
    v19 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v23 = 1024;
      v24 = 250;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_1E0BBF000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v21, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v11 = [v9 objectForKeyedSubscript:@"TableDate"];

  if (!v11)
  {
    v20 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[CWFAssetPowerTable getPowerTableAssemblyDateFromDict:]";
      v23 = 1024;
      v24 = 252;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&dword_1E0BBF000, v20, OS_LOG_TYPE_ERROR, "%{public}s::%d:lastValue bad %@", &v21, 0x1Cu);
    }

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"TableDate"];
LABEL_8:
  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)currentLatestPowerTableVersion
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  if (v2)
  {
    v3 = [CWFAssetPowerTable getPowerTableVersionFromDict:v2];
  }

  else
  {
    v6 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446466;
      v8 = "+[CWFAssetPowerTable currentLatestPowerTableVersion]";
      v9 = 1024;
      v10 = 265;
      _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:currentLatestPowerTableVersionInfoDict doesn't exist", &v7, 0x12u);
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)currentLatestPowerTableAssemblyDate
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  if (v2)
  {
    v3 = [CWFAssetPowerTable getPowerTableAssemblyDateFromDict:v2];
  }

  else
  {
    v6 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446466;
      v8 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDate]";
      v9 = 1024;
      v10 = 278;
      _os_log_impl(&dword_1E0BBF000, v6, OS_LOG_TYPE_ERROR, "%{public}s::%d:currentLatestPowerTableVersionInfoDict doesn't exist", &v7, 0x12u);
    }

    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)currentLatestPowerTableVersionFromPT:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:v3];
    v7 = [v6 objectForKeyedSubscript:@"TableVersion"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:v3];
      v9 = [v8 objectForKeyedSubscript:@"TableVersion"];

      goto LABEL_4;
    }

    v13 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "+[CWFAssetPowerTable currentLatestPowerTableVersionFromPT:]";
      v16 = 1024;
      v17 = 293;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = @"TableVersion";
      _os_log_impl(&dword_1E0BBF000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't have %@ key", &v14, 0x26u);
    }
  }

  else
  {
    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "+[CWFAssetPowerTable currentLatestPowerTableVersionFromPT:]";
      v16 = 1024;
      v17 = 291;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't exist", &v14, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)currentLatestPowerTableAssemblyDateFromPT:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:v3];
    v7 = [v6 objectForKeyedSubscript:@"TableDate"];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:v3];
      v9 = [v8 objectForKeyedSubscript:@"TableDate"];

      goto LABEL_4;
    }

    v13 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDateFromPT:]";
      v16 = 1024;
      v17 = 308;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = @"TableDate";
      _os_log_impl(&dword_1E0BBF000, v13, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't have %@ key", &v14, 0x26u);
    }
  }

  else
  {
    v12 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446722;
      v15 = "+[CWFAssetPowerTable currentLatestPowerTableAssemblyDateFromPT:]";
      v16 = 1024;
      v17 = 306;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_1E0BBF000, v12, OS_LOG_TYPE_ERROR, "%{public}s::%d:PowerTable Name %@ doesn't exist", &v14, 0x1Cu);
    }
  }

  v9 = 0;
LABEL_4:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)currentLatestPowerTableVersionInfoDict
{
  v18[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v18[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v18[1] = @"WiFi/";
  v18[2] = @"wifi_powertable_info.plist";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v4 = [v2 fileURLWithPathComponents:v3];

  v5 = [CWFAssetPowerTable getPowerTableVersionInfoDict:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 path];
      v12 = 136446722;
      v13 = "+[CWFAssetPowerTable currentLatestPowerTableVersionInfoDict]";
      v14 = 1024;
      v15 = 325;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1E0BBF000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:Power table version info file empty %@", &v12, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)getPowerTableVersionInfoDict:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v3];
    if (v7)
    {
      v8 = v7;
      goto LABEL_4;
    }

    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 path];
      v14 = 136446722;
      v15 = "+[CWFAssetPowerTable getPowerTableVersionInfoDict:]";
      v16 = 1024;
      v17 = 342;
      v18 = 2112;
      v19 = v12;
      v13 = "%{public}s::%d:Power table version info file empty %@";
      goto LABEL_11;
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v3 path];
      v14 = 136446722;
      v15 = "+[CWFAssetPowerTable getPowerTableVersionInfoDict:]";
      v16 = 1024;
      v17 = 339;
      v18 = 2112;
      v19 = v12;
      v13 = "%{public}s::%d:Path doesn't exist %@";
LABEL_11:
      _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_ERROR, v13, &v14, 0x1Cu);
    }
  }

  v8 = 0;
LABEL_4:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)createTopLevelDir
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/"])
  {
    v3 = 0;
  }

  else
  {
    v4 = CWFGetOTAOSLog();
    if (v4)
    {
      v5 = CWFGetOTAOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v25 = 136315394;
      v26 = "[CWFAssetPowerTable createTopLevelDir]";
      v27 = 2112;
      v28 = @"/private/var/db/ConnectivityPowerTableUpdates/";
      LODWORD(v20) = 22;
      v19 = &v25;
      _os_log_send_and_compose_impl();
    }

    v22 = 0;
    v7 = [v2 createDirectoryAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/" withIntermediateDirectories:0 attributes:0 error:&v22];
    v3 = v22;
    if ((v7 & 1) == 0)
    {
      v8 = CWFGetOTAOSLog();
      if (v8)
      {
        v9 = CWFGetOTAOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315650;
        v26 = "[CWFAssetPowerTable createTopLevelDir]";
        v27 = 2112;
        v28 = @"/private/var/db/ConnectivityPowerTableUpdates/";
        v29 = 2112;
        v30 = v3;
        LODWORD(v20) = 32;
        v19 = &v25;
        _os_log_send_and_compose_impl();
      }
    }
  }

  v11 = *MEMORY[0x1E696A328];
  v23[0] = *MEMORY[0x1E696A360];
  v23[1] = v11;
  v24[0] = @"mobile";
  v24[1] = @"mobile";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{2, v19, v20}];
  v21 = v3;
  v13 = [v2 setAttributes:v12 ofItemAtPath:@"/private/var/db/ConnectivityPowerTableUpdates/" error:&v21];
  v14 = v21;

  if ((v13 & 1) == 0)
  {
    v15 = CWFGetOTAOSLog();
    if (v15)
    {
      v16 = CWFGetOTAOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315650;
      v26 = "[CWFAssetPowerTable createTopLevelDir]";
      v27 = 2112;
      v28 = @"/private/var/db/ConnectivityPowerTableUpdates/";
      v29 = 2112;
      v30 = v14;
      _os_log_send_and_compose_impl();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)processLocalAsset:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = CWFGetOTAOSLog();
  if (v6)
  {
    v7 = CWFGetOTAOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  if (v4)
  {
    if (+[CWFAssetPowerTable isChipsetDownloadOnly])
    {
      v9 = CWFGetOTAOSLog();
      if (v9)
      {
        v10 = CWFGetOTAOSLog();
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v39 = v5;
      [(CWFAssetPowerTable *)self createTopLevelDir];
      v44 = [v4 localURL];
      v38 = self;
      v12 = MEMORY[0x1E695DFF8];
      v47[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
      v47[1] = @"WiFi/";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      v42 = [v12 fileURLWithPathComponents:v13];

      v45 = [v4 assetID];
      v37 = [v4 assetVersion];
      v41 = [v4 assetBuild];
      v43 = [v4 firstSupportedBuild];
      v14 = [v4 lastSupportedBuild];
      v15 = [v4 firstSupportedOS];
      v16 = [v4 lastSupportedOS];
      v17 = MEMORY[0x1E695DFF8];
      v18 = [v4 localURL];
      v19 = [v18 path];
      v46[0] = v19;
      v46[1] = @"wifi_powertable_info.plist";
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v21 = [v17 fileURLWithPathComponents:v20];
      v22 = [CWFAssetPowerTable getPowerTableVersionInfoDict:v21];

      v23 = [v4 lastTimeCatalogChecked];
      v24 = [v4 catalogPostedDate];
      v36 = v14;
      v40 = v14;
      v25 = v15;
      v26 = [(CWFAssetPowerTable *)v38 transferAssetFromSrc:v44 toDst:v42 withAsseID:v45 withVersion:v37 assetBuild:v41 firstSupportedOS:v15 lastSupportedOS:v16 firstSupportedBuild:v43 lastSupportedBuild:v36 ptVersionInfo:v22 lastTimeCatalogChecked:v23 catalogPostedDate:v24];
      v27 = CWFGetOTAOSLog();
      if (v27)
      {
        v28 = CWFGetOTAOSLog();
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }

      v32 = CWFGetOTAOSLog();
      if (v32)
      {
        v33 = CWFGetOTAOSLog();
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      v5 = v39;
      v10 = v44;
    }
  }

  else
  {
    v11 = CWFGetOTAOSLog();
    if (v11)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }
  }

  objc_autoreleasePoolPop(v5);
  v35 = *MEMORY[0x1E69E9840];
}

- (id)transferAssetFromSrc:(id)a3 toDst:(id)a4 withAsseID:(id)a5 withVersion:(id)a6 assetBuild:(id)a7 firstSupportedOS:(id)a8 lastSupportedOS:(id)a9 firstSupportedBuild:(id)a10 lastSupportedBuild:(id)a11 ptVersionInfo:(id)a12 lastTimeCatalogChecked:(id)a13 catalogPostedDate:(id)a14
{
  v120[2] = *MEMORY[0x1E69E9840];
  v99 = a3;
  v20 = a4;
  v21 = a5;
  v100 = a6;
  v104 = a7;
  v98 = a8;
  v97 = a9;
  v22 = v20;
  v23 = a10;
  v101 = a11;
  v103 = a12;
  v96 = a13;
  v95 = a14;
  v110 = 0;
  v24 = [MEMORY[0x1E696AC08] defaultManager];
  v102 = [MEMORY[0x1E695DF00] now];
  v91 = self;
  ++self->numberOfCallsToCopyAsset;
  v109 = 0;
  LOBYTE(a7) = [v24 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v109];
  v25 = v109;
  v93 = v23;
  v88 = v24;
  v89 = v22;
  if (a7)
  {
    v26 = MEMORY[0x1E695DFF8];
    v27 = [v22 path];
    v120[0] = v27;
    v120[1] = v21;
    v94 = v21;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
    v29 = [v26 fileURLWithPathComponents:v28];

    v30 = +[CWFAssetPowerTable currentLatestAssetVersion];
    v105 = v29;
    v31 = [v29 path];
    LODWORD(v27) = [v24 fileExistsAtPath:v31 isDirectory:&v110];

    v87 = v30;
    v90 = v27;
    if (v27)
    {
      v32 = v100;
      if (v30 && ([v30 isEqual:v100] & 1) != 0)
      {
        v79 = CWFGetOTAOSLog();
        if (v79)
        {
          v80 = CWFGetOTAOSLog();
        }

        else
        {
          v80 = MEMORY[0x1E69E9C10];
          v83 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
          v112 = 136315650;
          if (v110)
          {
            v84 = "YES";
          }

          else
          {
            v84 = "NO";
          }

          v114 = 2112;
          v115 = v105;
          v116 = 2080;
          v117 = v84;
          LODWORD(v86) = 32;
          v85 = &v112;
          _os_log_send_and_compose_impl();
        }

        v58 = 0;
        v90 = 0;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v50 = 0;
        v92 = 0;
        v41 = 0;
        v57 = 1;
        goto LABEL_79;
      }

      ++self->numberOfTimesAssetExisted;
      v33 = CWFGetOTAOSLog();
      if (v33)
      {
        v34 = CWFGetOTAOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v112 = 136315650;
        if (v110)
        {
          v36 = "YES";
        }

        else
        {
          v36 = "NO";
        }

        v114 = 2112;
        v115 = v105;
        v116 = 2080;
        v117 = v36;
        LODWORD(v86) = 32;
        v85 = &v112;
        _os_log_send_and_compose_impl();
      }

      v108 = v25;
      v37 = [v24 removeItemAtURL:v105 error:&v108];
      v38 = v108;

      if ((v37 & 1) == 0)
      {
        v70 = CWFGetOTAOSLog();
        if (v70)
        {
          v71 = CWFGetOTAOSLog();
        }

        else
        {
          v71 = MEMORY[0x1E69E9C10];
          v81 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v82 = [v38 localizedDescription];
          v112 = 136315650;
          v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
          v114 = 2112;
          v115 = v105;
          v116 = 2112;
          v117 = v82;
          LODWORD(v86) = 32;
          v85 = &v112;
          _os_log_send_and_compose_impl();
        }

        v58 = 0;
        v57 = 0;
        v53 = 0;
        v54 = 0;
        v52 = 0;
        v50 = 0;
        v92 = 0;
        v41 = 0;
        v90 = 1;
        goto LABEL_78;
      }

      v25 = v38;
      v23 = v93;
    }

    else
    {
      v32 = v100;
    }

    v39 = v25;
    v107 = v25;
    v40 = [v24 copyItemAtURL:v99 toURL:v105 error:{&v107, v85, v86}];
    v25 = v107;

    if ((v40 & 1) == 0)
    {
      v65 = CWFGetOTAOSLog();
      if (v65)
      {
        v66 = CWFGetOTAOSLog();
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
        v74 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v75 = [v25 localizedDescription];
        v112 = 136315906;
        v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v114 = 2112;
        v115 = v99;
        v116 = 2112;
        v117 = v105;
        v118 = 2112;
        v119 = v75;
        LODWORD(v86) = 42;
        v85 = &v112;
        _os_log_send_and_compose_impl();
      }

      v58 = 0;
      v57 = 0;
      v53 = 0;
      v54 = 0;
      v52 = 0;
      v50 = 0;
      v92 = 0;
      v41 = 0;
      goto LABEL_79;
    }

    v41 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v41 setObject:v102 forKey:@"datePowerTableAvailable"];
    if (v23 && v101)
    {
      [v41 setObject:v23 forKey:@"_MinOSRestoreVersion"];
      [v41 setObject:v101 forKey:@"_MaxOSRestoreVersion"];
    }

    [v41 setObject:v98 forKey:@"_MinOSVersion"];
    [v41 setObject:v97 forKey:@"_MaxOSVersion"];
    [v41 setObject:v32 forKey:@"assetVersion"];
    if (v104)
    {
      [v41 setObject:v104 forKey:@"Build"];
    }

    if (v103)
    {
      [v41 setObject:v103 forKey:@"PowerTableVersionInfoDict"];
    }

    if (v96)
    {
      [v41 setObject:v96 forKey:@"lastTimeChecked"];
    }

    if (v95)
    {
      [v41 setObject:v95 forKey:@"postedDate"];
    }

    [v105 URLByAppendingPathComponent:@"Info.plist"];
    v92 = v106[1] = v25;
    v42 = [v41 writeToURL:? error:?];
    v38 = v25;

    v43 = CWFGetOTAOSLog();
    v44 = v43;
    if (v42)
    {
      if (v43)
      {
        v45 = CWFGetOTAOSLog();
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 136315650;
        v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v114 = 2112;
        v115 = v92;
        v116 = 2112;
        v117 = v41;
        LODWORD(v86) = 32;
        v85 = &v112;
        _os_log_send_and_compose_impl();
      }

      v47 = MEMORY[0x1E695DFF8];
      v48 = [v22 path];
      v111[0] = v48;
      v111[1] = @"Latest.plist";
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
      v50 = [v47 fileURLWithPathComponents:v49];

      v51 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v50];
      if (v51)
      {
        v52 = v51;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v51];
      }

      else
      {
        v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v52 setObject:v102 forKey:@"datePowerTableAvailable"];
        v53 = 0;
      }

      v54 = [v52 objectForKey:{@"latestAssetSubDir", v85, v86}];
      [v52 setObject:v94 forKey:@"latestAssetSubDir"];
      [v52 setObject:v32 forKey:@"assetVersion"];
      if (v104)
      {
        [v52 setObject:v104 forKey:@"Build"];
      }

      if (v103)
      {
        [v52 setObject:v103 forKey:@"PowerTableVersionInfoDict"];
      }

      v106[0] = v38;
      v55 = [v52 writeToURL:v50 error:v106];
      v25 = v106[0];

      if (v55)
      {
        v56 = v94;
        [(CWFAssetPowerTable *)v91 garbageCollectWithNewAsset:v94 prevAsset:v54];
        v57 = 0;
        ++v91->numberOfSuccessfullAssetCopy;
        v58 = 1;
        goto LABEL_43;
      }

      v68 = CWFGetOTAOSLog();
      if (v68)
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
        v112 = 136315906;
        v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
        v114 = 2112;
        v115 = v50;
        v116 = 2112;
        v117 = v52;
        v118 = 2112;
        v119 = v25;
        LODWORD(v86) = 42;
        v85 = &v112;
        _os_log_send_and_compose_impl();
      }

      v58 = 0;
      v57 = 0;
      goto LABEL_79;
    }

    if (v43)
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
      v77 = [v38 localizedDescription];
      v112 = 136315906;
      v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
      v114 = 2112;
      v115 = v92;
      v116 = 2112;
      v117 = v41;
      v118 = 2112;
      v119 = v77;
      LODWORD(v86) = 42;
      v85 = &v112;
      _os_log_send_and_compose_impl();
    }

    v58 = 0;
    v57 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v50 = 0;
LABEL_78:
    v25 = v38;
LABEL_79:
    v56 = v94;
    goto LABEL_43;
  }

  v63 = CWFGetOTAOSLog();
  if (v63)
  {
    v64 = CWFGetOTAOSLog();
  }

  else
  {
    v64 = MEMORY[0x1E69E9C10];
    v72 = MEMORY[0x1E69E9C10];
  }

  v56 = v21;

  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v73 = [v25 localizedDescription];
    v112 = 136315650;
    v113 = "[CWFAssetPowerTable transferAssetFromSrc:toDst:withAsseID:withVersion:assetBuild:firstSupportedOS:lastSupportedOS:firstSupportedBuild:lastSupportedBuild:ptVersionInfo:lastTimeCatalogChecked:catalogPostedDate:]";
    v114 = 2112;
    v115 = v22;
    v116 = 2112;
    v117 = v73;
    LODWORD(v86) = 32;
    v85 = &v112;
    _os_log_send_and_compose_impl();
  }

  v58 = 0;
  v90 = 0;
  v57 = 0;
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v50 = 0;
  v92 = 0;
  v41 = 0;
  v87 = 0;
  v105 = 0;
LABEL_43:
  v59 = [CWFAssetPowerTableTelemetry sharedObj:v85];
  [v59 setAssetHandoffInfo:v58 assetAlreadyHere:v57 previousAssetCleanedUp:v90 previousLatestPlist:v53 latestPlistDict:v52 newPlist:v41 error:v25];

  v60 = v25;
  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

- (void)garbageCollectWithNewAsset:(id)a3 prevAsset:(id)a4
{
  v58[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = MEMORY[0x1E695DFF8];
  v58[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v58[1] = @"WiFi/";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v10 = [v8 fileURLWithPathComponents:v9];

  v49 = 0;
  v43 = [v7 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:5 error:&v49];
  v11 = v49;
  if (v11)
  {
    v12 = v11;
    v13 = CWFGetOTAOSLog();
    if (v13)
    {
      v14 = CWFGetOTAOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v52 = 136315650;
      v53 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
      v54 = 2112;
      v55 = v10;
      v56 = 2112;
      v57 = v12;
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x1E695DF70]);
    v51[0] = @"Latest.plist";
    v51[1] = @"LastKnownGood";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v14 = [v15 initWithArray:v16];

    if (v5)
    {
      [v14 addObject:v5];
    }

    else
    {
      v18 = CWFGetOTAOSLog();
      if (v18)
      {
        v19 = CWFGetOTAOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315138;
        v53 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
        LODWORD(v39) = 12;
        v38 = &v52;
        _os_log_send_and_compose_impl();
      }
    }

    v41 = v6;
    v42 = v5;
    v40 = v10;
    if (v6)
    {
      [v14 addObject:v6];
    }

    else
    {
      v21 = CWFGetOTAOSLog();
      if (v21)
      {
        v22 = CWFGetOTAOSLog();
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v52 = 136315138;
        v53 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
        LODWORD(v39) = 12;
        v38 = &v52;
        _os_log_send_and_compose_impl();
      }
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v24 = v43;
    v25 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v12 = 0;
      v27 = *v46;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v46 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v45 + 1) + 8 * i);
          v30 = [v29 lastPathComponent];
          v31 = [v14 containsObject:v30];

          if ((v31 & 1) == 0)
          {
            v44 = v12;
            v32 = [v7 removeItemAtURL:v29 error:&v44];
            v33 = v44;

            if ((v32 & 1) == 0)
            {
              v34 = CWFGetOTAOSLog();
              if (v34)
              {
                v35 = CWFGetOTAOSLog();
              }

              else
              {
                v35 = MEMORY[0x1E69E9C10];
                v36 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v52 = 136315650;
                v53 = "[CWFAssetPowerTable garbageCollectWithNewAsset:prevAsset:]";
                v54 = 2112;
                v55 = v29;
                v56 = 2112;
                v57 = v33;
                LODWORD(v39) = 32;
                v38 = &v52;
                _os_log_send_and_compose_impl();
              }
            }

            v12 = v33;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v26);
    }

    else
    {
      v12 = 0;
    }

    v6 = v41;
    v5 = v42;
    v10 = v40;
  }

  v37 = *MEMORY[0x1E69E9840];
}

+ (id)currentLatestAssetVersion
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v11[0] = @"/private/var/db/ConnectivityPowerTableUpdates/";
  v11[1] = @"WiFi/";
  v11[2] = @"Latest.plist";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v4 = [v2 fileURLWithPathComponents:v3];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"assetVersion"];
    if ([CWFAssetLocal isValidAssetVersion:v7])
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = +[CWFAssetPowerTable currentLatestAssetVersion];
  v5 = [v3 stringWithFormat:@"<CWFAssetPowerTable: currentLatestAssetVersion: %@, numberOfCallsToCopyAsset: %llu, numberOfTimesAssetExisted: %llu, numberOfSuccessfullAssetCopy: %llu", v4, self->numberOfCallsToCopyAsset, self->numberOfTimesAssetExisted, self->numberOfSuccessfullAssetCopy];

  return v5;
}

@end