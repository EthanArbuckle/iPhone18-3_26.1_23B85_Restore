@interface DYFunctionStream
- (void)enumerateFunctionsUsingBlock:(id)a3;
@end

@implementation DYFunctionStream

- (void)enumerateFunctionsUsingBlock:(id)a3
{
  for (i = 0; i != 1; (*(a3 + 2))(a3, v5, &i))
  {
    v5 = [(DYFunctionStream *)self readFunction];
    if (!v5)
    {
      break;
    }
  }
}

@end