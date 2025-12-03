@interface NSInvocation
- (int64_t)blockArgumentIndex;
@end

@implementation NSInvocation

- (int64_t)blockArgumentIndex
{
  methodSignature = [(NSInvocation *)self methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments < 3)
  {
LABEL_7:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = numberOfArguments;
    v5 = 2;
    while (1)
    {
      v6 = [methodSignature getArgumentTypeAtIndex:v5];
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