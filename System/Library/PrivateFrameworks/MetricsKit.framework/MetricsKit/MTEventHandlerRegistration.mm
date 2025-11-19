@interface MTEventHandlerRegistration
- (MTEventHandler)eventHandler;
- (MTEventHandlerRegistration)initWithMetricsKit:(id)a3 name:(id)a4 class:(Class)a5 eventData:(id)a6;
@end

@implementation MTEventHandlerRegistration

- (MTEventHandlerRegistration)initWithMetricsKit:(id)a3 name:(id)a4 class:(Class)a5 eventData:(id)a6
{
  v10 = a4;
  v11 = a6;
  v15.receiver = self;
  v15.super_class = MTEventHandlerRegistration;
  v12 = [(MTObject *)&v15 initWithMetricsKit:a3];
  v13 = v12;
  if (v12)
  {
    [(MTEventHandlerRegistration *)v12 setRegisteredName:v10];
    [(MTEventHandlerRegistration *)v13 setEventHandlerClass:a5];
    [(MTEventHandlerRegistration *)v13 setEventData:v11];
  }

  return v13;
}

- (MTEventHandler)eventHandler
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_eventHandler)
  {
    v3 = objc_alloc([(MTEventHandlerRegistration *)v2 eventHandlerClass]);
    v4 = [(MTObject *)v2 metricsKit];
    v5 = [v3 initWithMetricsKit:v4];

    v6 = [(MTEventHandlerRegistration *)v2 registeredName];
    [(MTEventHandler *)v5 setRegisteredName:v6];

    v7 = [MEMORY[0x277CBEB18] array];
    v17 = @"eventType";
    v8 = [(MTEventHandlerRegistration *)v2 registeredName];
    v18[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v7 addObject:v9];

    v10 = [(MTEventHandlerRegistration *)v2 eventData];
    LOBYTE(v9) = [v10 count] == 0;

    if ((v9 & 1) == 0)
    {
      v11 = [(MTEventHandlerRegistration *)v2 eventData];
      [v7 addObjectsFromArray:v11];
    }

    v12 = [v7 copy];
    [(MTEventHandler *)v5 setRegisteredEventData:v12];

    eventHandler = v2->_eventHandler;
    v2->_eventHandler = v5;
  }

  objc_sync_exit(v2);

  v14 = v2->_eventHandler;
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end