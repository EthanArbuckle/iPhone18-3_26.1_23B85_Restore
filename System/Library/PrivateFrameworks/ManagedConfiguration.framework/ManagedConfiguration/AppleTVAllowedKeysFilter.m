@interface AppleTVAllowedKeysFilter
@end

@implementation AppleTVAllowedKeysFilter

void ___AppleTVAllowedKeysFilter_block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"AppleTVRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _AppleTVAllowedKeysFilter_dict;
  _AppleTVAllowedKeysFilter_dict = v2;
}

@end