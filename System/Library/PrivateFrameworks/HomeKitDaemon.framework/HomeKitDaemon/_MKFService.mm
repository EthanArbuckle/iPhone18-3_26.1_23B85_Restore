@interface _MKFService
+ (NSPredicate)homeRelation;
+ (id)modelIDForKeyAttribute:(id)a3 parent:(id)a4;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3;
- (MKFHome)home;
- (MKFServiceDatabaseID)databaseID;
- (NSArray)actionCharacteristicWrites;
- (NSArray)characteristics;
- (NSArray)eventCharacteristics;
- (NSArray)serviceGroups;
- (id)createCharacteristicsRelationOfType:(id)a3 instanceID:(id)a4;
- (id)materializeOrCreateCharacteristicsRelationOfType:(id)a3 instanceID:(id)a4 createdNew:(BOOL *)a5;
- (id)pr_findCharacteristicWithInstanceID:(id)a3;
- (void)setCharacteristics:(id)a3;
@end

@implementation _MKFService

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_86427 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_86427, &__block_literal_global_86428);
  }

  v3 = homeRelation__hmf_once_v1_86429;

  return v3;
}

+ (id)modelIDForKeyAttribute:(id)a3 parent:(id)a4
{
  v5 = a3;
  v6 = [a4 modelID];
  v7 = [HMDService generateUUIDWithAccessoryUUID:v6 serviceID:v5];

  return v7;
}

- (NSArray)serviceGroups
{
  v2 = [(_MKFService *)self valueForKey:@"serviceGroups_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)eventCharacteristics
{
  v2 = [(_MKFService *)self valueForKey:@"eventCharacteristics_"];
  v3 = [v2 allObjects];

  return v3;
}

- (id)createCharacteristicsRelationOfType:(id)a3 instanceID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"characteristics_" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateCharacteristicsRelationOfType:(id)a3 instanceID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"characteristics_" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (void)setCharacteristics:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:?];
    [(_MKFService *)self setValue:v4 forKey:@"characteristics_"];
  }

  else
  {

    [_MKFService setValue:"setValue:forKey:" forKey:?];
  }
}

- (NSArray)characteristics
{
  v2 = [(_MKFService *)self valueForKey:@"characteristics_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)actionCharacteristicWrites
{
  v2 = [(_MKFService *)self valueForKey:@"actionCharacteristicWrites_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFService *)self accessory];
  v3 = [v2 home];

  return v3;
}

- (MKFServiceDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFServiceDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)pr_findCharacteristicWithInstanceID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__86488;
  v16 = __Block_byref_object_dispose__86489;
  v17 = 0;
  v5 = [(_MKFService *)self characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51___MKFService_pr_findCharacteristicWithInstanceID___block_invoke;
  v9[3] = &unk_278676E38;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = [MEMORY[0x277CD1D80] secureClassServices];
  v6 = [v4 setWithSet:v5];

  v12[0] = *MEMORY[0x277CD0DE8];
  v12[1] = @"00000260-0000-1000-8000-0026BB765291";
  v12[2] = @"00000266-0000-1000-8000-0026BB765291";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [v6 addObjectsFromArray:v7];

  v8 = [(_MKFService *)self serviceType];
  v9 = [v8 UUIDString];
  LOBYTE(self) = [v6 containsObject:v9];

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end