@interface NSMutableString(CRKAdditions)
- (void)crk_deleteSuffix:()CRKAdditions;
@end

@implementation NSMutableString(CRKAdditions)

- (void)crk_deleteSuffix:()CRKAdditions
{
  v4 = a3;
  if ([a1 hasSuffix:?])
  {
    [a1 deleteCharactersInRange:{objc_msgSend(a1, "length") - objc_msgSend(v4, "length"), objc_msgSend(v4, "length")}];
  }
}

@end