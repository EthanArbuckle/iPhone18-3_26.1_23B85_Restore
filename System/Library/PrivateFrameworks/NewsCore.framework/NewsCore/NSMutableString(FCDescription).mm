@interface NSMutableString(FCDescription)
- (void)indentBy:()FCDescription;
@end

@implementation NSMutableString(FCDescription)

- (void)indentBy:()FCDescription
{
  v5 = [@"          " mutableCopy];
  v7 = v5;
  while ([v5 length] < a3)
  {
    [v7 appendString:v7];
    v5 = v7;
  }

  [v7 deleteCharactersInRange:{a3, objc_msgSend(v7, "length") - a3}];
  [self insertString:v7 atIndex:0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v7];
  [self replaceOccurrencesOfString:@"\n" withString:v6 options:0 range:{0, objc_msgSend(self, "length")}];
}

@end