@interface NSMutableArray(FCAdditions_NSString)
- (void)fc_safelyAddStringIfNonNilAndNotZeroLength:()FCAdditions_NSString;
@end

@implementation NSMutableArray(FCAdditions_NSString)

- (void)fc_safelyAddStringIfNonNilAndNotZeroLength:()FCAdditions_NSString
{
  v4 = a3;
  if ([v4 length])
  {
    [self addObject:v4];
  }
}

@end