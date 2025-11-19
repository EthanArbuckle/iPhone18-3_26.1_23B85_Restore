@interface MXCoreHandler
- (BOOL)shouldDeliverDataForBundleID:(id)a3 andTeamID:(id)a4;
- (MXCoreHandler)initWithClientUtil:(id)a3 andDeliveryDataCacher:(id)a4 andDeliveryPathUtil:(id)a5 andMetricServices:(id)a6 andDelegate:(id)a7;
- (MXCoreHandlerDelegate)delegate;
- (unint64_t)_successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:(id)a3;
- (void)_handleClientAvailability;
- (void)_processDataActivity;
- (void)_reportMetricKitUsage;
- (void)_updateClientAvailabilityAndPrepareDataActivityForBundleID:(id)a3;
- (void)performDataActivity;
- (void)registerClientAndTeamForBundleID:(id)a3 andTeamID:(id)a4;
- (void)registerClientForBundleID:(id)a3;
- (void)saveMetricPayloadsToDeliveryDirectoryAndReportSuccessForClientMetrics:(id)a3;
@end

@implementation MXCoreHandler

- (MXCoreHandler)initWithClientUtil:(id)a3 andDeliveryDataCacher:(id)a4 andDeliveryPathUtil:(id)a5 andMetricServices:(id)a6 andDelegate:(id)a7
{
  v22 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = MXCoreHandler;
  v17 = [(MXCoreHandler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientUtil, a3);
    objc_storeStrong(&v18->_deliveryDataCacher, a4);
    objc_storeStrong(&v18->_deliveryPathUtil, a5);
    objc_storeStrong(&v18->_metricServices, a6);
    objc_storeWeak(&v18->_delegate, v16);
    v19 = os_log_create("com.apple.metrickit", "core.handler");
    logHandle = v18->_logHandle;
    v18->_logHandle = v19;

    if (!v18->_logHandle)
    {
      objc_storeStrong(&v18->_logHandle, MEMORY[0x277D86220]);
    }
  }

  return v18;
}

- (void)registerClientForBundleID:(id)a3
{
  v5 = a3;
  [(MXCoreHandler *)self _updateClientAvailabilityAndPrepareDataActivityForBundleID:v5];
  if (([(MXClientUtilProtocol *)self->_clientUtil hasClientForBundleID:v5]& 1) == 0)
  {
    [(MXClientUtilProtocol *)self->_clientUtil registerClientForBundleID:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientDidRegisterForBundleID:v5];
  }
}

- (void)registerClientAndTeamForBundleID:(id)a3 andTeamID:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(MXCoreHandler *)self _updateClientAvailabilityAndPrepareDataActivityForBundleID:v8];
  if (([(MXClientUtilProtocol *)self->_clientUtil hasClientForBundleID:v8]& 1) == 0)
  {
    [(MXClientUtilProtocol *)self->_clientUtil registerClientForBundleID:v8];
    [(MXClientUtilProtocol *)self->_clientUtil registerTeamForBundleID:v8 andTeamID:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientDidRegisterForBundleID:v8];
  }
}

- (void)_updateClientAvailabilityAndPrepareDataActivityForBundleID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MXClientUtilProtocol *)self->_clientUtil persistAllClients];
  [(MXClientUtilProtocol *)self->_clientUtil updateClientAsAvailableFromPersistence];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = logHandle;
    v7 = [(MXCoreHandler *)self clientUtil];
    v10[0] = 67109120;
    v10[1] = [v7 isClientAvailableForBundleID:v4];
    _os_log_impl(&dword_258D6F000, v6, OS_LOG_TYPE_INFO, "Interested clients now available State: %d\n", v10, 8u);
  }

  if ([(MXClientUtilProtocol *)self->_clientUtil isClientAvailableFromPersistence])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientIsAvailableForPreparingDataActivity];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)performDataActivity
{
  if ([(MXClientUtilProtocol *)self->_clientUtil isClientAvailableFromPersistence])
  {

    [(MXCoreHandler *)self _processDataActivity];
  }
}

- (void)saveMetricPayloadsToDeliveryDirectoryAndReportSuccessForClientMetrics:(id)a3
{
  v4 = a3;
  [(MXCoreHandler *)self _reportMetricKitUsage];
  v5 = [(MXCoreHandler *)self _successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:v4];

  clientUtil = self->_clientUtil;

  [(MXClientUtilProtocol *)clientUtil reportPayloadDeliveriesSuccessWithSuccessCount:v5];
}

- (void)_processDataActivity
{
  v3 = [(MXMetricServicesProtocol *)self->_metricServices clientMetricPayloadsForAllClients];
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metricIsAvailableFromSourceDirectoryForSavingToDeliveryDirectoryWithClientMetrics:v5];

    [(MXCoreHandler *)self _handleClientAvailability];
    [(MXDeliveryDataCacherProtocol *)self->_deliveryDataCacher notifyDataAvailableForDelivery];
    v3 = v5;
  }
}

- (void)_handleClientAvailability
{
  [(MXClientUtilProtocol *)self->_clientUtil persistAllClients];
  if (([(MXClientUtilProtocol *)self->_clientUtil hasAnyClient]& 1) == 0)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "No more available clients, resetting client availability key", v5, 2u);
    }

    [(MXClientUtilProtocol *)self->_clientUtil updateClientAsNotAvailableFromPersistence];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientIsNotAvailable];
  }
}

- (void)_reportMetricKitUsage
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(MXClientUtilProtocol *)self->_clientUtil allClients];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MXClientUtilProtocol *)self->_clientUtil reportMetricKitUsageForBundleID:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v19;
    *&v7 = 138412290;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v23 = v12;
          _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Payload delivery for client: %@", buf, 0xCu);
        }

        v14 = [v4 objectForKeyedSubscript:{v12, v17}];
        v9 += [(MXDeliveryDataCacherProtocol *)self->_deliveryDataCacher saveMetrics:v14 toDeliveryDirectoryForBundleID:v12];
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)shouldDeliverDataForBundleID:(id)a3 andTeamID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MXClientUtilProtocol *)self->_clientUtil isClientAvailableForBundleID:v6])
  {
    v8 = [(MXClientUtilProtocol *)self->_clientUtil teamIDForBundleID:v6];
    v9 = [v8 compare:v7] == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (MXCoreHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end