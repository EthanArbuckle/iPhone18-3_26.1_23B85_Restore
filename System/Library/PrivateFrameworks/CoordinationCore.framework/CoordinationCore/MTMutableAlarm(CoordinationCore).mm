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
    siriContext = [self siriContext];
    siriContext2 = [siriContext mutableCopy];

    if (!siriContext2)
    {
      siriContext2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [siriContext2 setObject:v11 forKey:*MEMORY[0x277CFCEC8]];
    selfCopy2 = self;
    v7 = siriContext2;
    goto LABEL_5;
  }

  co_targetReference = [self co_targetReference];
  v9 = [co_targetReference length];

  if (v9)
  {
    siriContext2 = [self siriContext];
    if ([siriContext2 count] != 1)
    {
      v10 = [siriContext2 mutableCopy];
      [v10 removeObjectForKey:*MEMORY[0x277CFCEC8]];
      [self setSiriContext:v10];

      goto LABEL_6;
    }

    selfCopy2 = self;
    v7 = 0;
LABEL_5:
    [selfCopy2 setSiriContext:v7];
LABEL_6:
  }
}

- (void)co_setIsMediaSystemOriginating
{
  siriContext = [self siriContext];
  v4 = [siriContext mutableCopy];

  v3 = v4;
  if (!v4)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v5 = v3;
  [v3 setObject:MEMORY[0x277CBEC38] forKey:@"COAlarmSiriContextIsMediaSystemKey"];
  [self setSiriContext:v5];
}

@end