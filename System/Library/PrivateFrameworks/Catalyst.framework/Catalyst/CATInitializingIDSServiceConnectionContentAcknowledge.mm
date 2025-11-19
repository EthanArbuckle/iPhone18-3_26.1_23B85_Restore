@interface CATInitializingIDSServiceConnectionContentAcknowledge
+ (id)instanceWithDictionary:(id)a3;
- (CATInitializingIDSServiceConnectionContentAcknowledge)initWithConnectionIdentifier:(id)a3;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentAcknowledge

- (CATInitializingIDSServiceConnectionContentAcknowledge)initWithConnectionIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CATInitializingIDSServiceConnectionContentAcknowledge;
  v6 = [(CATInitializingIDSServiceConnectionContentAcknowledge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionIdentifier, a3);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ConnectionIdentifier";
  v2 = [(CATInitializingIDSServiceConnectionContentAcknowledge *)self connectionIdentifier];
  v3 = [v2 UUIDString];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)instanceWithDictionary:(id)a3
{
  v4 = [a3 cat_uuidForKey:@"ConnectionIdentifier"];
  if (v4)
  {
    v5 = [[a1 alloc] initWithConnectionIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end