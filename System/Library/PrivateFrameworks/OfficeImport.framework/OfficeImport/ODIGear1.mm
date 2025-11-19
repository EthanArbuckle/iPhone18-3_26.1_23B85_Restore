@interface ODIGear1
+ (unint64_t)nodeCountWithState:(id)a3;
@end

@implementation ODIGear1

+ (unint64_t)nodeCountWithState:(id)a3
{
  v3 = [a3 diagram];
  v4 = [v3 documentPoint];
  v5 = [v4 children];
  v6 = [v5 count];

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