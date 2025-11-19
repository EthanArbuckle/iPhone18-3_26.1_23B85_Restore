@interface MXSourceHandler
- (BOOL)writeDiagnosticReport:(id)a3 atAppContainerPath:(id)a4 forClient:(id)a5 withError:(id *)a6;
- (MXSourceHandler)initWithSourceDataCacher:(id)a3 andDeliveryDataCacher:(id)a4 andSourcePathUtil:(id)a5 andBundleUtil:(id)a6 andDiagnosticServices:(id)a7 andDelegate:(id)a8;
- (MXSourceHandlerDelegate)delegate;
- (void)_removeDeliveredPayloadForSourceID:(int64_t)a3 atDate:(id)a4;
- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)a3;
- (void)handleDiagnosticDataWithPayload:(id)a3;
- (void)handleMetricDataWithPayload:(id)a3;
@end

@implementation MXSourceHandler

- (MXSourceHandler)initWithSourceDataCacher:(id)a3 andDeliveryDataCacher:(id)a4 andSourcePathUtil:(id)a5 andBundleUtil:(id)a6 andDiagnosticServices:(id)a7 andDelegate:(id)a8
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v26.receiver = self;
  v26.super_class = MXSourceHandler;
  v18 = [(MXSourceHandler *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sourceDataCacher, a3);
    objc_storeStrong(&v19->_deliveryDataCacher, a4);
    objc_storeStrong(&v19->_sourcePathUtil, a5);
    objc_storeStrong(&v19->_diagnosticServices, a7);
    objc_storeStrong(&v19->_bundleUtil, a6);
    objc_storeWeak(&v19->_delegate, v17);
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

- (void)handleMetricDataWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(MXSourceHandler *)self sourceDataCacher];
  v6 = [v5 saveToSourceDirectoryWithMetricSourcePayload:v4];

  if (v6)
  {
    v7 = [(MXSourceHandler *)self delegate];
    [v7 metricPayloadDidCacheToSourceDirectory];
  }
}

- (void)handleDiagnosticDataWithPayload:(id)a3
{
  v4 = a3;
  v5 = [(MXSourceHandler *)self sourceDataCacher];
  v6 = [v5 saveToSourceDirectoryWithDiagnosticSourcePayload:v4];

  if (v6)
  {
    v7 = [(MXSourceHandler *)self delegate];
    [v7 diagnosticPayloadDidCacheToSourceDirectory];

    v8 = [v4 bundleID];
    v9 = [(MXBundleUtilProtocol *)self->_bundleUtil isAppExtensionFromBundleID:v8];
    if (v9)
    {
      v10 = [(MXBundleUtilProtocol *)self->_bundleUtil mainAppBundleIDforExtension:v8];
      v11 = v10;
      if (!v10)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          [(MXSourceHandler *)v8 handleDiagnosticDataWithPayload:?];
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v10 = v8;
    }

    v13 = [(MXSourceHandler *)self diagnosticServices];
    v14 = [v4 datestamp];
    v15 = [v13 diagnosticPayloadForClient:v8 isExtension:v9 andMainAppBundleID:v11 andDate:v14];

    v16 = v10;
    v17 = [(MXSourceHandler *)self deliveryDataCacher];
    LODWORD(v14) = [v17 saveDiagnostic:v15 toDeliveryDirectoryForBundleID:v16];

    if (v14)
    {
      v18 = [v4 sourceID];
      v19 = [v4 datestamp];
      [(MXSourceHandler *)self _removeDeliveredPayloadForSourceID:v18 atDate:v19];

      v20 = [(MXSourceHandler *)self deliveryDataCacher];
      [v20 notifyDataAvailableForDelivery];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)cleanServiceDiagnosticsDirectoriesForClient:(id)a3
{
  v4 = a3;
  v5 = [(MXSourceHandler *)self diagnosticServices];
  [v5 cleanServiceDiagnosticsDirectoriesForClient:v4];
}

- (BOOL)writeDiagnosticReport:(id)a3 atAppContainerPath:(id)a4 forClient:(id)a5 withError:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(MXSourceHandler *)self deliveryDataCacher];
  LOBYTE(a6) = [v13 writeDiagnosticReport:v12 atAppContainerPath:v11 forClient:v10 withError:a6];

  return a6;
}

- (void)_removeDeliveredPayloadForSourceID:(int64_t)a3 atDate:(id)a4
{
  v6 = a4;
  v7 = [(MXSourceHandler *)self sourcePathUtil];
  [v7 removeDeliveredDiagnosticsForSourceID:a3 forDate:v6];
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