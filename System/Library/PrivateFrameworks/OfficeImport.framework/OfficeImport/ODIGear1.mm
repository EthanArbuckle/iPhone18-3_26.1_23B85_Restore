@interface ODIGear1
+ (unint64_t)nodeCountWithState:(id)state;
@end

@implementation ODIGear1

+ (unint64_t)nodeCountWithState:(id)state
{
  diagram = [state diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v6 = [children count];

  if (v6 >= 3)
  {
    return 3;
  }

  else
  {
    return v6;
  }
}

@end