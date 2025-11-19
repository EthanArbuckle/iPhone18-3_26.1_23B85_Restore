@interface CNEnumerator
+ (id)combine:(id)a3;
@end

@implementation CNEnumerator

+ (id)combine:(id)a3
{
  v3 = [a3 objectEnumerator];
  v4 = [v3 _cn_flatMap:&__block_literal_global_76];

  return v4;
}

@end