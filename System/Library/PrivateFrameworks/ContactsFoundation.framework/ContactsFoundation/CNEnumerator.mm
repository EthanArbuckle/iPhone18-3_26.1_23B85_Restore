@interface CNEnumerator
+ (id)combine:(id)combine;
@end

@implementation CNEnumerator

+ (id)combine:(id)combine
{
  objectEnumerator = [combine objectEnumerator];
  v4 = [objectEnumerator _cn_flatMap:&__block_literal_global_76];

  return v4;
}

@end