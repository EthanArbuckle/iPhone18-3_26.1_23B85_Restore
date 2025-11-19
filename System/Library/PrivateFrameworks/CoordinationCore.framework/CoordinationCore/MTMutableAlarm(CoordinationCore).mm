@interface MTMutableAlarm(CoordinationCore)
- (void)co_setIsMediaSystemOriginating;
- (void)co_setTargetReference:()CoordinationCore;
@end

@implementation MTMutableAlarm(CoordinationCore)

- (void)co_setTargetReference:()CoordinationCore
{
  v11 = a3;
  if ([v11 length])
  {
    v4 = [a1 siriContext];
    v5 = [v4 mutableCopy];

    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v5 setObject:v11 forKey:*MEMORY[0x277CFCEC8]];
    v6 = a1;
    v7 = v5;
    goto LABEL_5;
  }

  v8 = [a1 co_targetReference];
  v9 = [v8 length];

  if (v9)
  {
    v5 = [a1 siriContext];
    if ([v5 count] != 1)
    {
      v10 = [v5 mutableCopy];
      [v10 removeObjectForKey:*MEMORY[0x277CFCEC8]];
      [a1 setSiriContext:v10];

      goto LABEL_6;
    }

    v6 = a1;
    v7 = 0;
LABEL_5:
    [v6 setSiriContext:v7];
LABEL_6:
  }
}

- (void)co_setIsMediaSystemOriginating
{
  v2 = [a1 siriContext];
  v4 = [v2 mutableCopy];

  v3 = v4;
  if (!v4)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v5 = v3;
  [v3 setObject:MEMORY[0x277CBEC38] forKey:@"COAlarmSiriContextIsMediaSystemKey"];
  [a1 setSiriContext:v5];
}

@end