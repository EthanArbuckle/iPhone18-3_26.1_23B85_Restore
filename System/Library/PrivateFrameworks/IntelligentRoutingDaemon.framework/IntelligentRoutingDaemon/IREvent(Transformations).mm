@interface IREvent(Transformations)
+ (id)eventFromEventDO:()Transformations;
+ (id)eventSubTypeStringEventDO:()Transformations;
+ (id)eventTypeStringEventDO:()Transformations;
- (IREventDO)eventDO;
@end

@implementation IREvent(Transformations)

+ (id)eventFromEventDO:()Transformations
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D212C8]);
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventType")}];
    v8 = [v7 integerValue];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventSubType")}];
    v10 = [v6 initWithEventType:v8 eventSubType:{objc_msgSend(v9, "integerValue")}];

    v11 = [v3 bundleID];
    [v10 setBundleID:v11];

    v12 = [v3 contextIdentifier];
    [v10 setContextIdentifier:v12];

    [v10 setIsOutsideApp:{objc_msgSend(v3, "isOutsideApp")}];
  }

  else
  {
    v13 = [v3 name];
    v14 = [v13 isEqualToString:*MEMORY[0x277D212F0]];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277D21280]);
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventType")}];
      v17 = [v16 integerValue];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventSubType")}];
      v10 = [v15 initWithEventType:v17 eventSubType:{objc_msgSend(v18, "integerValue")}];
    }

    else
    {
      v19 = [v3 name];
      v20 = [v19 isEqualToString:*MEMORY[0x277D212F8]];

      if (!v20)
      {
        +[IREvent(Transformations) eventFromEventDO:];
      }

      v10 = [objc_alloc(MEMORY[0x277D212B8]) initWithEventType:objc_msgSend(v3 eventSubType:{"eventType"), objc_msgSend(v3, "eventSubType")}];
    }

    v21 = [v3 bundleID];
    [v10 setBundleID:v21];

    v22 = [v3 contextIdentifier];
    [v10 setContextIdentifier:v22];
  }

  return v10;
}

+ (id)eventTypeStringEventDO:()Transformations
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    [v3 eventType];
    v6 = IRMediaEventTypeToString();
  }

  else
  {
    v7 = [v3 name];
    v8 = [v7 isEqualToString:*MEMORY[0x277D212F0]];

    if (v8)
    {
      [v3 eventType];
      v6 = IRAppleTVControlEventTypeToString();
    }

    else
    {
      v9 = [v3 name];
      v10 = [v9 isEqualToString:*MEMORY[0x277D212F8]];

      if (!v10)
      {
        +[IREvent(Transformations) eventTypeStringEventDO:];
      }

      [v3 eventType];
      v6 = IRHomeEventTypeToString();
    }
  }

  v11 = v6;

  return v11;
}

+ (id)eventSubTypeStringEventDO:()Transformations
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    [v3 eventSubType];
    v6 = IRMediaEventSubTypeToString();
  }

  else
  {
    v7 = [v3 name];
    v8 = [v7 isEqualToString:*MEMORY[0x277D212F0]];

    if (v8)
    {
      [v3 eventSubType];
      v6 = IRAppleTVControlEventSubTypeToString();
    }

    else
    {
      v9 = [v3 name];
      v10 = [v9 isEqualToString:*MEMORY[0x277D212F8]];

      if (!v10)
      {
        +[IREvent(Transformations) eventSubTypeStringEventDO:];
      }

      [v3 eventSubType];
      v6 = IRHomeEventSubTypeToString();
    }
  }

  v11 = v6;

  return v11;
}

- (IREventDO)eventDO
{
  v2 = [a1 name];
  if (([v2 isEqual:*MEMORY[0x277D212F0]] & 1) == 0)
  {
    v3 = [a1 name];
    if (([v3 isEqual:*MEMORY[0x277D21300]] & 1) == 0)
    {
      v4 = [a1 name];
      if (([v4 isEqual:*MEMORY[0x277D212F8]] & 1) == 0)
      {
        [IREvent(Transformations) eventDO];
      }
    }
  }

  v5 = [IREventDO alloc];
  v6 = [a1 eventType];
  v7 = [a1 eventSubType];
  v8 = [a1 name];
  v9 = [a1 bundleID];
  v10 = [a1 contextIdentifier];
  v11 = [a1 isOutsideApp];
  LOBYTE(v14) = [a1 isEligibleApp];
  v12 = [(IREventDO *)v5 initWithEventType:v6 eventSubType:v7 name:v8 bundleID:v9 contextIdentifier:v10 isOutsideApp:v11 isEligibleApp:v14];

  return v12;
}

@end