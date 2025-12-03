@interface _MKFHomeThreadNetwork
+ (NSPredicate)homeRelation;
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHomeThreadNetworkDatabaseID)databaseID;
@end

@implementation _MKFHomeThreadNetwork

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_55152 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_55152, &__block_literal_global_55153);
  }

  v3 = homeRelation__hmf_once_v1_55154;

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

- (MKFHomeThreadNetworkDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFHomeThreadNetworkDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end