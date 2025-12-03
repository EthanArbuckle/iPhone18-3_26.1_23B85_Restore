@interface DBEnvironmentConfigurationBuilder
- (DBEnvironmentConfigurationBuilder)initWithConfiguration:(id)configuration;
- (id)buildWithError:(id *)error;
@end

@implementation DBEnvironmentConfigurationBuilder

- (DBEnvironmentConfigurationBuilder)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = DBEnvironmentConfigurationBuilder;
  v6 = [(DBEnvironmentConfigurationBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (id)buildWithError:(id *)error
{
  displayConfiguration = [(DBEnvironmentConfiguration *)self->_configuration displayConfiguration];
  v5 = displayConfiguration;
  if (self->_displayConfigurationSet)
  {
    v6 = self->_displayConfiguration;

    v27 = v6;
  }

  else
  {
    v27 = displayConfiguration;
  }

  displayLayoutPublisher = [(DBEnvironmentConfiguration *)self->_configuration displayLayoutPublisher];
  iconBadgeController = [(DBEnvironmentConfiguration *)self->_configuration iconBadgeController];
  session = [(DBEnvironmentConfiguration *)self->_configuration session];
  supportedFeatures = [(DBEnvironmentConfiguration *)self->_configuration supportedFeatures];
  processMonitor = [(DBEnvironmentConfiguration *)self->_configuration processMonitor];
  thermalMonitor = [(DBEnvironmentConfiguration *)self->_configuration thermalMonitor];
  vehicle = [(DBEnvironmentConfiguration *)self->_configuration vehicle];
  themeController = [(DBEnvironmentConfiguration *)self->_configuration themeController];
  navigationStateProvider = [(DBEnvironmentConfiguration *)self->_configuration navigationStateProvider];
  analyticsProvider = [(DBEnvironmentConfiguration *)self->_configuration analyticsProvider];
  uisyncChannel = [(DBEnvironmentConfiguration *)self->_configuration uisyncChannel];
  uisyncSession = [(DBEnvironmentConfiguration *)self->_configuration uisyncSession];
  uisyncSessionEventDelegate = [(DBEnvironmentConfiguration *)self->_configuration uisyncSessionEventDelegate];
  layerMetadataService = [(DBEnvironmentConfiguration *)self->_configuration layerMetadataService];
  isKnownVehicle = [(DBEnvironmentConfiguration *)self->_configuration isKnownVehicle];
  vehicleID = [(DBEnvironmentConfiguration *)self->_configuration vehicleID];
  isPairedVehicle = [(DBEnvironmentConfiguration *)self->_configuration isPairedVehicle];
  iconImageCache = [(DBEnvironmentConfiguration *)self->_configuration iconImageCache];
  v11 = [[DBEnvironmentConfiguration alloc] initWithDisplayConfiguration:v27 layoutPublisher:displayLayoutPublisher iconBadgeController:iconBadgeController session:session supportedFeatures:supportedFeatures processMonitor:processMonitor thermalMonitor:thermalMonitor vehicle:vehicle themeController:themeController navigationStateProvider:navigationStateProvider analyticsProvider:analyticsProvider];
  [(DBEnvironmentConfiguration *)v11 setUisyncChannel:uisyncChannel];
  [(DBEnvironmentConfiguration *)v11 setUisyncSession:uisyncSession];
  [(DBEnvironmentConfiguration *)v11 setUisyncSessionEventDelegate:uisyncSessionEventDelegate];
  [(DBEnvironmentConfiguration *)v11 setLayerMetadataService:layerMetadataService];
  [(DBEnvironmentConfiguration *)v11 setKnownVehicle:isKnownVehicle];
  [(DBEnvironmentConfiguration *)v11 setVehicleID:vehicleID];
  [(DBEnvironmentConfiguration *)v11 setPairedVehicle:isPairedVehicle];
  [(DBEnvironmentConfiguration *)v11 setIconImageCache:iconImageCache];

  return v11;
}

@end