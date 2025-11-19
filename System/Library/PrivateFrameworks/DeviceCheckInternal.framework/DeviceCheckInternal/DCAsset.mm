@interface DCAsset
+ (id)assetWithMobileAsset:(id)a3;
- (id)description;
@end

@implementation DCAsset

+ (id)assetWithMobileAsset:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 assetProperty:*MEMORY[0x277D28900]];
  v5 = [v4 unsignedIntegerValue];

  if (v5 != 1)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = [v3 assetProperty:@"com.apple.devicecheck.pubvalue"];
  if (!v6)
  {
    if (DCInternalLogSystem_onceToken_7 != -1)
    {
      +[DCAsset assetWithMobileAsset:];
    }

    v11 = DCInternalLogSystem_log_7;
    if (os_log_type_enabled(DCInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "DCAsset.m";
      v16 = 1024;
      v17 = 47;
      _os_log_impl(&dword_2488FB000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to parse asset, public key is missing.", &v14, 0x12u);
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = objc_alloc_init(DCAsset);
  [(DCAsset *)v8 setVersion:1];
  v9 = [v3 assetProperty:@"com.apple.devicecheck.refreshtimer"];
  [v9 doubleValue];
  [(DCAsset *)v8 setPublicKeyRefreshInterval:?];

  [(DCAsset *)v8 setPublicKey:v7];
  if (DCInternalLogSystem_onceToken_7 != -1)
  {
    +[DCAsset assetWithMobileAsset:];
  }

  v10 = DCInternalLogSystem_log_7;
  if (os_log_type_enabled(DCInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "DCAsset.m";
    v16 = 1024;
    v17 = 44;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_2488FB000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Parsed asset. { asset=%@ }", &v14, 0x1Cu);
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p - version: %lu, refreshInterval: %f>", v4, self, self->_version, *&self->_publicKeyRefreshInterval];

  return v5;
}

@end