@interface _MKFEventTrigger
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFEventTriggerDatabaseID)databaseID;
- (NSArray)events;
- (id)createEventsRelationOfType:(id)a3 modelID:(id)a4;
- (id)materializeOrCreateEventsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)residentSyncAttributeValueForKey:(id)a3 userContext:(id)a4;
- (void)awakeFromFetch;
- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4;
@end

@implementation _MKFEventTrigger

- (id)residentSyncAttributeValueForKey:(id)a3 userContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"evaluationCondition"] && (objc_msgSend(v7, "targetUser"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isOwnerOrAdmin"), v8, (v9 & 1) == 0))
  {
    v11 = [(_MKFEventTrigger *)self evaluationCondition];
    if (v11)
    {
      v12 = [v7 targetUser];
      v13 = MEMORY[0x277CBEB98];
      v14 = [v12 modelID];
      v15 = [v12 home];
      v16 = [v15 owner];
      v17 = [v16 modelID];
      v18 = [v13 setWithObjects:{v14, v17, 0}];

      v10 = [HMDPredicateUtilities filteredPredicate:v11 withUserUUIDs:v18];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(_MKFEventTrigger *)self valueForKey:v6];
  }

  return v10;
}

- (void)residentSyncContextualizeConditions:(id)a3 userContext:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7[1];
  if (!v8)
  {
    v9 = +[_MKFEventTrigger fetchRequest];
    [v9 setResultType:1];
    v10 = MEMORY[0x277CCAC30];
    v11 = +[_MKFPresenceEvent entity];
    v12 = *MEMORY[0x277CD0C48];
    v13 = *MEMORY[0x277CD0C60];
    v14 = [v7 targetUser];
    v15 = [v10 predicateWithFormat:@"SUBQUERY(%K, $p, $p.entity = %@ AND( $p.%K = %@ OR  $p.%K = %@ OR  SUBQUERY($p.%K, $u, $u = %@).@count > 0)).@count > 0", @"events_", v11, @"presenceType", v12, @"presenceType", v13, @"users_", v14];
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
      v20 = self;
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

    v23 = v7[1];
    v7[1] = v18;

    v8 = v7[1];
  }

  v24 = [(_MKFEventTrigger *)self objectID];
  v25 = [v8 containsObject:v24];

  if (v25)
  {
    [v6 addCondition:@"triggerIsRelevant"];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)createEventsRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"events_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateEventsRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"events_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)events
{
  v2 = [(_MKFEventTrigger *)self valueForKey:@"events_"];
  v3 = [v2 allObjects];

  return v3;
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
  v3 = [(_MKFEventTrigger *)self recurrenceDays];
  if (!v3)
  {
    v4 = [(_MKFEventTrigger *)self recurrences];

    if (!v4)
    {
      return;
    }

    v5 = MEMORY[0x277CCABB0];
    v3 = [(_MKFEventTrigger *)self recurrences];
    v6 = [v3 decodeArrayOfDateComponents];
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

+ (id)modelIDForParentRelationshipTo:(id)a3
{
  v4 = a3;
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