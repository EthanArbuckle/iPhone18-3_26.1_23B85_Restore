@interface MTEnterEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)osLanguages:(id)a3;
@end

@implementation MTEnterEventHandler

- (id)knownFields
{
  v11[4] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTEnterEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"extRefUrl";
    v11[1] = @"osLanguages";
    v11[2] = @"refApp";
    v11[3] = @"type";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTEnterEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"enter";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTEnterEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
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

- (id)osLanguages:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 osLanguages:v4];
LABEL_5:
    v10 = v8;
    goto LABEL_6;
  }

  v9 = [v4 objectForKeyedSubscript:@"osLanguages"];
  v7 = v9;
  if (v9)
  {
    v8 = v9;
    v7 = v8;
    goto LABEL_5;
  }

  v12 = [(MTObject *)self metricsKit];
  v13 = [v12 system];
  v14 = [v13 environment];
  v10 = [v14 osLanguages];

LABEL_6:

  return v10;
}

@end