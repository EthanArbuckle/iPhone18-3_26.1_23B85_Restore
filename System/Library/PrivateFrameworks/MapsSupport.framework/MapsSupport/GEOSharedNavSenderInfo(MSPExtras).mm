@interface GEOSharedNavSenderInfo(MSPExtras)
- (void)merge:()MSPExtras;
@end

@implementation GEOSharedNavSenderInfo(MSPExtras)

- (void)merge:()MSPExtras
{
  v5 = a3;
  if ([v5 hasFromDisplayName])
  {
    v4 = [v5 fromDisplayName];
    [a1 setFromDisplayName:v4];
  }
}

@end