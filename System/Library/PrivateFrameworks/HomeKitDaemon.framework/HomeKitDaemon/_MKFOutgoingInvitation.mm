@interface _MKFOutgoingInvitation
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule;
- (MKFOutgoingInvitationDatabaseID)databaseID;
- (NSArray)allowedAccessories;
- (id)allowedAccessoryUUIDs;
- (id)createAllowedAccessoriesRelationOfType:(id)type modelID:(id)d;
- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)restrictedGuestSchedule;
@end

@implementation _MKFOutgoingInvitation

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t2 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t2, &__block_literal_global_15_180868);
  }

  v3 = homeRelation__hmf_once_v3;

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

- (id)createAllowedAccessoriesRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"allowedAccessories_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"allowedAccessories_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (NSArray)allowedAccessories
{
  v2 = [(_MKFOutgoingInvitation *)self valueForKey:@"allowedAccessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFOutgoingInvitationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFOutgoingInvitationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)restrictedGuestSchedule
{
  weekDayScheduleRules = [(_MKFInvitation *)self weekDayScheduleRules];
  v4 = [weekDayScheduleRules na_map:&__block_literal_global_180958];

  yearDayScheduleRules = [(_MKFInvitation *)self yearDayScheduleRules];
  v6 = [yearDayScheduleRules na_map:&__block_literal_global_10_180959];

  v7 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v4 yearDayRules:v6];

  return v7;
}

- (id)allowedAccessoryUUIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  allowedAccessories = [(_MKFOutgoingInvitation *)self allowedAccessories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(allowedAccessories, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allowedAccessories2 = [(_MKFOutgoingInvitation *)self allowedAccessories];
  v7 = [allowedAccessories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allowedAccessories2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        modelID = [v11 modelID];
        [v5 addObject:modelID];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [allowedAccessories2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v5 = scheduleCopy;
  v6 = 1;
  if (scheduleCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    weekDayRules = [scheduleCopy weekDayRules];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74___MKFOutgoingInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke;
    v11[3] = &unk_27867D420;
    v11[4] = self;
    v11[5] = &v12;
    [weekDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

    yearDayRules = [v5 yearDayRules];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74___MKFOutgoingInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_4;
    v10[3] = &unk_27867D448;
    v10[4] = self;
    v10[5] = &v12;
    [yearDayRules hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

@end