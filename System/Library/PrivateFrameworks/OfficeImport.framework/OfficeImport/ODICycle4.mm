@interface ODICycle4
+ (unint64_t)nodeCountWithState:(id)state;
@end

@implementation ODICycle4

+ (unint64_t)nodeCountWithState:(id)state
{
  diagram = [state diagram];
  documentPoint = [diagram documentPoint];
  children = [documentPoint children];
  v6 = [children count];

  if (v6 >= 4)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

@end