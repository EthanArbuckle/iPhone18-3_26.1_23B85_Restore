@interface MTClickEventHandler
- (id)eventType;
- (id)eventVersion:(id)a3;
- (id)knownFields;
@end

@implementation MTClickEventHandler

- (id)knownFields
{
  v11[9] = *MEMORY[0x277D85DE8];
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
    v10.super_class = MTClickEventHandler;
    v5 = [(MTImpressionableEventHandler *)&v10 knownFields];
    v11[0] = @"actionContext";
    v11[1] = @"actionDetails";
    v11[2] = @"actionType";
    v11[3] = @"actionUrl";
    v11[4] = @"location";
    v11[5] = @"targetId";
    v11[6] = @"targetType";
    v11[7] = @"positionX";
    v11[8] = @"positionY";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:9];
    v6 = [v5 arrayByAddingObjectsFromArray:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTClickEventHandler;
  v2 = [(MTEventHandler *)&v7 eventType];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"click";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)a3
{
  v8.receiver = self;
  v8.super_class = MTClickEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C368;
  }

  v6 = v5;

  return v5;
}

@end