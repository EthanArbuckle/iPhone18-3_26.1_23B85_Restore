@interface WatchAllowedKeysFilter
@end

@implementation WatchAllowedKeysFilter

void ___WatchAllowedKeysFilter_block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"WatchRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _WatchAllowedKeysFilter_dict;
  _WatchAllowedKeysFilter_dict = v2;
}

@end