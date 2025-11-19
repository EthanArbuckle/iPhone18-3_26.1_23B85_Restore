@interface MTAccountEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
- (id)type:(id)a3;
@end

@implementation MTAccountEventHandler

- (id)knownFields
{
  v11[1] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTAccountEventHandler;
    v5 = [(MTEventHandler *)&v10 knownFields];
    v11[0] = @"type";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTAccountEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"account";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTAccountEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C278;
  }

  v6 = v5;

  return v5;
}

- (id)type:(id)a3
{
  v4 = a3;
  v5 = [(MTEventDataProvider *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MTEventDataProvider *)self delegate];
    v8 = [v7 type:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end