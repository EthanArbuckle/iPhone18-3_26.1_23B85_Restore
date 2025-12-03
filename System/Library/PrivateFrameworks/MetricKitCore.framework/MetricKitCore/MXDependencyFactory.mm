@interface MXDependencyFactory
+ (id)shared;
- (MXDependencyFactory)init;
- (id)handlerForMXCoreWithDelegate:(id)delegate;
- (id)handlerForMXSourceWithDelegate:(id)delegate;
- (void)_initIvar;
@end

@implementation MXDependencyFactory

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MXDependencyFactory_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v2 = shared_result;

  return v2;
}

uint64_t __29__MXDependencyFactory_shared__block_invoke(uint64_t a1)
{
  shared_result = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MXDependencyFactory)init
{
  v5.receiver = self;
  v5.super_class = MXDependencyFactory;
  v2 = [(MXDependencyFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MXDependencyFactory *)v2 _initIvar];
  }

  return v3;
}

- (void)_initIvar
{
  v3 = objc_alloc_init(MXPayloadValidator);
  payloadValidator = self->_payloadValidator;
  self->_payloadValidator = v3;

  v5 = objc_alloc_init(MXBundleUtil);
  bundleUtil = self->_bundleUtil;
  self->_bundleUtil = v5;

  v7 = objc_alloc_init(MXStorageUtil);
  storageUtil = self->_storageUtil;
  self->_storageUtil = v7;

  v9 = [[MXDeliveryPathUtil alloc] initWithStorageUtil:self->_storageUtil andBundleUtil:self->_bundleUtil];
  deliveryPathUtil = self->_deliveryPathUtil;
  self->_deliveryPathUtil = v9;

  v11 = objc_alloc_init(MXClientUtil);
  clientUtil = self->_clientUtil;
  self->_clientUtil = v11;

  v13 = [[MXDeliveryDataCacher alloc] initWithClientUtil:self->_clientUtil andDeliveryPathUtil:self->_deliveryPathUtil andStorageUtil:self->_storageUtil];
  deliveryDataCacher = self->_deliveryDataCacher;
  self->_deliveryDataCacher = v13;

  v15 = objc_alloc_init(MXDateUtil);
  dateUtil = self->_dateUtil;
  self->_dateUtil = v15;

  v17 = [[MXCleanUtil alloc] initWithClientUtil:self->_clientUtil andDeliveryPathUtil:self->_deliveryPathUtil andDateUtil:self->_dateUtil];
  cleanUtil = self->_cleanUtil;
  self->_cleanUtil = v17;

  v19 = [[MXSourcePathUtil alloc] initWithDateUtil:self->_dateUtil andStorageUtil:self->_storageUtil];
  sourcePathUtil = self->_sourcePathUtil;
  self->_sourcePathUtil = v19;

  v21 = [[MXSourceDataCacher alloc] initWithSourcePathUtil:self->_sourcePathUtil andStorageUtil:self->_storageUtil andBundleUtil:self->_bundleUtil];
  sourceDataCacher = self->_sourceDataCacher;
  self->_sourceDataCacher = v21;

  v23 = [[MXMetricServices alloc] initWithClientUtil:self->_clientUtil andSourcePathUtil:self->_sourcePathUtil];
  metricServices = self->_metricServices;
  self->_metricServices = v23;

  v25 = [[MXDiagnosticServices alloc] initWithSourcePathUtil:self->_sourcePathUtil andDateUtil:self->_dateUtil];
  diagnosticServices = self->_diagnosticServices;
  self->_diagnosticServices = v25;

  MEMORY[0x2821F96F8]();
}

- (id)handlerForMXCoreWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[MXCoreHandler alloc] initWithClientUtil:self->_clientUtil andDeliveryDataCacher:self->_deliveryDataCacher andDeliveryPathUtil:self->_deliveryPathUtil andMetricServices:self->_metricServices andDelegate:delegateCopy];

  return v5;
}

- (id)handlerForMXSourceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[MXSourceHandler alloc] initWithSourceDataCacher:self->_sourceDataCacher andDeliveryDataCacher:self->_deliveryDataCacher andSourcePathUtil:self->_sourcePathUtil andBundleUtil:self->_bundleUtil andDiagnosticServices:self->_diagnosticServices andDelegate:delegateCopy];

  return v5;
}

@end