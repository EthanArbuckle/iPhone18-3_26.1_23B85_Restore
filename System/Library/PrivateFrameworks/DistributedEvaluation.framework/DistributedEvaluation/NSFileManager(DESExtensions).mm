@interface NSFileManager(DESExtensions)
- (uint64_t)_fides_removeItemAtPath:()DESExtensions error:;
@end

@implementation NSFileManager(DESExtensions)

- (uint64_t)_fides_removeItemAtPath:()DESExtensions error:
{
  v13 = 0;
  v5 = [a1 removeItemAtPath:a3 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    goto LABEL_2;
  }

  v9 = [v6 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v10 = [v7 code];

    if (v10 == 4)
    {

      v7 = 0;
LABEL_2:
      v8 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (a4)
  {
    v11 = v7;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

@end