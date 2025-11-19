@interface VisionProAllowedKeysFilter
@end

@implementation VisionProAllowedKeysFilter

void ___VisionProAllowedKeysFilter_block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"VisionProRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _VisionProAllowedKeysFilter_dict;
  _VisionProAllowedKeysFilter_dict = v2;
}

@end