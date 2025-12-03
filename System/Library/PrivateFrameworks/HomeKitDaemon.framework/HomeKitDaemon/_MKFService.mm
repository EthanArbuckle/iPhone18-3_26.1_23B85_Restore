@interface _MKFService
+ (NSPredicate)homeRelation;
+ (id)modelIDForKeyAttribute:(id)attribute parent:(id)parent;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context;
- (MKFHome)home;
- (MKFServiceDatabaseID)databaseID;
- (NSArray)actionCharacteristicWrites;
- (NSArray)characteristics;
- (NSArray)eventCharacteristics;
- (NSArray)serviceGroups;
- (id)createCharacteristicsRelationOfType:(id)type instanceID:(id)d;
- (id)materializeOrCreateCharacteristicsRelationOfType:(id)type instanceID:(id)d createdNew:(BOOL *)new;
- (id)pr_findCharacteristicWithInstanceID:(id)d;
- (void)setCharacteristics:(id)characteristics;
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

+ (id)modelIDForKeyAttribute:(id)attribute parent:(id)parent
{
  attributeCopy = attribute;
  modelID = [parent modelID];
  v7 = [HMDService generateUUIDWithAccessoryUUID:modelID serviceID:attributeCopy];

  return v7;
}

- (NSArray)serviceGroups
{
  v2 = [(_MKFService *)self valueForKey:@"serviceGroups_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)eventCharacteristics
{
  v2 = [(_MKFService *)self valueForKey:@"eventCharacteristics_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (id)createCharacteristicsRelationOfType:(id)type instanceID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"characteristics_" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateCharacteristicsRelationOfType:(id)type instanceID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"characteristics_" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (void)setCharacteristics:(id)characteristics
{
  if (characteristics)
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
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)actionCharacteristicWrites
{
  v2 = [(_MKFService *)self valueForKey:@"actionCharacteristicWrites_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  accessory = [(_MKFService *)self accessory];
  home = [accessory home];

  return home;
}

- (MKFServiceDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFServiceDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)pr_findCharacteristicWithInstanceID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__86488;
  v16 = __Block_byref_object_dispose__86489;
  v17 = 0;
  characteristics = [(_MKFService *)self characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51___MKFService_pr_findCharacteristicWithInstanceID___block_invoke;
  v9[3] = &unk_278676E38;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [characteristics hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  secureClassServices = [MEMORY[0x277CD1D80] secureClassServices];
  v6 = [v4 setWithSet:secureClassServices];

  v12[0] = *MEMORY[0x277CD0DE8];
  v12[1] = @"00000260-0000-1000-8000-0026BB765291";
  v12[2] = @"00000266-0000-1000-8000-0026BB765291";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [v6 addObjectsFromArray:v7];

  serviceType = [(_MKFService *)self serviceType];
  uUIDString = [serviceType UUIDString];
  LOBYTE(self) = [v6 containsObject:uUIDString];

  v10 = *MEMORY[0x277D85DE8];
  return self;
}

@end