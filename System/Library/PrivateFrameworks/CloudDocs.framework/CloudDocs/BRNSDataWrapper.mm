@interface BRNSDataWrapper
+ (id)dataWithContentsOfURL:(id)l;
@end

@implementation BRNSDataWrapper

+ (id)dataWithContentsOfURL:(id)l
{
  if (l)
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