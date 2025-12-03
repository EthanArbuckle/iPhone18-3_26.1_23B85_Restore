@interface MTEnterEventHandler
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
- (id)osLanguages:(id)languages;
@end

@implementation MTEnterEventHandler

- (id)knownFields
{
  v11[4] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTEnterEventHandler;
    delegate2 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"extRefUrl";
    v11[1] = @"osLanguages";
    v11[2] = @"refApp";
    v11[3] = @"type";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return knownFields;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTEnterEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"enter";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTEnterEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C248;
  }

  v6 = v5;

  return v5;
}

- (id)osLanguages:(id)languages
{
  languagesCopy = languages;
  delegate = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    v8 = [delegate2 osLanguages:languagesCopy];
LABEL_5:
    osLanguages = v8;
    goto LABEL_6;
  }

  v9 = [languagesCopy objectForKeyedSubscript:@"osLanguages"];
  delegate2 = v9;
  if (v9)
  {
    v8 = v9;
    delegate2 = v8;
    goto LABEL_5;
  }

  metricsKit = [(MTObject *)self metricsKit];
  system = [metricsKit system];
  environment = [system environment];
  osLanguages = [environment osLanguages];

LABEL_6:

  return osLanguages;
}

@end