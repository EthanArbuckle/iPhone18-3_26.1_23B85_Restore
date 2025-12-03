@interface ENRegionMonitorTelephonyDataSource
- (ENRegionMonitorSourceDelegate)delegate;
- (ENRegionMonitorTelephonyDataSource)initWithDelegate:(id)delegate;
- (void)mobileCountryCodeChanged:(id)changed withISOString:(id)string;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)telephonyUtility:(id)utility mobileCountryCodeChanged:(id)changed andCountryCodeISO:(id)o;
@end

@implementation ENRegionMonitorTelephonyDataSource

- (ENRegionMonitorSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (ENRegionMonitorTelephonyDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ENRegionMonitorTelephonyDataSource;
  v5 = [(ENRegionMonitorTelephonyDataSource *)&v10 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.exposureNotification.regionSource.telephony", v6);
    [(ENRegionMonitorTelephonyDataSource *)v5 setDataSourceQueue:v7];

    [(ENRegionMonitorTelephonyDataSource *)v5 setDelegate:delegateCopy];
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

- (void)mobileCountryCodeChanged:(id)changed withISOString:(id)string
{
  changedCopy = changed;
  stringCopy = string;
  cachedRegionVisit = [(ENRegionMonitorTelephonyDataSource *)self cachedRegionVisit];

  if (!cachedRegionVisit && gLogCategory_ENRegionMonitorTelephonyDataSource <= 30 && (gLogCategory_ENRegionMonitorTelephonyDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorTelephonyDataSource mobileCountryCodeChanged:changedCopy withISOString:?];
  }

  v8 = [objc_alloc(MEMORY[0x277CC5CA0]) initWithCountryCode:stringCopy];

  v9 = objc_alloc(MEMORY[0x277CC5D08]);
  date = [MEMORY[0x277CBEAA0] date];
  v11 = [v9 initWithRegion:v8 date:date];

  [(ENRegionMonitorTelephonyDataSource *)self setCachedRegionVisit:v11];
  delegate = [(ENRegionMonitorTelephonyDataSource *)self delegate];
  [delegate regionDataSource:self updatedWithVisit:v11];
}

- (void)telephonyUtility:(id)utility mobileCountryCodeChanged:(id)changed andCountryCodeISO:(id)o
{
  utilityCopy = utility;
  changedCopy = changed;
  oCopy = o;
  v10 = oCopy;
  if (changedCopy && oCopy && [oCopy length])
  {
    [(ENRegionMonitorTelephonyDataSource *)self mobileCountryCodeChanged:changedCopy withISOString:v10];
  }

  else if (gLogCategory__ENRegionMonitorTelephonyDataSource <= 90 && (gLogCategory__ENRegionMonitorTelephonyDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionMonitorTelephonyDataSource telephonyUtility:mobileCountryCodeChanged:andCountryCodeISO:];
  }
}

@end