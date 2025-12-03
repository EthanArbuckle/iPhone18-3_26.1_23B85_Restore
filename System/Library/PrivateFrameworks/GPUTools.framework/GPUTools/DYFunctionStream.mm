@interface DYFunctionStream
- (void)enumerateFunctionsUsingBlock:(id)block;
@end

@implementation DYFunctionStream

- (void)enumerateFunctionsUsingBlock:(id)block
{
  for (i = 0; i != 1; (*(block + 2))(block, readFunction, &i))
  {
    readFunction = [(DYFunctionStream *)self readFunction];
    if (!readFunction)
    {
      break;
    }
  }
}

@end