@interface NTKCompanion1stPartyStocksApp
- (NTKCompanion1stPartyStocksApp)initWithDevice:(id)device;
@end

@implementation NTKCompanion1stPartyStocksApp

- (NTKCompanion1stPartyStocksApp)initWithDevice:(id)device
{
  deviceCopy = device;
  v6 = NTKRemoteComplicationStocksClientIdentifier(deviceCopy);
  v12.receiver = self;
  v12.super_class = NTKCompanion1stPartyStocksApp;
  v7 = [(NTKCompanion3rdPartyApp *)&v12 _initWithWatchAppId:@"com.apple.stocks.watchapp" containerAppId:@"com.apple.stocks" complicationClientId:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_device, device);
    [(NTKCompanion3rdPartyApp *)v7 setInstalled:1];
    complication = [(NTKCompanion1stPartyStocksApp *)v7 complication];
    complicationDescriptor = [complication complicationDescriptor];
    supportedFamilies = [complicationDescriptor supportedFamilies];
    [(NTKCompanion3rdPartyApp *)v7 setSupportedFamilies:supportedFamilies];
  }

  return v7;
}

@end