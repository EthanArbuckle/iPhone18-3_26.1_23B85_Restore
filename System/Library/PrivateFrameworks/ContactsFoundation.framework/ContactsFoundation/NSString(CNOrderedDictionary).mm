@interface NSString(CNOrderedDictionary)
- (void)_cn_stringByReplacingStrings:()CNOrderedDictionary;
@end

@implementation NSString(CNOrderedDictionary)

- (void)_cn_stringByReplacingStrings:()CNOrderedDictionary
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  v6 = [v5 _cn_replaceStrings:v4];

  if (v6)
  {
    a1 = v5;
  }

  v7 = a1;

  return a1;
}

@end