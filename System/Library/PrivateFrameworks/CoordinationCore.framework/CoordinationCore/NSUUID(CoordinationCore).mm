@interface NSUUID(CoordinationCore)
- (uint64_t)co_compare:()CoordinationCore;
@end

@implementation NSUUID(CoordinationCore)

- (uint64_t)co_compare:()CoordinationCore
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  [self getUUIDBytes:v12];
  [v4 getUUIDBytes:v11];
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = *(v12 + v5);
    v8 = *(v11 + v5);
    if (v7 < v8)
    {
      break;
    }

    if (v7 > v8)
    {
      goto LABEL_7;
    }

    if (++v5 == 16)
    {
      v6 = 0;
      goto LABEL_7;
    }
  }

  v6 = -1;
LABEL_7:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end