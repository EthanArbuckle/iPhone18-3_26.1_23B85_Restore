@interface CLKCComplicationDataSource
- (CLKCComplicationDataSource)init;
- (CLKCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (CLKCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5 context:(id)a6;
- (CLKCComplicationDataSourceDelegate)delegate;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getDesiredUpdateIntervalWithHandler:(id)a3;
- (void)getSupportedTimeTravelDirectionsWithHandler:(id)a3;
- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5;
- (void)getTimelineEntriesBeforeDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5;
- (void)getTimelineStartDateWithHandler:(id)a3;
@end

@implementation CLKCComplicationDataSource

- (CLKCComplicationDataSource)init
{
  v6.receiver = self;
  v6.super_class = CLKCComplicationDataSource;
  v2 = [(CLKCComplicationDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    context = v2->_context;
    v2->_context = v3;
  }

  return v2;
}

- (CLKCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CLKCComplicationDataSource;
  v11 = [(CLKCComplicationDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_complication, a3);
    v12->_family = a4;
    objc_storeStrong(&v12->_device, a5);
    v13 = objc_opt_new();
    context = v12->_context;
    v12->_context = v13;
  }

  return v12;
}

- (CLKCComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5 context:(id)a6
{
  v11 = a6;
  v12 = [(CLKCComplicationDataSource *)self initWithComplication:a3 family:a4 forDevice:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a6);
  }

  return v13;
}

- (CLKCComplicationDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)currentSwitcherTemplate
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  v2 = [objc_alloc(MEMORY[0x277CBB720]) initPrivate];

  return v2;
}

- (void)getSupportedTimeTravelDirectionsWithHandler:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineStartDateWithHandler:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineEntriesBeforeDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineEntriesAfterDate:(id)a3 limit:(unint64_t)a4 withHandler:(id)a5
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getDesiredUpdateIntervalWithHandler:(id)a3
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end