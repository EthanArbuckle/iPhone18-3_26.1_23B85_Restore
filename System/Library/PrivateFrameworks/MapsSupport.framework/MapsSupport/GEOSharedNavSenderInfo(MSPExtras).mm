@interface GEOSharedNavSenderInfo(MSPExtras)
- (void)merge:()MSPExtras;
@end

@implementation GEOSharedNavSenderInfo(MSPExtras)

- (void)merge:()MSPExtras
{
  v5 = a3;
  if ([v5 hasFromDisplayName])
  {
    fromDisplayName = [v5 fromDisplayName];
    [self setFromDisplayName:fromDisplayName];
  }
}

@end