@interface BRNSDataWrapper
+ (id)dataWithContentsOfURL:(id)a3;
@end

@implementation BRNSDataWrapper

+ (id)dataWithContentsOfURL:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end