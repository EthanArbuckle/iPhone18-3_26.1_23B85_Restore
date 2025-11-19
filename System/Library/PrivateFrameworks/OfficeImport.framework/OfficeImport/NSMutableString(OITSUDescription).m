@interface NSMutableString(OITSUDescription)
- (void)tsu_indentBy:()OITSUDescription;
@end

@implementation NSMutableString(OITSUDescription)

- (void)tsu_indentBy:()OITSUDescription
{
  v5 = [@"          " mutableCopy];
  v6 = v5;
  while ([v5 length] < a3)
  {
    [v6 appendString:v6];
    v5 = v6;
  }

  [v6 deleteCharactersInRange:{a3, objc_msgSend(v6, "length") - a3}];
  [a1 insertString:v6 atIndex:0];
  [a1 replaceOccurrencesOfString:@"\n" withString:objc_msgSend(MEMORY[0x277CCACA8] options:"stringWithFormat:" range:{@"\n%@", v6), 0, 0, objc_msgSend(a1, "length")}];
}

@end