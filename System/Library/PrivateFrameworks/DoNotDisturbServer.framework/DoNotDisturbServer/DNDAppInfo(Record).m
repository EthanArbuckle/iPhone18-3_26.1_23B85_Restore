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
    v20 = a1;
    v9 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v8 context:v7];
    v10 = [v6 bs_safeNumberForKey:@"source"];
    v11 = v10;
    v21 = v7;
    if (v10)
    {
      v12 = [v10 unsignedIntegerValue];
    }

    else
    {
      v12 = 0;
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

    v13 = [[v20 alloc] initWithSource:v12 applicationIdentifier:v9 displayName:v14 storeIconURL:v16 cachedIconURL:v18];

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
  v5 = [a1 applicationIdentifier];
  v6 = [v5 dictionaryRepresentationWithContext:v4];

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "source")}];
  [v7 setObject:v8 forKeyedSubscript:@"source"];

  [v7 setObject:v6 forKeyedSubscript:@"applicationIdentifier"];
  v9 = [a1 displayName];
  [v7 setObject:v9 forKeyedSubscript:@"displayName"];

  v10 = [a1 storeIconURL];
  v11 = [v10 absoluteString];
  [v7 setObject:v11 forKeyedSubscript:@"storeIconURL"];

  v12 = [a1 cachedIconURL];
  v13 = [v12 path];
  [v7 setObject:v13 forKeyedSubscript:@"cachedIconURL"];

  return v7;
}

@end