@interface NSURLComponents(IC)
- (id)ic_queryItemWithKey:()IC;
- (id)ic_stringValueForQueryItemWithKey:()IC;
- (uint64_t)ic_BOOLValueForQueryItemWithKey:()IC;
@end

@implementation NSURLComponents(IC)

- (id)ic_queryItemWithKey:()IC
{
  v4 = a3;
  queryItems = [self queryItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__NSURLComponents_IC__ic_queryItemWithKey___block_invoke;
  v9[3] = &unk_1E8485888;
  v10 = v4;
  v6 = v4;
  v7 = [queryItems ic_objectPassingTest:v9];

  return v7;
}

- (id)ic_stringValueForQueryItemWithKey:()IC
{
  v1 = [self ic_queryItemWithKey:?];
  value = [v1 value];

  return value;
}

- (uint64_t)ic_BOOLValueForQueryItemWithKey:()IC
{
  v1 = [self ic_stringValueForQueryItemWithKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end