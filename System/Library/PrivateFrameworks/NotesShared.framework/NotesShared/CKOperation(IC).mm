@interface CKOperation(IC)
- (id)ic_loggingValues;
@end

@implementation CKOperation(IC)

- (id)ic_loggingValues
{
  v15.receiver = self;
  v15.super_class = &off_2827832B8;
  v2 = objc_msgSendSuper2(&v15, sel_ic_loggingValues);
  v3 = [v2 mutableCopy];

  metrics = [self metrics];
  cloudKitMetrics = [metrics cloudKitMetrics];
  [cloudKitMetrics duration];
  v7 = v6;

  if (v7 > 0.0)
  {
    v8 = MEMORY[0x277CCABB0];
    metrics2 = [self metrics];
    cloudKitMetrics2 = [metrics2 cloudKitMetrics];
    [cloudKitMetrics2 duration];
    v11 = [v8 numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"duration"];
  }

  group = [self group];
  ic_loggingDescription = [group ic_loggingDescription];

  if (ic_loggingDescription)
  {
    [v3 setObject:ic_loggingDescription forKeyedSubscript:@"group"];
  }

  return v3;
}

@end