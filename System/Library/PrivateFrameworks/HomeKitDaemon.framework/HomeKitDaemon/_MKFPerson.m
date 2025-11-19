@interface _MKFPerson
- (MKFPersonDatabaseID)databaseID;
- (id)createHMPerson;
- (void)updateWithHMPerson:(id)a3;
@end

@implementation _MKFPerson

- (MKFPersonDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFPersonDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (id)createHMPerson
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

- (void)updateWithHMPerson:(id)a3
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