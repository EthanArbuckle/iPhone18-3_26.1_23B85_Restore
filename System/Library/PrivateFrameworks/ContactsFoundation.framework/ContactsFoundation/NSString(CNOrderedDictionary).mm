@interface NSString(CNOrderedDictionary)
- (void)_cn_stringByReplacingStrings:()CNOrderedDictionary;
@end

@implementation NSString(CNOrderedDictionary)

- (void)_cn_stringByReplacingStrings:()CNOrderedDictionary
{
  v4 = a3;
  v5 = [self mutableCopy];
  v6 = [v5 _cn_replaceStrings:v4];

  if (v6)
  {
    self = v5;
  }

  selfCopy = self;

  return self;
}

@end