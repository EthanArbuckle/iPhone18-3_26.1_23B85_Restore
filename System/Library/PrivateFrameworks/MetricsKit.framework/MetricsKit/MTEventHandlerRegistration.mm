@interface MTEventHandlerRegistration
- (MTEventHandler)eventHandler;
- (MTEventHandlerRegistration)initWithMetricsKit:(id)kit name:(id)name class:(Class)class eventData:(id)data;
@end

@implementation MTEventHandlerRegistration

- (MTEventHandlerRegistration)initWithMetricsKit:(id)kit name:(id)name class:(Class)class eventData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = MTEventHandlerRegistration;
  v12 = [(MTObject *)&v15 initWithMetricsKit:kit];
  v13 = v12;
  if (v12)
  {
    [(MTEventHandlerRegistration *)v12 setRegisteredName:nameCopy];
    [(MTEventHandlerRegistration *)v13 setEventHandlerClass:class];
    [(MTEventHandlerRegistration *)v13 setEventData:dataCopy];
  }

  return v13;
}

- (MTEventHandler)eventHandler
{
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_eventHandler)
  {
    v3 = objc_alloc([(MTEventHandlerRegistration *)selfCopy eventHandlerClass]);
    metricsKit = [(MTObject *)selfCopy metricsKit];
    v5 = [v3 initWithMetricsKit:metricsKit];

    registeredName = [(MTEventHandlerRegistration *)selfCopy registeredName];
    [(MTEventHandler *)v5 setRegisteredName:registeredName];

    array = [MEMORY[0x277CBEB18] array];
    v17 = @"eventType";
    registeredName2 = [(MTEventHandlerRegistration *)selfCopy registeredName];
    v18[0] = registeredName2;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [array addObject:v9];

    eventData = [(MTEventHandlerRegistration *)selfCopy eventData];
    LOBYTE(v9) = [eventData count] == 0;

    if ((v9 & 1) == 0)
    {
      eventData2 = [(MTEventHandlerRegistration *)selfCopy eventData];
      [array addObjectsFromArray:eventData2];
    }

    v12 = [array copy];
    [(MTEventHandler *)v5 setRegisteredEventData:v12];

    eventHandler = selfCopy->_eventHandler;
    selfCopy->_eventHandler = v5;
  }

  objc_sync_exit(selfCopy);

  v14 = selfCopy->_eventHandler;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end