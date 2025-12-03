@interface _MKFAccessory
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context;
- (MKFAccessoryDatabaseID)databaseID;
- (NSArray)actionMediaPlaybacks;
- (NSArray)allowedGuests;
- (NSArray)analysisEventBulletinRegistrations;
- (NSArray)cameraAccessModeBulletinRegistrations;
- (NSArray)cameraReachabilityBulletinRegistrations;
- (NSArray)cameraSignificantEventBulletinRegistrations;
- (NSArray)hostedAccessories;
- (NSArray)mediaPropertyNotificationRegistrations;
- (NSArray)outgoingInvitations;
- (NSArray)usersWithListeningHistoryEnabled;
- (NSArray)usersWithMediaContentProfileEnabled;
- (NSArray)usersWithPersonalRequestsEnabled;
@end

@implementation _MKFAccessory

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_21719 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_21719, &__block_literal_global_21720);
  }

  v3 = homeRelation__hmf_once_v1_21721;

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

- (NSArray)outgoingInvitations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"outgoingInvitations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)allowedGuests
{
  v2 = [(_MKFAccessory *)self valueForKey:@"allowedGuests_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)usersWithPersonalRequestsEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithPersonalRequestsEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)usersWithMediaContentProfileEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithMediaContentProfileEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)usersWithListeningHistoryEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithListeningHistoryEnabled_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)mediaPropertyNotificationRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"mediaPropertyNotificationRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)hostedAccessories
{
  v2 = [(_MKFAccessory *)self valueForKey:@"hostedAccessories_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)cameraSignificantEventBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraSignificantEventBulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)cameraReachabilityBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraReachabilityBulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)cameraAccessModeBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraAccessModeBulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)analysisEventBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"analysisEventBulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)actionMediaPlaybacks
{
  v2 = [(_MKFAccessory *)self valueForKey:@"actionMediaPlaybacks_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)context
{
  contextCopy = context;
  if ([(_MKFAccessory *)self hasRGCapableService])
  {
    selfCopy = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = selfCopy;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      targetUser = [contextCopy targetUser];
      allowedAccessories = [targetUser allowedAccessories];
      v10 = [allowedAccessories containsObject:v7];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end