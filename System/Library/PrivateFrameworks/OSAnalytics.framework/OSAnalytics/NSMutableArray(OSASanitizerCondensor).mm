@interface NSMutableArray(OSASanitizerCondensor)
- (void)addPart:()OSASanitizerCondensor;
@end

@implementation NSMutableArray(OSASanitizerCondensor)

- (void)addPart:()OSASanitizerCondensor
{
  v6 = a3;
  if (![self count] || !objc_msgSend(v6, "isEqualToString:", @"*") || (objc_msgSend(self, "lastObject"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"*"), v4, (v5 & 1) == 0))
  {
    [self addObject:v6];
  }
}

@end