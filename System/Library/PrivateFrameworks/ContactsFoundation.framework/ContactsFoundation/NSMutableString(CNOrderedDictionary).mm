@interface NSMutableString(CNOrderedDictionary)
- (uint64_t)_cn_replaceStrings:()CNOrderedDictionary;
@end

@implementation NSMutableString(CNOrderedDictionary)

- (uint64_t)_cn_replaceStrings:()CNOrderedDictionary
{
  v4 = a3;
  allKeys = [v4 allKeys];
  v6 = [CNStringRangeFinder rangesOfStrings:allKeys inString:self];

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__NSMutableString_CNOrderedDictionary___cn_replaceStrings___block_invoke;
  v13 = &unk_1E6ED6ED0;
  selfCopy = self;
  v15 = v4;
  v7 = v4;
  [v6 enumerateObjectsWithOptions:2 usingBlock:&v10];
  v8 = [v6 count];

  return v8;
}

@end