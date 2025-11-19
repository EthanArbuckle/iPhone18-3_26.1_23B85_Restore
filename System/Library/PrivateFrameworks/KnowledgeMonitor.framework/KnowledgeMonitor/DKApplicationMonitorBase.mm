@interface DKApplicationMonitorBase
@end

@implementation DKApplicationMonitorBase

BOOL __33___DKApplicationMonitorBase_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  if (v3)
  {
    v4 = [v3 length] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __33___DKApplicationMonitorBase_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if (v6 == v7 || ([v6 stringValue], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stringValue"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

@end