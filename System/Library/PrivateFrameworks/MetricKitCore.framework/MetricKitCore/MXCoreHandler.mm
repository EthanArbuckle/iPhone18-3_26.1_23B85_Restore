@interface MXCoreHandler
- (BOOL)shouldDeliverDataForBundleID:(id)d andTeamID:(id)iD;
- (MXCoreHandler)initWithClientUtil:(id)util andDeliveryDataCacher:(id)cacher andDeliveryPathUtil:(id)pathUtil andMetricServices:(id)services andDelegate:(id)delegate;
- (MXCoreHandlerDelegate)delegate;
- (unint64_t)_successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:(id)metrics;
- (void)_handleClientAvailability;
- (void)_processDataActivity;
- (void)_reportMetricKitUsage;
- (void)_updateClientAvailabilityAndPrepareDataActivityForBundleID:(id)d;
- (void)performDataActivity;
- (void)registerClientAndTeamForBundleID:(id)d andTeamID:(id)iD;
- (void)registerClientForBundleID:(id)d;
- (void)saveMetricPayloadsToDeliveryDirectoryAndReportSuccessForClientMetrics:(id)metrics;
@end

@implementation MXCoreHandler

- (MXCoreHandler)initWithClientUtil:(id)util andDeliveryDataCacher:(id)cacher andDeliveryPathUtil:(id)pathUtil andMetricServices:(id)services andDelegate:(id)delegate
{
  utilCopy = util;
  cacherCopy = cacher;
  pathUtilCopy = pathUtil;
  servicesCopy = services;
  delegateCopy = delegate;
  v23.receiver = self;
  v23.super_class = MXCoreHandler;
  v17 = [(MXCoreHandler *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_clientUtil, util);
    objc_storeStrong(&v18->_deliveryDataCacher, cacher);
    objc_storeStrong(&v18->_deliveryPathUtil, pathUtil);
    objc_storeStrong(&v18->_metricServices, services);
    objc_storeWeak(&v18->_delegate, delegateCopy);
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

- (void)registerClientForBundleID:(id)d
{
  dCopy = d;
  [(MXCoreHandler *)self _updateClientAvailabilityAndPrepareDataActivityForBundleID:dCopy];
  if (([(MXClientUtilProtocol *)self->_clientUtil hasClientForBundleID:dCopy]& 1) == 0)
  {
    [(MXClientUtilProtocol *)self->_clientUtil registerClientForBundleID:dCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientDidRegisterForBundleID:dCopy];
  }
}

- (void)registerClientAndTeamForBundleID:(id)d andTeamID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  [(MXCoreHandler *)self _updateClientAvailabilityAndPrepareDataActivityForBundleID:dCopy];
  if (([(MXClientUtilProtocol *)self->_clientUtil hasClientForBundleID:dCopy]& 1) == 0)
  {
    [(MXClientUtilProtocol *)self->_clientUtil registerClientForBundleID:dCopy];
    [(MXClientUtilProtocol *)self->_clientUtil registerTeamForBundleID:dCopy andTeamID:iDCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained clientDidRegisterForBundleID:dCopy];
  }
}

- (void)_updateClientAvailabilityAndPrepareDataActivityForBundleID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(MXClientUtilProtocol *)self->_clientUtil persistAllClients];
  [(MXClientUtilProtocol *)self->_clientUtil updateClientAsAvailableFromPersistence];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v6 = logHandle;
    clientUtil = [(MXCoreHandler *)self clientUtil];
    v10[0] = 67109120;
    v10[1] = [clientUtil isClientAvailableForBundleID:dCopy];
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

- (void)saveMetricPayloadsToDeliveryDirectoryAndReportSuccessForClientMetrics:(id)metrics
{
  metricsCopy = metrics;
  [(MXCoreHandler *)self _reportMetricKitUsage];
  v5 = [(MXCoreHandler *)self _successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:metricsCopy];

  clientUtil = self->_clientUtil;

  [(MXClientUtilProtocol *)clientUtil reportPayloadDeliveriesSuccessWithSuccessCount:v5];
}

- (void)_processDataActivity
{
  clientMetricPayloadsForAllClients = [(MXMetricServicesProtocol *)self->_metricServices clientMetricPayloadsForAllClients];
  if (clientMetricPayloadsForAllClients)
  {
    v5 = clientMetricPayloadsForAllClients;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained metricIsAvailableFromSourceDirectoryForSavingToDeliveryDirectoryWithClientMetrics:v5];

    [(MXCoreHandler *)self _handleClientAvailability];
    [(MXDeliveryDataCacherProtocol *)self->_deliveryDataCacher notifyDataAvailableForDelivery];
    clientMetricPayloadsForAllClients = v5;
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
  allClients = [(MXClientUtilProtocol *)self->_clientUtil allClients];
  v4 = [allClients countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allClients);
        }

        [(MXClientUtilProtocol *)self->_clientUtil reportMetricKitUsageForBundleID:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allClients countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_successCountFromSavingMetricPayloadsToDeliveryDirectoryForClientMetrics:(id)metrics
{
  v25 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [metricsCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v23 = v12;
          _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_DEFAULT, "Payload delivery for client: %@", buf, 0xCu);
        }

        v14 = [metricsCopy objectForKeyedSubscript:{v12, v17}];
        v9 += [(MXDeliveryDataCacherProtocol *)self->_deliveryDataCacher saveMetrics:v14 toDeliveryDirectoryForBundleID:v12];
      }

      v8 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
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

- (BOOL)shouldDeliverDataForBundleID:(id)d andTeamID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if ([(MXClientUtilProtocol *)self->_clientUtil isClientAvailableForBundleID:dCopy])
  {
    v8 = [(MXClientUtilProtocol *)self->_clientUtil teamIDForBundleID:dCopy];
    v9 = [v8 compare:iDCopy] == 0;
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