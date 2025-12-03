@interface DNDAppInfo(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDAppInfo(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bs_safeDictionaryForKey:@"applicationIdentifier"];
  if (v8)
  {
    selfCopy = self;
    v9 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v8 context:v7];
    v10 = [v6 bs_safeNumberForKey:@"source"];
    v11 = v10;
    v21 = v7;
    if (v10)
    {
      unsignedIntegerValue = [v10 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0;
    }

    v14 = [v6 bs_safeStringForKey:@"displayName"];
    v15 = [v6 bs_safeStringForKey:@"storeIconURL"];
    if (v15)
    {
      v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v6 bs_safeStringForKey:@"cachedIconURL"];
    if (v17)
    {
      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
    }

    else
    {
      v18 = 0;
    }

    v13 = [[selfCopy alloc] initWithSource:unsignedIntegerValue applicationIdentifier:v9 displayName:v14 storeIconURL:v16 cachedIconURL:v18];

    v7 = v21;
  }

  else
  {
    v9 = 0;
    v13 = 0;
  }

  return v13;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v4 = a3;
  applicationIdentifier = [self applicationIdentifier];
  v6 = [applicationIdentifier dictionaryRepresentationWithContext:v4];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "source")}];
  [dictionary setObject:v8 forKeyedSubscript:@"source"];

  [dictionary setObject:v6 forKeyedSubscript:@"applicationIdentifier"];
  displayName = [self displayName];
  [dictionary setObject:displayName forKeyedSubscript:@"displayName"];

  storeIconURL = [self storeIconURL];
  absoluteString = [storeIconURL absoluteString];
  [dictionary setObject:absoluteString forKeyedSubscript:@"storeIconURL"];

  cachedIconURL = [self cachedIconURL];
  path = [cachedIconURL path];
  [dictionary setObject:path forKeyedSubscript:@"cachedIconURL"];

  return dictionary;
}

@end