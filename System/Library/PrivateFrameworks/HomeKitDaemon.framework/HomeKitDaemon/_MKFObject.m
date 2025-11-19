@interface _MKFObject
+ (Protocol)backingModelProtocol;
- (MKFObjectDatabaseID)databaseID;
@end

@implementation _MKFObject

+ (Protocol)backingModelProtocol
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (MKFObjectDatabaseID)databaseID
{
  v2 = [[MKFObjectDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end