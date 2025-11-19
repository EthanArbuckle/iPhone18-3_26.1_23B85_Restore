@interface NTPBCacheCoordinatorHints(FCKVSCoding)
- (void)writeToKeyValuePair:()FCKVSCoding;
@end

@implementation NTPBCacheCoordinatorHints(FCKVSCoding)

- (void)writeToKeyValuePair:()FCKVSCoding
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setCacheCoordinatorHintsValue:a1];
}

@end