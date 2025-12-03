@interface NTPBAVAsset(KVS)
- (void)writeToKeyValuePair:()KVS;
@end

@implementation NTPBAVAsset(KVS)

- (void)writeToKeyValuePair:()KVS
{
  v4 = a3;
  [v4 setValueType:{objc_msgSend(objc_opt_class(), "keyValuePairType")}];
  [v4 setAvAsset:self];
}

@end