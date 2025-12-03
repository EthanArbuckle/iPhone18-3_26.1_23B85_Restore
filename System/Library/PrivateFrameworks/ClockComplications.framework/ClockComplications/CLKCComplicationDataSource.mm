@interface CLKCComplicationDataSource
- (CLKCComplicationDataSource)init;
- (CLKCComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (CLKCComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device context:(id)context;
- (CLKCComplicationDataSourceDelegate)delegate;
- (id)currentSwitcherTemplate;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getDesiredUpdateIntervalWithHandler:(id)handler;
- (void)getSupportedTimeTravelDirectionsWithHandler:(id)handler;
- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
- (void)getTimelineEntriesBeforeDate:(id)date limit:(unint64_t)limit withHandler:(id)handler;
- (void)getTimelineStartDateWithHandler:(id)handler;
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

- (CLKCComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  complicationCopy = complication;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = CLKCComplicationDataSource;
  v11 = [(CLKCComplicationDataSource *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_complication, complication);
    v12->_family = family;
    objc_storeStrong(&v12->_device, device);
    v13 = objc_opt_new();
    context = v12->_context;
    v12->_context = v13;
  }

  return v12;
}

- (CLKCComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device context:(id)context
{
  contextCopy = context;
  v12 = [(CLKCComplicationDataSource *)self initWithComplication:complication family:family forDevice:device];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, context);
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
  initPrivate = [objc_alloc(MEMORY[0x277CBB720]) initPrivate];

  return initPrivate;
}

- (void)getSupportedTimeTravelDirectionsWithHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineStartDateWithHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineEntriesBeforeDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getTimelineEntriesAfterDate:(id)date limit:(unint64_t)limit withHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)getDesiredUpdateIntervalWithHandler:(id)handler
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end