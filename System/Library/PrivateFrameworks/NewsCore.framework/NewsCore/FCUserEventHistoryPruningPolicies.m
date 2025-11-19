@interface FCUserEventHistoryPruningPolicies
+ (id)defaultPolicy;
- (FCUserEventHistoryPruningPolicies)initWithDictionary:(id)a3;
- (FCUserEventHistoryPruningPolicies)initWithPolicies:(id)a3;
- (id)description;
@end

@implementation FCUserEventHistoryPruningPolicies

+ (id)defaultPolicy
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(FCUserEventHistoryPruningPolicies);
  v3 = [[FCUserEventHistoryPruningPolicy alloc] initWithType:1 value:5000000];
  v8[0] = v3;
  v4 = [[FCUserEventHistoryPruningPolicy alloc] initWithType:4 value:-1];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  [(FCUserEventHistoryPruningPolicies *)v2 setPolicies:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

- (FCUserEventHistoryPruningPolicies)initWithPolicies:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FCUserEventHistoryPruningPolicies;
  v5 = [(FCUserEventHistoryPruningPolicies *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FCUserEventHistoryPruningPolicies *)v5 setPolicies:v4];
  }

  return v6;
}

- (FCUserEventHistoryPruningPolicies)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = FCAppConfigurationNumberValue(v4, @"maxSizeOnDisk", 0);
  if (v6)
  {
    v7 = -[FCUserEventHistoryPruningPolicy initWithType:value:]([FCUserEventHistoryPruningPolicy alloc], "initWithType:value:", 1, [v6 unsignedIntegerValue]);
    [v5 addObject:v7];
  }

  v8 = FCAppConfigurationNumberValue(v4, @"maxSessionAge", 0);
  if (v8)
  {
    v9 = -[FCUserEventHistoryPruningPolicy initWithType:value:]([FCUserEventHistoryPruningPolicy alloc], "initWithType:value:", 3, [v8 unsignedIntegerValue]);
    [v5 addObject:v9];
  }

  v10 = FCAppConfigurationNumberValue(v4, @"maxSessionCount", 0);
  if (v10)
  {
    v11 = -[FCUserEventHistoryPruningPolicy initWithType:value:]([FCUserEventHistoryPruningPolicy alloc], "initWithType:value:", 2, [v10 unsignedIntegerValue]);
    [v5 addObject:v11];
  }

  v12 = [[FCUserEventHistoryPruningPolicy alloc] initWithType:4 value:-1];
  [v5 addObject:v12];

  if ([v5 count])
  {
    v13 = [(FCUserEventHistoryPruningPolicies *)self initWithPolicies:v5];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  v4 = [(FCUserEventHistoryPruningPolicies *)self policies];
  [v3 appendFormat:@"; policies: %@", v4];

  [v3 appendString:@">"];

  return v3;
}

@end