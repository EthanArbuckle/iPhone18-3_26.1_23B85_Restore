@interface _MKFCharacteristicValueEvent
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFCharacteristicValueEventDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFCharacteristicValueEvent

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

- (MKFHome)home
{
  trigger = [(_MKFCharacteristicValueEvent *)self trigger];
  home = [trigger home];

  return home;
}

- (MKFCharacteristicValueEventDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCharacteristicValueEventDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end