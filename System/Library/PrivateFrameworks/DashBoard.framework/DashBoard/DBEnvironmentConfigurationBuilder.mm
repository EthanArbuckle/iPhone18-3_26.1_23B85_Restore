@interface DBEnvironmentConfigurationBuilder
- (DBEnvironmentConfigurationBuilder)initWithConfiguration:(id)a3;
- (id)buildWithError:(id *)a3;
@end

@implementation DBEnvironmentConfigurationBuilder

- (DBEnvironmentConfigurationBuilder)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBEnvironmentConfigurationBuilder;
  v6 = [(DBEnvironmentConfigurationBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (id)buildWithError:(id *)a3
{
  v4 = [(DBEnvironmentConfiguration *)self->_configuration displayConfiguration];
  v5 = v4;
  if (self->_displayConfigurationSet)
  {
    v6 = self->_displayConfiguration;

    v27 = v6;
  }

  else
  {
    v27 = v4;
  }

  v26 = [(DBEnvironmentConfiguration *)self->_configuration displayLayoutPublisher];
  v25 = [(DBEnvironmentConfiguration *)self->_configuration iconBadgeController];
  v7 = [(DBEnvironmentConfiguration *)self->_configuration session];
  v24 = [(DBEnvironmentConfiguration *)self->_configuration supportedFeatures];
  v23 = [(DBEnvironmentConfiguration *)self->_configuration processMonitor];
  v22 = [(DBEnvironmentConfiguration *)self->_configuration thermalMonitor];
  v21 = [(DBEnvironmentConfiguration *)self->_configuration vehicle];
  v20 = [(DBEnvironmentConfiguration *)self->_configuration themeController];
  v19 = [(DBEnvironmentConfiguration *)self->_configuration navigationStateProvider];
  v18 = [(DBEnvironmentConfiguration *)self->_configuration analyticsProvider];
  v17 = [(DBEnvironmentConfiguration *)self->_configuration uisyncChannel];
  v16 = [(DBEnvironmentConfiguration *)self->_configuration uisyncSession];
  v15 = [(DBEnvironmentConfiguration *)self->_configuration uisyncSessionEventDelegate];
  v8 = [(DBEnvironmentConfiguration *)self->_configuration layerMetadataService];
  v14 = [(DBEnvironmentConfiguration *)self->_configuration isKnownVehicle];
  v9 = [(DBEnvironmentConfiguration *)self->_configuration vehicleID];
  v13 = [(DBEnvironmentConfiguration *)self->_configuration isPairedVehicle];
  v10 = [(DBEnvironmentConfiguration *)self->_configuration iconImageCache];
  v11 = [[DBEnvironmentConfiguration alloc] initWithDisplayConfiguration:v27 layoutPublisher:v26 iconBadgeController:v25 session:v7 supportedFeatures:v24 processMonitor:v23 thermalMonitor:v22 vehicle:v21 themeController:v20 navigationStateProvider:v19 analyticsProvider:v18];
  [(DBEnvironmentConfiguration *)v11 setUisyncChannel:v17];
  [(DBEnvironmentConfiguration *)v11 setUisyncSession:v16];
  [(DBEnvironmentConfiguration *)v11 setUisyncSessionEventDelegate:v15];
  [(DBEnvironmentConfiguration *)v11 setLayerMetadataService:v8];
  [(DBEnvironmentConfiguration *)v11 setKnownVehicle:v14];
  [(DBEnvironmentConfiguration *)v11 setVehicleID:v9];
  [(DBEnvironmentConfiguration *)v11 setPairedVehicle:v13];
  [(DBEnvironmentConfiguration *)v11 setIconImageCache:v10];

  return v11;
}

@end