@interface NSArray(GTShaderDebugger)
- (id)gt_firstObjectPassingTest:()GTShaderDebugger;
@end

@implementation NSArray(GTShaderDebugger)

- (id)gt_firstObjectPassingTest:()GTShaderDebugger
{
  v2 = [self indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndex:v2];
  }

  return v3;
}

@end