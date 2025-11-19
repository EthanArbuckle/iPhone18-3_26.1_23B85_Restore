@interface IREventMO
+ (id)IREventMOWithIREventDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfEventMO:(id)a3 withEventDO:(id)a4;
- (id)convert;
@end

@implementation IREventMO

+ (id)IREventMOWithIREventDO:(id)a3 historyEventMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IREventMO alloc] initWithContext:v7];

  [(IREventMO *)v10 setHistoryEvent:v8];
  [IREventMO setPropertiesOfEventMO:v10 withEventDO:v9];

  return v10;
}

+ (void)setPropertiesOfEventMO:(id)a3 withEventDO:(id)a4
{
  v5 = a4;
  v10 = a3;
  [v10 setEventType:{objc_msgSend(v5, "eventType")}];
  [v10 setEventSubtype:{objc_msgSend(v5, "eventSubType")}];
  v6 = [v5 name];
  [v10 setName:v6];

  v7 = [v5 bundleID];
  [v10 setBundleID:v7];

  v8 = [v5 contextIdentifier];
  [v10 setContextIdentifier:v8];

  [v10 setIsOutsideApp:{objc_msgSend(v5, "isOutsideApp")}];
  v9 = [v5 isEligibleApp];

  [v10 setIsEligibleApp:v9];
}

- (id)convert
{
  v3 = [IREventDO alloc];
  v4 = [(IREventMO *)self eventType];
  v5 = [(IREventMO *)self eventSubtype];
  v6 = [(IREventMO *)self name];
  v7 = [(IREventMO *)self bundleID];
  v8 = [(IREventMO *)self contextIdentifier];
  v9 = [(IREventMO *)self isOutsideApp];
  LOBYTE(v12) = [(IREventMO *)self isEligibleApp];
  v10 = [(IREventDO *)v3 initWithEventType:v4 eventSubType:v5 name:v6 bundleID:v7 contextIdentifier:v8 isOutsideApp:v9 isEligibleApp:v12];

  return v10;
}

@end