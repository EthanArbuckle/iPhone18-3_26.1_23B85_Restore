@interface MXSourceHandler
- (BOOL)writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error;
- (MXSourceHandler)initWithSourceDataCacher:(id)cacher andDeliveryDataCacher:(id)dataCacher andSourcePathUtil:(id)util andBundleUtil:(id)bundleUtil andDiagnosticServices:(id)services andDelegate:(id)delegate;
- (MXSourceHandlerDelegate)delegate;
- (void)_removeDeliveredPayloadForSourceID:(int64_t)d atDate:(id)date;
- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client;
- (void)handleDiagnosticDataWithPayload:(id)payload;
- (void)handleMetricDataWithPayload:(id)payload;
@end

@implementation MXSourceHandler

- (MXSourceHandler)initWithSourceDataCacher:(id)cacher andDeliveryDataCacher:(id)dataCacher andSourcePathUtil:(id)util andBundleUtil:(id)bundleUtil andDiagnosticServices:(id)services andDelegate:(id)delegate
{
  cacherCopy = cacher;
  dataCacherCopy = dataCacher;
  utilCopy = util;
  bundleUtilCopy = bundleUtil;
  servicesCopy = services;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = MXSourceHandler;
  v18 = [(MXSourceHandler *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceDataCacher, cacher);
    objc_storeStrong(&v19->_deliveryDataCacher, dataCacher);
    objc_storeStrong(&v19->_sourcePathUtil, util);
    objc_storeStrong(&v19->_diagnosticServices, services);
    objc_storeStrong(&v19->_bundleUtil, bundleUtil);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v20 = os_log_create("com.apple.metrickit", "source.handler");
    logHandle = v19->_logHandle;
    v19->_logHandle = v20;

    if (!v19->_logHandle)
    {
      objc_storeStrong(&v19->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v19;
}

- (void)handleMetricDataWithPayload:(id)payload
{
  payloadCopy = payload;
  sourceDataCacher = [(MXSourceHandler *)self sourceDataCacher];
  v6 = [sourceDataCacher saveToSourceDirectoryWithMetricSourcePayload:payloadCopy];

  if (v6)
  {
    delegate = [(MXSourceHandler *)self delegate];
    [delegate metricPayloadDidCacheToSourceDirectory];
  }
}

- (void)handleDiagnosticDataWithPayload:(id)payload
{
  payloadCopy = payload;
  sourceDataCacher = [(MXSourceHandler *)self sourceDataCacher];
  v6 = [sourceDataCacher saveToSourceDirectoryWithDiagnosticSourcePayload:payloadCopy];

  if (v6)
  {
    delegate = [(MXSourceHandler *)self delegate];
    [delegate diagnosticPayloadDidCacheToSourceDirectory];

    bundleID = [payloadCopy bundleID];
    v9 = [(MXBundleUtilProtocol *)self->_bundleUtil isAppExtensionFromBundleID:bundleID];
    if (v9)
    {
      v10 = [(MXBundleUtilProtocol *)self->_bundleUtil mainAppBundleIDforExtension:bundleID];
      v11 = v10;
      if (!v10)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [(MXSourceHandler *)bundleID handleDiagnosticDataWithPayload:?];
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v10 = bundleID;
    }

    diagnosticServices = [(MXSourceHandler *)self diagnosticServices];
    datestamp = [payloadCopy datestamp];
    v15 = [diagnosticServices diagnosticPayloadForClient:bundleID isExtension:v9 andMainAppBundleID:v11 andDate:datestamp];

    v16 = v10;
    deliveryDataCacher = [(MXSourceHandler *)self deliveryDataCacher];
    LODWORD(datestamp) = [deliveryDataCacher saveDiagnostic:v15 toDeliveryDirectoryForBundleID:v16];

    if (datestamp)
    {
      sourceID = [payloadCopy sourceID];
      datestamp2 = [payloadCopy datestamp];
      [(MXSourceHandler *)self _removeDeliveredPayloadForSourceID:sourceID atDate:datestamp2];

      deliveryDataCacher2 = [(MXSourceHandler *)self deliveryDataCacher];
      [deliveryDataCacher2 notifyDataAvailableForDelivery];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)client
{
  clientCopy = client;
  diagnosticServices = [(MXSourceHandler *)self diagnosticServices];
  [diagnosticServices cleanServiceDiagnosticsDirectoriesForClient:clientCopy];
}

- (BOOL)writeDiagnosticReport:(id)report atAppContainerPath:(id)path forClient:(id)client withError:(id *)error
{
  clientCopy = client;
  pathCopy = path;
  reportCopy = report;
  deliveryDataCacher = [(MXSourceHandler *)self deliveryDataCacher];
  LOBYTE(error) = [deliveryDataCacher writeDiagnosticReport:reportCopy atAppContainerPath:pathCopy forClient:clientCopy withError:error];

  return error;
}

- (void)_removeDeliveredPayloadForSourceID:(int64_t)d atDate:(id)date
{
  dateCopy = date;
  sourcePathUtil = [(MXSourceHandler *)self sourcePathUtil];
  [sourcePathUtil removeDeliveredDiagnosticsForSourceID:d forDate:dateCopy];
}

- (MXSourceHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleDiagnosticDataWithPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_258D6F000, a2, OS_LOG_TYPE_ERROR, "could not resolve Main App bundleID for extension %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end