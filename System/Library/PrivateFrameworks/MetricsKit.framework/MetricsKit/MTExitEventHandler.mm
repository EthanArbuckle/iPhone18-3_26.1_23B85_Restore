@interface MTExitEventHandler
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
@end

@implementation MTExitEventHandler

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
    v10.super_class = MTExitEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"destinationUrl";
    v11[1] = @"type";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTExitEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"exit";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTExitEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C308;
  }

  v6 = v5;

  return v5;
}

@end