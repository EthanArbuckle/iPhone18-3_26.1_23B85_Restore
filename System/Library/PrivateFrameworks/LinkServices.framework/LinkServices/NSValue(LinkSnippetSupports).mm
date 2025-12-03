@interface NSValue(LinkSnippetSupports)
+ (id)lns_valueWithCGSize:()LinkSnippetSupports;
- (double)lns_CGSizeValue;
@end

@implementation NSValue(LinkSnippetSupports)

- (double)lns_CGSizeValue
{
  v2[0] = 0;
  v2[1] = 0;
  [self getValue:v2 size:16];
  return *v2;
}

+ (id)lns_valueWithCGSize:()LinkSnippetSupports
{
  *v5 = a2;
  *&v5[1] = a3;
  v3 = [self valueWithBytes:v5 objCType:"{CGSize=dd}"];

  return v3;
}

@end