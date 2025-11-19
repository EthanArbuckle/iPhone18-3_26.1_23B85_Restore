@interface _CDNetworkContext
+ (BOOL)cellInterfaceUp:(id)a3;
+ (BOOL)inexpensiveNetworkingAvailable:(id)a3;
+ (BOOL)networkingAvailable:(id)a3;
+ (id)keyPathForCellConnectionStatus;
+ (id)keyPathForWiFiConnectionStatus;
+ (id)keyPathForWiredConnectionStatus;
+ (int64_t)cellDownloadCost:(id)a3;
+ (int64_t)cellInterfaceClass:(id)a3;
+ (int64_t)cellQuality:(id)a3;
+ (int64_t)cellUploadCost:(id)a3;
+ (int64_t)interfaceClassForPath:(id)a3 inContext:(id)a4;
+ (int64_t)qualityForPath:(id)a3 inContext:(id)a4;
+ (int64_t)wifiInterfaceClass:(id)a3;
+ (int64_t)wifiQuality:(id)a3;
+ (int64_t)wiredInterfaceClass:(id)a3;
+ (int64_t)wiredQuality:(id)a3;
@end

@implementation _CDNetworkContext

+ (id)keyPathForWiFiConnectionStatus
{
  if (keyPathForWiFiConnectionStatus_onceToken != -1)
  {
    +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  }

  v3 = keyPathForWiFiConnectionStatus_wifiConnectionStatus;

  return v3;
}

+ (id)keyPathForCellConnectionStatus
{
  if (keyPathForCellConnectionStatus_onceToken != -1)
  {
    +[_CDNetworkContext keyPathForCellConnectionStatus];
  }

  v3 = keyPathForCellConnectionStatus_cellConnectionStatus;

  return v3;
}

+ (id)keyPathForWiredConnectionStatus
{
  if (keyPathForWiredConnectionStatus_onceToken != -1)
  {
    +[_CDNetworkContext keyPathForWiredConnectionStatus];
  }

  v3 = keyPathForWiredConnectionStatus_wiredConnection;

  return v3;
}

+ (int64_t)qualityForPath:(id)a3 inContext:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  v5 = +[_CDNetworkContext connectionQualityKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
}

+ (int64_t)wiredQuality:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

+ (int64_t)wifiQuality:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

+ (int64_t)cellQuality:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

+ (int64_t)interfaceClassForPath:(id)a3 inContext:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  v5 = +[_CDNetworkContext interfaceClassKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
}

+ (int64_t)wiredInterfaceClass:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:v3];

  return v5;
}

+ (int64_t)wifiInterfaceClass:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:v3];

  return v5;
}

+ (int64_t)cellInterfaceClass:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:v3];

  return v5;
}

+ (BOOL)inexpensiveNetworkingAvailable:(id)a3
{
  v3 = a3;
  v4 = [_CDNetworkContext wifiQuality:v3]> 0 || [_CDNetworkContext wiredQuality:v3]> 0;

  return v4;
}

+ (BOOL)networkingAvailable:(id)a3
{
  v3 = a3;
  v4 = [_CDNetworkContext inexpensiveNetworkingAvailable:v3]|| [_CDNetworkContext cellQuality:v3]> 0;

  return v4;
}

+ (BOOL)cellInterfaceUp:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext interfaceUpKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (int64_t)cellDownloadCost:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext downloadPowerCostKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

+ (int64_t)cellUploadCost:(id)a3
{
  v3 = a3;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext uploadPowerCostKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

@end