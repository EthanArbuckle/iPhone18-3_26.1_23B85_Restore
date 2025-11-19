@interface _MKFOutgoingInvitation
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)a3;
- (MKFOutgoingInvitationDatabaseID)databaseID;
- (NSArray)allowedAccessories;
- (id)allowedAccessoryUUIDs;
- (id)createAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4;
- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
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

- (id)createAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"allowedAccessories_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateAllowedAccessoriesRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"allowedAccessories_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (NSArray)allowedAccessories
{
  v2 = [(_MKFOutgoingInvitation *)self valueForKey:@"allowedAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFOutgoingInvitationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFOutgoingInvitationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)restrictedGuestSchedule
{
  v3 = [(_MKFInvitation *)self weekDayScheduleRules];
  v4 = [v3 na_map:&__block_literal_global_180958];

  v5 = [(_MKFInvitation *)self yearDayScheduleRules];
  v6 = [v5 na_map:&__block_literal_global_10_180959];

  v7 = [objc_alloc(MEMORY[0x277CD1D78]) initWithWeekDayRules:v4 yearDayRules:v6];

  return v7;
}

- (id)allowedAccessoryUUIDs
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(_MKFOutgoingInvitation *)self allowedAccessories];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(_MKFOutgoingInvitation *)self allowedAccessories];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 modelID];
        [v5 addObject:v13];

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)populateWorkingStoreFromRestrictedGuestSchedule:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 1;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v7 = [v4 weekDayRules];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74___MKFOutgoingInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke;
    v11[3] = &unk_27867D420;
    v11[4] = self;
    v11[5] = &v12;
    [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v11];

    v8 = [v5 yearDayRules];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74___MKFOutgoingInvitation_populateWorkingStoreFromRestrictedGuestSchedule___block_invoke_4;
    v10[3] = &unk_27867D448;
    v10[4] = self;
    v10[5] = &v12;
    [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

    v6 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v6 & 1;
}

@end