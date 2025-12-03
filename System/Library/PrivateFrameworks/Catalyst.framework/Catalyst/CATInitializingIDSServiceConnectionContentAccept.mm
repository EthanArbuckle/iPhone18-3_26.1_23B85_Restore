@interface CATInitializingIDSServiceConnectionContentAccept
+ (id)instanceWithDictionary:(id)dictionary;
- (CATInitializingIDSServiceConnectionContentAccept)initWithConnectionIdentifier:(id)identifier;
- (NSDictionary)dictionaryValue;
@end

@implementation CATInitializingIDSServiceConnectionContentAccept

- (CATInitializingIDSServiceConnectionContentAccept)initWithConnectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CATInitializingIDSServiceConnectionContentAccept;
  v6 = [(CATInitializingIDSServiceConnectionContentAccept *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionIdentifier, identifier);
  }

  return v7;
}

- (NSDictionary)dictionaryValue
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"ConnectionIdentifier";
  connectionIdentifier = [(CATInitializingIDSServiceConnectionContentAccept *)self connectionIdentifier];
  uUIDString = [connectionIdentifier UUIDString];
  v8[0] = uUIDString;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  v4 = [dictionary cat_uuidForKey:@"ConnectionIdentifier"];
  if (v4)
  {
    v5 = [[self alloc] initWithConnectionIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end