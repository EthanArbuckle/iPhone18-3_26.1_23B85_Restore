@interface HFPresenceEventBuilder
+ (id)_selectedUsersForPresenceEvent:(id)a3;
- (HFPresenceEventBuilder)initWithEvent:(id)a3;
- (NSString)description;
- (id)buildNewEventsFromCurrentState;
- (id)compareToObject:(id)a3;
- (id)comparisonKey;
- (id)naturalLanguageNameWithOptions:(id)a3;
- (unint64_t)presenceEventType;
- (unint64_t)presenceUserType;
@end

@implementation HFPresenceEventBuilder

+ (id)_selectedUsersForPresenceEvent:(id)a3
{
  v3 = a3;
  v4 = HFSelectedUserCollectionTypeFromPresenceEventUserType([v3 presenceUserType]);
  v5 = MEMORY[0x277CBEB98];
  if (v4 == 2)
  {
    v6 = [v3 users];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
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

- (HFPresenceEventBuilder)initWithEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HFPresenceEventBuilder;
  v5 = [(HFEventBuilder *)&v10 initWithEvent:v4];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      -[HFPresenceEventBuilder setLocationEventType:](v5, "setLocationEventType:", [MEMORY[0x277CD1D20] hf_locationEventTypeForPresenceEventType:{objc_msgSend(v4, "presenceEventType")}]);
      v7 = [objc_opt_class() _selectedUsersForPresenceEvent:v4];
      [(HFPresenceEventBuilder *)v6 setUsers:v7];

      v8 = [v4 hf_activationGranularity];
    }

    else
    {
      [(HFPresenceEventBuilder *)v5 setLocationEventType:0];
      v8 = 0;
    }

    [(HFPresenceEventBuilder *)v6 setActivationGranularity:v8];
  }

  return v6;
}

- (unint64_t)presenceEventType
{
  v3 = [(HFPresenceEventBuilder *)self locationEventType];
  if (v3 == 1)
  {
    v6 = [(HFPresenceEventBuilder *)self activationGranularity];
    if (v6 == 1)
    {
      return 3;
    }

    if (!v6)
    {
      return 1;
    }

LABEL_8:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder locationEventType](self, "locationEventType")}];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder activationGranularity](self, "activationGranularity")}];
    NSLog(&cfstr_UnexpectedEven.isa, v7, v8);

    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v4 = [(HFPresenceEventBuilder *)self activationGranularity];
  if (v4 != 1)
  {
    if (!v4)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 4;
}

- (unint64_t)presenceUserType
{
  v3 = [(HFPresenceEventBuilder *)self users];

  if (!v3)
  {
    return 2;
  }

  v4 = [(HFPresenceEventBuilder *)self users];
  v5 = HMPresenceEventUserTypeFromSelectedUserCollectionType([v4 type]);

  return v5;
}

- (id)buildNewEventsFromCurrentState
{
  v3 = [(HFPresenceEventBuilder *)self presenceUserType];
  v4 = objc_alloc(MEMORY[0x277CD1D20]);
  v5 = [(HFPresenceEventBuilder *)self presenceEventType];
  v6 = [(HFPresenceEventBuilder *)self presenceUserType];
  if (v3 == 3)
  {
    v7 = [(HFPresenceEventBuilder *)self users];
    v8 = [v7 specificUsers];
    v9 = [v8 allObjects];
    v10 = [v4 initWithPresenceEventType:v5 presenceUserType:v6 users:v9];
  }

  else
  {
    v10 = [v4 initWithPresenceEventType:v5 presenceUserType:v6];
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

  v6 = [(HFPresenceEventBuilder *)self users];
  v7 = [v6 type];

  if (v7 == 2)
  {
    v8 = [(HFPresenceEventBuilder *)self users];
    v9 = [v8 specificUsers];
    v10 = [v9 allObjects];
    [v3 appendArraySection:v10 withName:@"specificUsers" skipIfEmpty:0];
  }

  v11 = [v3 build];

  return v11;
}

- (id)comparisonKey
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = HFPresenceEventBuilder;
  v4 = [(HFEventBuilder *)&v7 comparisonKey];
  v5 = [v3 stringWithFormat:@"%@-%lu:%lu", v4, -[HFPresenceEventBuilder presenceEventType](self, "presenceEventType"), -[HFPresenceEventBuilder presenceUserType](self, "presenceUserType")];

  return v5;
}

- (id)naturalLanguageNameWithOptions:(id)a3
{
  v4 = MEMORY[0x277CD19F8];
  v5 = a3;
  v6 = [(HFPresenceEventBuilder *)self buildNewEventsFromCurrentState];
  v7 = [v6 anyObject];
  v8 = [v4 hf_naturalLanguageNameWithOptions:v5 presenceEvent:v7];

  return v8;
}

- (id)compareToObject:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HFPresenceEventBuilder;
  v5 = [(HFEventBuilder *)&v16 compareToObject:v4];
  if (([v5 containsCriticalDifference] & 1) == 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder presenceEventType](self, "presenceEventType")}];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "presenceEventType")}];
    v8 = [HFPropertyDifference compareObjectA:v6 toObjectB:v7 key:@"presenceEventType" priority:3];
    [v5 add:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFPresenceEventBuilder activationGranularity](self, "activationGranularity")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "activationGranularity")}];
    v11 = [HFPropertyDifference compareObjectA:v9 toObjectB:v10 key:@"activationGranularity" priority:2];
    [v5 add:v11];

    v12 = [(HFPresenceEventBuilder *)self users];
    v13 = [v4 users];
    v14 = [HFPropertyDifference compareObjectA:v12 toObjectB:v13 key:@"users" priority:3];
    [v5 add:v14];
  }

  return v5;
}

@end