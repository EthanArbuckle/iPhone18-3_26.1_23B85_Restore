@interface _CDNetworkContext
+ (BOOL)cellInterfaceUp:(id)up;
+ (BOOL)inexpensiveNetworkingAvailable:(id)available;
+ (BOOL)networkingAvailable:(id)available;
+ (id)keyPathForCellConnectionStatus;
+ (id)keyPathForWiFiConnectionStatus;
+ (id)keyPathForWiredConnectionStatus;
+ (int64_t)cellDownloadCost:(id)cost;
+ (int64_t)cellInterfaceClass:(id)class;
+ (int64_t)cellQuality:(id)quality;
+ (int64_t)cellUploadCost:(id)cost;
+ (int64_t)interfaceClassForPath:(id)path inContext:(id)context;
+ (int64_t)qualityForPath:(id)path inContext:(id)context;
+ (int64_t)wifiInterfaceClass:(id)class;
+ (int64_t)wifiQuality:(id)quality;
+ (int64_t)wiredInterfaceClass:(id)class;
+ (int64_t)wiredQuality:(id)quality;
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

+ (int64_t)qualityForPath:(id)path inContext:(id)context
{
  v4 = [context objectForKeyedSubscript:path];
  v5 = +[_CDNetworkContext connectionQualityKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  return integerValue;
}

+ (int64_t)wiredQuality:(id)quality
{
  qualityCopy = quality;
  v4 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
  v5 = [qualityCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (int64_t)wifiQuality:(id)quality
{
  qualityCopy = quality;
  v4 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v5 = [qualityCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (int64_t)cellQuality:(id)quality
{
  qualityCopy = quality;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [qualityCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext connectionQualityKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (int64_t)interfaceClassForPath:(id)path inContext:(id)context
{
  v4 = [context objectForKeyedSubscript:path];
  v5 = +[_CDNetworkContext interfaceClassKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  integerValue = [v6 integerValue];

  return integerValue;
}

+ (int64_t)wiredInterfaceClass:(id)class
{
  classCopy = class;
  v4 = +[_CDNetworkContext keyPathForWiredConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:classCopy];

  return v5;
}

+ (int64_t)wifiInterfaceClass:(id)class
{
  classCopy = class;
  v4 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:classCopy];

  return v5;
}

+ (int64_t)cellInterfaceClass:(id)class
{
  classCopy = class;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [_CDNetworkContext interfaceClassForPath:v4 inContext:classCopy];

  return v5;
}

+ (BOOL)inexpensiveNetworkingAvailable:(id)available
{
  availableCopy = available;
  v4 = [_CDNetworkContext wifiQuality:availableCopy]> 0 || [_CDNetworkContext wiredQuality:availableCopy]> 0;

  return v4;
}

+ (BOOL)networkingAvailable:(id)available
{
  availableCopy = available;
  v4 = [_CDNetworkContext inexpensiveNetworkingAvailable:availableCopy]|| [_CDNetworkContext cellQuality:availableCopy]> 0;

  return v4;
}

+ (BOOL)cellInterfaceUp:(id)up
{
  upCopy = up;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [upCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext interfaceUpKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

+ (int64_t)cellDownloadCost:(id)cost
{
  costCopy = cost;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [costCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext downloadPowerCostKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (int64_t)cellUploadCost:(id)cost
{
  costCopy = cost;
  v4 = +[_CDNetworkContext keyPathForCellConnectionStatus];
  v5 = [costCopy objectForKeyedSubscript:v4];

  v6 = +[_CDNetworkContext uploadPowerCostKey];
  v7 = [v5 objectForKeyedSubscript:v6];
  integerValue = [v7 integerValue];

  return integerValue;
}

@end