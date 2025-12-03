@interface NTPBAsset(KVS)
- (void)writeToKeyValuePair:()KVS;
@end

@implementation NTPBAsset(KVS)

- (void)writeToKeyValuePair:()KVS
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setAsset:self];
}

@end