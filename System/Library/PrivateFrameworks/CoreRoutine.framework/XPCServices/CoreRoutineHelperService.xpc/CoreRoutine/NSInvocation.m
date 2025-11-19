@interface NSInvocation
- (int64_t)blockArgumentIndex;
@end

@implementation NSInvocation

- (int64_t)blockArgumentIndex
{
  v2 = [(NSInvocation *)self methodSignature];
  v3 = [v2 numberOfArguments];
  if (v3 < 3)
  {
LABEL_7:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = v3;
    v5 = 2;
    while (1)
    {
      v6 = [v2 getArgumentTypeAtIndex:v5];
      if (*v6 == 64 && v6[1] == 63 && !v6[2])
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  return v5;
}

@end