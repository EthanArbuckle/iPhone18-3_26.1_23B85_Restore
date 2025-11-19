@interface ODICycle4
+ (unint64_t)nodeCountWithState:(id)a3;
@end

@implementation ODICycle4

+ (unint64_t)nodeCountWithState:(id)a3
{
  v3 = [a3 diagram];
  v4 = [v3 documentPoint];
  v5 = [v4 children];
  v6 = [v5 count];

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