@interface NSString(CRXUExtensions)
- (id)crxu_stringByRemovingPattern:()CRXUExtensions;
- (id)crxu_stringByTrimmingWhitespace;
- (uint64_t)locationOfPattern:()CRXUExtensions;
@end

@implementation NSString(CRXUExtensions)

- (id)crxu_stringByRemovingPattern:()CRXUExtensions
{
  v2 = [self locationOfPattern:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self stringByReplacingCharactersInRange:v2 withString:{v3, &stru_28592CA48}];
  }

  return selfCopy;
}

- (uint64_t)locationOfPattern:()CRXUExtensions
{
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:0 error:0];
  v5 = [v4 rangeOfFirstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];

  return v5;
}

- (id)crxu_stringByTrimmingWhitespace
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

@end