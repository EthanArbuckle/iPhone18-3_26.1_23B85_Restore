@interface CPMLEvalutionResult
- (double)getDouble;
- (id)getList;
- (id)getListDict;
- (id)getString;
- (id)getStringList;
- (id)init:(id)a3 withConfigurationList:(id)a4;
- (int)getInt;
@end

@implementation CPMLEvalutionResult

- (id)init:(id)a3 withConfigurationList:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CPMLEvalutionResult;
  v7 = [(CPMLEvalutionResult *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->object, a3);
    v8->count = [v8->object count];
  }

  return v8;
}

- (id)getString
{
  if (self->count)
  {
    v2 = [self->object objectAtIndexedSubscript:0];
    v3 = [v2 allKeys];
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = @"CPMLER: Empty Result String";
  }

  return v4;
}

- (id)getStringList
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = self->object;
  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [v6 allKeys];
      v8 = [v7 objectAtIndexedSubscript:0];

      [v3 appendString:v8];
      [v3 appendString:@"\n"];

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v3;
}

- (double)getDouble
{
  if (self->count != 1)
  {
    return -999.999;
  }

  v2 = [self->object objectAtIndexedSubscript:0];
  v3 = [v2 allValues];
  v4 = [v3 objectAtIndexedSubscript:0];

  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (int)getInt
{
  if (self->count != 1)
  {
    return 999;
  }

  v2 = [self->object objectAtIndexedSubscript:0];
  v3 = [v2 allValues];
  v4 = [v3 objectAtIndexedSubscript:0];

  LODWORD(v3) = [v4 intValue];
  return v3;
}

- (id)getList
{
  v3 = objc_opt_new();
  if ([self->object count])
  {
    v4 = 0;
    do
    {
      v5 = [self->object objectAtIndexedSubscript:v4];
      v6 = [v5 allKeys];
      v7 = [v6 objectAtIndexedSubscript:0];

      [v3 addObject:v7];
      ++v4;
    }

    while (v4 < [self->object count]);
  }

  return v3;
}

- (id)getListDict
{
  object = self->object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = self->object;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end