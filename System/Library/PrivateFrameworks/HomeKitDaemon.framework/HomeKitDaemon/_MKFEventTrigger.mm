@interface _MKFEventTrigger
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFEventTriggerDatabaseID)databaseID;
- (NSArray)events;
- (id)createEventsRelationOfType:(id)type modelID:(id)d;
- (id)materializeOrCreateEventsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)residentSyncAttributeValueForKey:(id)key userContext:(id)context;
- (void)awakeFromFetch;
- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context;
@end

@implementation _MKFEventTrigger

- (id)residentSyncAttributeValueForKey:(id)key userContext:(id)context
{
  keyCopy = key;
  contextCopy = context;
  if ([keyCopy isEqualToString:@"evaluationCondition"] && (objc_msgSend(contextCopy, "targetUser"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isOwnerOrAdmin"), v8, (v9 & 1) == 0))
  {
    evaluationCondition = [(_MKFEventTrigger *)self evaluationCondition];
    if (evaluationCondition)
    {
      targetUser = [contextCopy targetUser];
      v13 = MEMORY[0x277CBEB98];
      modelID = [targetUser modelID];
      home = [targetUser home];
      owner = [home owner];
      modelID2 = [owner modelID];
      v18 = [v13 setWithObjects:{modelID, modelID2, 0}];

      v10 = [HMDPredicateUtilities filteredPredicate:evaluationCondition withUserUUIDs:v18];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_MKFEventTrigger *)self valueForKey:keyCopy];
  }

  return v10;
}

- (void)residentSyncContextualizeConditions:(id)conditions userContext:(id)context
{
  v32 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  contextCopy = context;
  v8 = contextCopy[1];
  if (!v8)
  {
    v9 = +[_MKFEventTrigger fetchRequest];
    [v9 setResultType:1];
    v10 = MEMORY[0x277CCAC30];
    v11 = +[_MKFPresenceEvent entity];
    v12 = *MEMORY[0x277CD0C48];
    v13 = *MEMORY[0x277CD0C60];
    targetUser = [contextCopy targetUser];
    v15 = [v10 predicateWithFormat:@"SUBQUERY(%K, $p, $p.entity = %@ AND( $p.%K = %@ OR  $p.%K = %@ OR  SUBQUERY($p.%K, $u, $u = %@).@count > 0)).@count > 0", @"events_", v11, @"presenceType", v12, @"presenceType", v13, @"users_", targetUser];
    [v9 setPredicate:v15];

    v27 = 0;
    v16 = [v9 execute:&v27];
    v17 = v27;
    if (v16)
    {
      v18 = [MEMORY[0x277CBEB98] setWithArray:v16];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch relevant triggers: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v18 = [MEMORY[0x277CBEB98] set];
    }

    v23 = contextCopy[1];
    contextCopy[1] = v18;

    v8 = contextCopy[1];
  }

  objectID = [(_MKFEventTrigger *)self objectID];
  v25 = [v8 containsObject:objectID];

  if (v25)
  {
    [conditionsCopy addCondition:@"triggerIsRelevant"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)createEventsRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"events_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateEventsRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"events_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)events
{
  v2 = [(_MKFEventTrigger *)self valueForKey:@"events_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFEventTriggerDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFEventTriggerDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)awakeFromFetch
{
  v8.receiver = self;
  v8.super_class = _MKFEventTrigger;
  [(_MKFEventTrigger *)&v8 awakeFromFetch];
  recurrenceDays = [(_MKFEventTrigger *)self recurrenceDays];
  if (!recurrenceDays)
  {
    recurrences = [(_MKFEventTrigger *)self recurrences];

    if (!recurrences)
    {
      return;
    }

    v5 = MEMORY[0x277CCABB0];
    recurrenceDays = [(_MKFEventTrigger *)self recurrences];
    decodeArrayOfDateComponents = [recurrenceDays decodeArrayOfDateComponents];
    v7 = [v5 numberWithUnsignedInteger:HMDaysOfTheWeekFromDateComponents()];
    [(_MKFEventTrigger *)self setPrimitiveValue:v7 forKey:@"recurrenceDays"];
  }
}

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_232940 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_232940, &__block_literal_global_232941);
  }

  v3 = homeRelation__hmf_once_v1_232942;

  return v3;
}

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

@end