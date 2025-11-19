@interface CKOperation(IC)
- (id)ic_loggingValues;
@end

@implementation CKOperation(IC)

- (id)ic_loggingValues
{
  v15.receiver = a1;
  v15.super_class = &off_2827832B8;
  v2 = objc_msgSendSuper2(&v15, sel_ic_loggingValues);
  v3 = [v2 mutableCopy];

  v4 = [a1 metrics];
  v5 = [v4 cloudKitMetrics];
  [v5 duration];
  v7 = v6;

  if (v7 > 0.0)
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = [a1 metrics];
    v10 = [v9 cloudKitMetrics];
    [v10 duration];
    v11 = [v8 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"duration"];
  }

  v12 = [a1 group];
  v13 = [v12 ic_loggingDescription];

  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"group"];
  }

  return v3;
}

@end