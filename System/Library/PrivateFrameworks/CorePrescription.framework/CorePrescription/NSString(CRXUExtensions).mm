@interface NSString(CRXUExtensions)
- (id)crxu_stringByRemovingPattern:()CRXUExtensions;
- (id)crxu_stringByTrimmingWhitespace;
- (uint64_t)locationOfPattern:()CRXUExtensions;
@end

@implementation NSString(CRXUExtensions)

- (id)crxu_stringByRemovingPattern:()CRXUExtensions
{
  v2 = [a1 locationOfPattern:?];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a1;
  }

  else
  {
    v4 = [a1 stringByReplacingCharactersInRange:v2 withString:{v3, &stru_28592CA48}];
  }

  return v4;
}

- (uint64_t)locationOfPattern:()CRXUExtensions
{
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:0 error:0];
  v5 = [v4 rangeOfFirstMatchInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}];

  return v5;
}

- (id)crxu_stringByTrimmingWhitespace
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 stringByTrimmingCharactersInSet:v2];

  return v3;
}

@end