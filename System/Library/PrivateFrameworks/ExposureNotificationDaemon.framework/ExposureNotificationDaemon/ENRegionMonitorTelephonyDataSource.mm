@interface ENRegionMonitorTelephonyDataSource
- (ENRegionMonitorSourceDelegate)delegate;
- (ENRegionMonitorTelephonyDataSource)initWithDelegate:(id)a3;
- (void)mobileCountryCodeChanged:(id)a3 withISOString:(id)a4;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)telephonyUtility:(id)a3 mobileCountryCodeChanged:(id)a4 andCountryCodeISO:(id)a5;
@end

@implementation ENRegionMonitorTelephonyDataSource

- (ENRegionMonitorSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (ENRegionMonitorTelephonyDataSource)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ENRegionMonitorTelephonyDataSource;
  v5 = [(ENRegionMonitorTelephonyDataSource *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.exposureNotification.regionSource.telephony", v6);
    [(ENRegionMonitorTelephonyDataSource *)v5 setDataSourceQueue:v7];

    [(ENRegionMonitorTelephonyDataSource *)v5 setDelegate:v4];
    v8 = +[ENCoreTelephonyUtility sharedInstance];
    [(ENRegionMonitorTelephonyDataSource *)v5 setTelephonyUtility:v8];
  }

  return v5;
}

- (void)startMonitoring
{
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF_safe();
}

- (void)stopMonitoring
{
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  LogPrintF_safe();
}

- (void)mobileCountryCodeChanged:(id)a3 withISOString:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(ENRegionMonitorTelephonyDataSource *)self cachedRegionVisit];

  if (!v7 && gLogCategory_ENRegionMonitorTelephonyDataSource <= 30 && (gLogCategory_ENRegionMonitorTelephonyDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorTelephonyDataSource mobileCountryCodeChanged:v13 withISOString:?];
  }

  v8 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:v6];

  v9 = objc_alloc(MEMORY[0x277CC5D08]);
  v10 = [MEMORY[0x277CBEAA0] date];
  v11 = [v9 initWithRegion:v8 date:v10];

  [(ENRegionMonitorTelephonyDataSource *)self setCachedRegionVisit:v11];
  v12 = [(ENRegionMonitorTelephonyDataSource *)self delegate];
  [v12 regionDataSource:self updatedWithVisit:v11];
}

- (void)telephonyUtility:(id)a3 mobileCountryCodeChanged:(id)a4 andCountryCodeISO:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9 && [v9 length])
  {
    [(ENRegionMonitorTelephonyDataSource *)self mobileCountryCodeChanged:v8 withISOString:v10];
  }

  else if (gLogCategory__ENRegionMonitorTelephonyDataSource <= 90 && (gLogCategory__ENRegionMonitorTelephonyDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorTelephonyDataSource telephonyUtility:mobileCountryCodeChanged:andCountryCodeISO:];
  }
}

@end