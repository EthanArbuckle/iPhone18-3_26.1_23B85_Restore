@interface NSMutableArray(OSASanitizerCondensor)
- (void)addPart:()OSASanitizerCondensor;
@end

@implementation NSMutableArray(OSASanitizerCondensor)

- (void)addPart:()OSASanitizerCondensor
{
  v6 = a3;
  if (![a1 count] || !objc_msgSend(v6, "isEqualToString:", @"*") || (objc_msgSend(a1, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"*"), v4, (v5 & 1) == 0))
  {
    [a1 addObject:v6];
  }
}

@end