@interface NTPBPrivateDataControllerSyncState(FCKeyValueStoreValue)
- (void)writeToKeyValuePair:()FCKeyValueStoreValue;
@end

@implementation NTPBPrivateDataControllerSyncState(FCKeyValueStoreValue)

- (void)writeToKeyValuePair:()FCKeyValueStoreValue
{
  v4 = a3;
  [v4 setValueType:13];
  [v4 setPrivateDataControllerSyncState:a1];
}

@end