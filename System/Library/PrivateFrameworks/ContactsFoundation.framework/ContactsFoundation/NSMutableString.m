@interface NSMutableString
@end

@implementation NSMutableString

void __59__NSMutableString_CNOrderedDictionary___cn_replaceStrings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rangeValue];
  v5 = v4;
  v7 = [*(a1 + 32) substringWithRange:{v3, v4}];
  v6 = [*(a1 + 40) objectForKey:v7];
  [*(a1 + 32) replaceCharactersInRange:v3 withString:{v5, v6}];
}

@end