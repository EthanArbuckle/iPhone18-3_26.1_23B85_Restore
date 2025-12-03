@interface IREventMO
+ (id)IREventMOWithIREventDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context;
+ (void)setPropertiesOfEventMO:(id)o withEventDO:(id)dO;
- (id)convert;
@end

@implementation IREventMO

+ (id)IREventMOWithIREventDO:(id)o historyEventMO:(id)mO inManagedObjectContext:(id)context
{
  contextCopy = context;
  mOCopy = mO;
  oCopy = o;
  v10 = [[IREventMO alloc] initWithContext:contextCopy];

  [(IREventMO *)v10 setHistoryEvent:mOCopy];
  [IREventMO setPropertiesOfEventMO:v10 withEventDO:oCopy];

  return v10;
}

+ (void)setPropertiesOfEventMO:(id)o withEventDO:(id)dO
{
  dOCopy = dO;
  oCopy = o;
  [oCopy setEventType:{objc_msgSend(dOCopy, "eventType")}];
  [oCopy setEventSubtype:{objc_msgSend(dOCopy, "eventSubType")}];
  name = [dOCopy name];
  [oCopy setName:name];

  bundleID = [dOCopy bundleID];
  [oCopy setBundleID:bundleID];

  contextIdentifier = [dOCopy contextIdentifier];
  [oCopy setContextIdentifier:contextIdentifier];

  [oCopy setIsOutsideApp:{objc_msgSend(dOCopy, "isOutsideApp")}];
  isEligibleApp = [dOCopy isEligibleApp];

  [oCopy setIsEligibleApp:isEligibleApp];
}

- (id)convert
{
  v3 = [IREventDO alloc];
  eventType = [(IREventMO *)self eventType];
  eventSubtype = [(IREventMO *)self eventSubtype];
  name = [(IREventMO *)self name];
  bundleID = [(IREventMO *)self bundleID];
  contextIdentifier = [(IREventMO *)self contextIdentifier];
  isOutsideApp = [(IREventMO *)self isOutsideApp];
  LOBYTE(v12) = [(IREventMO *)self isEligibleApp];
  v10 = [(IREventDO *)v3 initWithEventType:eventType eventSubType:eventSubtype name:name bundleID:bundleID contextIdentifier:contextIdentifier isOutsideApp:isOutsideApp isEligibleApp:v12];

  return v10;
}

@end