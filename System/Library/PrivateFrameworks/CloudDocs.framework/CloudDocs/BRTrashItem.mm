@interface BRTrashItem
- (NSFileProviderItemVersion)itemVersion;
@end

@implementation BRTrashItem

- (NSFileProviderItemVersion)itemVersion
{
  v2 = objc_alloc(MEMORY[0x1E69674F0]);
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [v2 initWithContentVersion:v3 metadataVersion:v4];

  return v5;
}

@end