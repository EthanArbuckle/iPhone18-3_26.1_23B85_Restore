@interface HFPresenceEventBuilder
+ (id)_selectedUsersForPresenceEvent:(id)event;
- (HFPresenceEventBuilder)initWithEvent:(id)event;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)object;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)options;
- (unint64_t)presenceEventType;
- (unint64_t)presenceUserType;
@end

@implementation HFPresenceEventBuilder

+ (id)_selectedUsersForPresenceEvent:(id)event
{
  eventCopy = event;
  v4 = HFSelectedUserCollectionTypeFromPresenceEventUserType([eventCopy presenceUserType]);
  v5 = MEMORY[0x277CBEB98];
  if (v4 == 2)
  {
    users = [eventCopy users];
    v7 = users;
    if (users)
    {
      v8 = users;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v9 = [v5 setWithArray:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB98] set];
  }

  v10 = [[HFSelectedUserCollection alloc] initWithType:v4 specificUsers:v9];

  return v10;
}

- (HFPresenceEventBuilder)initWithEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = HFPresenceEventBuilder;
  v5 = [(HFEventBuilder *)&v10 initWithEvent:eventCopy];
  v6 = v5;
  if (v5)
  {
    if (eventCopy)
    {
      -[HFPresenceEventBuilder setLocationEventType:](v5, "setLocationEventType:", [MEMORY[0x277CD1D20] hf_locationEventTypeForPresenceEventType:{objc_msgSend(eventCopy, "presenceEventType")}]);
      v7 = [objc_opt_class() _selectedUsersForPresenceEvent:eventCopy];
      [(HFPresenceEventBuilder *)v6 setUsers:v7];

      hf_activationGranularity = [eventCopy hf_activationGranularity];
    }

    else
    {
      [(HFPresenceEventBuilder *)v5 setLocationEventType:0];
      hf_activationGranularity = 0;
    }

    [(HFPresenceEventBuilder *)v6 setActivationGranularity:hf_activationGranularity];
  }

  return v6;
}

- (unint64_t)presenceEventType
{
  locationEventType = [(HFPresenceEventBuilder *)self locationEventType];
  if (locationEventType == 1)
  {
    activationGranularity = [(HFPresenceEventBuilder *)self activationGranularity];
    if (activationGranularity == 1)
    {
      return 3;
    }

    if (!activationGranularity)
    {
      return 1;
    }

LABEL_8:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder locationEventType](self, "locationEventType")}];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder activationGranularity](self, "activationGranularity")}];
    NSLog(&cfstr_UnexpectedEven.isa, v7, v8);

    return 1;
  }

  if (locationEventType != 2)
  {
    goto LABEL_8;
  }

  activationGranularity2 = [(HFPresenceEventBuilder *)self activationGranularity];
  if (activationGranularity2 != 1)
  {
    if (!activationGranularity2)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 4;
}

- (unint64_t)presenceUserType
{
  users = [(HFPresenceEventBuilder *)self users];

  if (!users)
  {
    return 2;
  }

  users2 = [(HFPresenceEventBuilder *)self users];
  v5 = HMPresenceEventUserTypeFromSelectedUserCollectionType([users2 type]);

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  presenceUserType = [(HFPresenceEventBuilder *)self presenceUserType];
  v4 = objc_alloc(MEMORY[0x277CD1D20]);
  presenceEventType = [(HFPresenceEventBuilder *)self presenceEventType];
  presenceUserType2 = [(HFPresenceEventBuilder *)self presenceUserType];
  if (presenceUserType == 3)
  {
    users = [(HFPresenceEventBuilder *)self users];
    specificUsers = [users specificUsers];
    allObjects = [specificUsers allObjects];
    v10 = [v4 initWithPresenceEventType:presenceEventType presenceUserType:presenceUserType2 users:allObjects];
  }

  else
  {
    v10 = [v4 initWithPresenceEventType:presenceEventType presenceUserType:presenceUserType2];
  }

  v11 = [MEMORY[0x277CBEB98] setWithObject:v10];

  return v11;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = HFStringFromHFLocationEventType([(HFPresenceEventBuilder *)self locationEventType]);
  [v3 appendString:v4 withName:@"locationEventType"];

  v5 = NSStringFromHFPresenceEventActivationGranularity([(HFPresenceEventBuilder *)self activationGranularity]);
  [v3 appendString:v5 withName:@"activationGranularity"];

  users = [(HFPresenceEventBuilder *)self users];
  type = [users type];

  if (type == 2)
  {
    users2 = [(HFPresenceEventBuilder *)self users];
    specificUsers = [users2 specificUsers];
    allObjects = [specificUsers allObjects];
    [v3 appendArraySection:allObjects withName:@"specificUsers" skipIfEmpty:0];
  }

  build = [v3 build];

  return build;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HFPresenceEventBuilder;
  comparisonKey = [(HFEventBuilder *)&v7 comparisonKey];
  v5 = [v3 stringWithFormat:@"%@-%lu:%lu", comparisonKey, -[HFPresenceEventBuilder presenceEventType](self, "presenceEventType"), -[HFPresenceEventBuilder presenceUserType](self, "presenceUserType")];

  return v5;
}

- (id)naturalLanguageNameWithOptions:(id)options
{
  v4 = MEMORY[0x277CD19F8];
  optionsCopy = options;
  buildNewEventsFromCurrentState = [(HFPresenceEventBuilder *)self buildNewEventsFromCurrentState];
  anyObject = [buildNewEventsFromCurrentState anyObject];
  v8 = [v4 hf_naturalLanguageNameWithOptions:optionsCopy presenceEvent:anyObject];

  return v8;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v16.receiver = self;
  v16.super_class = HFPresenceEventBuilder;
  v5 = [(HFEventBuilder *)&v16 compareToObject:objectCopy];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder presenceEventType](self, "presenceEventType")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectCopy, "presenceEventType")}];
    v8 = [HFPropertyDifference compareObjectA:v6 toObjectB:v7 key:@"presenceEventType" priority:3];
    [v5 add:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder activationGranularity](self, "activationGranularity")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(objectCopy, "activationGranularity")}];
    v11 = [HFPropertyDifference compareObjectA:v9 toObjectB:v10 key:@"activationGranularity" priority:2];
    [v5 add:v11];

    users = [(HFPresenceEventBuilder *)self users];
    users2 = [objectCopy users];
    v14 = [HFPropertyDifference compareObjectA:users toObjectB:users2 key:@"users" priority:3];
    [v5 add:v14];
  }

  return v5;
}

@end