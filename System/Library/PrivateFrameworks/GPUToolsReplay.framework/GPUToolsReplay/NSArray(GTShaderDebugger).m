@interface NSArray(GTShaderDebugger)
- (id)gt_firstObjectPassingTest:()GTShaderDebugger;
@end

@implementation NSArray(GTShaderDebugger)

- (id)gt_firstObjectPassingTest:()GTShaderDebugger
{
  v2 = [a1 indexOfObjectPassingTest:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2];
  }

  return v3;
}

@end