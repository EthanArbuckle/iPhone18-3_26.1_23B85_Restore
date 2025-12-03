@interface ENRegionTestDataSource
- (ENRegionMonitorSourceDelegate)delegate;
- (ENRegionTestDataSource)initWithDelegate:(id)delegate;
- (NSString)description;
- (id)currentRegionVisit;
- (uint64_t)currentRegionVisit;
- (void)dealloc;
- (void)regionChanged;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation ENRegionTestDataSource

- (ENRegionTestDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ENRegionTestDataSource;
  v5 = [(ENRegionTestDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENRegionTestDataSource *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA0];
  currentRegionVisit = [(ENRegionTestDataSource *)self currentRegionVisit];
  v4 = [v2 stringWithFormat:@"ENRegionTestDataSource: %@", currentRegionVisit];

  return v4;
}

- (void)dealloc
{
  if (gLogCategory_ENRegionTestDataSource <= 30 && (gLogCategory_ENRegionTestDataSource != -1 || _LogCategory_Initialize()))
  {
    [ENRegionTestDataSource dealloc];
  }

  CFPrefs_RemoveValue();
  v3.receiver = self;
  v3.super_class = ENRegionTestDataSource;
  [(ENRegionTestDataSource *)&v3 dealloc];
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

- (id)currentRegionVisit
{
  CFDataGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  if (![v2 length] || (v5 = 0, objc_msgSend(MEMORY[0x277CCAAC0], "unarchivedObjectOfClass:fromData:error:", objc_opt_class(), v2, &v5), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    [(ENRegionTestDataSource *)&v6 currentRegionVisit];
    v3 = v6;
  }

  return v3;
}

- (void)regionChanged
{
  currentRegionVisit = [(ENRegionTestDataSource *)self currentRegionVisit];
  if (currentRegionVisit)
  {
    v7 = currentRegionVisit;
    v4 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v4 isSensitiveLoggingAllowed];

    if ((isSensitiveLoggingAllowed & 1) != 0 && gLogCategory_ENRegionTestDataSource <= 30 && (gLogCategory_ENRegionTestDataSource != -1 || _LogCategory_Initialize()))
    {
      [ENRegionTestDataSource regionChanged];
    }

    delegate = [(ENRegionTestDataSource *)self delegate];
    [delegate regionDataSource:self updatedWithVisit:v7];

    currentRegionVisit = v7;
  }
}

- (ENRegionMonitorSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (uint64_t)currentRegionVisit
{
  v1 = result;
  if (gLogCategory_ENRegionTestDataSource <= 30)
  {
    if (gLogCategory_ENRegionTestDataSource != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = 0;
  return result;
}

@end