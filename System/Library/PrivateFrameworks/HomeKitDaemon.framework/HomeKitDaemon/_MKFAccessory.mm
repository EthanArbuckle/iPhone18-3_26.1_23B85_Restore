@interface _MKFAccessory
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3;
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

- (NSArray)outgoingInvitations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"outgoingInvitations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)allowedGuests
{
  v2 = [(_MKFAccessory *)self valueForKey:@"allowedGuests_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)usersWithPersonalRequestsEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithPersonalRequestsEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)usersWithMediaContentProfileEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithMediaContentProfileEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)usersWithListeningHistoryEnabled
{
  v2 = [(_MKFAccessory *)self valueForKey:@"usersWithListeningHistoryEnabled_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)mediaPropertyNotificationRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"mediaPropertyNotificationRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)hostedAccessories
{
  v2 = [(_MKFAccessory *)self valueForKey:@"hostedAccessories_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)cameraSignificantEventBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraSignificantEventBulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)cameraReachabilityBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraReachabilityBulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)cameraAccessModeBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"cameraAccessModeBulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)analysisEventBulletinRegistrations
{
  v2 = [(_MKFAccessory *)self valueForKey:@"analysisEventBulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)actionMediaPlaybacks
{
  v2 = [(_MKFAccessory *)self valueForKey:@"actionMediaPlaybacks_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFAccessoryDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFAccessoryDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)shouldIncludeForRestrictedGuestWithContext:(id)a3
{
  v4 = a3;
  if ([(_MKFAccessory *)self hasRGCapableService])
  {
    v5 = self;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [v4 targetUser];
      v9 = [v8 allowedAccessories];
      v10 = [v9 containsObject:v7];
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