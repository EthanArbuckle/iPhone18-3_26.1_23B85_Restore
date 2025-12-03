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
  name = [v3 name];
  v5 = [name isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D212C8]);
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventType")}];
    integerValue = [v7 integerValue];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventSubType")}];
    v10 = [v6 initWithEventType:integerValue eventSubType:{objc_msgSend(v9, "integerValue")}];

    bundleID = [v3 bundleID];
    [v10 setBundleID:bundleID];

    contextIdentifier = [v3 contextIdentifier];
    [v10 setContextIdentifier:contextIdentifier];

    [v10 setIsOutsideApp:{objc_msgSend(v3, "isOutsideApp")}];
  }

  else
  {
    name2 = [v3 name];
    v14 = [name2 isEqualToString:*MEMORY[0x277D212F0]];

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277D21280]);
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventType")}];
      integerValue2 = [v16 integerValue];
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v3, "eventSubType")}];
      v10 = [v15 initWithEventType:integerValue2 eventSubType:{objc_msgSend(v18, "integerValue")}];
    }

    else
    {
      name3 = [v3 name];
      v20 = [name3 isEqualToString:*MEMORY[0x277D212F8]];

      if (!v20)
      {
        +[IREvent(Transformations) eventFromEventDO:];
      }

      v10 = [objc_alloc(MEMORY[0x277D212B8]) initWithEventType:objc_msgSend(v3 eventSubType:{"eventType"), objc_msgSend(v3, "eventSubType")}];
    }

    bundleID2 = [v3 bundleID];
    [v10 setBundleID:bundleID2];

    contextIdentifier2 = [v3 contextIdentifier];
    [v10 setContextIdentifier:contextIdentifier2];
  }

  return v10;
}

+ (id)eventTypeStringEventDO:()Transformations
{
  v3 = a3;
  name = [v3 name];
  v5 = [name isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    [v3 eventType];
    v6 = IRMediaEventTypeToString();
  }

  else
  {
    name2 = [v3 name];
    v8 = [name2 isEqualToString:*MEMORY[0x277D212F0]];

    if (v8)
    {
      [v3 eventType];
      v6 = IRAppleTVControlEventTypeToString();
    }

    else
    {
      name3 = [v3 name];
      v10 = [name3 isEqualToString:*MEMORY[0x277D212F8]];

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
  name = [v3 name];
  v5 = [name isEqualToString:*MEMORY[0x277D21300]];

  if (v5)
  {
    [v3 eventSubType];
    v6 = IRMediaEventSubTypeToString();
  }

  else
  {
    name2 = [v3 name];
    v8 = [name2 isEqualToString:*MEMORY[0x277D212F0]];

    if (v8)
    {
      [v3 eventSubType];
      v6 = IRAppleTVControlEventSubTypeToString();
    }

    else
    {
      name3 = [v3 name];
      v10 = [name3 isEqualToString:*MEMORY[0x277D212F8]];

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
  name = [self name];
  if (([name isEqual:*MEMORY[0x277D212F0]] & 1) == 0)
  {
    name2 = [self name];
    if (([name2 isEqual:*MEMORY[0x277D21300]] & 1) == 0)
    {
      name3 = [self name];
      if (([name3 isEqual:*MEMORY[0x277D212F8]] & 1) == 0)
      {
        [IREvent(Transformations) eventDO];
      }
    }
  }

  v5 = [IREventDO alloc];
  eventType = [self eventType];
  eventSubType = [self eventSubType];
  name4 = [self name];
  bundleID = [self bundleID];
  contextIdentifier = [self contextIdentifier];
  isOutsideApp = [self isOutsideApp];
  LOBYTE(v14) = [self isEligibleApp];
  v12 = [(IREventDO *)v5 initWithEventType:eventType eventSubType:eventSubType name:name4 bundleID:bundleID contextIdentifier:contextIdentifier isOutsideApp:isOutsideApp isEligibleApp:v14];

  return v12;
}

@end