@interface NTPBNetworkSessionList(FCAdditions)
- (void)writeToKeyValuePair:()FCAdditions;
@end

@implementation NTPBNetworkSessionList(FCAdditions)

- (void)writeToKeyValuePair:()FCAdditions
{
  v4 = a3;
  [v4 setValueType:8];
  [v4 setNetworkSessionList:self];
}

@end