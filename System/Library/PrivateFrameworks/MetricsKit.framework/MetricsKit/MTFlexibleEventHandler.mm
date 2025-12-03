@interface MTFlexibleEventHandler
- (BOOL)mtIncludeBaseFields;
- (id)eventTime:(id)time;
- (id)knownFields;
- (id)metricsDataWithEventType:(id)type eventData:(id)data;
@end

@implementation MTFlexibleEventHandler

- (id)metricsDataWithEventType:(id)type eventData:(id)data
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"eventType";
  v14[0] = type;
  v6 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  typeCopy = type;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(MTEventHandler *)self metricsDataWithFields:v9, dataCopy, 0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)eventTime:(id)time
{
  timeCopy = time;
  metricsKit = [(MTObject *)self metricsKit];
  eventHandlers = [metricsKit eventHandlers];
  base = [eventHandlers base];
  v8 = [base eventTime:timeCopy];

  return v8;
}

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTFlexibleEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"eventTime";
    v11[1] = @"eventType";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (BOOL)mtIncludeBaseFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(MTEventDataProvider *)self delegate];
  mtIncludeBaseFields = [delegate2 mtIncludeBaseFields];

  return mtIncludeBaseFields;
}

@end