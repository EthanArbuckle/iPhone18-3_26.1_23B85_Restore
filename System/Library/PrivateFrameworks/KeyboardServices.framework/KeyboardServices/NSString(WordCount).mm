@interface NSString(WordCount)
- (uint64_t)wordCount;
@end

@implementation NSString(WordCount)

- (uint64_t)wordCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [self length];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__NSString_WordCount__wordCount__block_invoke;
  v5[3] = &unk_2797F64C0;
  v5[4] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{3, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end