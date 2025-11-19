@interface MTFlexibleEventHandler
- (BOOL)mtIncludeBaseFields;
- (id)eventTime:(id)a3;
- (id)knownFields;
- (id)metricsDataWithEventType:(id)a3 eventData:(id)a4;
@end

@implementation MTFlexibleEventHandler

- (id)metricsDataWithEventType:(id)a3 eventData:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = @"eventType";
  v14[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v10 = [(MTEventHandler *)self metricsDataWithFields:v9, v7, 0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)eventTime:(id)a3
{
  v4 = a3;
  v5 = [(MTObject *)self metricsKit];
  v6 = [v5 eventHandlers];
  v7 = [v6 base];
  v8 = [v7 eventTime:v4];

  return v8;
}

- (id)knownFields
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MTEventDataProvider *)self delegate];
    v6 = [v5 knownFields];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MTFlexibleEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"eventTime";
    v11[1] = @"eventType";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)mtIncludeBaseFields
{
  v3 = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(MTEventDataProvider *)self delegate];
  v6 = [v5 mtIncludeBaseFields];

  return v6;
}

@end