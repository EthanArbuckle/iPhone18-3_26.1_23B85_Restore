@interface NSMutableString(CRKAdditions)
- (void)crk_deleteSuffix:()CRKAdditions;
@end

@implementation NSMutableString(CRKAdditions)

- (void)crk_deleteSuffix:()CRKAdditions
{
  v4 = a3;
  if ([self hasSuffix:?])
  {
    [self deleteCharactersInRange:{objc_msgSend(self, "length") - objc_msgSend(v4, "length"), objc_msgSend(v4, "length")}];
  }
}

@end